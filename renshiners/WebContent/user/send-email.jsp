<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%

String msg="";
if(session.getAttribute("User-Display")!=null)
{
	msg=(String)session.getAttribute("User-Display");
}
String to="";
if(session.getAttribute("Mail")!=null)
{
	to=(String)session.getAttribute("Mail");
}
%>

<%
   String result;
   // Recipient's email ID needs to be mentioned.
   

   // Sender's email ID needs to be mentioned
   String from = "admin@renshiners.com";

   // Assuming you are sending email from localhost
   String host = "localhost";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Password Recovery from Renshiners.com");
      // Now set the actual message
      message.setText(msg);
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<head>
<title>Send Email using JSP</title>
<script type="text/javascript">
            window.location.href = "MainController?taskId=2"
</script>
</head>
<body>
<center>
<h3>If you are not redirected automatically, follow the <a href='MainController?taskId=2'>link to example</a></h3>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>