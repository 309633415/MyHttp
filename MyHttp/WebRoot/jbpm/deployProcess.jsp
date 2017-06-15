<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page language="java"  import="java.util.*" pageEncoding="GBK"%>
<html>
<head>
    <title>流程发布</title>
</head>
<body>
    <s:form action="/jbpm/deploy.action" method="post">
       <s:submit value="发布请假流程"/><br/><br/>
    点击发布请假流程按钮发布请假流程，请假流程图processimage.jpg如下图。开启请假任务时，流程通过submitApprove提交流转到bosscheck节点，在bosscheck节点可以进行两个操作，approve同意和goback退回。approve流程结束。goback流程转到updateLeave节点，在该节点可以选择resubmit重新提交或cancel取消。<br/>
    <img src="<%=basePath %>/image/processimage.jpg" style="width:100%"><br/><br/>
    </s:form>   
            
</body>
</html>
