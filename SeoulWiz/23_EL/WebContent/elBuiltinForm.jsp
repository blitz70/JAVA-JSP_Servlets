<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="elBuiltinOk.jsp" method="get">
		<input type="text" name="id" />
		<input type="password" name="pw" /><br>
		<input type="submit" value="login" />
	</form>

	<%
		application.setAttribute("application_name", "���� ����");
		session.setAttribute("session_name", "���� ����");
		pageContext.setAttribute("page_name", "������ ����");
		request.setAttribute("request_name", "��û ����");
	%>
	
</body>
</html>