<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.*" import="java.util.*"%>
<!DOCTYPE HTML>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if !IE]><!--><html lang="en-US"><!--<![endif]-->
<head>

<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
<title> Renshiners Home</title>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/Renshiners.js"></script>

<script>
	
   function blink() {
	   //alert("hello");
      var f = document.getElementById('Foo');
      setInterval(function() {
         f.style.display = (f.style.display == 'none' ? '' : 'none');
      }, 1000);
   }
   function do1()
   {

	   document.getElementById('success').innerHTML="";
		var xmlhttp;
       	var x=document.getElementsByName('ggg');
       	var flag=0;
		
		var pollValue;
       	for (var i = 0; i < x.length; i++) 
		{       
			if (x[i].checked) 
			{
				flag=1;
				pollValue=x[i].value;
				break;
			}
		}	
		
       	if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
         	xmlhttp=new XMLHttpRequest();
        }
       	else
        {// code for IE6, IE5
         	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
       	xmlhttp.onreadystatechange=function()
        {
        	if (xmlhttp.readyState==4 && xmlhttp.status==200)
         	{
        		
        		
        		for (var i = 0; i < x.length; i++) 
        		{       
        			if (x[i].checked) 
        			{
        				x[i].checked=false;
        				break;
        			}
        			
        		}	
        		//alert(xmlhttp.responseText);
       	  		document.getElementById('ajaxR').innerHTML=xmlhttp.responseText;
         	}
        }
         
       	if(flag==1)
        { 
        		xmlhttp.open("GET","MainController?surv="+pollValue+"&taskId=survey",true);
        		xmlhttp.send();
        }
        else
        {
            alert("Please Select");
        }
       
	
   }
  
 </script>
<link href="style1.css" rel="stylesheet" type="text/css" />
<link href="css/Renshiners-teal-grey.css" rel="stylesheet" type="text/css" />
<link href="css/_mobile.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="#"/>
<style>
	table
	{
		padding:10px 40px; 
		
		border-radius:25px;
		border:thin;
	}
	.tab
	{
	font-weight:bold;
	}
	
</style>
</head>
<body onload="blink()">
<div id="wrapper">
<div id="header">
<div class="top-block">
<div class="top-holder">



<!-- ***************** - Top Toolbar Left Side - ***************** -->
 <div class="toolbar-left">
 <ul class="sub-menu">
 <li><a href="MainController?taskId=0" STYLE="text-decoration: none">Home</a></li>
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none">Site Map</a></li>
 <li><a href="MainController?taskId=contact" STYLE="text-decoration: none">Contact</a></li>
<li>
 <a href="MainController?taskId=2" STYLE="text-decoration: none">Login</a>
	 
 </li>
 <li>
 <a href="MainController?taskId=01" STYLE="text-decoration: none">Register</a>
	 
 </li>
 </ul></div><!-- end toolbar-left -->
 <!-- ***************** - END Top Toolbar Left Side - ***************** -->
 


<!-- ***************** - Top Toolbar Right Side - ***************** -->
<div class="toolbar-right">
    <ul>
    <li><a href="http://www.dhoniweb.com">www.dhoniweb.com</a></li>
    <li><a href="MainController?taskId=24" STYLE="text-decoration: none">Online Survey</a></li>
    </ul>
</div><!-- end toolbar-right -->
<!-- ***************** - END Top Toolbar Right Side - ***************** -->



</div><!-- end top-holder -->
</div><!-- end top-block -->




<div class="header-holder">
<div class="rays">
<div class="header-area">


<!-- ***************** - LOGO - ***************** -->

<a href="MainController?taskId=0" class="logo"><img src="images/erer.png" /></a>


<!-- ***************** - END LOGO - ***************** -->




<!-- ***************** - Main Navigation - ***************** -->
<ul id="menu-main-nav">
<li><a href="MainController?taskId=0" STYLE="text-decoration: none"><span><strong>Home</strong><span class="navi-description">Go Home</span></span></a>

</li>
<li><a href="MainController?taskId=p1" STYLE="text-decoration: none"><span><strong>Cinema</strong><span class="navi-description">All Cinema Updates</span></span></a>
<ul class="sub-menu">
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Songs</span></a></li>
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Videos</span></a></li>
    <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>News</span></a></li>
	
	</ul>
</li>

