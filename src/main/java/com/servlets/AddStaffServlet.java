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
import com.entities.Staff;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class AddStaffServlet
 */
public class AddStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStaffServlet() {
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
			String s_name=request.getParameter("s_name");
			String age=request.getParameter("age");
			String desg=request.getParameter("designation");
			String p_name=request.getParameter("p_name");
			
				System.out.println(s_name+age+desg+p_name);
				
				Random random=new Random();
				int id=random.nextInt(1000);
				
				Staff obj=new Staff(id, s_name, desg, age, p_name);
				Session s=FactoryProvider.getFactory().openSession();
				
				Transaction tx=s.beginTransaction();
				s.save(obj);
				tx.commit();
				
				s.close();
				
				 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchStaffs");
				    dispatcher.forward(request, response);
				
				
				}catch(Exception e) {
					
					System.out.println(e.getMessage());
				}
				
		
	}

}
