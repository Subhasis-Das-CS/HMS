<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="com.entities.Prescription"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Prescriptions</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JK"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style3.css">
    
     <script>
function submitForm() {
  var form = document.createElement("form");
  form.setAttribute("method", "POST");
  form.setAttribute("action", "fetchDoctors");
  document.body.appendChild(form);
  form.submit();
}
function getReport() {
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "getReport");
	  document.body.appendChild(form);
	  form.submit();
	}
function patientsForm(){
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "fetchPatients");
	  document.body.appendChild(form);
	  form.submit();
	}
	
function staffForm() {
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "fetchStaffs");
	  document.body.appendChild(form);
	  form.submit();
	}
function inventoryForm() {
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "fetchMedicines");
	  document.body.appendChild(form);
	  form.submit();
	}
	
</script>
</head>
<body>
    <div class="wrapper">
      <div class="sidebar">
    <div class="heading">HMS</div>
    
    <a href="dashboard.jsp" >Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
    <a href="#" onclick="submitForm()">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp">Bills</a>
    <a href="prescriptions.jsp" class="active">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
    
  </div>
        <div class="main-content">
            <h2>Appointments</h2>
       
            <div class="row">
                <div class="col-md-6">
         
                </div>
                <div class="col-md-6">
        
                 <a href="prescriptions.jsp"> <button class="btn float-right">Add New Prescriptions</button></a>  

                </div>
                
            </div>
            
            <br>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Doctor's Name</th>
                        <th>Medication</th>
                        <th>Dosage</th>
                        <th>Frequency</th>
                        <th>Notes</th>
                      
                    </tr>
                </thead>
                <tbody>
                 <% List<Prescription> doc = (List<Prescription>)request.getAttribute("doc");
       for (Prescription entity :doc) { %>
       <tr>
		  <td> <%=entity.getP_name()%> </td>
		  <td><%=entity.getP_doctor() %></td>
		  <td><%=entity.getMedication() %></td>
		  <td><%=entity.getDosage() %></td>
		  <td><%=entity.getFrequency() %></td>
		  <td><%=entity.getNotes() %></td>
	
		</tr>
		    
		   
		<% }%>
        
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
    