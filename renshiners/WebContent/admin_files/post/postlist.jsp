<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
<title> Renshiners</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/Renshiners.js"></script>
<script>
function doView()
{
	alert("ok");
	document.postform.task.value="postview";
	document.postform.method="post";
	document.postform.action="General";
	document.postform.submit();
}
</script>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="post/post.css" rel="stylesheet" type="text/css" />
<link href="css/Renshiners-teal-grey.css" rel="stylesheet" type="text/css" />
<link href="css/_mobile.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="#"/>

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
<form name="postform">
<input type="hidden" name="task">
<div id="wrapper">
<div id="header">
<div class="top-block">
<div class="top-holder">



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
<div class="main-area">

<!-- ***************** - START Title Bar - ***************** -->

<!-- ***************** - END Title Bar - ***************** -->




<div class="main-holder">

<!-- ***************** - START sub-nav - ***************** -->

<!-- ***************** - END sub-nav - ***************** -->



<!-- ***************** - START Content - ***************** -->
<div id="content">




<%
String msg="";
System.out.println("hello1");
Vector vv0=new Vector();
Vector vv1=new Vector();
Vector vv2=new Vector();
Vector vv3=new Vector();
Vector vv5=new Vector();


if(session.getAttribute("idd")!=null)
{
	vv0=(Vector)session.getAttribute("idd");
}
if(session.getAttribute("category")!=null)
{
	vv1=(Vector)session.getAttribute("category");
}
if(session.getAttribute("title")!=null)
{
	vv2=(Vector)session.getAttribute("title");
}
if(session.getAttribute("sd")!=null)
{
	vv3=(Vector)session.getAttribute("sd");
}
if(session.getAttribute("img")!=null)
{
	vv5=(Vector)session.getAttribute("img");
}

System.out.println("hello2");
System.out.println("vector size;"+vv1.size());
int i=0;
int[] id=new int[1000];

String[] title=new String[vv1.size()];
String[] category=new String[vv1.size()];
String[] sd=new String[vv1.size()];
String[] img=new String[vv1.size()];
for(i=0;i<vv1.size();i++)
{
	System.out.println("hello3");

	id[i]=(Integer)vv0.get(i);
	category[i]=(String)vv1.get(i);
	System.out.println("hello4");

	title[i]=(String)vv2.get(i);
	sd[i]=(String)vv3.get(i);
	img[i]=(String)vv5.get(i);
	System.out.println("hello5");

	System.out.println("id:"+i+"="+id[i]);
	System.out.println("category:"+i+"="+category[i]);
	System.out.println("title:"+i+"="+title[i]);
	System.out.println("sd:"+i+"="+sd[i]);
	System.out.println("img:"+i+"="+img[i]);
	System.out.println("hello6");
}
%>

<table width="100%" height="100%" border="1">
<%
for(i=0;i<vv1.size();i++)
{
%>
<tr>

  <td>
 
 <a href="Admin?work=postview&x=<%=id[i]%>" STYLE="text-decoration: none"><%=id[i] %></a>
 </td>
 <td>
 
  <a href="Admin?work=postview&x=<%=id[i]%>" STYLE="text-decoration: none"><%=title[i] %></a>
 </td>
 <td>
 
  <a href="Admin?work=postview&x=<%=id[i]%>" STYLE="text-decoration: none"><%=category[i] %></a>
 </td>
 <td>
 
 <a href="Admin?work=postview&x=<%=id[i]%>" STYLE="text-decoration: none"> <%=sd[i] %></a>
 </td>
 <td>
 
  <a href="Admin?work=postview&x=<%=id[i]%>" STYLE="text-decoration: none"><%=img[i] %></a>
 </td>
 </tr>
<%
}
%>
 
 </table>
    </form>  


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
</form>
</body>
