package demoinfo.hibernate.crud;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudDaoImpl extends HibernateDaoSupport implements CrudDao{

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
