<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Message</title>
</head>
<%
	String link="";
	if(session.getAttribute("link")!=null)
	{
		link=(String)session.getAttribute("link");
	}
%>
<body>
Media Fire Link <a href="<%=link %>" target="_blank">Download</a>
</body>
</html>