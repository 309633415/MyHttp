package common;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import maintain.hbm.DemoInfo;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import factory.HibernateSessionFactory;

public class CommonAction {
    
	private String target;
	private DemoInfo demoInfoSrc;
	
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	
	public DemoInfo getDemoInfoSrc() {
		return demoInfoSrc;
	}
	public void setDemoInfoSrc(DemoInfo demoInfoSrc) {
		this.demoInfoSrc = demoInfoSrc;
	}
	@SuppressWarnings("unchecked")
	public String execute(){	//execute Struts2的跳转
		System.out.println();
	 if(!"".equals(target.trim()) && target!=null){
		 Session xx=HibernateSessionFactory.getSession();
		 List<DemoInfo> demoInfoList=xx.createQuery("from DemoInfo where title='"+target+"'").list();
		 HttpServletRequest request = ServletActionContext.getRequest ();
		 HttpSession session=request.getSession(); 
		 ServletContext application=session.getServletContext();
		 if(demoInfoList != null && demoInfoList.size()>0){ 
			  if(demoInfoList.size()>1){
				  throw new RuntimeException("请检查数据库中是否有冗余数据！");
			  }
			  demoInfoSrc=demoInfoList.get(0);
			 //把某一对象置于application范围内 
			  application.setAttribute("title",demoInfoSrc.getTitle()); 
			  application.setAttribute("resourceReady",demoInfoSrc.getResourceReady()); 
			  application.setAttribute("knowLedageReady",demoInfoSrc.getKnowLedageReady()); 
			  application.setAttribute("example",demoInfoSrc.getExample()); 
			  application.setAttribute("remark",demoInfoSrc.getRemark()); 
		 }else{
			  application.setAttribute("title",""); 
			  application.setAttribute("resourceReady",""); 
			  application.setAttribute("knowLedageReady",""); 
			  application.setAttribute("example",""); 
			  application.setAttribute("remark",""); 
		 }
		 return target;
	 }else{
		return "fail";
	 }
	}
}
