<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="bean.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1">
<title> Renshiners</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
 <script type="text/javascript" src="jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/Renshiners.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/Renshiners-teal-grey.css" rel="stylesheet" type="text/css" />
<link href="css/_mobile.css" rel="stylesheet" type="text/css" />
<link href="dialogbox.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="#"/>
<style type="text/css">
    #content 
    {
        width:450px;
        margin:0 auto;
        font-family:Verdana, sans-serif;
    }
    legend {
        color:#0481b1;
        font-size:16px;
        padding:0 10px;
        background:#fff;
        -moz-border-radius:4px;
        box-shadow: 0 1px 5px rgba(4, 129, 177, 0.5);
        padding:5px 10px;
        text-transform:uppercase;
        font-family:Helvetica, sans-serif;
        font-weight:bold;
    }
    fieldset {
        border-radius:4px;
        background: #fff; 
        background: -moz-linear-gradient(#fff, #f9fdff);
        background: -o-linear-gradient(#fff, #f9fdff);
        background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#f9fdff)); /
        background: -webkit-linear-gradient(#fff, #f9fdff);
        padding:20px;
        border-color:rgba(4, 129, 177, 0.4);
    }
    input,
    textarea {
        color: #373737;
        background: #fff;
        border: 1px solid #CCCCCC;
        color: #aaa;
        font-size: 14px;
        line-height: 1.2em;
        margin-bottom:15px;

        -moz-border-radius:4px;
        -webkit-border-radius:4px;
        border-radius:4px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1) inset, 0 1px 0 rgba(255, 255, 255, 0.2);
    }
    input[type="text"],
    input[type="password"]{
        padding: 8px 6px;
        height: 22px;
        width:280px;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        background:#f5fcfe;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        -webkit-transition-duration: 400ms;
        -webkit-transition-property: width, background;
        -webkit-transition-timing-function: ease;
        -moz-transition-duration: 400ms;
        -moz-transition-property: width, background;
        -moz-transition-timing-function: ease;
        -o-transition-duration: 400ms;
        -o-transition-property: width, background;
        -o-transition-timing-function: ease;
        width: 380px;
        
        border-color:#ccc;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        opacity:0.6;
    }
    input[type="button"]{
        background: #222;
        border: none;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.3);
        text-transform:uppercase;
        color: #eee;
        cursor: pointer;
        font-size: 15px;
        margin: 5px 0;
        padding: 5px 22px;
        -moz-border-radius: 4px;
        border-radius: 4px;
        -webkit-border-radius:4px;
        -webkit-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        -moz-box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
        box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
    }
    textarea {
        padding:3px;
        width:96%;
        height:100px;
    }
    textarea:focus {
        background:#ebf8fd;
        text-indent: 0;
        z-index: 1;
        color: #373737;
        opacity:0.6;
        box-shadow:0 0 5px rgba(4, 129, 177, 0.5);
        border-color:#ccc;
    }
    .small {
        line-height:14px;
        font-size:12px;
        color:#999898;
        margin-bottom:3px;
    }
</style>
<script>
	function sendCode()
	{
		var e=document.getElementById("email").value;
		if(e.length>=10)
		{
			var xmlhttp;
			var img="<img src=\"img\\progress.gif\" height=\"25\" width=\"25\"/>";
			document.getElementById("loader").innerHTML=img;
			if (window.XMLHttpRequest)
			{
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
					//document.getElementById("result").innerHTML=xmlhttp.responseText;
					//alert(xmlhttp.responseText);
					var x=xmlhttp.responseText+"";
					var y=0;
					if(x==y)
					{
						img="<img src=\"img\\cross.png\" height=\"25\" width=\"25\"/>";
						document.getElementById("loader").innerHTML=img+"";
						document.getElementById('headTxt').innerHTML="Regarding Account Activation";
						document.getElementById('txt').innerHTML="</br>Your E-Mail-ID is Already Registered with Us</br>If you Forgot Password  Please Use Recovery Option in login page";
					}
					else
					{
						img="<img src=\"img\\Tick.png\" height=\"25\" width=\"25\"/>";
						document.getElementById("loader").innerHTML=img+" Mail Sent";
						document.getElementById('headTxt').innerHTML="Regarding Account Activation";
						document.getElementById('txt').innerHTML="</br>Activation Code Sent To Entered E-Mail-Id </br> </br><h5> Kindly Check Your INBOX or<font color=\"red\"><b> SPAM</b> </font></h5>";

						
					}
					$(function() 
					{
						$('#overlay').fadeIn('fast',function()
						{
							$('#box').animate({'top':'160px'},500);
						});
						$('#boxclose').click(function()
						{
							$('#box').animate({'top':'-200px'},500,function()
							{
								$('#overlay').fadeOut('fast');
							});
						});

					});
				}
			}  
			xmlhttp.open("GET","MainController?val="+e+"&taskId=mail",true);
			xmlhttp.send();
		}
		else
		{
			alert("Check your Mail Id");
		}
	}
		function checkmail()
	  {
		  
      	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
        var f=document.getElementById("email");
        var e=document.getElementById("email").value;
		var returnval=emailfilter.test(e);
		if (returnval==false)
		{
			alert("Please enter a valid email address.")
			  f.value="";
			  f.focus();
			  e.select()      
	    }
	    else
		{ 
			return true;
		}
  	}
	function mobile(e) 
	{
		var k;
    	document.all ? k = e.keyCode : k = e.which;
    	return ((k >= 48 && k <= 57)) ;
	}
	function onFoc()
	{
		document.getElementById("loader").innerHTML="";
	}
	function reg()
	{
		
		var name=document.getElementById("name").value;
		var mobile=document.getElementById("mno").value;
		var email=document.getElementById("email").value;
		var p1=document.getElementById("pass1").value;
		var p2=document.getElementById("pass2").value;
		var c=document.getElementById("c").value;
		if(name.length!=0 && email.length!=0 && p1.length!=0 && c.length!=0)
		{
			if(p1.length<5)
			{
				alert("Check your Password length ");
			}
			else
			{
				if(p1==p2)
				{
				
					
					
					document.indFrm.taskId.value="1";
					document.indFrm.method="post";
					
					document.indFrm.action="MainController";
					document.indFrm.submit();
				}
				else
				{
					alert("Passwords field not Matching");
				}
			}
		}
		else
		{
			alert("Please Fill all the fields");
		}
	}
	function login()
	{
		document.indFrm.taskId.value="2";
		document.indFrm.method="post";
		
		document.indFrm.action="MainController";
		document.indFrm.submit();
	}
