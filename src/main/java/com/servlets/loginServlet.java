package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.App;
import com.entities.Login;
import com.helper.FactoryProvider;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet Login");
			String user=request.getParameter("username");
			String password=request.getParameter("password");
			
			System.out.println(user);
			System.out.println(password);
			
		try {
			   
			    
			    Session session = FactoryProvider.getFactory().openSession();
			    Transaction tx = session.beginTransaction();
			     
			    
			    Query query = session.createQuery("FROM Login WHERE phone = :phone");
			    query.setParameter("phone", user);
			    
			    Login obj = (Login) query.uniqueResult();
			    
			    String pwd=obj.getpass();
			    System.out.println(pwd);
			    if(pwd.equals(password)) {
			    response.sendRedirect("dashboard.jsp");
			    
			    }else {
			    	//request.getSession().setAttribute("LE", "Invalid user name or password");

			        // Redirect back to the login page
			       // response.sendRedirect("index.jsp");
			    }
			    tx.commit();
			    session.close();

			    
		}catch(Exception e) {
			
			System.out.println(e.getMessage());
		}
			   
			}

	
	}


