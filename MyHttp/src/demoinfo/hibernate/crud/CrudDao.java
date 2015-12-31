package demoinfo.hibernate.crud;

import java.io.Serializable;
import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public interface CrudDao {
	/**查询所有*/
	public List<User> findAll();
	/**查询*/
	public List<User> getUsers(String queryString);
	/**添加一个*/
	public void addUser(User user);
	/**更新指定的*/
	public void updateUser(User user);
	/**删除指定的*/
	public void deleteUser(User user);
	/**通过id获取*/
	public User getUserById(Integer id);
	
}
