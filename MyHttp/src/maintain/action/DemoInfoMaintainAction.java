package maintain.action;

import org.hibernate.Session;
import java.util.regex.*;

import org.hibernate.Transaction;
import maintain.hbm.DemoInfo;
import com.opensymphony.xwork2.ActionSupport;

public class DemoInfoMaintainAction extends ActionSupport {

	/**
	 * 实例DemoInfo源码维护
	 */
	private static final long serialVersionUID = 1L;
    private DemoInfo demoInfo;
    
	public DemoInfo getDemoInfo() {
		return demoInfo;
	}
	public void setDemoInfo(DemoInfo demoInfo) {
		this.demoInfo = demoInfo;
	}
	
	public String demoInfoAdd(){
//		if(demoInfo != null){//不成熟 暂时不用
//			String example=demoInfo.getExample();
//			//正则替换 换下源码中的<  />  方便在页面中显示
//			Pattern pattern = Pattern.compile("<");
//			Matcher matcher = pattern.matcher(example);
//			example =matcher.replaceAll("&lt; ");
//			pattern=Pattern.compile("/>");
//			matcher=pattern.matcher(example);
//			example=matcher.replaceAll(" &gt; ");
//			demoInfo.setExample(example);
//		}
		try{
			Session session=factory.HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
		    session.save(demoInfo);
			tx.commit();
			session.close();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	public String demoInfoDelete(){
		try{
			Session session=factory.HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			session.delete(demoInfo);
			tx.commit();
			session.close();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	public String demoInfoUpdate(){
		try{
			Session session=factory.HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			session.update(demoInfo);
			tx.commit();
			session.close();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	public String demoInfoQuery(){
		try{
			Session session=factory.HibernateSessionFactory.getSession();
			
			//session.createQuery(arg0)
			//session.createSQLQuery(arg0)
			
			session.close();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
}
