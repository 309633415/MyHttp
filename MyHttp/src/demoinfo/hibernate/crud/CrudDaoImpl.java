package demoinfo.hibernate.crud;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudDaoImpl extends HibernateDaoSupport implements CrudDao{

	public List<User> findAll() {
		System.out.println("************** CrudDaoImpl");
//		String queryString = "SELECT u FROM HibernateUserInfo u";
//		return (List<User>)this.getHibernateTemplate().find(queryString);
		return this.getHibernateTemplate().loadAll(User.class);
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers(String queryString) {
		return (List<User>)this.getHibernateTemplate().find(queryString);
	}

	public void addUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	public void updateUser(User user) {
		this.getHibernateTemplate().update(user);
	}

	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

}
