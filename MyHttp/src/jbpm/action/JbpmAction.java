package jbpm.action;

import java.util.List;

import jbpm.impl.JbpmService;
import jbpm.pojo.QingJia;
import jbpm.vo.QingJiaVO;

import org.jbpm.JbpmConfiguration;

import com.opensymphony.xwork2.ActionSupport;

public class JbpmAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private JbpmConfiguration jbpmConfiguration;
	private JbpmService jbpmService;
	private QingJia qj;
	private String taskId;
	private String transitionName;
	private QingJiaVO qingjiaVo;
	private List<QingJiaVO> qingjiaVOs;
	private String name;
	
	public List<QingJiaVO> getQingjiaVOs() {
		return qingjiaVOs;
	}

	public void setQingjiaVOs(List<QingJiaVO> qingjiaVOs) {
		this.qingjiaVOs = qingjiaVOs;
	}

	public QingJiaVO getQingjiaVo() {
		return qingjiaVo;
	}

	public void setQingjiaVo(QingJiaVO qingjiaVo) {
		this.qingjiaVo = qingjiaVo;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public String getTransitionName() {
		return transitionName;
	}

	public void setTransitionName(String transitionName) {
		this.transitionName = transitionName;
	}

	public QingJia getQj() {
		return qj;
	}

	public void setQj(QingJia qj) {
		this.qj = qj;
	}

	public JbpmService getJbpmService() {
		return jbpmService;
	}

	public void setJbpmService(JbpmService jbpmService) {
		this.jbpmService = jbpmService;
	}

	public JbpmConfiguration getJbpmConfiguration() {
		return jbpmConfiguration;
	}

	public void setJbpmConfiguration(JbpmConfiguration jbpmConfiguration) {
		this.jbpmConfiguration = jbpmConfiguration;
	}

	public String deploy(){
		jbpmService.deploy();
	    return SUCCESS;
	}
	
	public String startTask(){
		jbpmService.startTask(qj);
		return SUCCESS;
	}
	
	public String transition(){
		jbpmService.transition(taskId,transitionName);
		return SUCCESS;
	}
	
	public String queryTask(){
		if("handleFlow".equals(name)){
			qingjiaVOs = jbpmService.getProcess();
			return "handleFlow";
		}else if("startTask".equals(name)){
			qingjiaVOs = jbpmService.getProcess();
			return "startTask";
		}
		return null;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
