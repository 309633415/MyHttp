package demoinfo.webservice.cxf;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;  

import demoinfo.webservice.cxf.HelloWebService;  
  
public class WebServiceClient {  
    public static void main(String[] args) {  
        //创建Service代理工厂  
        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();  
          
        //设置地址  
        factory.setAddress("http://localhost:8083/hellowebservice");  
          
        //注册接口  
        factory.setServiceClass(HelloWebService.class);  
          
        //获取bean  
        HelloWebService hello = (HelloWebService) factory.create();  
          
        //输出结果  
        System.out.println("invoking service...");  
        System.out.println(hello.sayHello("knight"));  
    }  
}
