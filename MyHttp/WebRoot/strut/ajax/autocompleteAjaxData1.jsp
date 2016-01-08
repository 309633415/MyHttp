<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" net.sf.json.JSONArray"%>
<%@page import=" java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	out.clear();//清空输出数据
	request.setCharacterEncoding("UTF-8");//设置request编码
	response.setHeader("Pragma", "no-cache");//禁止缓存
	response.setHeader("cache-control", "no-cache");
	response.setDateHeader("Expires", 0);

	List<String> countries = new ArrayList<String>();
	countries.add("Afghanistan");
	countries.add("Aland Islands");
	countries.add("Albania");
	countries.add("Algernia");
	countries.add("American Samno(USA)");
	countries.add("Andorra");

	String countryPrefix = request.getParameter("country");//获取AutoCompleter已经填写的内容
	if (null == countryPrefix) {
		countryPrefix = "";
	}
	List<String> buffer = new ArrayList<String>();

	for (int i = 0; i < countries.size(); i++) {
		if (countries.get(i).toLowerCase()
				.startsWith(countryPrefix.toLowerCase())) {
			buffer.add(countries.get(i));
		}
	}
	JSONArray jsonArray = JSONArray.fromObject(buffer);
	Thread.sleep(500);//当前线程睡眠0.5秒，演示indicator
	try {
		response.setContentType("aplication/json;charset=UTF-8");
		out.print(jsonArray);
	} catch (IOException e) {
		e.printStackTrace();
	}
%>