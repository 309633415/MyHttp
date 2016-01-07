package demoinfo.hibernate.relationship;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import demoinfo.hibernate.relationship.pojo.ClassRoom;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.Person;
import demoinfo.hibernate.relationship.pojo.PersonInform;
import demoinfo.hibernate.relationship.pojo.Student;
import demoinfo.hibernate.relationship.pojo.User;

public class RelationShipDaoImpl extends HibernateDaoSupport implements RelationShipDao{

	public List<User> findUserAll() {
		return this.getHibernateTemplate().loadAll(User.class);
	}
	
	public List<Person> findPersonAll()  {
		return this.getHibernateTemplate().loadAll(Person.class);
	}

	public List<Goods> findGoodsAll() {
		return this.getHibernateTemplate().loadAll(Goods.class);
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getUsers(String queryString) {
		return (List<User>)this.getHibernateTemplate().find(queryString);
	}

	public Person getPerson(String personCode) {
		return this.getHibernateTemplate().get(Person.class, personCode);
	}

	public void deletePerson(String personCode) {
		this.getHibernateTemplate().delete(this.getPerson(personCode));
	}

	public void updatePerson(Person person) {
		this.getHibernateTemplate().update(person);
	}
	public void addPerson(Person person) {
		this.getHibernateTemplate().save(person);
	}

	public List<PersonInform> findPersonInformAll() {
		return this.getHibernateTemplate().loadAll(PersonInform.class);
	}

	public List<Student> findStudentAll() {
		return this.getHibernateTemplate().loadAll(Student.class);
	}

	public List<ClassRoom> findClassRoomAll() {
		return this.getHibernateTemplate().loadAll(ClassRoom.class);
	}

	public ClassRoom getClassRoom(int roomId) {
		return this.getHibernateTemplate().get(ClassRoom.class, roomId);
	}

}
