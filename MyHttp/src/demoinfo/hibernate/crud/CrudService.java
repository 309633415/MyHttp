package demoinfo.hibernate.crud;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public interface CrudService {
	public List<User> findAll();
}
