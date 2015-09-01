package demoinfo.struts2;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class FilterUtil implements Filter  {
	   private String isbn;
	   private String title;
	   private double price;
	   public void testSendRedirect(){
		   
	   }
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest httpRequest = (HttpServletRequest) arg0;
        HttpServletResponse httpResponse = (HttpServletResponse) arg1;
        String flag=(String) httpRequest.getAttribute("testflag");
        if("1"==flag){
	        httpResponse.sendRedirect("www.baidu.com");
	        httpResponse.sendRedirect("www.google.com");
        }
		
	}
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
	   