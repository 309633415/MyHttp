package common;

import com.opensymphony.xwork2.ActionSupport;

public class CodeAction extends ActionSupport{
    
	/**
	 * 
	 */
	private static final long serialVersionUID = -8233638222485143681L;
	private String code;

	public String execute(){	//execute Struts2的跳转
		if("oldindex".equals(code))
			return "oldindex";
		else if("newindex".equals(code))
			return "newindex";
		else
			return "success";
	 }
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
}
