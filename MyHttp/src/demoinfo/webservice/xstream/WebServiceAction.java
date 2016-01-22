package demoinfo.webservice.xstream;

import com.opensymphony.xwork2.ActionSupport;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class WebServiceAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String name1;
	private String message1;
	private String name2;
	private String message2;
	private String result;
	
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getMessage1() {
		return message1;
	}
	public void setMessage1(String message1) {
		this.message1 = message1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getMessage2() {
		return message2;
	}
	public void setMessage2(String message2) {
		this.message2 = message2;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String execute(){
		String temp="";
		XStream xstream = new XStream(new DomDriver()); 
		xstream.alias("person", Person.class);
		if(!("".equals(name1.trim())&&"".equals(message1.trim()))){
			Person person1 = new Person(name1.trim(),message1.trim());
			String xml1 = xstream.toXML(person1);
			temp += xml1+"\n";
		}
		if(!("".equals(name2.trim())&&"".equals(message2.trim()))){
			Person person2 = new Person(name2.trim(),message2.trim());
			String xml2 = xstream.toXML(person2);
			temp += xml2 + "\n";
		}
		String temp2 = temp.replaceAll("<", "&lt;");
		result = temp2.replaceAll(">", "&gt;");
		return SUCCESS;
	}

}
