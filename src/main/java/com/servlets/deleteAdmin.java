package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Admin;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class deleteAdmin
 */
public class deleteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteAdmin() {
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
	     
	    String phone=request.getParameter("phone");
	    Query query = session.createQuery("DELETE FROM Admin WHERE phone = :phone"); // or entityManager.createQuery("DELETE FROM MyEntity WHERE id = :entityId");
	    query.setParameter("phone", phone);

	    // Execute the query to delete the record
	    int result = query.executeUpdate();
	    
	    
	    
	   
	    tx.commit();
	    session.close();
	    RequestDispatcher dispatcher = request.getRequestDispatcher("fetchAdmins");
	    dispatcher.forward(request, response);
		
	}

}
