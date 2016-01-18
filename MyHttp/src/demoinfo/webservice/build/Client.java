package demoinfo.webservice.build;


import java.net.URL;  
  
import javax.xml.namespace.QName;  
import javax.xml.ws.Service;  
  
public class Client {  
      
    public static void main(String[] args) {  
        try {  
            URL url = new URL("http://localhost:8888/ns?wsdl");  
            QName sname = new QName("http://service.bird.com/","MyServiceImplService");  
            Service server = Service.create(url, sname);  
              
            HelloWebService ms = server.getPort(HelloWebService.class);  
            System.out.println(ms.sayHello("jiashubing"));  
        } catch (Exception e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
          
    }  
}  
