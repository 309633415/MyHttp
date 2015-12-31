package demoinfo.hibernate.crud;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public interface CrudService {
	public List<User> findAll();
	public void addUser(User user);
	public void deleteUser(Integer id);
	public void updateUser(User user);
	public List<User> queryUsers(String username);
	public User getUserById(Integer id);
}
