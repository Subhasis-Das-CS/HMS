<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Add New Doctor</title>
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
    <div class="container">
      <h1>Add New Doctor</h1>

      
      <form action="AddDoctorsServlet" method="post">
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
          <label for="age">Age:</label>
          <input type="number" id="age" name="age" required>
        </div>
        <div class="form-group">
          <label for="department">Department:</label>
          <select id="department" name="department" required>
            <option value="">Select Department</option>
            <option value="Cardiology">Cardiology</option>
            <option value="Neurology">Neurology</option>
            <option value="Oncology">Oncology</option>
            <option value="Pediatrics">Pediatrics</option>
             <option value="Pediatrics">Dentist</option>
              <option value="Pediatrics">ENT</option>
               <option value="Pediatrics">Orthopedic</option>
          </select>
        </div>
        <div class="form-group">
          <label for="experience">Experience:</label>
          <input type="number" id="experience" name="experience" required>
        </div>
        <button type="submit">Add Doctor</button>
      </form>
    </div>
  </body>
</html>
    