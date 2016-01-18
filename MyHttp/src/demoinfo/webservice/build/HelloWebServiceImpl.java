package demoinfo.webservice.build;

public class HelloWebServiceImpl implements HelloWebService {
	public String sayHello(String name) {  
        return "hello " + name;  
    }  
}