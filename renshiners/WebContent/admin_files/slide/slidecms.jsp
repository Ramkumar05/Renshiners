<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
input.largerCheckbox
{
width: 25px;
height: 25px;
}
//-->
</style>
<script type="text/javascript">
function doSelect()
{
	document.log.taskId.value="sliderpost";
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

if(session.getAttribute("slideidd")!=null)
{
	v0=(Vector)session.getAttribute("slideidd");
}
if(session.getAttribute("slidetitle")!=null)
{
	v1=(Vector)session.getAttribute("slidetitle");
}
int[] id=new int[v1.size()];
String[] title=new String[v1.size()];
for(int i=0;i<v1.size();i++)
{
	id[i]=(Integer)v0.get(i);
	title[i]=(String)v1.get(i);
	System.out.println("slideid:"+id[i]);
	System.out.println("slidetitle:"+title[i]);
}
%>

<table border=1>
<%
int j=0;
for(int i=0;i<v1.size();i++)
{
%>



	<tr>
				<td>
					<input type="checkbox"  class="largerCheckbox" name="check<%=j %>" value="<%=id[i]%>">
				</td>
				<td>
				<font size="6"><%=id[i]%></font>
				</td>
				<td>
					<font size="6"><%=title[i] %></font>
				</td>
	</tr>
			<%j++;
}
%>
		</table>
<input type="button" value="go" onclick="doSelect()">
</form>
</body>
</html>