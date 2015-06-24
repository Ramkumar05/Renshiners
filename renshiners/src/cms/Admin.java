package cms;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import bean.PollDetails;


public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ses=request.getSession();
		PrintWriter out=response.getWriter();
		String url="";
		String work="0";
		System.out.println("Admin");
		if(request.getParameter("work")!=null)
		{
			work=request.getParameter("work");
		}
		
		System.out.println("Work   "+work);
		if(work.equals("0"))
		{
			System.out.println("Hi");
			url="/admin_files/index.jsp";
			ses.setAttribute("msg",null);
		}
		
		if(work.equals("process"))
		{
			String lgnEntered="";
			String pwdEntered="";
			System.out.println("check1");
			if(request.getParameter("nmeTxt")!=null)
			{
				lgnEntered=request.getParameter("nmeTxt");
			}
			if(request.getParameter("pwdTxt")!=null)
			{
				pwdEntered=request.getParameter("pwdTxt");
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
				String sql="SELECT name,password FROM admin where name=? and password=?";
			
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
					url="/admin_files/welcome.jsp";
					ses.setAttribute("msg",lgnEntered);
				}
				else
				{
					System.out.println("Invalid LoginID or Password");
					String msg="Invalid ID and Password";
					ses.setAttribute("msg",msg);
					url="/admin_files/index.jsp";
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
		if(work.equals("getData"))
		{
			String cat="";
			if(request.getParameter("cat")!=null)
			{
				cat=request.getParameter("cat");
			}
			if(cat.equals("coupon"))
			{
				url="/admin_files/Coupon_Section.jsp";
				ses.setAttribute("msg",null);
			}
			if(cat.equals("newpost"))
			{
				url="/admin_files/post/upload.jsp";
				ses.setAttribute("msg",null);
			}
			if(cat.equals("slider"))
			{
				int id=0;
				
				String title="";
				
				Vector vv0=new Vector();
				Vector vv1=new Vector();
				
				try
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					System.out.println("dddddddddddddd");
					String sql="select id,title from post where status=1";
				
					PreparedStatement prest=con.prepareStatement(sql);
					
					ResultSet rs1 =prest.executeQuery();
					boolean isExist1 = false;
					while(rs1.next())
					{
						id=rs1.getInt(1);
						
						title=rs1.getString(2);
						
						
						
						
				
						isExist1=true;
						System.out.println("Id:"+id);
						
						System.out.println("title:"+title);
						

						
						vv0.add(id);
						
						vv1.add(title);
						
						ses.setAttribute("slideidd", vv0);
						
						ses.setAttribute("slidetitle", vv1);
						

						
						
						url="/admin_files/slide/slidecms.jsp";
						
						
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
				url="/admin_files/slide/slidecms.jsp";
				
				ses.setAttribute("msg",null);
			}
			if(cat.equals("Poll"))
			{
				url="/admin_files/Poll.jsp";
				int max=0;
				try
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql="select max(id) from poll";
				
					PreparedStatement prest=con.prepareStatement(sql);
					
					ResultSet rs1 =prest.executeQuery();
					while(rs1.next())
					{
						max=Integer.parseInt(rs1.getString(1));
					}
					max=max+1;
				}
				catch(Exception e)
				{
					System.out.println("Exception");
					e.printStackTrace();
				}
				
				ses.setAttribute("msg",max+"");
			}
			if(cat.equals("Posts"))
			{
				int id=0;
				String category="";
				String title="";
				String sd="";
				String d="";
				String img="";
				String date="";
				int status=0;
				Vector vv0=new Vector();
				Vector vv1=new Vector();
				Vector vv2=new Vector();
				Vector vv3=new Vector();
				Vector vv4=new Vector();
				Vector vv5=new Vector();
				Vector vv6=new Vector();
				Vector vv7=new Vector();

				try
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql="select * from post where status=1";
				
					PreparedStatement prest=con.prepareStatement(sql);
					
					ResultSet rs1 =prest.executeQuery();
					boolean isExist1 = false;
					while(rs1.next())
					{
						id=rs1.getInt(1);
						category=rs1.getString(2);
						title=rs1.getString(3);
						sd=rs1.getString(4);
						d=rs1.getString(5);
						img=rs1.getString(6);
						date=rs1.getString(7);
						status=rs1.getInt(8);
						
						
						
				
						isExist1=true;
						System.out.println("idd:"+id);
						System.out.println("Category:"+category);
						System.out.println("title:"+title);
						System.out.println("sd:"+sd);
						System.out.println("d:"+d);
						System.out.println("img:"+img);
						System.out.println("date:"+date);

						System.out.println("status:"+status);

						int i=0;
						int length = date.length();
						String[] dcut=date.split("-");
						 String[] reverse=new String[3];
						

						int z=0;
						 z=2;
						 String revd="";
				    	 for(int k=0;k<dcut.length;k++)
				    	 {
				    		reverse[k]=dcut[z];
				    		
				    		revd=revd+reverse[k];
				    		if(k<2)
				    		{
				    			revd=revd+"-";
				    		}
				    		z--;
				    	 } 
				    	
				    	 
				    	System.out.println("reverse:"+revd);
				    	date=revd;
						vv0.add(id);
						vv1.add(category);
						vv2.add(title);
						vv3.add(sd);
						vv4.add(d);
						vv5.add(img);
						vv6.add(date);
						vv7.add(status);
						
						
						ses.setAttribute("idd", vv0);
						ses.setAttribute("category", vv1);
						ses.setAttribute("title", vv2);
						ses.setAttribute("sd", vv3);
						ses.setAttribute("img", vv5);
						ses.setAttribute("date", vv6);
						ses.setAttribute("status", vv7);
						
						
						
						url="/post/postlist1.jsp";
						
						
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
				
				ses.setAttribute("msg",null);
			}
			if(cat.equals("impposts"))
			{

				int id=0;
			
				String title="";
				
				Vector vv0=new Vector();
				Vector vv1=new Vector();
				
				try
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					System.out.println("dddddddddddddd");
					String sql="select id,title from post where status=1";
				
					PreparedStatement prest=con.prepareStatement(sql);
					
					ResultSet rs1 =prest.executeQuery();
					boolean isExist1 = false;
					while(rs1.next())
					{
						id=rs1.getInt(1);
						
						title=rs1.getString(2);
						
						
						
						
				
						isExist1=true;
						System.out.println("Id:"+id);
						
						System.out.println("title:"+title);
						

						
						vv0.add(id);
						
						vv1.add(title);
						
						ses.setAttribute("impidd", vv0);
						
						ses.setAttribute("imptitle", vv1);
						

						
						
						url="/admin_files/imppost/imppostcms.jsp";
						
						
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
				url="/admin_files/imppost/imppostcms.jsp";

			}
		}
		
		if(work.equals("postlist"))
		{
			int id=0;
			String category="";
			String title="";
			String sd="";
			String d="";
			String img="";
			String date="";
			int status=0;
			Vector vv0=new Vector();
			Vector vv1=new Vector();
			Vector vv2=new Vector();
			Vector vv3=new Vector();
			Vector vv4=new Vector();
			Vector vv5=new Vector();
			Vector vv6=new Vector();

			Vector vv7=new Vector();

			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				System.out.println("dddddddddddddd");
				String sql="select * from post where status=1";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				while(rs1.next())
				{
					id=rs1.getInt(1);
					category=rs1.getString(2);
					title=rs1.getString(3);
					sd=rs1.getString(4);
					d=rs1.getString(5);
					img=rs1.getString(6);
					date=rs1.getString(7);
					status=rs1.getInt(8);
					
					
					
			
					isExist1=true;
					System.out.println("Id:"+id);
					System.out.println("Category:"+category);
					System.out.println("title:"+title);
					System.out.println("sd:"+sd);
					System.out.println("d:"+d);
					System.out.println("img:"+img);
					System.out.println("date:"+date);

					System.out.println("status:"+status);

					
					vv0.add(id);
					vv1.add(category);
					vv2.add(title);
					vv3.add(sd);
					vv4.add(d);
					vv5.add(img);
					vv6.add(date);
					vv7.add(status);
					ses.setAttribute("idd", vv0);
					ses.setAttribute("category", vv1);
					ses.setAttribute("title", vv2);
					ses.setAttribute("sd", vv3);
					ses.setAttribute("img", vv5);
					ses.setAttribute("date", vv6);

					
					
					url="/admin_files/post/postlist.jsp";
					
					
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
			url="/post/postlist1.jsp";
		}
		if(work.equals("postsql"))
		{
			int id=0;
			String category="";
			String title="";
			String sd="";
			String d="";
			String img="";
			String date="";
			int status=1;
			int slider=1;
			int pref=1;
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="select max(id) from post";
				PreparedStatement pre=con.prepareStatement(sql);
				
				ResultSet rs=pre.executeQuery();
				while(rs.next())
				{
					id=rs.getInt(1);
				}
				id=id+1;
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
				url="/admin_files/post/postcms.jsp";
			}
			if(request.getParameter("category")!=null)
			{
				category=request.getParameter("category");
			}
			if(request.getParameter("title")!=null)
			{
				title=request.getParameter("title");
			}
			if(request.getParameter("sd")!=null)
			{
				sd=request.getParameter("sd");
			}
			if(request.getParameter("date")!=null)
			{
				date=request.getParameter("date");
			}
			
			if(request.getParameter("d")!=null)
			{
				d=request.getParameter("d");
			}
			if(ses.getAttribute("ImageName")!=null)
			{
				img=(String)ses.getAttribute("ImageName");
			}
			
			System.out.println("Id:"+id);
			System.out.println("Category:"+category);
			System.out.println("title:"+title);
			System.out.println("sd:"+sd);
			System.out.println("d:"+d);
			System.out.println("img:"+img);
			System.out.println("date:"+date);
			System.out.println("status:"+status);
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="insert into post values(?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pre=con.prepareStatement(sql);
				pre.setInt(1,id);
				pre.setString(2,category);
				pre.setString(3,title);
				pre.setString(4,sd);
				pre.setString(5,d);
				pre.setString(6,img);
				pre.setString(7,date);
				pre.setInt(8,status);
				pre.setInt(9,slider);
				pre.setInt(10,pref);
				count=pre.executeUpdate();
				if(count >0)
				{
					url="/admin_files/post/insertsuccess.jsp";
					ses.setAttribute("msg","<font color=\"green\"><b>Success</b></font>");
					
				}
				else
				{
					url="/admin_files/post/insertsuccess.jsp";
					ses.setAttribute("msg","<font color=\"red\"><b>Failed</b><font>");
				}
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
				url="/admin_files/post/postcms.jsp";
			}
			
		}
		if(work.equals("ins-cs"))
		{
			String website="";
			String desc="";
			String code="";
			String  posted="";
			String exp="";
			if(request.getParameter("website")!=null)
			{
				website=request.getParameter("website");
			}
			if(request.getParameter("desc")!=null)
			{
				desc=request.getParameter("desc");
			}
			if(request.getParameter("code")!=null)
			{
				code=request.getParameter("code");
			}
			if(request.getParameter("curdate")!=null)
			{
				posted=request.getParameter("curdate");
			}
			if(request.getParameter("expdate")!=null)
			{
				exp=request.getParameter("expdate");
			}
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="select count(*) from couponsection";
				PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				int cnt=0;
				while (rs.next())
				{
					cnt=Integer.parseInt(rs.getString(1));
				}
				cnt++;
				sql="insert into couponsection values(?,?,?,?,?,?,?)";
				pre=con.prepareStatement(sql);
				pre.setString(1,website);
				pre.setString(2,desc);
				pre.setString(3,code);
				pre.setString(4,posted);
				pre.setString(5,exp);
				pre.setString(6, cnt+"");
				pre.setString(7,"1");
				count=pre.executeUpdate();
				if(count >0)
				{
					url="/admin_files/Coupon_Section.jsp";
					ses.setAttribute("msg","<font color=\"green\"><b>Success</b></font>");
					
				}
				else
				{
					url="/admin_files/Coupon_Section.jsp";
					ses.setAttribute("msg","<font color=\"red\"><b>Failed</b><font>");
				}
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
		}
		if(work.equals("upfile"))
		{
			
			String fName="";
			System.out.println("UPFile");
			String contentType = request.getContentType();
			String proFile="";
			if(request.getParameter("file")!=null)
			{
				proFile=request.getParameter("file");
			}
			System.out.println("Your path----->"+proFile);


			System.out.println("Content type is :: " +contentType);
			if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
			{
				DataInputStream in = new DataInputStream(request.getInputStream());
				int formDataLength = request.getContentLength();
				byte dataBytes[] = new byte[formDataLength];
				int byteRead = 0;
				int totalBytesRead = 0;
				
				while (totalBytesRead < formDataLength) 
				{
					byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
					totalBytesRead += byteRead;
				}
				String file = new String(dataBytes);
				String saveFile = file.substring(file.indexOf("filename=\"") + 10);
				String nameArr[]=saveFile.split("\"");
				fName=nameArr[0];
				System.out.println("Save File-->"+fName+"\n ovr");
				//out.print("FileName:" + saveFile.toString());
				saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
				//out.print("FileName:" + saveFile.toString());
				saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
				System.out.println();
				out.print("FileName:" + saveFile.toString());
				//out.print(dataBytes);
				int lastIndex = contentType.lastIndexOf("=");
				String boundary = contentType.substring(lastIndex + 1,contentType.length());
				//out.println(boundary);
				int pos;
				pos = file.indexOf("filename=\"");
				pos = file.indexOf("\n", pos) + 1;
				pos = file.indexOf("\n", pos) + 1;
				pos = file.indexOf("\n", pos) + 1;
				int boundaryLocation = file.indexOf(boundary, pos) - 4;
				int startPos = ((file.substring(0, pos)).getBytes()).length;
				int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
				
				saveFile = "C://Inetpub//vhosts//renshiners.com//httpdocs//webapp//post_images//" + saveFile;
				//saveFile ="E://website//"+saveFile;
				FileOutputStream fileOut = new FileOutputStream(saveFile);
				//fileOut.write(dataBytes);
				fileOut.write(dataBytes, startPos, (endPos - startPos));
				fileOut.flush();
				fileOut.close();
				out.println("File saved as " +saveFile);
			}
			url="/admin_files/post/postcms.jsp";
			ses.setAttribute("ImageName", fName);
		}
		System.out.println("Work---->"+work);
		if(work.equals("poll_save"))
		{
			String que="",op1="",op2="",op3="";
			int msg=0;
			if(ses.getAttribute("msg")!=null)
			{
				msg=Integer.parseInt((String)ses.getAttribute("msg"));
			}
			System.out.println(msg);
			if(request.getParameter("question")!=null)
			{
				que=request.getParameter("question");
			}
			if(request.getParameter("opt1")!=null)
			{
				op1=request.getParameter("opt1");
			}
			if(request.getParameter("opt2")!=null)
			{
				op2=request.getParameter("opt2");
			}
			if(request.getParameter("opt3")!=null)
			{
				op3=request.getParameter("opt3");
			}
			System.out.println(que+"--"+op1+"--"+op2+"--"+op3);
			url="/admin_files/Poll.jsp";
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="update poll set status='0'";
				PreparedStatement pre=con.prepareStatement(sql);
				pre.executeUpdate();
				sql="insert into poll values(?,?,?,?,?,?,?,?,?)";
				pre=con.prepareStatement(sql);
				pre.setInt(1,msg);
				pre.setString(2,que);
				pre.setString(3,op1);
				pre.setString(4,op2);
				pre.setString(5,op3);
				pre.setString(6,"0");
				pre.setString(7,"0");
				pre.setString(8,"0");
				pre.setString(9,"1");
				pre.executeUpdate();
				url="/admin_files/welcome.jsp";
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
		}
		if(work.equals("getAll"))
		{
			int id=0;
			String q="",op1="",op2="",op3="",r1="",r2="",r3="",s="";
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="select * from poll";
				PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				Vector v1=new Vector();
				while(rs.next())
				{
					id=rs.getInt(1);
					q=rs.getString(2);
					op1=rs.getString(3);
					op2=rs.getString(4);
					op3=rs.getString(5);
					r1=rs.getString(6);
					r2=rs.getString(7);
					r3=rs.getString(8);
					s=rs.getString(9);
					
					PollDetails pd=new PollDetails();
					pd.setId(id);
					pd.setQ(q);
					pd.setOp1(op1);
					pd.setOp2(op2);
					pd.setOp3(op3);
					pd.setR1(r1);
					pd.setR2(r2);
					pd.setR3(r3);
					pd.setS(s);
					v1.add(pd);
				}
				url="/admin_files/ViewAllPolls.jsp";
 				ses.setAttribute("viewallpoll", v1);
			}
			catch(Exception e)
			{
				
			}
			
		}
		System.out.println("current url:"+url);
		getServletConfig().getServletContext().getRequestDispatcher(url).forward(request,response);
		
	}

}
