<%@ page language="java" import="java.util.*,com.qianyan.model.Admin" pageEncoding="GB18030"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body background="images/bj.jpg">
 <jsp:include page="../verification.jsp"></jsp:include>
  <table width="300" border="1" align="center">
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td colspan="2" align="center">管理员个人信息</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="100" align="right">管理员账号:</td>
  		<td align="left">${session.login.username }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td align="right">管理员姓名:</td>
  		<td align="left">${session.login.adminName }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td align="right">管理员等级:</td>
  		<td align="left">
  			<c:choose>
  				<c:when test="${session.login.grade == 1 }">普通管理员</c:when>
  				<c:when test="${session.login.grade == 2 }">超级管理员</c:when>
  			</c:choose>
  		</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td align="right">管理员状态:</td>
  		<td align="left">
  			<c:choose>
  				<c:when test="${session.login.state == 1 }">未激活</c:when>
  				<c:when test="${session.login.state == 2 }">已激活</c:when>
  			</c:choose>
  		</td>
  	</tr>
  </table>
  </body>
</html>
