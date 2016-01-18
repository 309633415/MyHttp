package demoinfo.webservice.build;

import javax.xml.ws.Endpoint;

//import org.apache.cxf.jaxws.JaxWsServerFactoryBean;  
  
public class WebServiceServer {  
  
  /*  public WebServiceServer(){  
        //方法一：  
        //创建webService接口  
        JaxWsServerFactoryBean factory = new JaxWsServerFactoryBean();  
          
        //设置地址  
        factory.setAddress("http://localhost:8080/hellowebservice");  
          
        //注册webService  
        factory.setServiceClass(HelloWebService.class);  
        factory.setServiceBean(new HelloWebServiceImpl());  
          
        //创建Service  
        factory.create();  
          
        //方法二：  
        //Endpoint.publish("http://localhost:8080/hellowebservice", new HelloWebServiceImpl());  
    }  */
      
    public static void main(String[] args) {  
    	 String address="http://localhost:8888/ns";  
         Endpoint.publish(address, new HelloWebServiceImpl());  
    	
     /*   new WebServiceServer();  
        System.out.println("server is ready...");  
        try {  
            Thread.sleep(1000*300);  
        } catch (InterruptedException e) {  
            e.printStackTrace();  
        }  
        System.out.println("server exit...");  
        System.exit(0);  */
    }  
}  