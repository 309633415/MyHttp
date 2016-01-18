package demoinfo.ajaxjs.ajax;

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
	public String autoCompleter(){
		names = new ArrayList<String[]>();
		names.add(new String[]{"Alabama","Alabama"});
		names.add(new String[]{"Alaska","Alaska"});
		names.add(new String[]{"American Samoa","American Samoa"});
		names.add(new String[]{"Arizona","Arizona"});
		names.add(new String[]{"Arkansas","Arkansas"});
		names.add(new String[]{"Armed Forces Europe","Armed Forces Europe"});
		names.add(new String[]{"Armed Forces Pacific","Armed Forces Pacific"});
		names.add(new String[]{"Armed Forces the Americas","Armed Forces the Americas"});
		names.add(new String[]{"Beaver","Beaver"});
		names.add(new String[]{"Banana Mania","Banana Mania"});
		names.add(new String[]{"California","California"});
		names.add(new String[]{"Colorado","Colorado"});
		names.add(new String[]{"Connecticut","Connecticut"});
		names.add(new String[]{"Delaware","Delaware"});
		names.add(new String[]{"District of Columbia","District of Columbia"});
		names.add(new String[]{"Eggplant","Eggplant"});
		names.add(new String[]{"Electric Lime","Electric Lime"});
		names.add(new String[]{"Federated States of Micronesia","Federated States of Micronesia"});
		names.add(new String[]{"Florida","Florida"});
		names.add(new String[]{"Georgia","Georgia"});
		names.add(new String[]{"Guam","Guam"});
		names.add(new String[]{"Hawaii","Hawaii"});
		names.add(new String[]{"Idaho","Idaho"});
		names.add(new String[]{"Illinois","Illinois"});
		names.add(new String[]{"Indiana","Indiana"});
		names.add(new String[]{"Iowa","Iowa"});
		names.add(new String[]{"Jazzberry Jam","Jazzberry Jam"});
		names.add(new String[]{"Jungle Green","IoJungle Greenwa"});
		names.add(new String[]{"Kansas","Kansas"});
		names.add(new String[]{"Kentucky","Kentucky"});
		names.add(new String[]{"Louisiana","Louisiana"});
		names.add(new String[]{"Maine","Maine"});
		names.add(new String[]{"Marshall Islands","Marshall Islands"});
		names.add(new String[]{"Maryland","Maryland"});
		names.add(new String[]{"Massachusetts","Massachusetts"});
		names.add(new String[]{"Michigan","Michigan"});
		names.add(new String[]{"Minnesota","Minnesota"});
		names.add(new String[]{"Mississippi","Mississippi"});
		names.add(new String[]{"Missouri","Missouri"});
		names.add(new String[]{"Montana","Montana"});
		names.add(new String[]{"Nebraska","Nebraska"});
		names.add(new String[]{"Nevada","Nevada"});
		names.add(new String[]{"New Hampshire","New Hampshire"});
		names.add(new String[]{"New Jersey","New Jersey"});
		names.add(new String[]{"New Mexico","New Mexico"});
		names.add(new String[]{"New York","New York"});
		names.add(new String[]{"North Carolina","North Carolina"});
		names.add(new String[]{"North Dakota","North Dakota"});
		names.add(new String[]{"Northern Mariana Islands","Northern Mariana Islands"});
		names.add(new String[]{"Oklahoma","Oklahoma"});
		names.add(new String[]{"Oregon","Oregon"});
		names.add(new String[]{"Pennsylvania","Pennsylvania"});
		names.add(new String[]{"Puerto Rico","Puerto Rico"});
		names.add(new String[]{"Rhode Island","Rhode Island"});
		names.add(new String[]{"South Carolina","South Carolina"});
		names.add(new String[]{"South Dakota","South Dakota"});
		names.add(new String[]{"Tennessee","Tennessee"});
		names.add(new String[]{"Texas","Texas"});
		names.add(new String[]{"Utah","Utah"});
		names.add(new String[]{"Vermont","Vermont"});
		names.add(new String[]{"Virgin Islands U.S.","Virgin Islands U.S."});
		names.add(new String[]{"Virginia","Virginia"});
		names.add(new String[]{"Washington","Washington"});
		names.add(new String[]{"West Virginia","West Virginia"});
		names.add(new String[]{"Wisconsin","Wisconsin"});
		names.add(new String[]{"Wyoming","Wyoming"});
		names.add(new String[]{"Yellow","Yellow"});
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

}
