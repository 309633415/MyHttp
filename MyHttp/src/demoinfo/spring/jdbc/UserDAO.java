package demoinfo.spring.jdbc;

import java.util.List;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class UserDAO extends JdbcDaoSupport{
	@SuppressWarnings("rawtypes")
	public List getAllUserList(){
		try{
			return getJdbcTemplate().queryForList("select id,studentName,age from hibernate_relationship_student");
		}catch (RuntimeException re){
			throw re;
		}
	}
	public int saveOrupdate(String sql,Object[] params,int[] types){
		try{
		return getJdbcTemplate().update(sql,params,types);
		}catch (RuntimeException re){
			throw re;
		}
	}

}
