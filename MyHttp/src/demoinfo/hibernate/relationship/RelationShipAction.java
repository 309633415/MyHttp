package demoinfo.hibernate.relationship;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import demoinfo.hibernate.pojo.UserVoGoods;
import demoinfo.hibernate.relationship.pojo.Goods;
import demoinfo.hibernate.relationship.pojo.User;

@SuppressWarnings("serial")
public class RelationShipAction extends ActionSupport{
	
	private RelationShipService relationShipService;
	private User user;
	private Goods goods;
	private UserVoGoods userVoGoods;
	private List<User> users;
	private List<Goods> goodses;
	private List<UserVoGoods> userVoGoodsList;
	
	public String relationshipDetail(){
		return "success";
	}
	public String doQueryLinkList(){
		users = relationShipService.findUserAll();
		goodses = relationShipService.findGoodsAll();
		userVoGoodsList = relationShipService.findUserVoGoodsList();
		return "success";
	}
	
	//geter setter
	public RelationShipService getRelationShipService() {
		return relationShipService;
	}

	public void setRelationShipService(RelationShipService relationShipService) {
		this.relationShipService = relationShipService;
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

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public List<Goods> getGoodses() {
		return goodses;
	}

	public void setGoodses(List<Goods> goodses) {
		this.goodses = goodses;
	}

	public UserVoGoods getUserVoGoods() {
		return userVoGoods;
	}

	public void setUserVoGoods(UserVoGoods userVoGoods) {
		this.userVoGoods = userVoGoods;
	}
	
	public List<UserVoGoods> getUserVoGoodsList() {
		return userVoGoodsList;
	}
	
	public void setUserVoGoodsList(List<UserVoGoods> userVoGoodsList) {
		this.userVoGoodsList = userVoGoodsList;
	}
	
}
