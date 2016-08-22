<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>Testing JSPs</h3>
<%
	int i =1;
	int j = 2;
	int k;
	k = i + j;
	out.println("Value of k is " + k);
%>
<br/>
The value of k is : <%=1+2 %>!!<br/>
The value of k is : <%=k %>!!<br/>
<%
	k=add(35643, 87658);
%>
The value of k is : <%=k %>!!<br/>
<%!
	public int add (int a, int b) {
		return a+b;
}
%>
<%
	for (i=0;i<5;i++) {
		out.println("<br/> i = " + i);
	}
%>
<%
	for (i=0;i<5;i++) {
%>
		<br/>The new value of i = <%=i %>
<%
	}
%>

</body>
</html>