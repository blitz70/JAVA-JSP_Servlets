<%@page import="kr.co.iamtek.db.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="new_write.do" method="post">
		<table width="700" border="1">
			<tr>
				<td bgcolor="grey">�� ��</td><td><input type="text" size="90" name="bAuthor" ></td>
			</tr>
			<tr>
				<td bgcolor="grey">�� ��</td><td><input type="text" size="90" name="bTitle"></td>
			</tr>
			<tr>
				<td bgcolor="grey">�� ��</td><td><textarea rows="10" cols="90" name="bContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="�� ���"></td>
			</tr>
		</table>
	</form>
	<a href="list.do"><button>�� ���</button></a>

</body>
</html>