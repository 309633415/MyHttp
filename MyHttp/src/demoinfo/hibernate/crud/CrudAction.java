package demoinfo.hibernate.crud;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudAction {
	
	private CrudService crudService = new CrudServiceImpl();
	private User user;
	private List<User> users;
	private String searchText;
	
	public String doList(){
		System.out.println("************** CrudAction");
		System.out.println("************** crudService = "+crudService);
		users = crudService.findAll();
		return "success";
	}
	
	public String doAdd(){
		return "";
	}

/*	public CrudService getCrudService() {
		return crudService;
	}

	public void setCrudService(CrudService crudService) {
		this.crudService = crudService;
	}*/

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
