package demoinfo.webservice.xfire;

import javax.jws.WebService;  
@WebService 
public interface HelloWebService {
	public String example(String message);
	public String test(String name);
}