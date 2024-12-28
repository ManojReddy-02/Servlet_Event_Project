package event_app;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(urlPatterns="/delete")
public class DeleteServlet extends HttpServlet
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws IOException, ServletException
	{
		Connection con=null;
		PreparedStatement ps=null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_system","root","root");
			ps=con.prepareStatement("delete from event where id=?");
			ps.setInt(1,Integer.parseInt(req.getParameter("id")));
			ps.executeUpdate();
			
			PrintWriter pw=res.getWriter();
			pw.write("<h1>Deleted Sucessfully</h1>");
			
			RequestDispatcher rd=req.getRequestDispatcher("all");
			rd.include(req, res);
		}
		catch(ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!=null)
			{
				try 
				{
					ps.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
			if(con!=null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
	}
}