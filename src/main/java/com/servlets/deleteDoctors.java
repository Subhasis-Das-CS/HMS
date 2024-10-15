package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class deleteDoctors
 */
public class deleteDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteDoctors() {
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
		
		Session session=FactoryProvider.getFactory().openSession();
		 
	    Transaction tx = session.beginTransaction();
	     
	    String d_name=request.getParameter("name");
	    Query query = session.createQuery("DELETE FROM Doctors WHERE d_name = :d_name"); // or entityManager.createQuery("DELETE FROM MyEntity WHERE id = :entityId");
	    query.setParameter("d_name", d_name);

	    // Execute the query to delete the record
	    int result = query.executeUpdate();
	    
	    
	    
	   
	    tx.commit();
	    session.close();
	    RequestDispatcher dispatcher = request.getRequestDispatcher("fetchDoctors");
	    dispatcher.forward(request, response);
		
	}

}
