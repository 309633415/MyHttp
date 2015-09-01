package demoinfo.struts2.interceptor;

import demoinfo.struts2.interceptor.LoginAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class InterceptorTest extends AbstractInterceptor  {

	/**
	 * Struts2拦截器类
	 * 当用户输入用户名为tim是从新跳转到登录页面
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		 Object o = arg0.getAction();
		 if (o instanceof LoginAction && ((LoginAction) o).getUsername().equals("tim")==false ) {
             ((LoginAction) o).setActionInfo("拦截器检测"+((LoginAction) o).getUsername()+"准备登录");
             final String res= arg0.invoke();
             
             System.out.println("该段语句输出在Action执行之后！");
             
             return res;
              
         } else {
             ((LoginAction) o).setActionInfo("拦截器拦截到"+((LoginAction) o).getUsername()+"已经登录");
             return Action.LOGIN;
         }        
	}

}
