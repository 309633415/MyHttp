package demoinfo.webservice.build;

public class HelloWebServiceImpl implements HelloWebService {
	public String example(String message) {
		return "example:"+message;
	}
	public String test(String name) {
		return "test:"+name;
	}
}