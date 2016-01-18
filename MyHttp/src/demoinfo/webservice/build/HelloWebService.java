package demoinfo.webservice.build;

import javax.jws.WebService;  
@WebService 
public interface HelloWebService {
	 public String sayHello(String name); 
}