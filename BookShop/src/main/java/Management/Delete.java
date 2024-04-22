package Management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Id = req.getParameter("id");
		
		int ID = Integer.parseInt(Id);
		
		ConnectionDemo con=new ConnectionDemo();
		resp.setContentType("text/html");

	try {
		
		Connection cl = con.getConnect();
		
			
		  PreparedStatement ps=cl.prepareStatement("delete from Book12 where Id=?");
	
		 
		  ps.setInt(1, ID);
		  
		  int res=ps.executeUpdate();
		  
		  if(res>0)
		  {
				resp.getWriter().println("<hr>");
				resp.getWriter().println("<h6><center>Data Delete Successfully </center></h6>");
				resp.getWriter().println("<hr>");
				RequestDispatcher dis=req.getRequestDispatcher("Delete.jsp");
				dis.include(req, resp);
			}
			else
			{
				resp.getWriter().println("<hr>");
				resp.getWriter().println("<h6><center> Wrong , Enter Correct Id! </center></h6>");
				resp.getWriter().println("<hr>");
				RequestDispatcher dis=req.getRequestDispatcher("Delete.jsp");
				dis.include(req, resp);
			}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	}
		
	}

	


