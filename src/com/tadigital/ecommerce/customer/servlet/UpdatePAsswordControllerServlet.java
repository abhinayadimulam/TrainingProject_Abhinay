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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePAsswordControllerServlet() {
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
		String oldpass=request.getParameter("oldpass");
		String newpass=request.getParameter("newpass");
		CustomerService customer = new CustomerService();
		boolean passwordstat=customer.updatepassword(oldpass,newpass);
		
		if(passwordstat) {
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
