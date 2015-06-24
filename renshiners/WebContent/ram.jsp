<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
InetAddress ipaddr;
String ipaddress="";
String Macaddress="",Sysname,Sysipaddr;

try{
ipaddr = InetAddress.getLocalHost();
System.out.println("IPAddress"+ipaddr);
System.out.println();
ipaddress=ipaddr.toString();

//Get the MACAddress of the System

NetworkInterface ni = NetworkInterface.getByInetAddress(ipaddr);
byte[] mac = ni.getHardwareAddress();


StringBuffer sb = new StringBuffer();
for (int i = 0; i < mac.length; i++) {
	String s = ""+mac[i];

	if(i < mac.length - 1){
		s = ""+mac[i];

	}
	int j=Integer.parseInt(s);
	String s1=Integer.toHexString(j);
	if(s1.length()>2){
		int l=s1.length()-2;
		s1 = s1.substring(l);
	}
	if(i != 0){
		s1 = "-"+s1;
	}
		sb.append(s1);

	}


	Macaddress=sb.toString();
	System.out.println("MACAddress");

	//Displaying MAC Address at the Client Side

		for (int i = 0; i < mac.length; i++) {

			System.out.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : "");

		}
	}catch(Exception e){

				System.out.println("Exception"+e);
		}
		System.out.println();



%>
Mac id <%=Macaddress %><br>
Ip <%=ipaddress %>
</body>
</html>