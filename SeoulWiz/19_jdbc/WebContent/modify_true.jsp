<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	try {
		String id = session.getAttribute("id").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%= id %>�� ȸ�������� ���� �Ǿ����ϴ�.<br><br>
	<a href="modify.jsp">ȸ������ ����</a><br>
	<a href="logout.jsp">�α׾ƿ�</a>

</body>
</html>
<%		
	} catch (Exception e) {
		response.sendRedirect("gate.html");
		e.printStackTrace();
	}
%>