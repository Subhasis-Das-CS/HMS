<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
  <head>
    <title>Patient Registration</title>
    <style>
      body {
        background-color: #f8f8f8;
        color: #333;
        font-family: Arial, sans-serif;
      }

      h1 {
        text-align: center;
        color: #ff4c4c;
        font-size: 36px;
        margin-top: 50px;
        margin-bottom: 30px;
      }

      form {
        max-width: 600px;
        margin: 0 auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
      }

      label {
        display: block;
        font-size: 16px;
        margin-bottom: 5px;
        color: #666;
        font-weight: bold;
      }

      input[type="text"],
      input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        font-size: 16px;
        border-radius: 5px;
        border: none;
        background-color: #f5f5f5;
        color: #666;
        box-shadow: inset 0px 0px 5px rgba(0, 0, 0, 0.1);
      }

      input[type="submit"] {
        background-color: #ff4c4c;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
      }

      input[type="submit"]:hover {
        background-color: #e64343;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
      }

      .form-group {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 20px;
      }

      .form-group label {
        font-size: 18px;
        font-weight: normal;
      }

      .form-group input {
        margin-bottom: 0;
      }


      /* Content styles */
      .content {
        margin-left: 250px;
        padding: 20px;
      }

      @media (max-width: 768px) {
        .form-group {
          grid-template-columns: 1fr;
        }
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

  .sidebar .active {
    background-color: #f44336;
  color: white;
}


      .main {
        margin-left: 200px; /* Same as the width of the sidebar */
        padding: 0px 10px;
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

function patientsForm(){
	  var form = document.createElement("form");
	  form.setAttribute("method", "POST");
	  form.setAttribute("action", "fetchPatients");
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

    <div class="main">
      <h1>Patient Registration</h1>
      <form action="PatientsRegistration" method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="Enter your name" required>
          <label for="age">Age</label>
          <input type="number" id="age" name="age" placeholder="Enter your age" required>
          <label for="age">Gender</label>
          <input type="text" id="gender" name="gender" placeholder="Enter your gender" required>
          <label for="phone">Phone No.</label>
          <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
          <label for="phone">Doctor Name</label>
          <input type="text" id="doctor" name="doctor" placeholder="Enter doctor's number" required>
          <label for="house">House No.</label>
          <input type="text" id="house" name="house" placeholder="Enter your house number" required>
          <label for="district">District</label>
          <input type="text" id="district" name="district" placeholder="Enter your district" required>
          <label for="city">City</label>
          <input type="text" id="city" name="city" placeholder="Enter your city" required>
          <label for="state">State</label>
          <input type="text" id="state" name="state" placeholder="Enter your state" required>
          <label for="pincode">Pin Code</label>
          <input type="text" id="pincode" name="pincode" placeholder="Enter your pin code" required>
        </div>
        <input type="submit" value="Submit">
      </form>
    </div>
  </body>
</html>

    