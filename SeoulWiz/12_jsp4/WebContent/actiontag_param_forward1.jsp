<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Action tag</title>
</head>
<body>
	<h1>���� ������ �Դϴ�.</h1>
	<jsp:forward page="actiontag_param_forward2.jsp">
		<jsp:param name="id" value="blitz" />
		<jsp:param name="pwd" value="1234" />
	</jsp:forward>
</body>
</html>