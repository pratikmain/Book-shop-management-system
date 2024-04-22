package Management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Display")
public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ConnectionDemo con=new ConnectionDemo();
		resp.setContentType("text/html");
		
		try {
			Connection cl=con.getConnect();
			
			 Statement st=cl.createStatement();
			 
			 ResultSet rs =st.executeQuery("Select * From Book12");
			 
			 resp.getWriter().println("<table border='1' align='center'  >");
			 
			 resp.getWriter().println("<th>Id</th>");
			 resp.getWriter().println("<th>Name</th>");
			 resp.getWriter().println("<th>Author</th>");
			 resp.getWriter().println("<th>Price</th>");
			 
			 while(rs.next())
			 {
			 resp.getWriter().println("<tr>");
			 resp.getWriter().println("<td>"+rs.getInt(1)+"</td>");
			 resp.getWriter().println("<td>"+rs.getString(2)+"</td>");
			 resp.getWriter().println("<td>"+rs.getString(3)+"</td>");
			 resp.getWriter().println("<td>"+rs.getInt(4)+"</td>");
			 resp.getWriter().println("<tr>");
			 }
			 resp.getWriter().println("</table >");
			 
			 resp.getWriter().println("<br>");
			 
			 resp.getWriter().println("<center>");
			 resp.getWriter().println("<a href='MainPage.jsp' ><button>Back</button></a>"); 
			 resp.getWriter().println("</center>");
			 
			 
		} catch (Exception e) {
			e.printStackTrace();
	        resp.getWriter().print("Error processing the request: " + e.getMessage());
		}
	}

	

}
