<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	String id;
 	if (session.getAttribute("Valid") == null) {
 %>
<jsp:forward page="login.jsp"></jsp:forward>
 <%
 	}
 	id = session.getAttribute("id").toString();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>������� <%= id %>��, ���� ������ �Դϴ�.</h1>
	<form action="logout.jsp" method="post">
		<input type="submit" value="�α׾ƿ�">
		<input type="button" value="��������" onclick="location='modify.jsp'">
	</form>
</body>
</html>