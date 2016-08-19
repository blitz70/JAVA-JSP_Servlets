package kr.co.iamtek;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XMLServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		String prof = request.getParameter("prof");
		//String loc = request.getParameter("loc");
		String[] loc = request.getParameterValues("loc");
		
		//output
		response.setContentType("text/html");	//??
		PrintWriter out = response.getWriter();
		out.println("Hello from POST method " + userName + "! Your full name is " + fullName + " and you work as a " + prof + " at " + loc.length + " places.");
		for (int i = 0; i < loc.length; i++) {
			out.println(loc[i]);
		}
	}

}
