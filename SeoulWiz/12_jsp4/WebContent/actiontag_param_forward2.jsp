<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Param Forward</title>
</head>
<body>
	<%!
		String id, pwd;
	%>
	<%
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
	%>
	<h1>PARAM FORWARD ������ �Դϴ�.</h1>
	���̵� : <%= id %><br>
	��ȣ : <%= pwd %>

</body>
</html>