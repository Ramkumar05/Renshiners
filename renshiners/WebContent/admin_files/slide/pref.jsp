<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function doSelect()
{
	document.log.taskId.value="slideview";
	document.log.method="post";
	document.log.action="General";
	document.log.submit();
}

</script>

</head>
<body>
<form name="log">
<input type="hidden" name="taskId">
<%
Vector v0=new Vector();
Vector v1=new Vector();

if(session.getAttribute("prefidd")!=null)
{
	v0=(Vector)session.getAttribute("prefidd");
}
if(session.getAttribute("preftitle")!=null)
{
	v1=(Vector)session.getAttribute("preftitle");
}
int[] id=new int[v1.size()];
String[] title=new String[v1.size()];
for(int i=0;i<v1.size();i++)
{
	id[i]=(Integer)v0.get(i);
	title[i]=(String)v1.get(i);
}
%>
<table border=1>
<tr>
<td>
no
</td>
<td>
post id
</td>
<td>
title
</td>
<td>
preference
</td>
</tr>
<%
int j=0;
for(int i=0;i<v1.size();i++)
{
%>
<tr>

<td><%=j+1 %>
</td>
<td>
	<input type="text" name="id<%=j %>" size="4" value="<%=id[i] %>" readonly>
</td>
<td>
<%=title[i] %> 
</td>
<td>
	<input type="text" name="pref<%=j %>" size="4">

</td>
</tr>
<%
j++;

}
%>



</table>
<input type="button" value="go" onclick="doSelect()">
</form>
</body>
</html>