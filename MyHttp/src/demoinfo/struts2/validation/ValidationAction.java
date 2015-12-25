package demoinfo.struts2.validation;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 框架校验Action实例
 */
public class ValidationAction  extends ActionSupport{  // 框架校验必须继承ActionSupport
	private static final long serialVersionUID = 1L;
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
		//会在执行该法时先进行框架校验 如果失败返回 input
		setActionInfo("****************校验框架校验成功****************");
		return "success";
	}
}
