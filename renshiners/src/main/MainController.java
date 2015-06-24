package main;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.Date;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.mail.*;
import bean.Coupons;

public class MainController extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		System.out.println("--- Main Controller ---");
		String nextUrl="";
		String task="0";
		int ajaxFlag=0;
		String mytask="";
		HttpSession ses = request.getSession();
		if(request.getParameter("taskId")!=null)
		{
			task=request.getParameter("taskId");
		}
		
		if(task.equalsIgnoreCase("0"))
		{
			
			
			try
			{
				int count=0;
				String q="",op1="",op2="",op3="";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="Select * from poll where status='1'";
				PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				Vector v1=new Vector();
				while(rs.next())
				{
					q=rs.getString(2);
					op1=rs.getString(3);
					op2=rs.getString(4);
					op3=rs.getString(5);
					v1.add(q);
					v1.add(op1);
					v1.add(op2);
					v1.add(op3);
				}
				ses.setAttribute("poll", v1);
			}
			catch(Exception e)
			{
				
			}
			int id=0;
			
			String title="";
			String sd="";
			String img="";
			Vector vv0=new Vector();
			Vector vv1=new Vector();
			Vector vv2=new Vector();
			Vector vv3=new Vector();

			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String sql="select id,title,sd,img from post where status=1 && slider=1  order by pref";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				while(rs1.next())
				{
					id=rs1.getInt(1);
					
					title=rs1.getString(2);
					sd=rs1.getString(3);
					
					img=rs1.getString(4);
					isExist1=true;
					System.out.println("Id:"+id);
					
					System.out.println("title:"+title);
					System.out.println("sd:"+sd);
					
					System.out.println("img:"+img);
					vv0.add(id);
					vv1.add(title);
					vv2.add(sd);
					vv3.add(img);
					
					ses.setAttribute("fid", vv0);
					ses.setAttribute("ftitle",vv1);
					ses.setAttribute("fsd", vv2);
					ses.setAttribute("fimg", vv3);
				nextUrl="/index_home.jsp";
					
					
				}
				if(!isExist1)
				{
					System.out.println("Record Not Found");
					String msgg="Record Not Found !!";
					
				
				}
				prest.close();
				con.close();
				
			}
			
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
			System.out.println("diplaying box contents");
			//diplaying box contents

			int boxid2=0;
			String title2="";
			String sd2="";
			String img2="";
			int id2=0;
			
			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				System.out.println("dddddddddddddd");
				String sql="select boxid,title,sd,img,id from imppost";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				Vector v1=new Vector();
				Vector v2=new Vector();
				Vector v3=new Vector();
				Vector v4=new Vector();
				Vector v5=new Vector();

				while(rs1.next())
				{
					
					boxid2=rs1.getInt(1);
					title2=rs1.getString(2);
					sd2=rs1.getString(3);
					img2=rs1.getString(4);
					id2=rs1.getInt(5);
					isExist1=true;
					System.out.println("box id2:"+boxid2);
					System.out.println("title2:"+title2);
					System.out.println("sd2:"+sd2);
					
					System.out.println("img2:"+img2);
					System.out.println("id2:"+id2);
					v1.add(boxid2);
					v2.add(title2);
					v3.add(sd2);
					v4.add(img2);
					v5.add(id2);

					ses.setAttribute("boxid", v1);
					ses.setAttribute("impdtitle", v2);

					ses.setAttribute("impdsd", v3);
					ses.setAttribute("impdimg", v4);
					
					ses.setAttribute("impdid", v5);
					nextUrl="/index_home.jsp";
					
					
				}
				if(!isExist1)
				{
					System.out.println("Record Not Found");
					String msgg="Record Not Found !!";
				}
				
				
				
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
			
	
			nextUrl="/index_home.jsp";	

		}
		if(task.equals("slam"))
		{
			nextUrl="/slam.jsp";
		}
		if(task.equals("slam1"))
		{
			System.out.print("erhwohri");
			String from="";
			String to="Elavarasan";
			String date="";
			String txt="";
			if(request.getParameter("nmetxt")!=null)
			{
				from=request.getParameter("nmetxt");
			}
			if(request.getParameter("slmtxt")!=null)
			{
				txt=request.getParameter("slmtxt");
			}
			Date d=new Date();
			date=d.toString();
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="insert into slam values(?,?,?,?)";
				PreparedStatement pre=con.prepareStatement(sql);
				
				pre.setString(1,from);
				pre.setString(2,to);
				pre.setString(3,date);
				pre.setString(4,txt);
				
				
				count=pre.executeUpdate();
				if(count >0)
				{
					System.out.println("Inserted");
					
				}
				else
				{
					System.out.println("Inserted");

				}
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();

			}
			try
			{
				int count=0;
				String q="",op1="",op2="",op3="";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="Select * from poll where status='1'";
				PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				Vector v1=new Vector();
				while(rs.next())
				{
					q=rs.getString(2);
					op1=rs.getString(3);
					op2=rs.getString(4);
					op3=rs.getString(5);
					v1.add(q);
					v1.add(op1);
					v1.add(op2);
					v1.add(op3);
				}
				ses.setAttribute("poll", v1);
			}
			catch(Exception e)
			{
				
			}
			int id=0;
			
			String title="";
			String sd="";
			String img="";
			Vector vv0=new Vector();
			Vector vv1=new Vector();
			Vector vv2=new Vector();
			Vector vv3=new Vector();

			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String sql="select id,title,sd,img from post where status=1 order by id desc limit 5 ";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				while(rs1.next())
				{
					id=rs1.getInt(1);
					
					title=rs1.getString(2);
					sd=rs1.getString(3);
					
					img=rs1.getString(4);
					isExist1=true;
					System.out.println("Id:"+id);
					
					System.out.println("title:"+title);
					System.out.println("sd:"+sd);
					
					System.out.println("img:"+img);
					vv0.add(id);
					vv1.add(title);
					vv2.add(sd);
					vv3.add(img);
					
					ses.setAttribute("fid", vv0);
					ses.setAttribute("ftitle",vv1);
					ses.setAttribute("fsd", vv2);
					ses.setAttribute("fimg", vv3);
				nextUrl="/index_home.jsp";
					
					
				}
				if(!isExist1)
				{
					System.out.println("Record Not Found");
					String msgg="Record Not Found !!";
					
				
				}
				prest.close();
				con.close();
				
			}
			
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
			System.out.println("diplaying box contents");
			//diplaying box contents

			int boxid2=0;
			String title2="";
			String sd2="";
			String img2="";
			int id2=0;
			
			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				System.out.println("dddddddddddddd");
				String sql="select boxid,title,sd,img,id from imppost";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				Vector v1=new Vector();
				Vector v2=new Vector();
				Vector v3=new Vector();
				Vector v4=new Vector();
				Vector v5=new Vector();

				while(rs1.next())
				{
					
					boxid2=rs1.getInt(1);
					title2=rs1.getString(2);
					sd2=rs1.getString(3);
					img2=rs1.getString(4);
					id2=rs1.getInt(5);
					isExist1=true;
					System.out.println("box id2:"+boxid2);
					System.out.println("title2:"+title2);
					System.out.println("sd2:"+sd2);
					
					System.out.println("img2:"+img2);
					System.out.println("id2:"+id2);
					v1.add(boxid2);
					v2.add(title2);
					v3.add(sd2);
					v4.add(img2);
					v5.add(id2);

					ses.setAttribute("boxid", v1);
					ses.setAttribute("impdtitle", v2);

					ses.setAttribute("impdsd", v3);
					ses.setAttribute("impdimg", v4);
					
					ses.setAttribute("impdid", v5);
					nextUrl="/index_home.jsp";
					
					
				}
				if(!isExist1)
				{
					System.out.println("Record Not Found");
					String msgg="Record Not Found !!";
				}
				
				
				
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
			
	
			nextUrl="/index_home.jsp";	

		}
		if(task.equalsIgnoreCase("01"))
		{
			
			nextUrl="/user/registration.jsp";
			
		}
		if(task.equalsIgnoreCase("26"))
		{
			
			nextUrl="/welcome.jsp";
			
		}
		
		
		if(task.equals("user-forgot"))
		{
			nextUrl="/user/forgot_pass.jsp";
			ses.setAttribute("User-Display",null);
		}
		if(task.equals("send-mail"))
		{
			nextUrl="/user/send-mail.jsp";
			String lgnEntered="";
			if(request.getParameter("us")!=null)
			{
				lgnEntered=request.getParameter("us");
			}
			try
			{
				int flag=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String sql="SELECT email,p1 FROM register where email=?";
				
				PreparedStatement prest=con.prepareStatement(sql);
				System.out.println("Query--->"+sql+" "+lgnEntered);
				prest.setString(1, lgnEntered);
				ResultSet rs=prest.executeQuery();
				String pass="";
				if(rs.next())
				{
					pass=rs.getString(2);
					flag=1;
				}
				if(flag==1)
				{
					String msg="User Name:"+lgnEntered+"\n Password :"+pass;
					ses.setAttribute("User-Display",msg);
					ses.setAttribute("Mail", lgnEntered);
					nextUrl="/user/send-email.jsp";
				}
				else
				{
					String msg="E-mail Id not Exist";
					ses.setAttribute("User-Display",msg);
					nextUrl="/user/forgot_pass.jsp";
				}
				prest.close();
				con.close();
			}
			catch(Exception e)
			{
				
			}
			
		}
		if(task.equals("mail"))
		{
			ajaxFlag=1;
			String val="";
			if(request.getParameter("val")!=null)
			{
				val=request.getParameter("val");
			}
			String to=val;
			String subj="Account Activation Code from renshiners.com";
			String result="";
			String toSes="";
			
			if(ses.getAttribute("PassCode")!=null)
			{
				toSes=(String)ses.getAttribute("PassCode");
			}
			
				UUID idOne = UUID.randomUUID();
				String msg="Your Activation Code \n"+idOne;
				String res="";
				int flag=1;
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql="SELECT * FROM register where email=?";
					PreparedStatement prest=con.prepareStatement(sql);
					prest.setString(1, val);
					ResultSet rs=prest.executeQuery();
					while(rs.next())
					{
						res="No";
						flag=0;
					}
				}
				catch(Exception e)
				{
				
				}
				int t=0;
				if(toSes.equals(val))
				{
					if(flag==1)
					{
						t=flag;
						flag=0;
					}
				}
				if(flag==1)
				{
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
		
					   try
					   {
					      // Create a default MimeMessage object.
					      MimeMessage message = new MimeMessage(mailSession);
					      // Set From: header field of the header.
					      message.setFrom(new InternetAddress(from));
					      // Set To: header field of the header.
					      message.addRecipient(Message.RecipientType.TO,
					                               new InternetAddress(to));
					      // Set Subject: header field
					      message.setSubject(subj);
					      // Now set the actual message
					      message.setText(msg);
					      // Send message
					      Transport.send(message);
					      result = "Sent message successfully....";
					   }
					   catch (MessagingException mex) 
					   {
					      mex.printStackTrace();
					      result = "Error: unable to send message....";
					   }
					   ses.setAttribute("PassCode", msg);
				}
				else
				{
					System.out.println("Mail Not Sent");
				}
				if(toSes.equals(val))
				{
					flag=t;
				}
				out.println(flag);
				System.out.println("Email Entered---"+val);
			
		}
		if(task.equalsIgnoreCase("1"))
		{
			String name="";
			String c="";
			String p1="";
			String mno="";
			String email="";
			
			if(request.getParameter("mno1")!=null)
			{
				mno=request.getParameter("mno1");
			}
			if(request.getParameter("name1")!=null)
			{
				name=request.getParameter("name1");
			}
			if(request.getParameter("email1")!=null)
			{
				email=request.getParameter("email1");
			}
			if(request.getParameter("p1")!=null)
			{
				p1=request.getParameter("p1");
			}
			if(request.getParameter("c1")!=null)
			{
				c=request.getParameter("c1");
			}
			
			
			System.out.println("name"+name);
			System.out.println("email"+email);
			System.out.println("pass"+p1);
			System.out.println("mno"+mno);
			System.out.println("city"+c);
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="insert into register values(?,?,?,?,?)";
				PreparedStatement pre=con.prepareStatement(sql);
				pre.setString(1,name);
				pre.setString(2,email);
				pre.setString(3,p1);
				pre.setString(4,mno);
				pre.setString(5,c);
				pre.executeUpdate();
				if(count >0)
				{
					nextUrl="/user/login.jsp";
				
					
				}
				else
				{
				
					
					
				}
				nextUrl="/user/login.jsp";
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
	}
		if(task.equalsIgnoreCase("24"))
		{
			nextUrl="/surveyindex.jsp";
		}
		if(task.equalsIgnoreCase("2"))
		{
			nextUrl="/user/login.jsp";
			ses.setAttribute("LoginSession", "false");
			ses.setAttribute("LoginStatus", "0");
			ses.setAttribute("User-Display",null);
		}
		
		if(task.equalsIgnoreCase("coming"))
		{
			nextUrl="/coming.jsp";
		}
		if(task.equalsIgnoreCase("contact"))
		{
			nextUrl="/contact.jsp";
		}
		if(task.equalsIgnoreCase("ipmac"))
		{
			nextUrl="/ipmac.jsp";
		}
		if(task.equalsIgnoreCase("25"))
		{
			
				String city="";
				String Iusage="";
				String age="";
				String shop="";
				String Othersites="";
				String Bank="";
				String otb="";
				String Options="";
				
				if(request.getParameter("city")!=null)
				{
					city=request.getParameter("city");
				}
				System.out.println(city);
				if(request.getParameter("age")!=null)
				{
					age=request.getParameter("age");
				}
				System.out.println(age);
				if(request.getParameter("Iusage")!=null)
				{
					Iusage=request.getParameter("Iusage");
				}
				System.out.println(Iusage);
				if(request.getParameter("shop")!=null)
				{
					shop=request.getParameter("shop");
				}
				System.out.println(shop);
				if(request.getParameter("Othersites")!=null)
				{
					Othersites=request.getParameter("Othersites");			
				}
				System.out.println(Othersites);
				if(request.getParameter("Bank")!=null)
				{
				Bank=request.getParameter("Bank");
				}
				System.out.println(Bank);
				if(request.getParameter("otb")!=null)
				{
					otb=request.getParameter("otb");
				}
				System.out.println(otb);
				if(request.getParameter("Options")!=null)
				{
					Options=request.getParameter("Options");
				}
				System.out.println(Options);
				Vector v1 = new Vector();
				if(request.getParameterValues("CC")!=null)
				{
					String[] oftenlyVisiting=request.getParameterValues("CC");
					for(int i=0;i<oftenlyVisiting.length;i++)
					{
						v1.add(oftenlyVisiting[i]);
						System.out.println("--"+oftenlyVisiting[i]);
					}
				}
				Vector v2=new Vector();
				if(request.getParameterValues("NB")!=null)
				{
					String[] netBanking=request.getParameterValues("NB");
					for(int i=0;i<netBanking.length;i++)
					{
						v2.add(netBanking[i]);
						System.out.println("--"+netBanking[i]);
					}
				}
				String cc="no",dc="no",nb="no",t="";
				System.out.println(v1.size()+"--- v1");
				for(int i=0;i<v2.size();i++)
				{
					t=(String)v2.get(i);
					if(t.equals("NB"))
					{
						nb="yes";
					}
					if(t.equals("CC"))
					{
						cc="yes";
					}
					if(t.equals("DC"))
					{
						dc="yes";
					}
				}
				String e="no",j="no",f="no",sc="no",sd="no",a="no";
				t="";
				for(int i=0;i<v1.size();i++)
				{
					t=(String)v1.get(i);
					if(t.equals("E"))
					{
						e="yes";
					}
					if(t.equals("J"))
					{
						j="yes";
					}
					if(t.equals("F"))
					{
						f="yes";
					}
					if(t.equals("A"))
					{
						a="yes";
					}
					if(t.equals("SC"))
					{
						sc="yes";
					}
					if(t.equals("SD"))
					{
						sd="yes";
					}
				}
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql="insert into survey_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					System.out.println(sql);
					PreparedStatement prest=con.prepareStatement(sql);
					prest.setString(1,city);
					prest.setString(2,cc);
					prest.setString(3,dc);
					prest.setString(4,nb);
					prest.setString(5,Iusage);
					prest.setString(6,Bank);
					prest.setString(7,shop);
					prest.setString(8,otb);
					prest.setString(9,Othersites);
					prest.setString(10,Options);
					prest.setString(11,e);
					prest.setString(12,j);
					prest.setString(13,f);
					prest.setString(14,sc);
					prest.setString(15,a);
					prest.setString(16,sd);
					prest.setString(17,age);
					prest.executeUpdate();
					nextUrl="/Surveysuccess.jsp";
					con.close();
				}
				catch(Exception e1)
				{
					nextUrl="/surveyindex.jsp";
					System.out.println("Caught an Exception");
				}

			
		}
		if(task.equalsIgnoreCase("p1"))
		{
			nextUrl="/page1.jsp";
		}
		if(task.equalsIgnoreCase("p5"))
		{
			nextUrl="/page5.jsp";
		}
		if(task.equalsIgnoreCase("3"))
		{
			String lgnEntered="";
			String pwdEntered="";
			System.out.println("check1");
			if(request.getParameter("us")!=null)
			{
				lgnEntered=request.getParameter("us");
			}
			if(request.getParameter("ps")!=null)
			{
				pwdEntered=request.getParameter("ps");
			}
			System.out.println("check");
			System.out.println("Login :: "+lgnEntered);
			System.out.println("Password :: "+pwdEntered);
			
			
			
		int flag=0;
		int flag1=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
			String sql="SELECT email,p1 FROM register where email=? and p1=?";
			
			PreparedStatement prest=con.prepareStatement(sql);
			
			prest.setString(1, lgnEntered);
			prest.setString(2, pwdEntered);
			ResultSet rs=prest.executeQuery();
			if(rs.next())
			{
				flag=1;
			}
			if(flag==1)
			{
				
				ses.setAttribute("LoginSession", "true");
				ses.setAttribute("LoginStatus","1");
				nextUrl="/user/welcome.jsp";
			}
			else
			{
				ses.setAttribute("LoginSession", "false");
				ses.setAttribute("LoginStatus","0");
				System.out.println("Invalid LoginID or Password");
				String msg="Invalid LoginID or Password";
				ses.setAttribute("User-Display",msg);
				nextUrl="/user/login.jsp";
			}
			prest.close();
			con.close();
		}
		
		catch(Exception e)
		{
			System.out.println("Exception");
			e.printStackTrace();
		}		
		}
		if(task.equalsIgnoreCase("poll"))
		{
			nextUrl="/poll.jsp";
		}
		if(task.equalsIgnoreCase("4"))
		{
			nextUrl="/index_home.jsp";
		}
		if(task.equals("survey"))
		{
			ajaxFlag=1;
			String surv="";
			surv=request.getParameter("surv");
			System.out.println("Ajax--->"+surv);
			int id=1;
			String op1="";
			String op2="";
			String op3="";
			int c1=0;
			int c2=0;
			int c3=0;
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="SELECT op1,op2,op3,c1,c2,c3 FROM poll where status='1'";
				PreparedStatement pre=con.prepareStatement(sql);
				
				ResultSet rs=pre.executeQuery();
				while(rs.next())
				{
					op1=rs.getString(1);
					op2=rs.getString(2);
					op3=rs.getString(3);
					c1=rs.getInt(4);
					c2=rs.getInt(5);
					c3=rs.getInt(6);
					
				}
				String sq="";
				System.out.println("op1:"+op1);
				System.out.println("op2:"+op2);
				System.out.println("op3:"+op3);
				System.out.println("c1:"+c1);
				System.out.println("c2:"+c2);
				System.out.println("c3:"+c3);
				if(surv.equals(op1))
				{
					c1++;
					sq="Update Poll set c1=c1+1";
				}
				if(surv.equals(op2))
				{
					c2++; //Update Poll set c2=c2+1
					sq="Update Poll set c2=c2+1";
				}
				if(surv.equals(op3))
				{
					c3++;	//Update Poll set c3=c3+1
					sq="Update Poll set c3=c3+1";
				}
				System.out.println("final c1:"+c1);
				System.out.println("final c2:"+c2);
				System.out.println("final c3:"+c3);
				int total=c1+c2+c3;
				
				float c1P=((float)c1/total)*100;
				float c2P=((float)c2/total)*100;
				float c3P=((float)c3/total)*100;
				
				c1=Math.round(c1P);
				c2=Math.round(c2P);
				c3=Math.round(c3P);
				System.out.println("final c1:"+c1P);
				System.out.println("final c2:"+c2P);
				System.out.println("final c3:"+c3P);
				String res=c1+"\n"+c2+"\n"+c3+"";
				PreparedStatement p1=con.prepareStatement(sq);
				p1.executeUpdate();
				//out.print(res);
				out.print("<td><label id=para2><font color=red>And the result is</font></label><br><br><label id=para2>"+op1+" -> "+c1+"%</label><br><br><label id=para2>"+op2+" -> "+c2+"%</label><br><br><label id=para2>"+op3+" -> "+c3+"%</label><br><br>");
					
				
				
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
		}
		if(task.equals("getDownload"))
		{
			String taskUrl="";
			String conT="";
			conT=(String)ses.getAttribute("LoginSession");
			if(conT.equals("true"))
			{
				if(request.getParameter("taskUrl")!=null)
				{
					taskUrl=request.getParameter("taskUrl");
				}
				if(taskUrl.equals("1"))
				{
					nextUrl="/question_papers/downloads/PPD_ques_pprs-www.renshiners.com.rar";
				}
				if(taskUrl.equals("2"))
				{
					nextUrl="/question_papers/downloads/web_tech.zip";
				}
				if(taskUrl.equals("3"))
				{
					nextUrl="/question_papers/downloads/EComm-www.renshiners.com.zip";
				}
				if(taskUrl.equals("4"))
				{
					nextUrl="/user/err.jsp";
					ses.setAttribute("link","http://www.mediafire.com/download/bo255b246bnb5jq/MIS.zip");
				}
				if(taskUrl.equals("5"))
				{
					nextUrl="/question_papers/downloads/SPM-RenshinersDotCom.zip";
				}
				if(taskUrl.equals("6"))
				{
					nextUrl="/question_papers/downloads/laser-www.renshiners.com.zip";
				}
				if(taskUrl.equals("7"))
				{
					nextUrl="/question_papers/downloads/ndt-www.renshiners.com.zip";
				}
				if(taskUrl.equals("8"))
				{
					nextUrl="/question_papers/downloads/herbal_wealth-www.renshiners.com.zip";
				}
				if(taskUrl.equals("9"))
				{
					nextUrl="/question_papers/downloads/erp-www.renshiners.com.zip";
				}
				if(taskUrl.equals("10"))
				{
					nextUrl="/question_papers/downloads/Industrial_engineering.zip";
				}
				if(taskUrl.equals("11"))
				{
					nextUrl="/question_papers/downloads/physics_of_earth quake-www.renshiners.com.zip";
				}
				if(taskUrl.equals("12"))
				{
					nextUrl="/question_papers/downloads/principles_of_management-www.renshiners.com.zip";
				}
				if(taskUrl.equals("13"))
				{
					nextUrl="/user/err.jsp";
					ses.setAttribute("link","http://www.mediafire.com/download/7p8h0ta0dxgekm2/Quality_Management.zip");
				}
			}
			else
			{
				nextUrl="/user/login.jsp";
			}
		}
		System.out.println("Next Url :: "+nextUrl);
		if(ajaxFlag==0)
		getServletConfig().getServletContext().getRequestDispatcher(nextUrl).forward(request,response);
	}

}
