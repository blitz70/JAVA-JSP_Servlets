<%@page import="kr.co.iamtek.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	if (session.getAttribute("Valid") == null) {
 %>
<jsp:forward page="login.jsp"></jsp:forward>
 <%
	 }
 	DbDTO dto = (DbDTO) session.getAttribute("Valid");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script language="JavaScript" src="member.js"></script>
</head>
<body>
<h1>ȸ�� �������� ������ �Դϴ�.</h1>
	<form action="modifyOk.jsp" method="post" name="formModify">
		���̵� : <%= dto.getId() %><br>
		��й�ȣ : <input type="password" name="pw" /><br>
		��й�ȣ(Ȯ��) : <input type="password" name="pw_check" /><br>
		�̸��� : <input type="text" name="email" value="<%= dto.getEmail() %>"/><br>
		�̸� : <input type="text" name="name" value="<%= dto.getName() %>"/><br>
		�ּ� : <input type="text" name="address" value="<%= dto.getAddress() %>"/><br>
		��� �ʼ� �Է� �׸��Դϴ�.
		<br><br>
		<input type="button" value="��������"  onclick="checkModify()">
		<input type="reset" value="���" onclick="location='main.jsp'">
	</form>
</body>
</html>