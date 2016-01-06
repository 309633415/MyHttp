package demoinfo.hibernate.relationship;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.PersonInform;
import demoinfo.hibernate.relationship.pojo.User;

public interface RelationShipDao {
	/**查询所有User*/
	public List<User> findUserAll();
	/**查询所有Person*/
	public List<Person> findPersonAll();
	public List<PersonInform> findPersonInformAll();
	/**查询所有Goods*/
	public List<Goods> findGoodsAll();
	/**查询*/
	public List<User> getUsers(String queryString);
	/**根据编号查询Person*/
	public Person getPerson(String personCode);
	
	public void deletePerson(String personCode);
	public void updatePerson(Person person);
	public void addPerson(Person person);

}
