<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Add Medicine</title>
    <link rel="stylesheet" type="text/css" href="style8.css">
    
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
    <div class="container">
      <h1>Add New Medicine</h1>

      
      <form action="addMedicine" method="post">
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" id="name" name="med_name" required>
        </div>
        <div class="form-group">
          <label for="age">Brand:</label>
          <input type="text" id="age" name="med_brand" required>
        </div>
        
        <div class="form-group">
          <label for="experience">Stock</label>
          <input type="text" id="experience" name="med_stock" required>
        </div>
        
        <div class="form-group">
          <label for="experience">Price</label>
          <input type="text" id="experience" name="med_price" required>
        </div>
        <div class="form-group">
          <label for="experience">Sold Count</label>
          <input type="text" id="experience" name="med_sold" required>
        </div>
        <button type="submit">Add Medicine</button>
      </form>
    </div>
  </body>
</html>
    