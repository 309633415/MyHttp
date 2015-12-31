package demoinfo.hibernate.crud;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudDaoImpl extends HibernateDaoSupport implements CrudDao{

	@SuppressWarnings("unchecked")
	public List<User> findAll() {
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

	public User getUserById(Integer id) {
			return (User) this.getHibernateTemplate().get(User.class, id);
	}

}
