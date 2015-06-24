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
<script> function do1()
   {

	   document.getElementById('success').innerHTML="";
		var xmlhttp;
       	var x=document.getElementsByName('ggg');
       	
		
		var pollValue;
       	for (var i = 0; i < x.length; i++) 
		{       
			if (x[i].checked) 
			{
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
         
       xmlhttp.open("GET","MainController?surv="+pollValue+"&taskId=survey",true);
       xmlhttp.send();
       
	
   }
  
 </script>
</head>
<body>
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




<p><h1>Poll Section</h1></p>
	<table id="table4">
    		<tr>
    			<td>
    			
    			<label id="para2">Which is your choice on Jan 10,2014 ??<br></label>
    			</td>
    		</tr>
    			
     
        <tr id="ajaxR">
        	<td >
        	<input type="radio" name="ggg" value="Veeram"><label id="para2">Veeram</label>
        	 <br>
      		<br>
         <input type="radio" name="ggg" value="Jilla"><label id="para2">Jilla</label>
        <br>
        <br>
        <input type="radio" name="ggg" value="Both"><label id="para2">Both</label>
        <br>
        <br>
        
        <center><label id="para4" ><img src="images/Submit.jpg" width=60 height=25 onclick="do1()"></label></center>
      		</td>
      	</tr>
      	<tr>
      		<td id="success" align="center"></td>
      	</tr>
     
        </td>
        </table>
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
 <div id="foot_left"><p>Copyright &copy; 2013 Renshiners.com. All rights reserved.</p>
 </div><!-- end foot_left -->
 
 
 <div id="foot_right">
 <div class="top-footer"><a href="#" class="link-top">top</a></div>
 
 <ul>
 <li><a href="index-jquery-1.html">Home</a></li>
 <li><a href="template-sitemap.html">Sitemap</a></li>
 <li><a href="template-contact-iphone.html">Contact</a></li>
 <li><a href="template-blog.html">Blog</a></li>
 <li><a href="http://themeforest.net/item/Renshiners-clean-and-modern-website-template/234990">Purchase</a></li>
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
