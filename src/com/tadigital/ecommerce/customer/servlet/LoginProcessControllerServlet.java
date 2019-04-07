package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

/**
 * Servlet implementation class LoginProcessControllerServlet
 */
@WebServlet("/login")
public class LoginProcessControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		HttpSession ses = request.getSession();
		ses.setAttribute("email", email);
		

		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(password);
		CustomerService customerService = new CustomerService();

		boolean stat = customerService.loginCustomer(customer);

		if (stat) {
			ses.setAttribute("USERNAME",customer.getName() );
			request.setAttribute("stat", "Yes");
			RequestDispatcher rd = request.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("stat", "No");
			RequestDispatcher rd = request.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(request, response);
		}

	}

}
