package jbpm.impl;

import java.util.List;

import jbpm.pojo.QingJia;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class QingJiaDaoImpl extends HibernateDaoSupport implements QingJiaDao{

	public void addQingJia(QingJia qj) {
		this.getHibernateTemplate().save(qj);
		System.out.println("保存成功");
	}
	
	public void updateQingJia(QingJia qj) {
		this.getHibernateTemplate().update(qj);
		System.out.println("修改成功");
	}
	
	@SuppressWarnings("unchecked")
	public List<QingJia> queryAllQingJia() {
		return this.getHibernateTemplate().loadAll(QingJia.class);
	}
	
	public QingJia queryQingJia(String taskId) {
		String sql = " from QingJia where taskid = " + taskId;
		return (QingJia) this.getHibernateTemplate().find(sql).get(0);
	}
	
}
