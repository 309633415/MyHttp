package demoinfo.struts2.ajax;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Ajax的Action
 * **/
public class AjaxAction extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = -8201401726773589361L;

	private List<String[]> names; // autocompleter返回客户端数组
	private String start; // autocompleter客户端输入的起始文字

	private String username; //用户名
	private String pwd;//密码
	private int flag;//返回客户端的值
	
	private String result;		//ajax返回的result节点，返回success
	private HttpServletRequest request;	//获取页面传来的值

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	// 下拉框
	public String autoCompleter() {
		names = new ArrayList<String[]>();
		if (start == null || "".equals(start.trim())) {
				start = "a";
			}
		for (String s : Datas.NAMES) {
				if (s.toLowerCase().startsWith(start.toLowerCase())) {
					names.add(new String[] { s, s });
				}
			}
		return SUCCESS;
	}

	//Ajax校验
	public String checkAjax() {
		if (this.getUsername().equals("tom")) {
			this.setFlag(1);
		} else {
			this.setFlag(2);
		}
		return SUCCESS;
	}
	
	public String checkJqueryAjax() {
		//获取数据
		String name = request.getParameter("name");
		String returnFlag;
		if(name.equals("tom"))
			returnFlag = "true";
		else
			returnFlag = "false";
		//将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("returnFlag", returnFlag);
		JSONObject json = JSONObject.fromObject(map);	//将map对象转换成json类型数据
		this.result = json.toString();	//给result赋值，传递给页面
		return SUCCESS;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}

	public List<String[]> getNames() {
		return names;
	}

	public void setNames(List<String[]> names) {
		this.names = names;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}
	
	
}
