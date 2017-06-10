package com.talentsprint.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.talentsprint.beans.UserBean;
import com.talentsprint.dbconnection.UserDAOImplementation;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/CreateUser")
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	
	private void msgbox(String s){
		JOptionPane.showMessageDialog(null, s);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
		int result = 0;
		UserBean user = new UserBean();
		PrintWriter out = response.getWriter();
		if(request.getParameter("password").equals(request.getParameter("reEnterPassword"))){
			System.out.println(request.getParameter("password") + "" +request.getParameter("reEnterPassword"));
			user.setFirstName(request.getParameter("firstName"));
			user.setLastName(request.getParameter("lastName"));
			user.setEmailId(request.getParameter("emailID"));
			user.setGender(request.getParameter("gender"));
			user.setDateOfBirth(request.getParameter("dateOfBirth"));
			user.setMobileNumber(request.getParameter("mobileNumber"));
			user.setPassword(request.getParameter("password"));

			UserDAOImplementation dao = new UserDAOImplementation();
			result = dao.createUser(user);
			RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.html");
			rd.forward(request, response);
			
		}else {
			msgbox("Passwords do not match!!");
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);
		}
		
	}

}
