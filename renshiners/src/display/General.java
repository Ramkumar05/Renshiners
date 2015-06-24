package display;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.*;
import java.util.*;

import javax.servlet.http.*;
public class General extends HttpServlet {
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
		String task="",url="";
		if(request.getParameter("taskId")!=null)
		{
			task=request.getParameter("taskId");
		}
		
		if(task.equals("coup"))
		{
			String website="";
			String desc="";
			String code="";
			String  posted="";
			String exp="";
			Vector coup=new Vector();
			try
			{
				int count=0;
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String	sql="Select * from couponsection";
				PreparedStatement pre=con.prepareStatement(sql);
				ResultSet rs=pre.executeQuery();
				Coupons c=new Coupons();
				while(rs.next())
				{
					website=rs.getString(1);
					desc=rs.getString(2);
					code=rs.getString(3);
					posted=rs.getString(4);
					exp=rs.getString(5);
					c.setWebsite(website);
					c.setDesc(desc);
					c.setCode(code);
					c.setPosted(posted);
					c.setExp(exp);
					coup.add(c);
					c=new Coupons();
				}
				ses.setAttribute("WholeCoupons", coup);
				url="/Coupons/coupon_container.jsp";
				//url="/Coupons/test.jsp";
			}
			catch(Exception e)
			{
				
			}
		}
		if(task.equals("postlist"))
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
			url="/post/postlist1.jsp";
		}
		if(task.equals("sliderpost"))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String sql3="update post set slider=0";
				PreparedStatement prest3=con2.prepareStatement(sql3);
				int count2=0;
				
				
				


			
				count2=prest3.executeUpdate();
				if(count2>0)
				{
					System.out.println("Updated");
					
				}
				else
				{
					System.out.println("Not Updated");

				}
				prest3.close();
				con2.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			int count=0;
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
					
					
					
					
					
					count++;
					isExist1=true;
					
						
					
				}
				System.out.println("Count:"+count);

				
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
			Vector vv=new Vector();
			String id="";
			String param="";
			for(int i=0;i<count;i++)
			{
				param="check"+i+"";
				System.out.println("param:"+param);
				if(request.getParameter(param)!=null)
				{
					id=request.getParameter(param);
					System.out.println("idt:"+id);
					vv.add(id);
					
				}
				
			}
			Vector vv0=new Vector();
			Vector vv1=new Vector();
			String[] id2=new String[vv.size()];
			int[] idd=new int[vv.size()];
			ses.setAttribute("postcount",vv.size());

			for(int i=0;i<vv.size();i++)
			{
				id2[i]=(String)vv.get(i);
				System.out.println("id2:"+id2[i]);
				idd[i]=Integer.parseInt(id2[i]);
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql3="update post set slider=1 where id=?";
					PreparedStatement prest2=con2.prepareStatement(sql3);
					int count2=0;
					
					prest2.setInt(1, idd[i]);
					


				
					count2=prest2.executeUpdate();
					if(count2>0)
					{
						System.out.println("Updated");
						
					}
					else
					{
						System.out.println("Not Updated");

					}
					prest2.close();
					con2.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				try
				{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					System.out.println("dddddddddddddd");
					String sql="select id,title from post where id='"+idd[i]+"'";
				
					PreparedStatement prest=con.prepareStatement(sql);
					
					ResultSet rs1 =prest.executeQuery();
					boolean isExist1 = false;
					int ids=0;
					
					String title="";
					while(rs1.next())
					{
						ids=rs1.getInt(1);
						
						title=rs1.getString(2);
						
						
						
						
				
						isExist1=true;
						System.out.println("Id:"+ids);
						
						System.out.println("title:"+title);
						

						
						vv0.add(ids);
						
						vv1.add(title);
						
						

						
						
						
						
						
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
			}
			
			
			ses.setAttribute("prefidd", vv0);
			
			ses.setAttribute("preftitle", vv1);
			
			
	
			url="/admin_files/slide/pref.jsp";
			
		
			
			
		}
		if(task.equals("slideview"))
		{
			int count=0;
			if(ses.getAttribute("postcount")!=null)
			{
				count=(Integer)ses.getAttribute("postcount");
			}
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				String sql3="update post set pref=0";
				PreparedStatement prest3=con2.prepareStatement(sql3);
				int count2=0;
				
				
				


			
				count2=prest3.executeUpdate();
				if(count2>0)
				{
					System.out.println("Updated");
					
				}
				else
				{
					System.out.println("Not Updated");

				}
				prest3.close();
				con2.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
				
				
			Vector vvv1=new Vector();
			Vector vvv2=new Vector();

			String id="";
			String pref="";
			String param1="";
			String param2="";
			for(int i=0;i<count;i++)
			{
				param1="id"+i+"";
				param2="pref"+i+"";
				
					
					
				System.out.println("param1:"+param1);
				System.out.println("param2:"+param2);
				if(request.getParameter(param1)!=null)
				{
					id=request.getParameter(param1);
					System.out.println("idt:"+id);
					vvv1.add(id);
					
				}
				if(request.getParameter(param2)!=null)
				{
					pref=request.getParameter(param2);
					System.out.println("preft:"+pref);
					vvv2.add(pref);
					
				}
				
			}
			String[] id2=new String[count];
			int[] idd=new int[count];
			String[] pref2=new String[count];
			int[] preff=new int[count];
			for(int i=0;i<count;i++)
			{
				id2[i]=(String)vvv1.get(i);
				System.out.println("id2:"+id2[i]);
				idd[i]=Integer.parseInt(id2[i]);
				pref2[i]=(String)vvv2.get(i);
				System.out.println("pref2:"+pref2[i]);
				preff[i]=Integer.parseInt(pref2[i]);
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql3="update post set pref=? where id=?";
					PreparedStatement prest2=con2.prepareStatement(sql3);
					int count2=0;
					prest2.setInt(1, preff[i]);
					prest2.setInt(2, idd[i]);
					


				
					count2=prest2.executeUpdate();
					if(count2>0)
					{
						System.out.println("Updated");
						
					}
					else
					{
						System.out.println("Not Updated");

					}
					prest2.close();
					con2.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
				
			
			try
			{
				int count6=0;
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
			int idy=0;
			
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
				String sql="select id,title,sd,img from post where status=1 && slider=1 order by pref";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				while(rs1.next())
				{
					idy=rs1.getInt(1);
					
					title=rs1.getString(2);
					sd=rs1.getString(3);
					
					img=rs1.getString(4);
					isExist1=true;
					System.out.println("Id:"+idy);
					
					System.out.println("title:"+title);
					System.out.println("sd:"+sd);
					
					System.out.println("img:"+img);
					vv0.add(idy);
					vv1.add(title);
					vv2.add(sd);
					vv3.add(img);
					
					ses.setAttribute("fid", vv0);
					ses.setAttribute("ftitle",vv1);
					ses.setAttribute("fsd", vv2);
					ses.setAttribute("fimg", vv3);
				url="/index_home.jsp";
					
					
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
			int id6=0;
			
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
					id6=rs1.getInt(5);
					isExist1=true;
					System.out.println("box id2:"+boxid2);
					System.out.println("title2:"+title2);
					System.out.println("sd2:"+sd2);
					
					System.out.println("img2:"+img2);
					System.out.println("id2:"+id6);
					v1.add(boxid2);
					v2.add(title2);
					v3.add(sd2);
					v4.add(img2);
					v5.add(id6);

					ses.setAttribute("boxid", v1);
					ses.setAttribute("impdtitle", v2);

					ses.setAttribute("impdsd", v3);
					ses.setAttribute("impdimg", v4);
					
					ses.setAttribute("impdid", v5);
					url="/index_home.jsp";
					
					
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
			
	
			url="/index_home.jsp";	

			
		
		}
		if(task.equals("postview"))
		{
			String idd="";
			int id=0;
			String category="";
			String title="";
			String sd="";
			String d="";
			String img="";
			String date="";
			int status=1;
			Vector vv0=new Vector();
			Vector vv1=new Vector();
			Vector vv2=new Vector();
			Vector vv3=new Vector();
			Vector vv4=new Vector();
			Vector vv5=new Vector();
			Vector vv6=new Vector();
			if(request.getParameter("x")!=null)
			{
				idd=request.getParameter("x");
			}
			System.out.println("id="+idd);
			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				System.out.println("dddddddddddddd");
				String sql="select * from post where id='"+idd+"'";
			
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
					System.out.println("date:"+img);
					System.out.println("status:"+status);
					
					char a;
					int count=0;
					String str=d;
					for(int i=0;i<str.length();i++)
					{
						
						if(str.charAt(i)=='~')
						{
							count++;
						}
						
					}
					String part1="";
					System.out.println("Number of ~ symbol="+count);
					count=count+1;
					Vector v1=new Vector();
					System.out.println("Number of paragraphs="+count);
					String[] parts = str.split("~");
					for(int i=0;i<count;i++)
					{
						part1 = parts[i];
						v1.add(part1);
					}
					String[] para=new String[v1.size()];
					for(int i=0;i<v1.size();i++)
					{
						para[i]=(String)v1.get(i);
					}
					int j=1;
					for(int i=0;i<v1.size();i++)
					{
						System.out.println("para"+j+"="+para[i]);
						j++;
					}
					int i=0;
					int length = date.length();
					String[] dcut=date.split("-");
					 String[] reverse=new String[3];
					

					int z=0;
					 z=2;
					 String revd="";
			    	 for(int k=0;k<3;k++)
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
					
					ses.setAttribute("pid", id);
					ses.setAttribute("pcategory",category);
					ses.setAttribute("ptitle", title);
					ses.setAttribute("psd", sd);
					ses.setAttribute("pd", v1);
					ses.setAttribute("pimg", img);
					ses.setAttribute("pdate", date);
					ses.setAttribute("ptatus", status);
					
					
					
					url="/post/koch.jsp";
					
					
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
		}
		if(task.equals("showimppost"))
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
				String sql="select id,title,sd,img from post where status=1 && slider=1 order by pref";
			
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
					url="/index_home.jsp";
					
					
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
String idd="";
			
			
			String title1="";
			String sd1="";
			
			String img1="";
			int id1=0;
		String box="";
			if(request.getParameter("optsel")!=null)
			{
				idd=request.getParameter("optsel");
			}
			if(request.getParameter("boxsel")!=null)
			{
				box=request.getParameter("boxsel");
			}
			
			System.out.println("id="+idd);
			System.out.println("box="+box);
			int boxid=Integer.parseInt(box);
			
			try
			{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				System.out.println("dddddddddddddd");
				String sql="select id,title,sd,img from post where id='"+idd+"' && status=1";
			
				PreparedStatement prest=con.prepareStatement(sql);
				
				ResultSet rs1 =prest.executeQuery();
				boolean isExist1 = false;
				while(rs1.next())
				{
					
					id1=rs1.getInt(1);
					title1=rs1.getString(2);
					sd1=rs1.getString(3);
					img1=rs1.getString(4);
					isExist1=true;
					System.out.println("id1:"+id1);
					System.out.println("title1:"+title1);
					System.out.println("sd1:"+sd1);
					
					System.out.println("img:"+img1);
				
					
					
				}
				if(!isExist1)
				{
					System.out.println("Record Not Found");
					String msgg="Record Not Found !!";
				}
				url="/index_home.jsp";

				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
					String sql3="update imppost set title=?,sd=?,img=?,id=? where boxid=?";
					PreparedStatement prest2=con2.prepareStatement(sql3);
					int count=0;
					
					prest2.setString(1, title1);
					prest2.setString(2, sd1);
					prest2.setString(3, img1);
					prest2.setInt(4, id1);
					prest2.setInt(5, boxid);

	
				
					count=prest2.executeUpdate();
					if(count>0)
					{
						System.out.println("Updated");
						
					}
					else
					{
						System.out.println("Not Updated");

					}
					prest2.close();
					con2.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				prest.close();
				con.close();
			}
			catch(Exception e)
			{
				System.out.println("Exception");
				e.printStackTrace();
			}
			url="/index_home.jsp";

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
					url="/index_home.jsp";
					
					
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
			
			System.out.println("Path");
			url="/index_home.jsp";		
		}
		System.out.println(url);
		getServletConfig().getServletContext().getRequestDispatcher(url).forward(request,response);
	}

}
