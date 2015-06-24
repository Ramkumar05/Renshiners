<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Slam Home</title>
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
	function doSave()
	{
		document.indFrm.workName.value="save";
		document.indFrm.method="post";
		document.indFrm.action="SlamToRam";
		document.indFrm.submit();
	}
</script>

<style>
.txt
{
	-webkit-border-radius: 30px 30px 30px 30px;
	border-radius: 30px 30px 30px 30px;
	-webkit-box-shadow: 10px 10px 10px 10px #141257;
	box-shadow: 8px 5px 10px 5px #AD6242;
}
</style>
</head>
<body>
<form name="indFrm" >
<input type="hidden" name="workName">
<table width="1200" height="1000" align="center" border="3">
	<tr>
		<td colspan="2" align="center">Slam to your Ram</td>
	</tr>
	<tr>
		<td>Name ::</td>
		<td><input type="text" name="nmeTxt" class="txt" value=""></td>
	</tr>
	<tr>
		<td>Date ::</td>
		<%
		int day, month, year;
	      int second, minute, hour;
	      GregorianCalendar date = new GregorianCalendar();
	 
	      day = date.get(Calendar.DAY_OF_MONTH);
	      month = date.get(Calendar.MONTH);
	      year = date.get(Calendar.YEAR);
	 
	      second = date.get(Calendar.SECOND);
	      minute = date.get(Calendar.MINUTE);
	      hour = date.get(Calendar.HOUR);
	      String dat=day+"-"+(month+1)+"-"+year;
	      String tim=hour+" : "+minute;
	      System.out.println(tim);
		%>
		<td ><input type="text" name="datTxt" class="txt" value=<%=dat %>  disabled>
		</td>
		
	</tr>
	<tr>
	<td>Your content ::</td>
		<td>
			<textarea cols="100" rows="40" class="txt" name="contentTxt">
			</textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="button" name=" Save " value=" Save " onclick="doSave()"></td>
	</tr>
</table>
</form>
</body>
</html>