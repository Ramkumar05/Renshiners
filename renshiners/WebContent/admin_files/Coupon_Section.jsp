<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coupon Section</title>
<script>
	function docsin()
	{
		document.cs.work.value="ins-cs";
		document.cs.method="post";
		document.cs.action="Admin";
		document.cs.submit();
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
<form name="cs">
<input type="hidden" name="work">
<table align="center">
<tr>
		<td colspan="2" align="center"><b> <h3>Enter Coupon code Details</h3></b></td>
		
	</tr>
	<tr>
		<td>Enter Website Name ::</td>
		<td><input type="text" name="website" value=""></td>
	</tr>
	<tr>
		<td>Enter Description::</td>
		<td><textarea cols="25" rows="10" name="desc"></textarea></td>
	</tr>
	<tr>
		<td>Enter Code ::</td>
		<td><input type="text" name="code" value=""></td>
	</tr>
	<tr>
		<td>Select Current Date ::</td>
		<td><input type="date" name="curdate" value=""></td>
	</tr>
	<tr>
		<td>Select Expiry Date ::</td>
		<td><input type="date" name="expdate" value=""></td>
	</tr>
	<tr height="40">
		<td colspan="2" align="center" ><input type="button" name="save" value="Save" onclick="docsin()"></td>
	</tr>
	<%if(!msg.equals(""))
	{
	%>
	<tr>
		<td colspan="2"><%=msg %></td>
	</tr>
	<%} %>
	
</table>
</form>
</body>
</html>