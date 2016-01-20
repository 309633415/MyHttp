package demoinfo.webservice.xfire;

import java.net.URL;

import org.codehaus.xfire.client.Client;

public class ClientTest {
	public static void main(String[] args)throws Exception {
		Client client= new Client(new URL("http://localhost:8080/MyHttp/services/HelloWebService?WSDL")); 
	    Object[] results=client.invoke("sayHello", new Object[]{"  HelloWorld，WebService！"});
	    System.out.println(results[0]);
    }
}
