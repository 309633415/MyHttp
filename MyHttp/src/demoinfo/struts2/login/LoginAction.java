package demoinfo.struts2.login;
/**
 * 登陆简单示例Action
 * **/
public class LoginAction {

	private String username;
	private String password;
	private String actionInfo;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getActionInfo() {
		return actionInfo;
	}
	public void setActionInfo(String actionInfo) {
		this.actionInfo = actionInfo;
	}
	
	public String checkLogin(){
		if(username.trim().equals("tom")&& password.trim().equals("123")){
		  setActionInfo(username+"登陆成功");
		  return "success";
		}else{
			setActionInfo(username+"登陆失败");
			return "fail";
		}
	}
	/**
	 * 该方法配合拦截器使用
	 * **/
	public String interceptLogin(){
		setActionInfo("拦截器跳过用户检测："+username+"登陆成功");
	    return "success";
	}
 }
