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
import com.entities.Appointment;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class addAdminServlet
 */
public class addAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAdminServlet() {
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
			String name=request.getParameter("name");
			String age=request.getParameter("age");
			String phone=request.getParameter("phone");
			String pass=request.getParameter("password");
			
				System.out.println(name+phone+age+ pass);
				
				Random random=new Random();
				int id=random.nextInt(1000);
				
			Admin obj=new Admin(id, name, age, phone, pass);
				Session s=FactoryProvider.getFactory().openSession();
				
				Transaction tx=s.beginTransaction();
				s.save(obj);
				tx.commit();
				
				s.close();
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchAdmins");
				    dispatcher.forward(request, response);
				
				
				}catch(Exception e) {
					
					System.out.println(e.getMessage());
				}
				
	}

}
