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

import com.entities.Doctors;
import com.entities.Inventory;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class addMedicine
 */
public class addMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addMedicine() {
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
			String med_name=request.getParameter("med_name");
			String med_brand=request.getParameter("med_brand");
			String med_stock=request.getParameter("med_stock");
			String med_price=request.getParameter("med_price");
			String med_sold=request.getParameter("med_sold");
			
			
				System.out.println(med_name);
				
				Random random=new Random();
				int id=random.nextInt(1000);
				
				Inventory obj=new Inventory(id, med_name, med_brand, med_stock, med_sold, med_price);
				Session s=FactoryProvider.getFactory().openSession();
				
				Transaction tx=s.beginTransaction();
				s.save(obj);
				tx.commit();
				
				s.close();
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchMedicines");
				    dispatcher.forward(request, response);
				
				
				}catch(Exception e) {
					
					System.out.println(e.getMessage());
				}
				
		
	}

}
