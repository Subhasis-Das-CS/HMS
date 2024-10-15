package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.entities.Bill;
import com.entities.Prescription;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class fetchPrescriptions
 */
public class fetchPrescriptions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetchPrescriptions() {
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
	
		Session s=FactoryProvider.getFactory().openSession();
		Query query = s.createQuery("from Prescription");
		List<Prescription> doc = query.list();
		s.close();
		for (Prescription entity : doc) {
		    System.out.println("Entity ID: " + entity.getId());
		    System.out.println("Entity Name: " + entity.getP_name());
		    // print other properties as needed
		}
		// Set the data as an attribute of the request object
		request.setAttribute("doc", doc);

		// Forward the request to the JSP page
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("viewPrescriptions.jsp");
		dispatcher.forward(request, response);
	}

}
