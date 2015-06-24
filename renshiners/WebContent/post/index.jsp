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
<title> Renshiners</title>
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





<!-- ***************** - Homepage jQuery Slider - ***************** -->
<div class="home-bnr-jquery">
<ul>
<li class="jqslider">
 <div class="home-banner-main">
 <a href="MainController?taskId=page11" STYLE="text-decoration: none""><h2>Veeram Review</h2></a>
 <a href="MainController?taskId=page11" STYLE="text-decoration: none""><p>With the mass hit of Aarambam everyone celebrated Thala Diwali last time and now its time to celebrate Thala pongal with another block buster hit movie Veeram.....</p></a>
 
 </div><!-- end home-banner-main -->

 <div class="home-banner-sub">
 <div class="home-banner-sub-content">
 <a href="MainController?taskId=page11" STYLE="text-decoration: none""><img src="images/veeram.jpg"  width="404" height="256" /></a><div class="home-banner-bottom">&nbsp;</div>
 </div><!-- end home-banner-sub-content -->
 </div><!-- end home-banner-sub -->
</li>
<li class="jqslider">
 <div class="home-banner-main">
 <a href="MainController?taskId=p12" STYLE="text-decoration: none""><h2>Jilla Review</h2></a>
 <a href="MainController?taskId=p12" STYLE="text-decoration: none""><p>A commercial movie written and directed by Neason. Mohanlal and Vijay acted in a lead role....</p></a>
 
 </div><!-- end home-banner-main -->

 <div class="home-banner-sub">
 <div class="home-banner-sub-content">
 <a href="MainController?taskId=p12" STYLE="text-decoration: none""><img src="images/jilla.jpg"  width="404" height="256" /></a><div class="home-banner-bottom">&nbsp;</div>
 </div><!-- end home-banner-sub-content -->
 </div><!-- end home-banner-sub -->
</li>

<li class="jqslider">
 <div class="home-banner-main">
 <h2>Veeram vs Jilla</h2>
 <p>After a long time Thala and Thalapathy going to compete in this pongal</p>
 </div><!-- end home-banner-main -->

 <div class="home-banner-sub">
 <div class="home-banner-sub-content">
 <a href="MainController?taskId=p1" STYLE="text-decoration: none""><img src="images/tvt.jpg"  width="404" height="256" /></a><div class="home-banner-bottom">&nbsp;</div>
 </div><!-- end home-banner-sub-content -->
 </div><!-- end home-banner-sub -->
</li>




<li class="jqslider">
 <div class="home-banner-main">
 <h2>India's Successfull Year 2013</h2>
 <p>In 2013 Indian Cricket Team have so many matches and series win than lose under Dhoni's Captaincy in all forms of cricket..</p>
 </div><!-- end home-banner-main -->

 <div class="home-banner-sub">
 <div class="home-banner-sub-content">
 <a href="MainController?taskId=p2" STYLE="text-decoration: none""><img src="images/dhoni.jpg" width="404" height="256" /></a><div class="home-banner-bottom">&nbsp;</div>
 </div><!-- end home-banner-sub-content -->
 </div><!-- end home-banner-sub -->
</li>

<li class="jqslider">
 <div class="home-banner-main">
 <h2>Samsung Galaxy Note 10.1</h2>
 <p>Check out for specifications for Galaxy Note 10.1 here..</p>
 </div><!-- end home-banner-main -->

 <div class="home-banner-sub">
 <div class="home-banner-sub-content">
 <a href="MainController?taskId=p4"><img src="images/notep2.jpg"  width="404" height="256" /></a><div class="home-banner-bottom">&nbsp;</div>
 </div><!-- end home-banner-sub-content -->
 </div><!-- end home-banner-sub -->
</li>


 
 



</ul></div><!-- end home-bnr-jquery -->

<!-- ***************** - END Homepage jQuery Slider - ***************** -->






<!-- ***************** - Homepage Content Area - ***************** -->
<div class="home-jquery-content">
<br class="clear" />


