package demoinfo.hibernate.crud;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import demoinfo.hibernate.relationship.pojo.User;

@SuppressWarnings("serial")
public class CrudAction extends ActionSupport {

	private CrudService crudService;
	private User user;
	private List<User> users;
	private String searchText;

	public String doList(){
		users = crudService.findAll();
		return "success";
	}

	public String doPrepareAdd(){
		return "addUser";
	}
	
	public String doPrepareUpdate(){
		Integer id = Integer.parseInt(getParam("id"));
		user = crudService.getUserById(id);
		return "updateUser";
	}

	public String doAdd(){
		String result = "";
		user.setId(0);
		crudService.addUser(user);
		result = doList();
		return result;
	}
	
	public String doQuery(){
		users = crudService.queryUsers(searchText);
		return "success";
	}
	
	public String doDelete(){
		try {
			Integer param = Integer.parseInt(getParam("id"));
			crudService.deleteUser(param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doList();
	}
	
	public String doUpdate(){
		try {
			crudService.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doList();
	}

	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}

	public CrudService getCrudService() {
		return crudService;
	}

	public void setCrudService(CrudService crudService) {
		this.crudService = crudService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}



}