</script>
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
<%
String name="";
String c="";
String mno="";
String email="";
String msg="";
if(session.getAttribute("User-Display")!=null)
{
	msg=(String)session.getAttribute("User-Display");
}
if(msg.equals("Something Went Wrong") || msg.equals("Wrong Information Entered"))
{
	System.out.println("Hello");
	UserRegDetails urd=new UserRegDetails();
	urd=(UserRegDetails)session.getAttribute("regDetails");
	name=""+urd.getName();
	c=""+urd.getC();
	
	mno=""+urd.getMno()+"";
	email=""+urd.getEmail();
	System.out.println("Hello--->"+name);
	%>
	<script>
		var a=document.getElementById("name");
		a.value='sdf';
		var b=document.getElementById("email");
		b.value=<%=email%>;
		var c=document.getElementById("mno");
		c.value=<%=mno%>;
		var d=document.getElementById("c");
		d.value=<%=c%>;
	</script>
	
	
	
	<%
}
%>

		
        <form name="indFrm">
        
        <input type="hidden" name="taskId" >
        <div>
        	<h2>&nbsp&nbspRegister to get regular updates</h2>
        </div>
            <fieldset>
                <legend>Register Form</legend>
                <div>
                    <input type="text" id="name" name="name1" placeholder="Name" value=<%
                    if(msg.equals("Something Went Wrong") || msg.equals("Wrong Information Entered"))
                    {
                    %>
                    <%=name %>
                    <%}
                    %> >
                </div>
                <div>
                    <input type="text" id="email" name="email1" placeholder="Email" onclick="onFoc()" onChange="return checkmail()" onblur="sendCode()"
value=""
                    
                    >
                    <span id="loader"></span>
                </div>
                <div>
                    <input type="password" id="pass1" name="p1" placeholder="Password ( Min 5 Chars )"/>
                </div>
				<div>
                    <input type="password" id="pass2" name="p2" placeholder="ReEnter-Password"/>
                </div>
                <div>
                    <input type="text" id="mno" name="mno1" placeholder="Mobile No (Optional)"/ onkeypress="return mobile(event)" maxlength="10"
                    
value=                    <%
                    if(msg.equals("Something Went Wrong") || msg.equals("Wrong Information Entered"))
                    {
                    %>
                    <%=mno %>
                    <%}
                    %>
                    
                    >
                </div>
				<div>
                    <input type="text" id="c" name="c1" placeholder="City" 
      value=              <%
                    if(msg.equals("Something Went Wrong") || msg.equals("Wrong Information Entered"))
                    {
                    %>
                    <%=c%>
                    <%}
                    %>
                    
                    >
                </div>
                <div>
                    <input type="text" id="passcode" name="passcode" placeholder="Activation Code from your E-Mail"/>
                </div>
                <%if(!msg.equals(""))
                	{%>
                <div><font color="red"><b><%=msg %></b></font>
                </div><%} %>  
                <input type="button" name="Register" value="Register"/ onclick="reg()">
                &nbsp&nbsp
               Already a User <A HREF="MainController?taskId=2" STYLE="text-decoration: none"><font color=#0481b1><b>Sign In</b></font></a>
            </fieldset>    
        </form>
  
		<div class="overlay" id="overlay" style="display:none;"></div>
        <div class="box" id="box">
            <a class="boxclose" id="boxclose"></a>
            <h1 id="headTxt"></h1>
            <p id="txt">
                
            </p>
        </div>
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
