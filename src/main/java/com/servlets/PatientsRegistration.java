package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Patients;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class PatientsRegistration
 */
public class PatientsRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientsRegistration() {
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
		
		System.out.println("here");
		
		try {
			
			
			String name=request.getParameter("name");
			System.out.println(name);
			int age=Integer.parseInt(request.getParameter("age"));
			System.out.println(age);
			String phone_no=request.getParameter("phone");
			System.out.println(phone_no);
			int h_no=Integer.parseInt(request.getParameter("house"));
			System.out.println(h_no);
			String district=request.getParameter("district");
			System.out.println(district);
			String city=request.getParameter("city");
			System.out.println(city);
			String state=request.getParameter("state");
			System.out.println(state);
			String pincode=request.getParameter("pincode");
			System.out.println(pincode);
			String doctor=request.getParameter("doctor");
			String gender=request.getParameter("gender");
			
			
			Random random=new Random();
			int id=random.nextInt(1000);
		
			Patients obj=new Patients(id,name, age,phone_no, doctor, h_no, district, city, state, pincode,gender);
			Session s=FactoryProvider.getFactory().openSession();
			
			Transaction tx=s.beginTransaction();
			s.save(obj);
			tx.commit();
			
			 RequestDispatcher dispatcher = request.getRequestDispatcher("fetchPatients");
			    dispatcher.forward(request, response);
			
			s.close();
		
	
			
		
		
			
		}catch(Exception e) {
			
			System.out.println(e.getMessage());
		}
		
	}

}
