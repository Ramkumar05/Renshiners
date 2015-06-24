<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show code</title>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-32290925-1']);
  _gaq.push(['_setDomainName', 'renshiners.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
<body>
<% System.out.println(request.getParameter("nos"));%>


<%
	Coupons c=new Coupons();
	Vector v=new Vector();
	if(session.getAttribute("WholeCoupons")!=null)
	{
		v=(Vector)session.getAttribute("WholeCoupons");
	}
%>

<table id="taba" width="100%">
<tr class="tab">
		<td width="15%"><b>Posted on</b></td>
		<td width="20%"><b>Website</b></td>
		<td width="35%" align="center"> <b>Description</b></td>
		<td width="20%" align="center"><b>Code</b></td>
		<td width="10%"><b>Expiry Date</b></td>
</tr>
<%
String website="";
String desc="";
String code="";
String  posted="";
String exp="";

Coupons c1=new Coupons();
	int nos=Integer.parseInt(request.getParameter("nos"));
	c1=(Coupons)v.get(nos);
	website=c1.getWebsite();
	desc=c1.getDesc();
	code=c1.getCode();
	posted=c1.getPosted();
	exp=c1.getExp();
%>
<tr height="25">
<td colspan="5"><hr></td>
</tr>
	<tr id="tab">
		<td><FONT COLOR="GREY" face="aerial"> <%=posted %></FONT></td>
		<td><FONT COLOR="GREY" face="aerial"><%=website %></FONT></td>
		<td><FONT COLOR="GREY" face="aerial"><%=desc %></FONT></td>
		<td align="center" ><font color="red"><b><%=code %></b></font></td>
		<td><FONT COLOR="GREY" face="aerial"><%=exp %></FONT></td>
	</tr>
<% %>
</table>

</body>
</html>