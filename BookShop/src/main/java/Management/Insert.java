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


@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Id =req.getParameter("id");
		String Name =req.getParameter("name");
		String Author =req.getParameter("author");
		String price =req.getParameter("price");
		
		int ID = Integer.parseInt(Id);
	    int Price = Integer.parseInt(price);
		
		ConnectionDemo con=new ConnectionDemo();
		resp.setContentType("text/html");
		try {
		Connection cl = con.getConnect();
			
              			
			  PreparedStatement ps=cl.prepareStatement("insert into Book12 values(?,?,?,?)");
			  
			  ps.setInt(1, ID);
			  ps.setString(2,Name);
			  ps.setString(3,Author);
			  ps.setInt(4, Price);
			  
			  int res =ps.executeUpdate();
			
			if(res>0)
			{
				resp.getWriter().println("<hr>");
				resp.getWriter().println("<h6><center>Data Inserted Successfully </center></h6>");
				resp.getWriter().println("<hr>");
				RequestDispatcher dis=req.getRequestDispatcher("Insert.jsp");
				dis.include(req, resp);
			}
			else
			{
				resp.getWriter().println("<hr>");
				resp.getWriter().println("<h6><center> Wrong , Enter Correct Data! </center></h6>");
				resp.getWriter().println("<hr>");
				RequestDispatcher dis=req.getRequestDispatcher("Insert.jsp");
				dis.include(req, resp);
			}
		} catch (Exception e) {
			 e.printStackTrace();
		        resp.getWriter().print("Error processing the request: " + e.getMessage());
		}
	}
}
