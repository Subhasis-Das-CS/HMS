<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
	<title>Medical Appointment Form</title>
	<link rel="stylesheet" type="text/css" href="style9.css">
	
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
<form id="form1" action="fetchAppointments" method="post">
                <input type="submit" value="Show Appointments">
            </form>

   <div class="sidebar">
    <div class="heading">HMS</div>
   
   <a href="dashboard.jsp" >Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
    <a href="#" onclick="submitForm()">Doctors</a>
    <a href="admins.jsp">Admin Controls</a>
    <a href="bills.jsp">Bills</a>
    <a href="prescriptions.jsp">Prescriptions</a>
    <a href="makeAppointment.jsp" class="active">Appointments</a>
     <a href="#" onclick="staffForm()">Staff</a>
      <a href="#" onclick="inventoryForm()">Inventory</a>
      <a href="#" onclick="getReport()">Reports</a>
       <a href="index.jsp" >Exit</a>
   
  </div>
      
	
	<form action="makeAppointmentServlet" method="post">
		<h1>Medical Appointment Form</h1>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required>



		<label for="phone">Phone:</label>
		<input type="tel" id="phone" name="phone" required>

		<label for="doctor">Doctor:</label>
		<select id="doctor" name="doctor">
			<option value="">Select a doctor</option>
			<option value="Dr. Deep Dasgupta">Dr. Deep Dasgupta</option>
			<option value="Dr. Subhankar Saha">Dr. Subhankar Saha</option>
			<option value="Dr. Tuphan Banerjee">Dr. Tuphan Banerjee</option>
				<option value="Dr. Tamal Banerjee">Dr. Tamal Banerjee</option>
			<option value="Dr. Ishan Paul">Dr. Ishan Paul</option>
		
		</select>

		<label for="date">Date:</label>
		<input type="date" id="date" name="date" required>

		<label for="time">Time:</label>
		<input type="time" id="time" name="time" required>

		<label for="reason">Reason for appointment:</label>
		<textarea id="reason" name="reason" rows="5" cols="30" required></textarea>

		<input type="submit" value="Submit">
	</form>
</body>
</html>
