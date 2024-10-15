<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
	<title>Medical Prescription Form</title>
	<link rel="stylesheet" type="text/css" href="style11.css">
	
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
	
function prescriptionForm(){
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "fetchPrescriptions");
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
    <a href="prescriptions.jsp" class="active">Prescriptions</a>
    <a href="makeAppointment.jsp">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
  </div>
  <a href="#" onClick="prescriptionForm()"><button class="btn">View Prescriptions</button></a>
	<div class="container">
		<h1>Medical Prescription Form</h1>
		<form action="addPrescriptionServlet" method="post">
			<label>Patient Name:</label>
			<input type="text" name="patientname" required>
			<label>Prescribing Doctor:</label>
			<input type="text" name="doctorname" required>
			<label>Medication:</label>
			<input type="text" name="medication" required>
			<label>Dosage:</label>
			<input type="text" name="dosage" required>
			<label>Frequency:</label>
			<input type="text" name="frequency" required>
			<label>Notes:</label>
			<textarea name="notes"></textarea>
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
    