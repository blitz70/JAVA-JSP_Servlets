<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection myConn;
	Statement myStmt;
	ResultSet myRs;
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/test";
	String user = "blitz";
	String password = "mysql";
	
	String sql = "SELECT * FROM member";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		try {
			Class.forName(driver);	//DB ���� ����
			myConn = DriverManager.getConnection(url, user, password);		//DB ����
			myStmt = myConn.createStatement();	//
			myRs = myStmt.executeQuery(sql);	//SQL�� ����
			while(myRs.next()) {
				String id = myRs.getString("id");
				String pw = myRs.getString("pw");
				String name = myRs.getString("name");
				String phone = myRs.getString("phone");
				out.println("���̵�:"+ id +", ��ȣ:"+ pw+", �̸�:"+ name+", ����:"+ phone + "<br>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{
				if(myRs != null) myRs.close();
				if(myStmt != null) myStmt.close();
				if(myConn != null) myConn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	%>

</body>
</html>