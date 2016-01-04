package maintain.hbm;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {
public static void  main(String args[]) throws HibernateException, SQLException{
	ResultSet rs=null;
	Statement  stmt=null;
	Session session=factory.HibernateSessionFactory.getSession();
	if(session!=null){
		System.out.println("dfesfesfesf");
	}
	
		stmt=session.connection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		String sql="select * from demoinfo";
		rs=stmt.executeQuery(sql);	
		while(rs.next()){
			System.out.println(rs.getInt(1));
		}
//	Transaction tx=session.beginTransaction();
//    DemoInfo di=new DemoInfo();
//    di.setTitle("struts2");
//
//    di.setResourceReady("");
//    di.setExample("");
//    di.setRemark("");
//    session.save(di);
//	tx.commit();
//	session.close();
//	System.out.print("add is ok");
}
}
