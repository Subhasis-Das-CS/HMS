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

import com.entities.Appointment;
import com.entities.Bill;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class billServlet
 */
public class billServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public billServlet() {
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
			String name=request.getParameter("patient-name");
			String p_id=request.getParameter("patient-id");
			String date=request.getParameter("date-of-service");
			String amount=request.getParameter("total-amount");
			String ic=request.getParameter("insurance-coverage");
			String p_balance=request.getParameter("patient-balance");
			String isPaid=request.getParameter("isPaid");
			String isDue=request.getParameter("isDue");
				System.out.println(name+p_id+amount+ date+ic+p_balance);
				
				Random random=new Random();
				int id=random.nextInt(1000);
				
			Bill obj=new Bill(id, name, p_id,date, amount, ic, p_balance, isPaid, isDue);
				Session s=FactoryProvider.getFactory().openSession();
				
				Transaction tx=s.beginTransaction();
				s.save(obj);
				tx.commit();
				
				s.close();
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchBills");
				    dispatcher.forward(request, response);
				
		
				}catch(Exception e) {
					
					System.out.println(e.getMessage());
				}
	}

}
