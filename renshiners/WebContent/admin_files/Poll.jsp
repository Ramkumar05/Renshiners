<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Poll Section</title>
<script>
	function doSave()
	{
		document.poll.work.value="poll_save";
		document.poll.method="post";
		document.poll.action="Admin";
		document.poll.submit();
	}
	function doAll()
	{
		document.poll.work.value="getAll";
		document.poll.method="post";
		document.poll.action="Admin";
		document.poll.submit();
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
	System.out.println(msg);
%>

<style>
	table
	{
		padding: 0px;
		height: 50%;
		width: 25%;
		
	}	
</style>
<form name="poll">
<input type="hidden" name="work">
	<table align="center" cellspacing="0px">
			<tr>
				<td>Id ::</td>
				<td><input type="text" name="poll-id" value=<%=msg %> disabled></td>
			</tr>
			<tr>
				<td>Question ::</td>
				<td><textarea name="question" cols="25" rows="5"></textarea></td>
			</tr>
			<tr>
				<td>Option 1 ::</td>
				<td><input type="text" name="opt1" value=""></td>
			</tr>
			<tr>
				<td>Option 2 ::</td>
				<td><input type="text" name="opt2" value=""></td>
			</tr>
			<tr>
				<td>Option 3 ::</td>
				<td><input type="text" name="opt3" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" name="Save" value="Save" onclick="doSave()"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" name="View All" value="View All" onclick="doAll()"></td>
			</tr>
	</table>

</form>
</body>
</html>