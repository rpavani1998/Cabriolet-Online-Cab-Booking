package com.talentsprint.controllers;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.talentsprint.dbconnection.UserDAOImplementation;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		UserDAOImplementation userDAO = new UserDAOImplementation();
		String verificationCode = request.getParameter("verificationCode");
		String newPassword = request.getParameter("password1");
		String reEnterPassword = request.getParameter("password2");
		String userId = (String)session.getAttribute("UserId");
		System.out.println(userId+ "" + newPassword + ""+ reEnterPassword);
		if(newPassword.equals(reEnterPassword)){
			System.out.println("1111" + newPassword + ""+ reEnterPassword);
			userDAO.changePassword(userId, verificationCode, newPassword);
			RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.html");
			rd.forward(request, response);
		}else{
			userDAO.msgbox("Passwords do not match!!");
		}
		
		
 	}

}