<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=p5"><img src="images/kochadayan.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Kochadaiyaan Movie</h6>
 <p>Kochadaiyaan movie has Expected to be released this year </p>
 <p><a href="MainController?taskId=p5"><strong>See More </strong></a></p>
</div><!-- end first one_fourth_column -->



<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=24"><img src="images/survey.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Online Survey</h6>
 <p>Survey about influence of Internet among current People </p>
 <p><a href="MainController?taskId=24"><strong>See More</strong></a></p>
</div><!-- end second one_fourth_column -->



<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=p2"><img src="images/sachin.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Indian Cricket-2013</h6>
 <p>India had a more successful matches in the year 2013 </p>
 <p><a href="MainController?taskId=p2"><strong>See More</strong></a></p>
</div><!-- end third one_fourth_column -->



<div class="one_fourth_last" >
	<table id="table2" height="320" width="200">
    <tr>
    <td bgcolor="#3333CC">
    	<table id="table3" width=200>
    		<tr >
    			<td color=black>
    				<center><label id="para3">Today's Poll</label></center>
    			</td>
    		</tr>
    	</table>
    	<%
	Vector<String> v=new Vector<String>();
    String q="",op1="",op2="",op3="";
	if(session.getAttribute("poll")!=null)
	{
		v=(Vector)session.getAttribute("poll");
	
		
		q=v.get(0);
		op1=v.get(1);
		op2=v.get(2);
		op3=v.get(3);
	}
%>
    	<table id="table4">
    		<tr>
    			<td>
    			
    			<label id="para2"><%=q %><br></label>
    			</td>
    		</tr>
    			
     
        <tr id="ajaxR">
        	<td >
        	<input type="radio" name="ggg" value=<%=op1%>><label id="para2"><%=op1 %></label>
        	 <br>
      		<br>
         <input type="radio" name="ggg" value=<%=op2%>><label id="para2"><%=op2 %></label>
        <br>
        <br>
        <input type="radio" name="ggg" value=<%=op3%>><label id="para2"><%=op3 %></label>
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
    </td>
    </tr>
 </table>
</div><!-- end fourth one_fourth_column -->




<br class="clear" /> 
 
</div><!-- end home-jquery-content -->


<!-- ***************** - END Homepage Content Area - ***************** --> 

<!-- ***************** - Homepage Content Area - ***************** -->
<div class="home-jquery-content">
<br class="clear" />

<div class="one_fourth_last">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=p4"><img src="images/notep.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Samsung Galaxy Note 10.1</h6>
 <p>Check out for specifications for Galaxy Note 10.1 here</p>
 <p><a href="MainController?taskId=p4"><strong>See More</strong></a></p>
</div><!-- end fourth one_fourth_column -->

<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=p3"><img src="images/election.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Meeting for Alliance</h6>
 <p> This year is most important year for Indians to elect.</p>
 <p><a href="MainController?taskId=p3"><strong>See More</strong></a></p>
</div><!-- end first one_fourth_column -->



<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=coming"><img src="images/tutorial.jpg"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Learning Tutorials</h6>
 <p>Get useful tutorials to learn programming languages</p>
 <p><a href="MainController?taskId=coming"><strong>See More</strong></a></p>
</div><!-- end second one_fourth_column -->



<div class="one_fourth">
	<div class="modern_img_frame modern_four_col_large">
<div class="modern_preload_four_col_large">
 	<div class="attachment-fadeIn"><a href="MainController?taskId=coming"><img src="images/save.png"  width="190" height="111" /></a></div></div>
	</div><!-- end modern_img_frame -->
 
 <h6>Coupon Codes</h6>
 <p>Click here for all Coupon codes to save your money</p>
 <p><a href="General?taskId=coup"><strong>See More</strong></a></p>
</div><!-- end third one_fourth_column -->







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
<script type="text/javascript">
            window.location.href ="MainController?taskId=0"
</script>
</body>
</html>