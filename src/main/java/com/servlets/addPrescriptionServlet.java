package com.servlets;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Admin;
import com.entities.Prescription;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class addPrescriptionServlet
 */
public class addPrescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPrescriptionServlet() {
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
	
		
		try {
			String name=request.getParameter("patientname");
			String doctor=request.getParameter("doctorname");
			String med=request.getParameter("medication");
			String dosage=request.getParameter("dosage");
			String freq=request.getParameter("frequency");
			String notes=request.getParameter("notes");
			
				System.out.println(name+doctor+med+dosage);
				
				Random random=new Random();
				int id=random.nextInt(1000);
				
			Prescription obj=new Prescription(id, name, doctor, med, dosage, freq, notes);
				Session s=FactoryProvider.getFactory().openSession();
				
				Transaction tx=s.beginTransaction();
				s.save(obj);
				tx.commit();
				
				s.close();
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchPrescriptions");
				    dispatcher.forward(request, response);
				
				
				}catch(Exception e) {
					
					System.out.println(e.getMessage());
				}
				
		
	}

}
