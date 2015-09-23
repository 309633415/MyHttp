package demoinfo.webservice.take;

import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.codehaus.xfire.client.Client;

import com.opensymphony.xwork2.ActionSupport;

public class WebServiceAction extends ActionSupport{
	private String name;
	private String message;
	private Object[] results;
	
	public Object[] getResults() {
		return results;
	}

	public void setResults(Object[] results) {
		this.results = results;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String webService(){
		HttpServletRequest request = ServletActionContext.getRequest();
		 
		 

		Client client;
		try {
			client = new Client(new URL("http://localhost:8080/MyHttp/services/HelloWebService?WSDL"));
			results=client.invoke(name, new Object[]{message});
			System.out.print(results); 
			if(results!=null&&results.length!=0){
				request.setAttribute("results",results);
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
			return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		} 
 		return SUCCESS;
	}
}
