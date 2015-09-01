<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath",basePath);
%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<sx:head/>
  </head>
  
<body>
    <h3>异步校验</h3> <br>
    <div style="color:red">
    <h2>当输入用户为tom时表示该用户已经注册过</h2>
    </div>
    <div id="checkinfo"></div>
    <s:url id="url"    action="/ajax/checkAjax.action" ></s:url>
    <form id="first"   action="<%=basePath %>/ajax/checkAjax">   
     <table>
     <tr><td>
     <s:textfield name="username" label="用户名"></s:textfield><br/>
     <s:password  name="pwd"      label="密     码"></s:password><br/>
     <s:submit label="%{'提交'}"></s:submit><br/>
     </td></tr>
     <tr><td>
     <sx:bind formId="first" sources="username" events="onblur" targets="checkinfo"  ></sx:bind>
     </td></tr>
     </table>
    </form>  
      
<!--    上面的代码是异步校验的 下面的代码是自动补全的-->
  <form action="<%=basePath %>/ajax/auatoCompleter.action">
  
    <h3>自动补全</h3><br/>
    <table>
        <tr><td class="tdLabel">
            <label class="label">非AJAX自动补全</label>
           </td>
            <td>
              <sx:autocompleter  name="user" list="@ajax.Datas@NAMES" />
            </td>
            </tr>
            <tr>
              <td class="tdLabel">
                  <label class="label">AJAX 自动补全:</label>
              </td>
              <td>
                 <s:url id="dataUrl" action="%{#request.basePath}/ajax/autoCompleter.action" />
               
                  <sx:autocompleter name="start" href="%{#request.basePath}/ajax/autoCompleter.action"
                        loadOnTextChange="true" loadMinimumCount="1" 
                        autoComplete="true" showDownArrow="false" notifyTopics="/Changed" />
                  <img id="indicator"  src="/image/12.JPG" alt="Loading " style="display:none" />
                </td>
            </tr>
     </table>
   </form>
</body>
</html>
