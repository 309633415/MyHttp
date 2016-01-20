package demoinfo.webservice.cxf;

import javax.jws.WebService;  
@WebService(endpointInterface="demoinfo.webservice.cxf.HelloWebService")  
public class HelloWebServiceImpl implements HelloWebService{  
    public String sayHello(String name) {  
        return "hello " + name;  
    }  
}  