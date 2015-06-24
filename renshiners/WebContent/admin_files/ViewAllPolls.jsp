<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.*,java.util.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All</title>
</head>
<%
	int id=0;
	String q="",op1="",op2="",op3="",r1="",r2="",r3="",s="";
	PollDetails pd=new PollDetails();
	Vector v1=new Vector();
	if(session.getAttribute("viewallpoll")!=null)
	{
		v1=(Vector)session.getAttribute("viewallpoll");
	}
	
%>
<body>
<table border="1" align="center">
	<tr>
		<td>Id</td>
		<td>Question</td>
		<td>Option 1</td>
		<td>Option 2</td>
		<td>Option 3</td>
		<td>Result 1</td>
		<td>Result 2</td>
		<td>Result 3</td>
		<td>Status</td>
	</tr>
	<%
		for(int i=0;i<v1.size();i++)
		{
			pd=(PollDetails)v1.get(i);
	%>
	
	<tr>
		<td><%=pd.getId() %></td>
		<td><%=pd.getQ() %></td>
		<td><%=pd.getOp1() %></td>
		<td><%=pd.getOp2() %></td>
		<td><%=pd.getOp3() %></td>
		<td><%=pd.getR1() %></td>
		<td><%=pd.getR2() %></td>
		<td><%=pd.getR3() %></td>
		<td><%=pd.getS() %></td>
	</tr>
	<%
		}
	%>
	
</table>
</body>
</html>