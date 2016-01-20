package demoinfo.webservice.xfire;

import javax.jws.WebService;  
@WebService 
public interface HelloWebService {
	public String sayHello(String name);
	public String sayLove(String name);
}