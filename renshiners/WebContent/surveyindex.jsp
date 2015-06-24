<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Renshiners</title>
<link rel="stylesheet" href="css/stylesur.css" />
<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.uniform.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
      $(function(){
        $("input:checkbox, input:radio, input:file, select").uniform();
      });
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
    <script>
function doSave()
{
   
    document.myform.taskId.value="25";
    document.myform.method="post";
    document.myform.action="MainController";
    document.myform.submit();
}
	</script>
</head>
<body>

<article>
<header>
<h2>
SURVEY ABOUT INFLUENCE OF INTERNET</h2>
</header>
<form name="myform">
<input type="hidden" name="taskId">
	<ul><li><div align="center"><font color="red"> <h2>Don't Worry All the fields are optional</h2> </font></div></li>
        <li>
        	<label for="city"><br>&nbsp&nbspCity Name :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
           <br> <input type="text" name="city" size="40" id="city" /><br>
        </li>
    
		<li>
        <br><label for="Age">&nbsp&nbspAge :
			</label>
			
            <label><p id="para1"><input type="radio" name="age" value="Below 15"/>below 15
			</p></label><br>
            <label><p id="para2"><input type="radio" name="age" value="16-25"/>16-25</p></label><br>
			  <label><p id="para2"><input type="radio" name="age" value="26-35"/>26-35</p></label><br>
			   <label> <p id="para2"><input type="radio" name="age" value="36-45"/>36-45</p></label><br>
				 <label> <p id="para2"><input type="radio" name="age" value="46-55"/>46-55</p></label><br>
				  <label><p id="para2"><input type="radio" name="age" value="above 55"/>above 55</p></label><br>
            
            
            
			
            
          </li>    
        <li>
			<br>&nbsp&nbsp&nbsp&nbsp<label for="Itime">&nbsp&nbspInternet Usage Time Per day :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <select id="Itime" name="Iusage">
				<option>--Select--</option>
            
                <option>1-3 hours</option>
                <option>3-6 hours</option>
                <option>6-9 hours</option>
                <option>more than 9 hours;</option>
            </select>
			<label> </label><br>
        </li>
		
		<li>
		
		
        
        
			<br><label for="Oshop">&nbsp&nbspOnline Shopping :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			</label>
			
            <label><input type="radio" name="shop" value="Yes"/> Yes</label>
            <label><input type="radio" name="shop" value="No"/> No</label>
            
            
            
			
          
			<br><br><label for="Stype">&nbsp&nbspSites visting oftenly&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp</label>
			<label><input type="checkbox" name="CC" value="E"/>Ebay&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
			<label><input type="checkbox" name="CC" value="J"/>Jabong&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
			
			<label><input type="checkbox" name="CC" value="F"/>Flipkart&nbsp&nbsp&nbsp&nbsp&nbsp
			
			</label><br>
			
			<label><p id="para3"><input type="checkbox" name="CC" value="SC"/>Shopclues&nbsp&nbsp&nbsp&nbsp</p></label>
			
			<label> <p id="para4"><input type="checkbox" name="CC" value="A"/>Amazon&nbsp&nbsp&nbsp&nbsp&nbsp </p></label>
			<label><p id="para4"><input type="checkbox" name="CC" value="SD"/>&nbspSnapdeal </p></label>
			<label><p id="para6">Any other sites for shopping: 
			&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" size="30" id="others1" name="Othersites" /></p></label><br><br>
			<br><br><br>
		</li>
		
		<li>
			<br><label for="Obank">&nbsp&nbspOnline Banking :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <label><input type="radio" name="Bank" value="Yes"/> Yes</label>
            <label><input type="radio" name="Bank" value="No"/> No</label><br>
            
         </li>
		<li>
			
            
            
			<br><label for="Btype">&nbsp&nbspTransaction type&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
			<label><input type="checkbox" name="NB" value="NB"/>Net Banking </label>
			<label><input type="checkbox" name="NB" value="DC"/>Debit Card </label>
			
			<label><input type="checkbox" name="NB" value="CC"/>Credit Card </label><br>
			
        </li>
        <li>
			<br><label for="others">&nbsp&nbspOnline Ticket Booking :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <label><input type="radio" name="otb" value="Yes"/> Yes</label>
            <label><input type="radio" name="otb" value="No"/> No</label><br>
        </li>
        
       
        <li>
        	<br><br><label for="message">&nbsp&nbspSome of other sites for all<br>&nbsp&nbspthese things you are using :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <textarea cols="50" rows="5" id="message" name="Options"></textarea>
		</li>
		
	</ul>
    <p id="para3">
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	&nbsp&nbsp&nbsp&nbsp
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	 <input type="button" name="SS" value="submit" onclick="doSave()">
       
			
    </p>
</form>

</article>
<footer>
<h3>www.renshiners.com</h3>
</footer>
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