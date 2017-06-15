package jbpm.impl;

import java.util.List;

import jbpm.pojo.QingJia;

public interface QingJiaDao {
	public void addQingJia(QingJia qj);
	public void updateQingJia(QingJia qj);
	public List<QingJia> queryAllQingJia();
	public QingJia queryQingJia(String taskId);
}
