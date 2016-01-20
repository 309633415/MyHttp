package demoinfo.webservice.xfire;

import javax.xml.ws.Endpoint;
import demoinfo.webservice.xfire.HelloWebServiceImpl;  
  
public class WebServiceServer {  
    public static void main(String[] args) {  
    	Endpoint.publish("http://localhost:8080/hellowebservice", new HelloWebServiceImpl());  
    	System.out.println("server is ready...");  
        try {  
            Thread.sleep(1000*300);  
        } catch (InterruptedException e) {  
            e.printStackTrace();  
        }  
        System.out.println("server exit...");  
        System.exit(0);  
    }  
}  
