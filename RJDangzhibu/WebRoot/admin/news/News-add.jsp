<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>发布新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="images/bj.jpg">
    <c:choose>
	  		<c:when test="${empty error && session.login.state == 2 }">
	  				<font size="20">恭喜你，发布新闻成功！</font>
	  		</c:when>
	  		<c:when test="${!empty error }">
	  				<font size="20" color="red">发布新闻失败 ！${error }</font>
	  		</c:when>
  			<c:otherwise>
  				<font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font>
  			</c:otherwise>
  	</c:choose>
  </body>
</html>
