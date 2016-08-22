<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
public void jspInit() {
	String defaultUser = getServletConfig().getInitParameter("defaultUser");
	ServletContext context = getServletContext();
	context.setAttribute("defaultUser", defaultUser);
}
%>

The default user from the servlet config is : <%=getInitParameter("defaultUser") %>
<br>
The default user from the servlet config is : <%=getServletConfig().getInitParameter("defaultUser") %>
<br>
The default user from the servlet context is : <%=getServletContext().getAttribute("defaultUser")  %>

</body>
</html>