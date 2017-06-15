package jbpm.impl;

import java.util.List;

import jbpm.pojo.QingJia;
import jbpm.vo.QingJiaVO;

public interface JbpmService {
	public void startTask(QingJia qj);
	
	public void transition(String taskId ,String transitionName);
	public void deploy();
	public List<QingJiaVO> getProcess();
}
