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
    <h3>�첽У��</h3> <br>
    <div style="color:red">
    <h2>�������û�Ϊtomʱ��ʾ���û��Ѿ�ע���</h2>
    </div>
    <div id="checkinfo"></div>
    <s:url id="url"    action="/ajax/checkAjax.action" ></s:url>
    <form id="first"   action="<%=basePath %>/ajax/checkAjax">   
     <table>
     <tr><td>
     <s:textfield name="username" label="�û���"></s:textfield><br/>
     <s:password  name="pwd"      label="��     ��"></s:password><br/>
     <s:submit label="%{'�ύ'}"></s:submit><br/>
     </td></tr>
     <tr><td>
     <sx:bind formId="first" sources="username" events="onblur" targets="checkinfo"  ></sx:bind>
     </td></tr>
     </table>
    </form>  
      
<!--    ����Ĵ������첽У��� ����Ĵ������Զ���ȫ��-->
  <form action="<%=basePath %>/ajax/auatoCompleter.action">
  
    <h3>�Զ���ȫ</h3><br/>
    <table>
        <tr><td class="tdLabel">
            <label class="label">��AJAX�Զ���ȫ</label>
           </td>
            <td>
              <sx:autocompleter  name="user" list="@ajax.Datas@NAMES" />
            </td>
            </tr>
            <tr>
              <td class="tdLabel">
                  <label class="label">AJAX �Զ���ȫ:</label>
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
