<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.entities.Doctors"%>
    <%@page import="com.entities.Bill"%>
    <%@page import="com.entities.Inventory"%>
    <%@page import="com.entities.Patients"%>
    <%@page import="com.entities.Prescription"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<title>Hospital Management System Reports</title>
	<link rel="stylesheet" type="text/css" href="style14.css">
</head>
<body>
	<header>
		Hospital Management System Reports
	</header>
	<% int cardio=0;
	int onco=0;
	int nuro=0;
	int pedia=0;
	int dent=0;
	int ent=0;
	int ortho=0;
	int male=0;
	int female=0;
	int child=0;
	int p_count=0;
	int d_count=0;
	int expd=0;
	
	%>
	  <% List<Doctors> doc = (List<Doctors>)request.getAttribute("doctors");
       for (Doctors entity :doc) { 
    	   d_count++;
    	   if(entity.getDept().equals("Cardiology"))  cardio++;
    	   if(entity.getDept().equals("Neurology"))  nuro++;
    	   if(entity.getDept().equals("Oncology"))  onco++;
    	   if(entity.getDept().equals("Pediatrics"))  pedia++;
    	   if(entity.getDept().equals("Dentist"))  dent++;
    	   if(entity.getDept().equals("ENT"))  ent++;
    	   if(entity.getDept().equals("Orthopedic"))  ortho++;
    	   if(Integer.parseInt(entity.getExpe())>10)expd++;
    	   
       %>
           
		<% }%>
		 <% List<Patients> pat = (List<Patients>)request.getAttribute("patients");
		 
		 int young=100, old=0;
		 String yn="", on="";
		 
		 
       for (Patients entity :pat) { 
    	   
    	  p_count++;
    	 if(entity.getGender().equalsIgnoreCase("Male")) male++;
    	 if(entity.getGender().equalsIgnoreCase("Female")) female++;
    	 if(entity.getAge()<8) child++;
    	 
    	 if(entity.getAge()>old){old=entity.getAge(); on=entity.getp_name();}
    	 if(entity.getAge()<young){young=entity.getAge(); yn=entity.getp_name();}
    	 
    	   
       %>
           
		<% }
       
       int outOfStock=0;
       int cost=0;
       String cm="";
       int mumc=0;
       String mum="";
       int ms=0;
       String msm="";
		
		double ppd=((double)p_count/(double)d_count);
		%>
		
		
		 <% List<Inventory> inv = (List<Inventory>)request.getAttribute("inventory");
       for (Inventory entity :inv) { 
    	  
    	   
    	  if(Integer.valueOf(entity.getMed_stock())==0)outOfStock++;
    	  
    	  if(Integer.valueOf(entity.getMed_price())>cost){
    		  cost=Integer.valueOf(entity.getMed_price());
    		  cm=entity.getMed_name();
    		  
    	  }
    	  
    	 if(Integer.parseInt(entity.getMed_sold())>ms){
    		 ms=Integer.parseInt(entity.getMed_sold());
    		 msm=entity.getMed_name();
    		 
    	 }
  
       }
       
       
       int cop=0;
       int cod=0;
       int tp=0;
       int td=0;
     List<Bill> bil = (List<Bill>)request.getAttribute("bill");
       for (Bill entity :bil) { 
    	  
    	   if(entity.getIsPaid().equalsIgnoreCase("Yes")){cop++; tp+=Integer.parseInt(entity.getAmount());}
    	   
    	   if(entity.getIsDue().equalsIgnoreCase("Yes")){cop++; td+=Integer.parseInt(entity.getAmount());}
    	   
    	
  
       }
       
       
    int lcm=10000;
    String lcmn="";
 	  
       
       List<Prescription> pres = (List<Prescription>)request.getAttribute("prescription");
       for (Prescription i :pres) { 
     	  int count=0;
     	  String mn=i.getMedication();
    	   
    	   for (Prescription j :pres) { 
    	    	  
        	   String mn2=j.getMedication();
        	   
        	   if(mn.equals(mn2))count++;
    	    	 
    	    	  
    	    	   
    	       }
     	  
    	   if(count>mumc){mumc=count; mum=mn;}
    	   if(count<lcm){lcm=count; lcmn=mn;}
    	   
     	   
        }
       
       
       
       %>
           
	
		
	
	<div class="container">
		<div class="report">
			<h2>Patient Reports</h2>
			<p><strong>Total Patients: </strong> <%= p_count %></p>
			<p><strong>Male Patients: </strong> <%= male %></p>
			<p><strong>Female Patients: </strong> <%= female %></p>
			<p><strong>Children Patients: </strong><%= child %></p>
			<table>
				<tr>
					<th>Youngest Patient</th>
					<th>Oldest Patient</th>
					
				</tr>
				<tr>
					<td><%= yn%> (Age: <%=young %>)</td>
						<td><%= on%> (Age: <%=old %>)</td>
					
				</tr>
				
			</table>
		</div>
		<div class="report">
			<h2>Doctor's Reports</h2>
			<p><strong>Number Of Cardiologists:</strong>     <%=cardio%> </p>
			<p><strong>Number Of Nurologists:</strong> <%=nuro%> </p>
			<p><strong>Number Of Oncologistss:</strong> <%=onco%></p>
			<p><strong>Number Of Pediatrics:</strong> <%=pedia%></p>
			<p><strong>Number Of Dentists:</strong> <%=dent%></p>
			<p><strong>Number Of ENT:</strong> <%=ent%></p>
			<p><strong>Number Of Orthopedic:</strong> <%=ortho%></p>
			<table>
				<tr>
					<th>Experienced Doctors(more than 10 years)</th>
					<th>Patients per doctor</th>
					<th>total no. of doctors</th>
				</tr>
				<tr>
					<td><%= expd %></td>
					<td><%= ppd %></td>
					<td><%=d_count %></td>
				</tr>
				
			</table>
		</div>
		<div class="report">
			<h2>Medicine Reports</h2>
			<p><strong>Most Used Medicine:</strong> <%= msm %></p>
			<p><strong>Out of stock medicines:</strong> <%= outOfStock %></p>
			
			<p><strong>Costliest Medicine</strong> <%=cm %></p>
			
		</div>
		<div class="report">
			<h2>Bill reports</h2>
			<p><strong>Total Payment recieved:</strong> Rs. <%= tp %> /-</p>
			<p><strong>Total Due:</strong> Rs. <%= td %> /-</p>
			<p><strong>Paid Bill count:</strong> <%=cop %></p>
			<p><strong>Due bills count</strong> <%=cod %></p>
			
		</div>
		<div class="report">
			<h2>Prescription Reports</h2>
			<p><strong>Most Prescribed:</strong> <%= mum %></p>
			<p><strong>Least Prescribed:</strong> <%= lcmn %></p>
		
		
		</div>
	</div>
	<footer>
		Generated by Hospital Management System
	</footer>
</body>
</html>
    