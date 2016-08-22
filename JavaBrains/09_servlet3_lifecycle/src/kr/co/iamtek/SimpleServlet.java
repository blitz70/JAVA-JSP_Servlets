package kr.co.iamtek;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(
		description = "A simple servlet", urlPatterns = { "/SimpleServletPath" },
		initParams={@WebInitParam(name="defaultName", value="John Doe")}
)
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String userName = request.getParameter("userName");
		HttpSession session = request.getSession();
		ServletContext context =  request.getServletContext();
		if ((userName != "") && (userName != null)) {
			session.setAttribute("savedUserName", userName);
			context.setAttribute("savedUserName", userName);
		}
		writer.println("Request : " + userName);
		writer.println("<br/>");
		writer.println("Session : " + (String)session.getAttribute("savedUserName"));
		writer.println("<br/>");
		writer.println("Context : " + (String)context.getAttribute("savedUserName"));
		writer.println("<br/>");
		writer.println("Init : " + getServletConfig().getInitParameter("defaultName"));
	}

}
