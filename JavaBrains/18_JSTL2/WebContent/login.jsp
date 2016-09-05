<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>User Registration Page</title>
</head>
<body>

<form action="process.jsp" method="post">
	<br>User Name : <input type="text" name="userName" />
	<br>User ID : <input type="text" name="userId" />
	<br>Address 1 : <input type="text" name="address1" />
	<br>Address 2 : <input type="text" name="address2" />
	<br>City : <input type="text" name="city" />
	<br>State : <input type="text" name="state" />
	<br>Pin : <input type="text" name="pin" />
	<br><input type="submit" value="submit" />
</form>

</body>
</html>