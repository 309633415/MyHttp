package demoinfo.webservice.xfire;

public class HelloWebServiceImpl implements HelloWebService {
	public String sayHello(String name) {
		return "<font color='red'>"+name+"</font> Hello , welcome to Webservice !";
	}
	public String sayLove(String name) {
		return "<font color='red'>"+name+"</font> I Love You !";
	}
}