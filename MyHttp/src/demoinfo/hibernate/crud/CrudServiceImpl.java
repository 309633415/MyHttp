package demoinfo.hibernate.crud;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.User;

public class CrudServiceImpl implements CrudService {

	private CrudDao crudDao = new CrudDaoImpl();
	
	public List<User> findAll() {
		System.out.println("************** CrudServiceImpl");
		List<User> list =  crudDao.findAll();
		System.out.println("************** CrudServiceImpl ************************"+list);
		return crudDao.findAll();
	}

	public CrudDao getCrudDao() {
		return crudDao;
	}

	public void setCrudDao(CrudDao crudDao) {
		this.crudDao = crudDao;
	}
	
}
