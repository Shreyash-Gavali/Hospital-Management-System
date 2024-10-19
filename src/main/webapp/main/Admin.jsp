<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="main/css/Admin.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <style>
        
        /* .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input { width: 100%; padding: 8px; box-sizing: border-box; }
        button { padding: 10px 15px; margin-right: 10px; cursor: pointer; } */
    </style>
  </head>
  <body class="overflow-hidden">
    <nav class="navbar bg-dark p-4 w-100" >
      <div class="container-fluid h-50">
        <span class="navbar-brand mb-0 h1 text-light fs-4">Dashboard</span>
        <div class="dropdown">
          <button
            class="btn btn-secondary dropdown-toggle fs-5"
            type="button"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
          <% 

HttpSession s=request.getSession(false);
if(s==null || s.getAttribute("username")==null)
{
	response.sendRedirect(request.getContextPath()+"/Login");
}
else
{
String userName = (String)s.getAttribute("username");
out.println(userName);
}

%>
          </button>
          <ul class="dropdown-menu overflow-hidden fs-5">
            <li>
              <button class="dropdown-item" type="button">Settings</button>
            </li>
            <li><form method="POST" action="<%=request.getContextPath() +"/Logout" %>"><button class="dropdown-item" type="submit" >Logout</button></form></li>
          </ul>
        </div>
      </div>
    </nav>
    <nav class="position-fixed left-0 navbar w-25 h-100 bg-dark d-flex overflow-scroll" id="sidebar">
      <div class="container-fluid">
        <ul class="d-flex flex-column w-100 h-100 list-group p-5" id="sidebarUL">
          <li class="list-group-item">
            <p class="w-100 d-inline-flex gap-1"></p>
  <a class="w-100 btn btn-dark fs-4" data-bs-toggle="collapse" href="#Patientcollapse" role="button" aria-expanded="false" aria-controls="Patientcollapse">
    Patient
  </a>
</p>
<div class="collapse " id="Patientcollapse">
  <div class="card card-body bg-dark">
   <div class="btn-group-vertical rounded" role="group" aria-label="Vertical button group">
     <button type="button" class="btn btn-dark" id="searchPatient">Search Patient </button>
  <button type="button" class="btn btn-dark" id="addPatient">Add Patient</button>
</div>
  </div>
</div>
          </li>
          <li class="list-group-item">
            <p class="w-100 d-inline-flex gap-1"></p>
  <a class="w-100 btn btn-dark fs-4" data-bs-toggle="collapse" href="#Staffcollapse" role="button" aria-expanded="false" aria-controls="Staffcollapse">
    Staff
  </a>
</p>
<div class="collapse" id="Staffcollapse">
  <div class="card card-body bg-dark">
   <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
     <button type="button" class="btn btn-dark" id="searchStaff">Search Staff </button>
  <button type="button" class="btn btn-dark" id="addStaff">Add Staff</button>
</div>
  </div>
</div>
          </li>
          <li class="list-group-item">
            <p class="w-100 d-inline-flex gap-1"></p>
  <a class="w-100 btn btn-dark fs-4" data-bs-toggle="collapse" href="#Doctorcollapse" role="button" aria-expanded="false" aria-controls="Doctorcollapse">
    Doctor
  </a>
</p>
<div class="collapse" id="Doctorcollapse">
  <div class="card card-body bg-dark">
   <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
     <button type="button" class="btn btn-dark" id="searchDoctor">Search Doctor </button>
  <button type="button" class="btn btn-dark" id="addDoctor">Add Doctor</button>
</div>
  </div>
</div>
          </li>
          <li class="list-group-item">
            <p class="w-100 d-inline-flex gap-1"></p>
  <a class="w-100 btn btn-dark fs-4" data-bs-toggle="collapse" href="#Wardcollapse" role="button" aria-expanded="false" aria-controls="Wardcollapse">
    Ward
  </a>
</p>
<div class="collapse" id="Wardcollapse">
  <div class="card card-body bg-dark">
   <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
     <button type="button" class="btn btn-dark" id="searchWard">Search Ward </button>
  <button type="button" class="btn btn-dark" id="addWard">Assign Ward</button>
</div>
  </div>
</div>
          </li>
          <li class="list-group-item">
            <p class="w-100 d-inline-flex gap-1"></p>
  <a class="w-100 btn btn-dark fs-4" data-bs-toggle="collapse" href="#Paymentscollapse" role="button" aria-expanded="false" aria-controls="Paymentscollapse">
    Payments
  </a>
</p>
<div class="collapse" id="Paymentscollapse">
  <div class="card card-body bg-dark">
   <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
     <button type="button" class="btn btn-dark" id="searchPayments">Search Payments </button>
  <button type="button" class="btn btn-dark" id="addPayments">Add Payments</button>
</div>
  </div>
</div>
          </li>
        
          </ul>
      </div>
    </nav>
    <div class="container-fluid  w-75 float-end p-5 overflow-hidden" id="container">
   <!-- <div class="container-fluid  h-auto  d-flex flex-column ms-6">
    <h2 class="text-dark text-center"> Patient Information </h2>
    <form method="POST" action="Admin.jsp">
      
      <div class="mb-3">
      <label for="SearchPatient">Search By Patient Name / ID</label>
    <input type="text" class="w-100 form-control form-control-lg mt-3 " id="SearchPatient" placeholder="Enter Patient Name / ID">
        </div>
  <div class="mb-3">
      <label for="SearchPatient">Search By Date</label>
  <input type="date" class="w-100 form-control form-control-lg mt-3" id="SearchPatient" placeholder="Enter Patient Name / ID">
      <button type="submit" class="btn btn-primary w-25 mt-5 position-relative" id="submitPatient">Submit</button>
      </div>
    </form>
   </div>
      <table class="table h-100 mt-5 fs-5">
  <thead>
    <tr>
      <th scope="col">Patient Id</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Patient Age</th>
      <th scope="col">Patient Disease</th>
      <th scope="col">Patient Admitted On</th>
      <th scope="col">Patient Left On</th>
      <th scope="col">Patient Phn No</th>
      <th scope="col">Patient Fees</th>
       <th scope="col">Patient Ward(Special or General)</th>
      <th scope="col">Patient Treated By</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      
    </tr>
    <tr>
      <th scope="row">1</th>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      
    </tr>
   
  </tbody>
</table>
   
      
</div>
</div> -->
   
   </div>
  <script src="${pageContext.request.contextPath}/main/js/Admin.js"></script>
  
  <!--  <script src="js/Admin.js"></script -->>
   <!-- <script src="./js/Admin.js"></script> -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous">
  </script>
  </body>
</html>
