package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

/**
 * Servlet implementation class ReportBugProcessControllerServlet
 */
@WebServlet("/reportbug")
public class ReportBugProcessControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportBugProcessControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sess=request.getSession();
		String ses= (String)sess.getAttribute("SESS");
		String email="zoopermanwants@gmail.com";
		CustomerService customer = new CustomerService();
		customer.sendReporteMail(ses,email);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
