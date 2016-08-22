<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
String userName = request.getParameter("name");
if(userName != null) {
	pageContext.setAttribute("pageContextUserName", userName);
	pageContext.setAttribute("requestUserName", userName, PageContext.REQUEST_SCOPE);
	pageContext.setAttribute("sessionUserName", userName, PageContext.SESSION_SCOPE);
	pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE);
}
%>
<br>
The name in the request object is : <%=userName %>
<br>
The user name in the request object is : <%=request.getAttribute("requestUserName") %>
<br>
The user name in the session object is : <%=session.getAttribute("sessionUserName") %>
<br>
The user name in the application context object is : <%=application.getAttribute("applicationUserName") %>
<br>
The user name in the page context object is : <%=pageContext.getAttribute("pageContextUserName") %>
<br>
requestUserName : <%=pageContext.findAttribute("requestUserName") %>
<br>
sessionUserName : <%=pageContext.findAttribute("sessionUserName") %>
<br>
applicationUserName : <%=pageContext.findAttribute("applicationUserName") %>
<br>
pageContextUserName : <%=pageContext.findAttribute("pageContextUserName") %>

</body>
</html>