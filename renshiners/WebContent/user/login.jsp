<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
<title> Renshiners</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/Renshiners.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Renshiners-teal-grey.css" rel="stylesheet" type="text/css" />
<link href="css/_mobile.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="#"/>
 <link rel="stylesheet" type="text/css" href="style-login.css" />
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
<script>
	  function doLogin()
	  {
		  var a=document.getElementById('email').value;
		  var b=document.getElementById('password').value;
		  if(a.length==0 || b.length==0)
		  {
			  alert("Please Enter Required Fields");
		  }
		  else
		  {
			  document.indFrm.taskId.value="3";
			  document.indFrm.method="post";
			  document.indFrm.action="MainController";
			  document.indFrm.submit();
		  }
	  }
</script>
</head>
<body>
<div id="wrapper">
<div id="header">
<div class="top-block">
<div class="top-holder">

<%
session.setAttribute("LoginStatus","0");

%>

<!-- ***************** - Top Toolbar Left Side - ***************** -->
 <div class="toolbar-left">
 <ul class="sub-menu">
 <li><a href="MainController?taskId=0">Home</a></li>
 <li><a href="MainController?taskId=coming">Site Map</a></li>
 <li><a href="MainController?taskId=contact">Contact</a></li>
 <li>
 <a href="MainController?taskId=2" STYLE="text-decoration: none">Login</a>
	 
 </li>
 <li>
 <a href="MainController?taskId=01" STYLE="text-decoration: none">Register</a>
	 
 </li>
 </ul></div><!-- end toolbar-left -->
 <!-- ***************** - END Top Toolbar Left Side - ***************** -->
 


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

<a href="MainController?taskId=0" STYLE="text-decoration: none"" class="logo"><label id="para11"><img src="images/newlogo.png" vspace=30 width=130 height=80></label></a>


<!-- ***************** - END LOGO - ***************** -->




<!-- ***************** - Main Navigation - ***************** -->
<ul id="menu-main-nav">
<li><a href="MainController?taskId=0" STYLE="text-decoration: none"><span><strong>Home</strong><span class="navi-description">Go Home</span></span></a>

</li>
<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span><strong>Cinema</strong><span class="navi-description">All Cinema Updates</span></span></a>
<ul class="sub-menu">
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Songs</span></a></li>
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Videos</span></a></li>
    <li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>News</span></a></li>
	
	</ul>
</li>

<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span><strong>Tutorials</strong><span class="navi-description">Useful Tutorials</span></span></a>
<ul class="sub-menu">
 <li><a href="?taskId=coming" STYLE="text-decoration: none"><span>C programming</span></a></li>
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>CPP programming</span></a></li>
 <li><a href="MainController?taskId=coming" STYLE="text-decoration: none"><span>Java programming</span></a></li>
 <li><a href="MainController?taskId=ipmac" STYLE="text-decoration: none"><span>ipmac</span></a></li>
 


</ul>

</li>

<li><a href="MainController?taskId=postlist" STYLE="text-decoration: none"><span><strong>Sports</strong><span class="navi-description">All Sports Updates</span></span></a>
<ul class="sub-menu">
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Scores</span></a></li>
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>News</span></a></li>
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Rankings</span></a></li>
</ul>	
</li>

<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span><strong>News</strong><span class="navi-description">Breaking News</span></span></a>
<ul class="sub-menu">
	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Current</span></a></li>
<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Local</span></a></li>
<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>World</span></a></li>

</ul>
</li>

<li><a href="General?taskId=coup" STYLE="text-decoration: none"><span><strong>Coupon Codes</strong><span class="navi-description">New Products</span></span></a>
<ul class="sub-menu">
	<li><a href="General?taskId=coup" STYLE="text-decoration: none"><span>Free Coupons</span></a></li>

	<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Latest Products</span></a></li>
<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Cars</span></a></li>
<li><a href="General?taskId=postlist" STYLE="text-decoration: none"><span>Bikes</span></a></li>

</ul>
</li>
<!-- ***************** - END Main Navigation - ***************** -->





</div><!-- header-area -->
</div><!-- end rays -->
</div><!-- end header-holder -->
</div><!-- end header -->
 
 

 
<div id="main">
<div class="main-area">

<!-- ***************** - START Title Bar - ***************** -->

<!-- ***************** - END Title Bar - ***************** -->




<div class="main-holder">

<!-- ***************** - START sub-nav - ***************** -->

<!-- ***************** - END sub-nav - ***************** -->



<!-- ***************** - START Content - ***************** -->
<div id="content">





<center>
<%

String msg="";
if(session.getAttribute("User-Display")!=null)
{
	msg=(String)session.getAttribute("User-Display");
}
%>
<form name="indFrm">
<input type="hidden" name="taskId">
	  <h1>Members Log in</h1>
  <div class="inset">
  <p>
    <label for="email">EMAIL ADDRESS</label>
    <input type="text" name="us" id="email" >
  </p>
  <p>
    <label for="password">PASSWORD</label>
    <input type="password" name="ps" id="password">
  </p>
  </div>
   <p>

    <label for="remember"><font color="red"><b><%=msg %></b></font></label>
  </p>
  <p class="p-container">
    <span><a href="MainController?taskId=user-forgot" style="text-decoration: none">Forgot password ?</a></span>
    <input type="button" name="go" id="go" value="LogIn" onclick="doLogin()">
  </p>
</form>


</center>


<!-- end callout-wrap -->
<br class="clear" />




</div><!-- end content -->

<!-- ***************** - END content - ***************** -->


		
</div><!-- end main-holder -->
</div><!-- main-area -->






<!-- ***************** - Top Footer - ***************** --> 
<div id="footer">
<div class="footer-area">
<div class="footer-wrapper">
<div class="footer-holder">


<!-- /***************** - Footer Content Starts Here - ***************** --> 




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
 <li><a href="index-jquery-1.html">Home</a></li>
 <li><a href="template-sitemap.html">Sitemap</a></li>
 <li><a href="template-contact-iphone.html">Contact</a></li>
 </ul>
 </div><!-- end foot_right -->
 </div><!-- end info -->
</div><!-- end footer_bottom -->

<!-- /***************** - END Bottom Footer - ***************** --> 




</div></div>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="js/jquery-1-slider.js"></script>
<script type="text/javascript" src="js/testimonial-slider.js"></script>
</body>
