<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Add Staff</title>
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
    <div class="container">
      <h1>Add New Staff</h1>

      
      <form action="AddStaffServlet" method="post">
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" id="name" name="s_name" required>
        </div>
        <div class="form-group">
          <label for="age">Age:</label>
          <input type="number" id="age" name="age" required>
        </div>
        <div class="form-group">
          <label for="department">Designation:</label>
          <select id="department" name="designation" required>
            <option value="">Select Department</option>
            <option value="Wordboy">Wordboy</option>
            <option value="Nurse">Nurse</option>
            <option value="Clerk">Clerk</option>
            <option value="Assistant">Assistant</option>
            <option value="Accountant">Accountant</option>
            
          </select>
        </div>
        <div class="form-group">
          <label for="experience">Patient</label>
          <input type="text" id="experience" name="p_name">
        </div>
        <button type="submit">Add Staff</button>
      </form>
    </div>
  </body>
</html>
    