<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="kr.co.iamtek.dto.User" scope="request">
	<jsp:setProperty property="userName" name="user" param="userName"/>
	<jsp:setProperty property="userId" name="user"/><!-- shorthand1 -->
	<jsp:setProperty property="*" name="user"/><!-- shorthand2 -->
</jsp:useBean>

userName :  <jsp:getProperty property="userName" name="user"/><br>
userId :  <jsp:getProperty property="userId" name="user"/><br>
address1 :  <jsp:getProperty property="address1" name="user"/><br>
address2 :  <jsp:getProperty property="address2" name="user"/><br>
city :  <jsp:getProperty property="city" name="user"/><br>
state :  <jsp:getProperty property="state" name="user"/><br>
pin :  <jsp:getProperty property="pin" name="user"/><br>

</body>
</html>