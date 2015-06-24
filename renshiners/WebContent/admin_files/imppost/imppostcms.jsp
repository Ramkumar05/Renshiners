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
	document.log.taskId.value="showimppost";
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

if(session.getAttribute("impidd")!=null)
{
	v0=(Vector)session.getAttribute("impidd");
}
if(session.getAttribute("imptitle")!=null)
{
	v1=(Vector)session.getAttribute("imptitle");
}
int[] id=new int[v1.size()];
String[] title=new String[v1.size()];
for(int i=0;i<v1.size();i++)
{
	id[i]=(Integer)v0.get(i);
	title[i]=(String)v1.get(i);
}
%>

<select name="optsel">
<%
for(int i=0;i<v1.size();i++)
{
%>
<option value="<%=id[i]%>"><%=id[i] %>: <%=title[i] %></option>
<%
}
%>

</select>

<select name="boxsel">
<option value="1">one</option>
<option value="2">two</option>

<option value="3">three</option>

<option value="4">four</option>

<option value="5">five</option>


</select>
<input type="button" value="go" onclick="doSelect()">
</form>
</body>
</html>\