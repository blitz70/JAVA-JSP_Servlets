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
User user = (User) request.getAttribute("user");
%>

Hello <%= user.getUserName() %>!

</body>
</html>