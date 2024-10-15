<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HMS Dashboard</title>

  <style>
   * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f8f8f8;
}

.sidebar {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #c62828;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidebar a {
  display: block;
  color: #fff;
  padding: 10px 20px;
  text-decoration: none;
  transition: 0.3s;
}

.sidebar a:hover {
  background-color: #f44336;
  color: white;
}

.sidebar .heading {
  color: #fff;
  text-align: center;
  font-size: 24px;
  padding-bottom: 20px;
}

.dashboard {
  margin-left: 200px;
  padding: 20px;
}

.dashboard h1 {
  font-size: 36px;
  margin-bottom: 20px;
  color: #c62828;
}

.dashboard .card {
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
  padding: 20px;
  margin-bottom: 20px;
}

.dashboard .card h2 {
  font-size: 24px;
  margin-bottom: 10px;
  color: #c62828;
}

.dashboard .card p {
  font-size: 16px;
  margin-bottom: 10px;
}
.sidebar .active {
    background-color: #f44336;
  color: white;
}

footer {
	background-color: #ff0000;
	color: #fff;
	padding: 10px;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 2px;
}

  </style>
 <script>
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
	
function getReport() {
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "getReport");
	  document.body.appendChild(form);
	  form.submit();
	}
	
</script>
</head>

<body>
<div class="sidebar">
    <div class="heading">HMS</div>
    <a href="dashboard.jsp" class="active">Dashboard</a>
     <a href="#" onclick="patientsForm()">Patients</a>
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

  <div class="dashboard">
    <h1>Welcome to HMS Dashboard</h1>
    <div class="card">
     <a href="#" onclick="patientsForm()"> <h2>Patients</h2></a>
      <p>
     Use this module to add new patients to the hospital, also use this to remove discharged patients, view the details of current patients
       </p>
    </div>

    <div class="card">
      <a href="#" onclick="submitForm()"> <h2>Doctors</h2></a>
      <p>
      To add new doctors, view the list of current doctors and allocate a doctor to a patient, remove doctors from the hospital
       </p>
    </div>

    <div class="card">
     <a href="bills.jsp"> <h2>Bills</h2></a>
      <p>
      manage bills if the patients
      </p>
    </div>

    <div class="card">
       <a href="prescriptions.jsp"><h2>Prescriptions</h2></a>
      <p>
      Add new prescriptions for patients, remove prescriptions, view prescriptions.
       </p>
    </div>

    <div class="card">
     <a href="makeAppointment.jsp"> <h2>Appointments</h2></a>
      <p>
      Make Appointments, remove appointments, view current appointments
       </p>
    </div>
  </div>
  
  
  <footer>
		Developed By Subhasis Das
	</footer>
</body>

</html>
    