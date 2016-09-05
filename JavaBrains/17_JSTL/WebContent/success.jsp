<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="kr.co.iamtek.dto.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Success Page</title>
</head>
<body>

<h3>Login Successful!</h3>

<%
// User user = (User) session.getAttribute("user");
// User user1 = (User) request.getAttribute("user");
// String user2 = request.getParameter("userId");
%>

<jsp:useBean id="user" class="kr.co.iamtek.dto.User" scope="request">
	<jsp:setProperty property="userName" name="user" value="DefaultUser"/>
</jsp:useBean>

<%-- Hello <%= user1.getUserName() %>!<br> --%>

<%-- Hello <%= user.getUserName() %>!<br> --%>

<%-- Hello <jsp:getProperty property="userName" name="user1"/>! error<br> --%>

 Hello <jsp:getProperty property="userName" name="user"/>!<br>

<%-- Hello <%= user2 %>!<br> --%>

</body>
</html>