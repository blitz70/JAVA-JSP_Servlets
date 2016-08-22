package kr.co.iamtek;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(description = "A simple servlet", urlPatterns = { "/SimpleServletPath" })
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
			if (context.getAttribute("savedUserName") == null) {
				context.setAttribute("savedUserName", userName);	//first user
			}
			session.setAttribute("savedUserName", userName);
		}
		writer.println("Request : " + userName);
		writer.println("<br/>");
		writer.println("Session : " + session.getAttribute("savedUserName").toString());
		writer.println("<br/>");
		writer.println("Context : " + context.getAttribute("savedUserName").toString());
		
	}

}