<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span><strong>Tutorials</strong><span class="navi-description">Useful Tutorials</span></span></a>
<ul class="sub-menu">
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>C programming</span></a></li>
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>CPP programming</span></a></li>
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Java programming</span></a></li>
 <li><a href="MainController?taskId=ipmac" STYLE="text-decoration: none"><span>ipmac</span></a></li>
 


</ul>

</li>

<li><a href="MainController?taskId=p2" STYLE="text-decoration: none"><span><strong>Sports</strong><span class="navi-description">All Sports Updates</span></span></a>
<ul class="sub-menu">
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Scores</span></a></li>
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>News</span></a></li>
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Rankings</span></a></li>
</ul>	
</li>

<li><a href="MainController?taskId=p3" STYLE="text-decoration: none"><span><strong>News</strong><span class="navi-description">Breaking News</span></span></a>
<ul class="sub-menu">
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Current</span></a></li>
<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Local</span></a></li>
<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>World</span></a></li>

</ul>
</li>

<li><a href="MainController?taskId=p4" STYLE="text-decoration: none"><span><strong>What's New</strong><span class="navi-description">New Products</span></span></a>
<ul class="sub-menu">
	<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Laptops</span></a></li>
<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Cars</span></a></li>
<li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Bikes</span></a></li>

</ul>
</li>
<!-- ***************** - END Main Navigation - ***************** -->




</div><!-- header-area -->
</div><!-- end rays -->
</div><!-- end header-holder -->
</div><!-- end header -->
 
 

 
<div id="main">
<div class="main-area home-main-area">
<div class="main-holder home-holder">
<div class="content_full_width">






<!-- ***************** - Homepage Content Area - ***************** -->
<div class="home-jquery-content">
<br class="clear" />



<!-- end first one_fourth_column -->
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
		<td width="15%">Posted on</td>
		<td width="20%">Website</td>
		<td width="35%"> Description</td>
		<td width="20%">Code</td>
		<td width="10%">Expiry Date</td>
</tr>
<%
String website="";
String desc="";
String code="";
String  posted="";
String exp="";

Coupons c1=new Coupons();
for(int i=0; i<v.size();i++)
{
	c1=(Coupons)v.get(i);
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
		<td><%=posted %></td>
		<td><%=website %></td>
		<td><%=desc %></td>
		<td><%=code %></td>
		<td><%=exp %></td>
	</tr>
<%} %>
</table>








<!-- end fourth one_fourth_column -->

<br class="clear" /> 
 
</div><!-- end home-jquery-content -->


<!-- ***************** - END Homepage Content Area - ***************** --> 

<!-- ***************** - Homepage Content Area - ***************** -->
<div class="home-jquery-content">
<br class="clear" />

<!-- end fourth one_fourth_column -->

<!-- end first one_fourth_column -->



<!-- end second one_fourth_column -->




<!-- end third one_fourth_column -->







<br class="clear" /> 
 
</div><!-- end home-jquery-content -->

</div><!-- end content -->
</div><!-- end main-holder -->
</div><!-- main-area -->





<!-- ***************** - Top Footer - ***************** --> 
<div id="footer">
<div class="footer-area">
<div class="footer-wrapper">
<div class="footer-holder">











<!-- ***************** - END Footer Content - ***************** --> 




</div><!-- footer-holder -->
</div><!-- end footer-wrapper -->
</div><!-- end footer-area -->
</div><!-- end footer -->


<!-- /***************** - END Top Footer Area - ***************** --> 






<!-- /***************** - Bottom Footer - ***************** --> 

<div id="footer_bottom">
 <div class="info">
 
 </div><!-- end foot_left -->
 
 
 <div id="foot_right">
 <div class="top-footer"><a href="#" class="link-top">top</a></div>
 
 <ul>
 <li><a href="MainController?taskId=0">Home</a></li>
 <li><a href="MainController?taskId=coming">Sitemap</a></li>
 <li><a href="MainController?taskId=coming">Contact</a></li>

 </ul>
 </div><!-- end foot_right -->
 </div><!-- end info -->
</div><!-- end footer_bottom -->

<!-- /***************** - END Bottom Footer - ***************** --> 




</div><!-- end main -->
</div><!-- end wrapper -->
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="js/jquery-1-slider.js"></script>
<script type="text/javascript" src="js/testimonial-slider.js"></script>
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
</body>
</html>