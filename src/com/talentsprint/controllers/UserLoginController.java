package com.talentsprint.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.talentsprint.beans.RideBean;
import com.talentsprint.dbconnection.LoginDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserLoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("customerID", phoneNumber);

		LoginDAO loginDAO = new LoginDAO();
		try {
			boolean result = loginDAO.validate(phoneNumber, password);
			if (result) {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("JSP/HomePage.jsp");
				requestDispatcher.forward(request, response);

			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('User or password incorrect');");
				out.println("location='WelcomePage.html';");
				out.println("</script>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	

}
