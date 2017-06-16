package demoinfo.webservice.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SayHelloServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void init()  
    {
		
    } 
	/**
	 * 
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  
    {  
		String name = request.getParameter("name");
		PrintWriter writer = response.getWriter();
		writer.write("Hello, "+name+" !");
    }  
      
    /** 
     * 销毁 
     */  
    public void destroy()  
    {  
        super.destroy();  
    } 
}
