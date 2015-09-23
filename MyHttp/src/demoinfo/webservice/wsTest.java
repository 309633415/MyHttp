package demoinfo.webservice;

import java.net.URL;

import org.codehaus.xfire.client.Client;

/**
 * webService����
 * 
 * @author zcl
 *
 */
public class wsTest {
    public static void main(String[] args)throws Exception {
		Client client= new Client(new URL("http://localhost:8080/MyHttp/services/HelloWebService?WSDL")); 
	    Object[] results=client.invoke("test", new Object[]{"aaa"});
	    System.out.println(results[0]);
    }
}
