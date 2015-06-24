package ram;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
@WebServlet("/SlamToRam")
public class SlamToRam extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request,response);
	}
   
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
   	{
		String url="";
		String work="start";
		System.out.println("---Slam---"+work);
		if(request.getParameter("workName")!=null)
		{
			work=request.getParameter("workName");
		}
		if(work.equals("start"))
		{
			url="/slam_files/index.jsp";
		}
		if(work.equals("save"))
		{
			url="/slam_files/success.jsp";
			String name="",date1="",content="";
			if(request.getParameter("nmeTxt")!=null)
			{
				name=request.getParameter("nmeTxt");
			}
			if(request.getParameter("datTxt")!=null)
			{
				date1=request.getParameter("datTxt");
			}
			if(request.getParameter("contentTxt")!=null)
			{
				content=request.getParameter("contentTxt");
			}
			int day, month, year;
		      int second, minute, hour;
		      GregorianCalendar date = new GregorianCalendar();
		 
		      day = date.get(Calendar.DAY_OF_MONTH);
		      month = date.get(Calendar.MONTH);
		      year = date.get(Calendar.YEAR);
		 
		      second = date.get(Calendar.SECOND);
		      minute = date.get(Calendar.MINUTE);
		      hour = date.get(Calendar.HOUR);
		      String dat=day+"-"+(month+1)+"-"+year;
			System.out.println(content+"-----"+name+"----"+dat);
			DataEncryption de=new DataEncryption();
			String str=de.encrypt("");
			System.out.println("Cipher Text--->"+str);
			
			try
			{
				int count=0;
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/renshiners","rooot","rooot");
				
				String	sql="insert into slamtoram values(?,?,?)";
				PreparedStatement pre=con.prepareStatement(sql);
				
				pre.setString(1,name);
				pre.setString(2,dat);
				pre.setString(3,str);
				
				
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

		}
		System.out.println("---Slam---"+work);
		getServletConfig().getServletContext().getRequestDispatcher(url).forward(request, response);
	}
   	

}
