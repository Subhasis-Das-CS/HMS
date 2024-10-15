<%@page import="com.entities.Inventory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ page import="java.util.List" %>

    <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Doctors</title>
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

 <div id="popupForm" style="display:none;">
    <form action="updateStock" method="post">
      <input type="text" name="med_name" placeholder="Medicine Name">
      <input type="text" name="med_stock" placeholder="Stock">
      <input type="text" name="med_price" placeholder="Price">
      <input type="text" name="med_sold" placeholder="Sold">
      <button type="submit">update</button>
      <button type="button" onclick="closePopup()">Close</button>
    </form>
  </div>
  <div id="popupFormAllocate" style="display:none;">
    <form action="deleteMedicine" method="post">
      <input type="text" name="med_name" placeholder="Medicine Name">
      <input type="text" name="med_brand" placeholder="Brand">
      <button type="submit">Delete</button>
      <button type="button" onclick="closePopup2()">Close</button>
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
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()" class="active">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
    
  </div>
	<div class="content">
		
	
		<div class="table-container">
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Brand</th>
						<th>Stock</th>
						<th>Price</th>
						<th>Sold</th>
					</tr>
				</thead>
				  <tbody>
       <% List<Inventory> doc = (List<Inventory>)request.getAttribute("doc");
       for (Inventory entity :doc) { %>
       <tr>
		  <td> <%=entity.getMed_name()%> </td>
		  <td><%=entity.getMed_brand() %></td>
		  <td><%=entity.getMed_stock() %></td>
		  <td><%=entity.getMed_price() %></td>
		  <td><%=entity.getMed_sold() %></td>
		
		</tr>
		    
		   
		<% }%>
        
    </tbody>
</table>
		</div>
		<div class="button-container">
			<a href="addMedicines.jsp" ><button class="btn">Add New Medicine</button></a>
			<a href="#" onClick="openPopup()"><button class="btn">Update Stock</button></a>
			<a href="#" onClick="openPopup2()"><button class="btn">Delete Stock</button></a>
		</div>
	</div>
	
	
 
</body>
</html>
    