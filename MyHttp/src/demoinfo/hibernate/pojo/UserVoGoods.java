package demoinfo.hibernate.pojo;

public class UserVoGoods {
	private int userId;
	private int goodsId;
	private String username;
	private String goodsname;
	
	public UserVoGoods(int userId,int goodsId,String username,String goodsname){
		this.setUserId(userId);
		this.setGoodsId(goodsId);
		this.setUsername(username);
		this.setGoodsname(goodsname);
	}
	public UserVoGoods(String username,String goodsname){
		this.setUsername(username);
		this.setGoodsname(goodsname);
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	

}
