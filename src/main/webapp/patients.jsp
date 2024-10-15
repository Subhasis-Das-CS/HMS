<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.entities.Patients"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Patients</title>
    <link rel="stylesheet" href="style4.css">
 <script>
 
 function openPopup() {
     document.getElementById("popupForm").style.display = "block";
   }

   function closePopup() {
     document.getElementById("popupForm").style.display = "none";
   }

   document.getElementById("popupButton").addEventListener("click", function() {
     openPopup();
   });
   
   function staffForm() {
		  var form = document.createElement("form");
		  form.setAttribute("method", "POST");
		  form.setAttribute("action", "fetchStaffs");
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
	function inventoryForm() {
		  var form = document.createElement("form");
		  form.setAttribute("method", "POST");
		  form.setAttribute("action", "fetchMedicines");
		  document.body.appendChild(form);
		  form.submit();
		}
 
function submitForm() {
  var form = document.createElement("form");
  form.setAttribute("method", "POST");
  form.setAttribute("action", "fetchDoctors");
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
</script>
  </head>
  <body>
   <div class="sidebar">
    <div class="heading">HMS</div>
<a href="dashboard.jsp" >Dashboard</a>
     <a href="#" onclick="patientsForm()" class="active">Patients</a>
    <a href="#" onclick="submitForm()">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp">Bills</a>
    <a href="prescriptions.jsp">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
  </div>
    
      <a href="patientsRegistration.jsp" ><button class="btn">Add New Patient</button></a>
      
      
    <a href="#" onClick="openPopup()"> <button id="popupButton" class="btn2">Delete Patient</button></a> 

  <div id="popupForm" style="display:none;">
    <form action="deletePatients" method="post">
      <input type="text" name="name" placeholder="Phone">
      <input type="email" name="email" placeholder="Email">
      <button type="submit">Remove</button>
      <button type="button" onclick="closePopup()">Close</button>
    </form>
  </div>
      
      <div class="table-container">
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Age</th>
              <th>Gender</th>
              <th>Doctor</th>
              <th>House No</th>
              <th>District</th>
              <th>City</th>
              <th>State</th>
              <th>Phone</th>
            </tr>
          </thead>
          <tbody>
      <% List<Patients> doc = (List<Patients>)request.getAttribute("doc");
       for (Patients entity :doc) { %>
       <tr>
		  <td> <%=entity.getp_name()%> </td>
		  <td><%=entity.getAge() %></td>
		  <td><%=entity.getGender() %></td>
		  <td><%=entity.getDoc() %></td>
		  <td><%=entity.getH_no() %></td>
		  <td><%=entity.getDistrict() %></td>
		  <td><%=entity.getCity() %></td>
		  <td><%=entity.getState() %></td>
		  <td><%=entity.getPhone_no() %></td>
		  
		</tr>
		    
		   
		<% }%>
          </tbody>
        </table>
      </div>
    
  </body>
</html>
    