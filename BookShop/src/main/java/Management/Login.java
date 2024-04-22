package Management;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		resp.setContentType("text/html");
		
		if("Admin".equals(username)&& "1234".equals(password))
		{
			HttpSession session = req.getSession();
            session.setAttribute("username", username);
            
			RequestDispatcher dispatch = req.getRequestDispatcher("MainPage.jsp");
			dispatch.forward(req, resp);
		
		}else
		{
			resp.getWriter().println("<hr>");
			 resp.getWriter().println("<center>");
			resp.getWriter().println("wrong, enter correct details");
			 resp.getWriter().println("</center>");
			resp.getWriter().println("<hr>");
			RequestDispatcher dispatch = req.getRequestDispatcher("Login.jsp");
			dispatch.include(req, resp);
			
		}
	}
		
	}

	


