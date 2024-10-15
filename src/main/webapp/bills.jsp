<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hospital Billing</title>
	<link rel="stylesheet" type="text/css" href="style10.css">
	
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
<form id="form1" action="fetchBills" method="post">
                <input type="submit" value="View Bills">
            </form>
<div class="sidebar">
    <div class="heading">HMS</div>
    <a href="dashboard.jsp" >Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
    <a href="#" onclick="submitForm()">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp" class="active">Bills</a>
    <a href="prescriptions.jsp">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
  </div>
  
	<div class="container">
		<h1>Hospital Billing</h1>
		 	
		<form action="billServlet" method="post">
			<label for="patient-name">Patient Name:</label>
			<input type="text" id="patient-name" name="patient-name" required>
			<label for="patient-id">Patient ID:</label>
			<input type="text" id="patient-id" name="patient-id" required>
			<label for="date-of-service">Date of Service:</label>
			<input type="date" id="date-of-service" name="date-of-service" required>
			<label for="total-amount">Total Amount:</label>
			<input type="text" id="total-amount" name="total-amount" required>
			<label for="insurance-coverage">Insurance Coverage:</label>
			<input type="text" id="insurance-coverage" name="insurance-coverage" required>
			<label for="patient-balance">Patient Balance:</label>
			<input type="text" id="patient-balance" name="patient-balance" required>
			<label for="patient-balance">Paid (Yes or No)</label>
			<input type="text" id="patient-balance" name="isPaid" required>
			<label for="patient-balance">Due (Yes or No):</label>
			<input type="text" id="patient-balance" name="isDue" required>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>
    