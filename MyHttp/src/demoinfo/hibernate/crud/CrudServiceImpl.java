package demoinfo.hibernate.crud;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudServiceImpl implements CrudService {

	private CrudDao crudDao;
	
	public List<User> findAll() {
		return crudDao.findAll();
	}

	public void addUser(User user) {
		crudDao.addUser(user);
	}
	
	public CrudDao getCrudDao() {
		return crudDao;
	}
	
	public void setCrudDao(CrudDao crudDao) {
		this.crudDao = crudDao;
	}

	public List<User> queryUsers(String username) {
		if(username == null || "".equals(username))
		return crudDao.findAll();
		String queryString = "SELECT u FROM User u WHERE u.username like '"+"%"+username+"%'";
		return crudDao.getUsers(queryString);
	}

	public void deleteUser(Integer id) {
		User user = crudDao.getUserById(id);
		crudDao.deleteUser(user);
	}

	public User getUserById(Integer id) {
		User user = crudDao.getUserById(id);
		return user;
	}

	public void updateUser(User user) {
		crudDao.updateUser(user);
	}
}
