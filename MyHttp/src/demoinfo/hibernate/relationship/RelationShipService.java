package demoinfo.hibernate.relationship;

import java.util.List;

import demoinfo.hibernate.pojo.UserVoGoods;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.PersonInform;
import demoinfo.hibernate.relationship.pojo.User;

public interface RelationShipService {
	public List<User> findUserAll();
	public void deletePerson(String personCode);
	public List<Person> findPersonAll();
	public List<PersonInform> findPersonInformAll();
	public List<User> doCriteriaQuery(int userId);
	public List<User> doOriginalQuery();
	public List<Goods> findGoodsAll();
	public List<UserVoGoods> findUserVoGoodsList();
	public List<User> queryUsers(String username);
	public Person getPerson(String personCode);
	public void updatePerson(Person person);
	public void addPerson(Person person);
	
}
