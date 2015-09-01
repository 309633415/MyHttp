package demoinfo.struts2.ajax;

import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
/**
 * Ajax的Action
 * 自动下拉框和异步校验
 * **/
public class AjaxAction extends ActionSupport {

	private static final long serialVersionUID = -8201401726773589361L;

	private List<String[]> names; // autocompleterʹ��
	private String start; // autocompleterʹ��

	private String username; //�첽У��ʹ��
	private String pwd;//�첽У��ʹ��
	private int flag;//�첽У��ʹ��

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

	public void setStart(String start) {
		this.start = start;
	}

	public List<String[]> getNames() {
		return names;
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
}
