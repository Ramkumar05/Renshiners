<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<script>
	function doLogin()
	{
		document.log.work.value="process";
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
	<table border="1" align="center">
		<tr>
			<td>User name::</td>
			<td><input type="text" name="nmeTxt" value=""></td>
		</tr>
		<tr>
			<td>Password::</td>
			<td><input type="password" name="pwdTxt" value=""></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" name="Enter" value="Enter" onclick="doLogin()"></td>
		</tr>
		<%if(!msg.equals("")) 
		{%>
		<tr>
			<td colspan="2"><font color="red"><%=msg %></font></td>
		</tr>
		<%} %>
	</table>
</form>
</body>
</html>