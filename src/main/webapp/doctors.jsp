<%@page import="com.entities.Doctors"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>
<% Doctors obj= (Doctors)session.getAttribute("doc"); %>
    <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Doctors</title>
	<link rel="stylesheet" href="style5.css">
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
    <div class="sidebar">
    <div class="heading">HMS</div>

<a href="dashboard.jsp">Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
    <a href="#" onclick="submitForm()" class="active">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp">Bills</a>
    <a href="prescriptions.jsp">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>

  </div>
	<div class="content">
		<div class="search-box">
			<input type="text" class="form-control" placeholder="Search Doctors...">
		</div>
		<form action="fetchDoctors" method="post">
    <input type="submit" value="Get Data">
</form>
		<div class="table-container">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Specialization</th>
						<th>Phone</th>
						<th>Email</th>
					</tr>
				</thead>
				 <tbody>
      
        
    </tbody>
</table>
		</div>
		<div class="button-container">
			<a href="addDoctors.jsp" ><button class="btn">Add New Doctor</button></a>
			<button class="btn">Remove Doctor</button>
		</div>
	</div>
</body>
</html>
    