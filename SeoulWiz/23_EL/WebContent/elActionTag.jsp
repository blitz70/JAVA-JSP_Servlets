<%@page import="kr.co.iamtek.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	Action-tag<br>
	<jsp:useBean id="member" class="kr.co.iamtek.MemberInfo" scope="page" />
	<jsp:setProperty name="member" property="name" value="ȫ�浿"/>
	<jsp:setProperty name="member" property="id" value="abcd"/>
	<jsp:setProperty name="member" property="pw" value="1234"/>
	�̸� : <jsp:getProperty name="member" property="name" /><br>
	���̵� : <jsp:getProperty name="member" property="id" /><br>
	��й�ȣ : <jsp:getProperty name="member" property="pw" /><br>
	
	<hr>
	
	EL<br	>
	<jsp:useBean id="member2" class="kr.co.iamtek.MemberInfo" scope="page" />
	<%-- java bean���� ��ü ������ ���? --%>
	${member2.setName("ȫ���")}
	${member2.setId("efgh")}
	${member2.setPw("5678")}
	�̸� : ${member2.name} <br>
	���̵� : ${member2.id} <br>
	��й�ȣ : ${member2.pw} <br>

</body>
</html>