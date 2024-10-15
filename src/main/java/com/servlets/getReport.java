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
import com.entities.Doctors;
import com.entities.Inventory;
import com.entities.Patients;
import com.entities.Prescription;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class getReport
 */
public class getReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getReport() {
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
		
		
		
		Session s=FactoryProvider.getFactory().openSession();
		
		Query query = s.createQuery("from Doctors");
		List<Doctors> doctors = query.list();
		
		Query query2 = s.createQuery("from Bill");
		List<Bill> bill = query2.list();
		
		Query query3 = s.createQuery("from Inventory");
		List<Inventory> inventory = query3.list();
		
		Query query4 = s.createQuery("from Prescription");
		List<Prescription> prescription = query4.list();
		
		Query query5 = s.createQuery("from Patients");
		List<Patients> patients = query5.list();
		
		
		
		s.close();
		
		
		
		
		// Set the data as an attribute of the request object
		request.setAttribute("doctors", doctors);
		request.setAttribute("bill", bill);
		request.setAttribute("inventory", inventory);
		request.setAttribute("prescription", prescription);
		request.setAttribute("patients", patients);

		// Forward the request to the JSP page
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("reports.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
