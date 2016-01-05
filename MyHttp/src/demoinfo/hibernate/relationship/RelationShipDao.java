package demoinfo.hibernate.relationship;

import java.util.List;

import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.User;

public interface RelationShipDao {
	/**查询所有User*/
	public List<User> findUserAll();
	/**查询所有Goods*/
	public List<Goods> findGoodsAll();
	/**查询*/
	public List<User> getUsers(String queryString);

}
