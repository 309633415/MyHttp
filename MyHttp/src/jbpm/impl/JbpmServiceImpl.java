package jbpm.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import jbpm.pojo.QingJia;
import jbpm.vo.QingJiaVO;

import org.jbpm.JbpmConfiguration;
import org.jbpm.JbpmContext;
import org.jbpm.graph.def.ProcessDefinition;
import org.jbpm.graph.exe.ProcessInstance;
import org.jbpm.graph.exe.Token;
import org.jbpm.taskmgmt.exe.TaskInstance;
import org.jbpm.taskmgmt.exe.TaskMgmtInstance;

public class JbpmServiceImpl implements JbpmService{
	private JbpmConfiguration jbpmConfiguration;
	private QingJiaDao qingJiaDao;
	
	public QingJiaDao getQingJiaDao() {
		return qingJiaDao;
	}

	public void setQingJiaDao(QingJiaDao qingJiaDao) {
		this.qingJiaDao = qingJiaDao;
	}

	public JbpmConfiguration getJbpmConfiguration() {
		return jbpmConfiguration;
	}

	public void setJbpmConfiguration(JbpmConfiguration jbpmConfiguration) {
		this.jbpmConfiguration = jbpmConfiguration;
	}
	public List<QingJiaVO> getProcess(){
		List<QingJiaVO> qingjiaVos = new ArrayList<>();
		String sql = " select qingjia.id qingjiaid,qingjia.userid userId,qingjia.content content,taskinstance.id_ taskId,taskinstance.name_ taskName, node.name_ nodeName,taskinstance.ISOPEN_ isopen,taskinstance.ISSUSPENDED_ issuspended "
				+ "from qingjia qingjia,jbpm_taskinstance taskinstance,jbpm_token token,jbpm_node node "
				+ "where qingjia.processid = token.processinstance_ "
				+ "and taskinstance.token_ = token.id_ "
				+ "and token.node_ = node.id_ ";
		ResultSet result=null;
		try {
			result = jbpmConfiguration.createJbpmContext().getConnection().createStatement().executeQuery(sql);
			while(result.next()){
				QingJiaVO qingJiaVo = new QingJiaVO();
				qingJiaVo.setUserId(result.getInt("userid"));
				qingJiaVo.setContent(result.getString("content"));
				qingJiaVo.setQingjiaid(result.getInt("qingjiaid"));
				qingJiaVo.setTaskId(result.getLong("taskid"));
				qingJiaVo.setNodeName(result.getString("nodeName"));
				qingJiaVo.setTaskName(result.getString("taskname"));
				boolean isopen = result.getBoolean("isopen");
				boolean issuspended = result.getBoolean("issuspended");
				qingJiaVo.setIssignalling((isopen&&!issuspended));
				qingjiaVos.add(qingJiaVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return qingjiaVos;
	}
	
	public void startTask(QingJia qj){
		qingJiaDao.addQingJia(qj);
		JbpmContext jbpmContext = jbpmConfiguration.createJbpmContext();
		ProcessDefinition pd = jbpmContext.getGraphSession().findLatestProcessDefinition("leave");
		ProcessInstance pi=pd.createProcessInstance();
		pi.getContextInstance().setVariable("userId", qj.getUserId());
		TaskInstance ti=pi.getTaskMgmtInstance().createStartTaskInstance();
		ti.setVariable("qingjiaId", qj.getId());
		ti.start();
		jbpmContext.save(ti);
		qj.setProcessId(ti.getContextInstance().getProcessInstance().getId());
		qj.setTaskId(ti.getId());
		qingJiaDao.updateQingJia(qj);
		jbpmContext.close();
	}
	
	@SuppressWarnings("rawtypes")
	public void transition(String taskId ,String transitionName){
		JbpmContext jbpmContext = jbpmConfiguration.createJbpmContext();
		TaskInstance ti = jbpmContext.getTaskMgmtSession().getTaskInstance(Long.parseLong(taskId));
		ti.end(transitionName);
		ProcessInstance processInstance = ti.getToken().getProcessInstance();
		Token nextToken = processInstance.getRootToken();
		TaskInstance instance=null;
        TaskMgmtInstance tmg=processInstance.getTaskMgmtInstance();
		Collection collection=tmg.getUnfinishedTasks(nextToken);
		if (collection != null && collection.size() > 0) {
			instance = (TaskInstance) collection.toArray()[0];
			
			// 清除产生的taskvariables对象，未找到产生的地方，暂时只在这清除了
			for (Object obj : collection) {
				if (((TaskInstance) obj).getVariableInstances() != null) {
					((TaskInstance) obj).getVariableInstances().clear();
				}
			}
			jbpmContext.save(instance);
			QingJia eqj = qingJiaDao.queryQingJia(taskId);
			eqj.setTaskId(instance.getId());
			qingJiaDao.updateQingJia(eqj);
			jbpmContext.close();
		}else{
			jbpmContext.close();
		}
		
	}
	public void deploy(){
		JbpmContext jbpmContext = jbpmConfiguration.createJbpmContext();
		ProcessDefinition processDefinition = ProcessDefinition.parseXmlResource("jbpm/flow/processdefinition.xml");
	    jbpmContext.deployProcessDefinition(processDefinition);
	    jbpmContext.close();
	}
}
