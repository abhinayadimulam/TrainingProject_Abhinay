package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tadigital.ecommerce.customer.service.CustomerService;

/**
 * Servlet implementation class UpdatePAsswordControllerServlet
 */
@WebServlet("/updatepass")
public class UpdatePAsswordControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String oldpass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		
		CustomerService customer = new CustomerService();
		boolean passwordstat = customer.updatepassword(oldpass, newpass);

		if (passwordstat) {
			request.setAttribute("passwordstat", "Yes");
			RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("passwordstat", "No");
			RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(request, response);
		}
	}

}
