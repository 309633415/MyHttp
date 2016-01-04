package demoinfo.hibernate.relationship;

import java.util.List;

import demoinfo.hibernate.pojo.UserVoGoods;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.User;

public interface RelationShipService {
	public List<User> findUserAll();
	public List<Goods> findGoodsAll();
	public List<UserVoGoods> findUserVoGoodsList();
	
}
