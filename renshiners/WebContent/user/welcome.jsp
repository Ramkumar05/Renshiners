<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

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
<link href="button-code.css" rel="stylesheet" type="text/css" />
<script>
window.onload = function () 
{
	if (typeof history.pushState === "function") 
	{
		history.pushState("jibberish", null, null);
		window.onpopstate = function () 
		{
			history.pushState('newjibberish', null, null);
			// Handle the back (or forward) buttons here
			// Will NOT handle refresh, use onbeforeunload for this.
		};
	}
	else 
	{
		var ignoreHashChange = true;
		window.onhashchange = function () 
		{
			if (!ignoreHashChange)
			{
				ignoreHashChange = true;
				window.location.hash = Math.random();
				// Detect and redirect change here
				// Works in older FF and IE9
				// * it does mess with your hash symbol (anchor?) pound sign
				// delimiter on the end of the URL
			}
			else 
			{
				ignoreHashChange = false;   
			}
		};
	}
}
</script>	
<style>
.CSSTableStyle {
	margin:0px;padding:0px;
	width:100%;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:18px;
	-webkit-border-bottom-left-radius:18px;
	border-bottom-left-radius:18px;
	
	-moz-border-radius-bottomright:18px;
	-webkit-border-bottom-right-radius:18px;
	border-bottom-right-radius:18px;
	
	-moz-border-radius-topright:18px;
	-webkit-border-top-right-radius:18px;
	border-top-right-radius:18px;
	
	-moz-border-radius-topleft:18px;
	-webkit-border-top-left-radius:18px;
	border-top-left-radius:18px;
}.CSSTableStyle table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableStyle tr:last-child td:last-child {
	-moz-border-radius-bottomright:18px;
	-webkit-border-bottom-right-radius:18px;
	border-bottom-right-radius:18px;
}
.CSSTableStyle table tr:first-child td:first-child {
	-moz-border-radius-topleft:18px;
	-webkit-border-top-left-radius:18px;
	border-top-left-radius:18px;
}
.CSSTableStyle table tr:first-child td:last-child {
	-moz-border-radius-topright:18px;
	-webkit-border-top-right-radius:18px;
	border-top-right-radius:18px;
}.CSSTableStyle tr:last-child td:first-child{
	-moz-border-radius-bottomleft:18px;
	-webkit-border-bottom-left-radius:18px;
	border-bottom-left-radius:18px;
}.CSSTableStyle tr:hover td{
	
}
.CSSTableStyle tr:nth-child(odd){ background-color:#aad4ff; }
.CSSTableStyle tr:nth-child(even)    { background-color:#ffffff; }.CSSTableStyle td{
	vertical-align:middle;
	
	
	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:11px;
	font-size:15px;
	font-family:Georgia;
	font-weight:normal;
	color:#000000;
}.CSSTableStyle tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableStyle tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableStyle tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableStyle tr:first-child td{
		background:-o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #005fbf), color-stop(1, #003f7f) );
	background:-moz-linear-gradient( center top, #005fbf 5%, #003f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf", endColorstr="#003f7f");	background: -o-linear-gradient(top,#005fbf,003f7f);

	background-color:#005fbf;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableStyle tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #005fbf 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #005fbf), color-stop(1, #003f7f) );
	background:-moz-linear-gradient( center top, #005fbf 5%, #003f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#005fbf", endColorstr="#003f7f");	background: -o-linear-gradient(top,#005fbf,003f7f);

	background-color:#005fbf;
}
.CSSTableStyle tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableStyle tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}</style>
</head>
<%
String str="";
if(session.getAttribute("LoginStatus")!=null)
{
	str=(String)session.getAttribute("LoginStatus");
}
if(str.equals("0"))
{
	String site = "http://www.renshiners.com/MainController?taskId=2" ;
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
}
%>

<script>
	function doGet(url)
	{
		document.indFrm.taskUrl.value=""+url;
		document.indFrm.taskId.value="getDownload";
		document.indFrm.method="post";
		document.indFrm.action="MainController";
		document.indFrm.submit();
	}
</script>

<body style="background-image:url('img/bg2.jpg')">

<form name="indFrm">

<input type="hidden" name="taskId">
<input type="hidden" name="taskUrl">
<div align="right">
	<a href="MainController?taskId=2" STYLE="text-decoration: none">
		<font color="red" size=4><b>Logout</b></font>
	</a>
</div>
<div height="10"></div>
<div class="CSSTableStyle" >
                <table width="145%" >
                    <tr>
                        <td>
                            Sl. No :
                        </td>
                        <td >
                            Subjects
                        </td>
                        <td>
                            Link
                        </td>
                    </tr>
                    <tr>
                        <td >
                            1
                        </td>
                        <td>
                            Principles of Programming and Design
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(1)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                           2
                        </td>
                        <td>
                            Web Technology
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(2)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                           3 
                        </td>
                        <td>
                           E-Commerce
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(3)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            4 
                        </td>
                        <td>
                            Management Information System
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(4)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            5 
                        </td>
                        <td>
                            Software Project Management
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(5)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            6 
                        </td>
                        <td>
                            Laser
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(6)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            7 
                        </td>
                        <td>
                            Non-Destructive Testing
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(7)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            8 
                        </td>
                        <td>
                            Herbal Wealth
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(8)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            9
                        </td>
                        <td>
                            Enterprise Resource planning
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(9)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            10 
                        </td>
                        <td>
                            Industrial Engineering
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(10)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            11 
                        </td>
                        <td>
                            Physics of Earth Quake
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(11)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            12 
                        </td>
                        <td>
                            Principles of Management
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(12)">Download</span>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            13 
                        </td>
                        <td>
                           Quality Management
                        </td>
                        <td align="center" style=cursor:pointer;>
                           <span class="code-button" onclick="doGet(13)">Download</span>
                        </td>
                    </tr>
                    <tr>
                      <td >&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
            
            
            
</form>
</body>
</html>