<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<script>
	function doBring()
	{
		document.log.work.value="getData";
		document.log.method="post";
		document.log.action="Admin";
		document.log.submit();
	}
</script>
</head>
<body>
<%
	String msg="";
	if(session.getAttribute("msg")!=null)
	{
		msg=(String)session.getAttribute("msg");
	}
	
%>
<form name="log">
<input type="hidden" name="work">
<h3>Hello <%=msg %></h3>
<br>
Please Select ::
<select onchange="doBring()" name="cat">
	<option value="select">--Select--</option>
	<option value="coupon">Coupon</option>
	<option value="newpost">New Post</option>
	<option value="Posts">Posts</option>
		<option value="impposts">impposts</option>
		<option value="slider">slider</option>
	<option value="Poll">Poll</option>
</select>
</form>
</body>
</html>