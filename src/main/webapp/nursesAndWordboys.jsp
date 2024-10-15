<%@page import="com.entities.Staff"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>

    <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Staff</title>
	<link rel="stylesheet" href="style5.css">
	
 <script>
 
 function openPopup() {
     document.getElementById("popupForm").style.display = "block";
   }
 function openPopup2() {
     document.getElementById("popupFormAllocate").style.display = "block";
   }

   function closePopup() {
     document.getElementById("popupForm").style.display = "none";
   }

   function closePopup2() {
	     document.getElementById("popupFormAllocate").style.display = "none";
	   }
   document.getElementById("popupButton").addEventListener("click", function() {
     openPopup();
   });
   function getReport() {
		  var form = document.createElement("form");
		  form.setAttribute("method", "POST");
		  form.setAttribute("action", "getReport");
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
 
function submitForm() {
  var form = document.createElement("form");
  form.setAttribute("method", "POST");
  form.setAttribute("action", "fetchDoctors");
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

 <div id="popupForm" style="display:none;">
    <form action="deleteStaffServlet" method="post">
      <input type="text" name="s_name" placeholder="Name">
      <input type="text" name="desg" placeholder="designation">
      <button type="submit">Delete</button>
      <button type="button" onclick="closePopup()">Close</button>
    </form>
  </div>



   <div class="sidebar">
    <div class="heading">HMS</div>
 
 <a href="dashboard.jsp" >Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
    <a href="#" onclick="submitForm()">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp">Bills</a>
    <a href="prescriptions.jsp">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()" class="active">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
 
 
  </div>
	<div class="content">
		
	
		<div class="table-container">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Age</th>
						<th>Designation</th>
						<th>Patient</th>
					</tr>
				</thead>
				  <tbody>
       <% List<Staff> doc = (List<Staff>)request.getAttribute("doc");
       for (Staff entity :doc) { %>
       <tr>
		  <td> <%=entity.getS_name()%> </td>
		  <td><%=entity.getAge() %></td>
		  <td><%=entity.getDesignation() %></td>
		  <td><%=entity.getP_name() %></td>
		
		</tr>
		    
		   
		<% }%>
        
    </tbody>
</table>
		</div>
		<div class="button-container">
			<a href="addStaffs.jsp" ><button class="btn">Add New Staff</button></a>
			<a href="#" onClick="openPopup()"><button class="btn">Remove Staff</button></a>
			
		</div>
	</div>
	
	
 
</body>
</html>
    