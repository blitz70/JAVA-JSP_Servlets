<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script language="JavaScript" src="member.js"></script>
</head>
<body>
<h1>���� ������ �Դϴ�.</h1>
	<form action="joinOk.jsp" method="post" name="formJoin">
		*���̵� : <input type="text" name="id" /><br>
		*��й�ȣ : <input type="password" name="pw" /><br>
		*��й�ȣ(Ȯ��) : <input type="password" name="pw_check" /><br>
		*�̸��� : <input type="text" name="email" /><br>
		�̸� : <input type="text" name="name" /><br>
		�ּ� : <input type="text" name="address" /><br>
		*�� �ʼ� �Է� �׸��Դϴ�.
		<br><br>
		<input type="button" value="ȸ������"  onclick="checkJoin()">
		<input type="reset" value="���" onclick="location='login.jsp'">
	</form>
</body>
</html>