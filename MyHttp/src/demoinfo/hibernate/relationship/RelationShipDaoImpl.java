package demoinfo.hibernate.relationship;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.User;

public class RelationShipDaoImpl extends HibernateDaoSupport implements RelationShipDao{

	public List<User> findUserAll() {
		return this.getHibernateTemplate().loadAll(User.class);
	}

	public List<Goods> findGoodsAll() {
		return this.getHibernateTemplate().loadAll(Goods.class);
	}

}
