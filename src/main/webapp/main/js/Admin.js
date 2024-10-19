/**
 * 
 */
let container = document.querySelector("#container");
let searchForm =
/*'<div class="container-fluid w-75 float-end me-5 p-5" id="container">' +*/
  	'<div class="container-fluid h-auto d-flex flex-column ms-6">' +
  		'<h2 class="text-dark text-center">Patient Information</h2>' +
  			'<form method="POST" action="Admin.jsp">' +
  			' <div class="mb-3">' +
  				'<label for="SearchPatient">Search By Patient Name / ID</label>' +
  				'<input type="text" class="w-100 form-control form-control-lg mt-3" id="SearchPatient" placeholder="Enter Patient Name / ID">' +
  				"</div>" +
  				'<div class="mb-3">' +
  					'<label for="SearchDate">Search By Date</label>' +
  					'<input type="date" class="w-100 form-control form-control-lg mt-3" id="SearchDate">' +
  					'<button type="submit" class="btn btn-primary w-25 mt-5 position-relative" id="submitPatient">Submit</button>' +
  				"</div>" +
 			 "</form>" +
  	"</div>" +
  	'<table class="table h-100 mt-5 fs-5">' +
  	"<thead>" +
  	"<tr>" +
  	'<th scope="col">Patient Id</th>' +
  	'<th scope="col">Patient Name</th>' +
  	'<th scope="col">Patient Age</th>' +
  	'<th scope="col">Patient Disease</th>' +
  	'<th scope="col">Patient Admitted On</th>' +
  	'<th scope="col">Patient Left On</th>' +
  	'<th scope="col">Patient Phone No</th>' +
  	'<th scope="col">Patient Fees</th>' +
  	'<th scope="col">Ward (Special or General)</th>' +
  	'<th scope="col">Treated By</th>' +
  	"</tr>" +
  	"</thead>" +
  	"<tbody>" +
  // Add appropriate rows here
  	"</tbody>" +
  	"</table>" +
  "</div>";

let newForm =
    	'<div class="container-fluid h-auto d-flex flex-column ms-6">' +
    	'<table class="table h-100 mt-5 fs-5">' +
    	"<thead>" +
    	"<tr>" +
    	'<th scope="col">Patient Id</th>' +
    	'<th scope="col">Patient Name</th>' +
    	'<th scope="col">Patient Age</th>' +
    	'<th scope="col">Patient Disease</th>' +
    	'<th scope="col">Patient Admitted On</th>' +
    	'<th scope="col">Patient Left On</th>' +
    	'<th scope="col">Patient Phone No</th>' +
    	'<th scope="col">Patient Fees</th>' +
    	'<th scope="col">Ward (Special or General)</th>' +
    	'<th scope="col">Treated By</th>' +
    	"</tr>" +
    	"</thead>" +
    	"<tbody>" +
    // Add appropriate rows here
    	"</tbody>" +
    	"</table>" +
    "</div>";
let addStaff=	'<div class="container">'+
	       			'<h1>Staff Registration</h1>'+
	       			'<form id="staffRegistrationForm">'+
	           			'<div class="form-group">'+
	               			'<label for="staffId">Staff ID:</label>'+
	               			'<input type="text" id="staffId" name="staffId" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffName">Staff Name:</label>'+
	               			'<input type="text" id="staffName" name="staffName" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffAge">Staff Age:</label>'+
	               			'<input type="number" id="staffAge" name="staffAge" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffDesignation">Staff Designation:</label>'+
	               			'<input type="text" id="staffDesignation" name="staffDesignation" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffAdmitDate">Staff Admit Date:</label>'+
	               			'<input type="date" id="staffAdmitDate" name="staffAdmitDate" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffAddress">Staff Address:</label>'+
	               			'<input type="text" id="staffAddress" name="staffAddress" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffPhNo">Staff Ph No:</label>'+
	               			'<input type="tel" id="staffPhNo" name="staffPhNo" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffSalary">Staff Salary:</label>'+
	               			'<input type="number" id="staffSalary" name="staffSalary" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffWorkingHours">Staff Working Hours:</label>'+
	               			'<input type="number" id="staffWorkingHours" name="staffWorkingHours" required>'+
	           			'</div>'+
	           			'<div class="form-group">'+
	               			'<label for="staffYearsOfExp">Staff Years of Exp:</label>'+
	               			'<input type="number" id="staffYearsOfExp" name="staffYearsOfExp" required>'+
	           			'</div>'+
	           			'<button type="submit" id="addButton">ADD</button>'+
	           			'<button type="button" id="updateButton">UPDATE</button>'+
	       			'</form>'+
	   		'</div>'+
		'</div>';
let addDoctor='<div class="container mt-5">'+
        '<div class="row justify-content-center">'+
            '<div class="col-lg-8">'+
                '<div class="card">'+
                    '<div class="card-header">'+
                        '<h2 class="text-center mb-0"><i class="fas fa-user-md me-2"></i>Doctor Registration</h2>'+
                    '</div>'+
                    '<div class="card-body">'+
                        '<form id="registrationForm">'+
                            '<div class="row mb-3">'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorId" class="form-label">Doctor ID</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-id-card"></i></span>'+
                                        '<input type="text" class="form-control" id="doctorId" required>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorName" class="form-label">Doctor Name</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-user"></i></span>'+
                                        '<input type="text" class="form-control" id="doctorName" required>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                            '<div class="row mb-3">'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorAge" class="form-label">Age</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>'+
                                        '<input type="number" class="form-control" id="doctorAge" required>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorSpeciality" class="form-label">Speciality</label>'+
                                    '<div class="input-group">'+
                                       '<span class="input-group-text"><i class="fas fa-stethoscope"></i></span>'+
                                        '<input type="text" class="form-control" id="doctorSpeciality" required>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                            '<div class="row mb-3">'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorAdmitDate" class="form-label">Admit Date</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>'+
                                        '<input type="date" class="form-control" id="doctorAdmitDate" required>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorLeft" class="form-label">Left Date</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-calendar-times"></i></span>'+
                                        '<input type="date" class="form-control" id="doctorLeft">'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                            '<div class="row mb-3">'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorAddress" class="form-label">Address</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-home"></i></span>'+
                                        '<input type="text" class="form-control" id="doctorAddress" required>'+
                                    '</div>'+
                                '</div>'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorPhNo" class="form-label">Phone Number</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-phone"></i></span>'+
                                        '<input type="tel" class="form-control" id="doctorPhNo" required>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                            '<div class="row mb-3">'+
                                '<div class="col-md-6">'+
                                    '<label for="doctorWorkingHours" class="form-label">Working Hours</label>'+
                                    '<div class="input-group">'+
                                        '<span class="input-group-text"><i class="fas fa-clock"></i></span>'+
                                        '<input type="text" class="form-control" id="doctorWorkingHours" required>'+
                                    '</div>'+
                                '</div>'+
                            '</div>'+
                            '<div class="d-grid gap-2 d-md-flex justify-content-md-end mt-4">'+
                                '<button type="submit" class="btn btn-primary me-md-2">'+
                                    '<i class="fas fa-plus-circle me-2"></i>Add Doctor'+
                                '</button>'+
                                '<button type="button" class="btn btn-secondary" id="updateBtn">'+
                                    '<i class="fas fa-edit me-2"></i>Update'+
                                '</button>'+
                            '</div>'+
                        '</form>'+
                    '</div>'+
                '</div>'+
            '</div>'+
        '</div>'+
    '</div';
	let searchDoctor='<div class="container mt-5">'+
	       '<div class="card">'+
	           '<div class="card-header">'+
	               '<h2 class="text-center mb-0"><i class="fas fa-user-md me-2"></i>Doctor Search</h2>'+
	           '</div>'+
	           '<div class="card-body">'+
	               '<form id="searchForm">'+
	                   '<div class="row mb-3">'+
	                       '<div class="col-md-6">'+
	                           '<label for="doctorIdName" class="form-label">Search by Doctor ID / Name:</label>'+
	                           '<div class="input-group">'+
	                               '<span class="input-group-text"><i class="fas fa-search"></i></span>'+
	                               '<input type="text" class="form-control" id="doctorIdName" placeholder="Enter Doctor ID or Name">'+
	                           '</div>'+
	                       '</div>'+
	                       '<div class="col-md-6">'+
	                           '<label for="dateSearch" class="form-label">Search by Date:</label>'+
	                           '<div class="input-group"'+
	                               '<span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>'+
	                               '<input type="date" class="form-control" id="dateSearch">'+
	                           '</div>'+
	                       '</div>'+
	                   '</div>'+
	                   '<div class="d-grid gap-2 d-md-flex justify-content-md-end">'+
	                        '<button type="submit" class="btn btn-primary me-md-2">'+
	                           '<i class="fas fa-search me-2"></i>Search'+
	                       '</button>'+
	                       '<button type="button" class="btn btn-danger" id="deleteBtn">'+
	                           '<i class="fas fa-trash-alt me-2"></i>Delete Selected'+
	                       '</button>'+
	                   '</div>'+
	               '</form>'+
	           '</div>'+
	       '</div>'+
	       '<div class="card mt-4">'+
	           '<div class="card-body">'+
	               '<div class="table-responsive">'+
	                   '<table class="table table-striped table-hover">'+
	                       '<thead>'+
	                           '<tr>'+
	                               '<th><input type="checkbox" id="selectAll"></th>'+
	                               '<th>Doctor ID</th>'+
	                               '<th>Name</th>'+
	                               '<th>Age</th>'+
	                               '<th>Speciality</th>'+
	                               '<th>Phone</th>'+
	                               '<th>Address</th>'+
	                               '<th>Joined Date</th>'+
	                               '<th>Left Date</th>'+
	                           '</tr>'+
	                       '</thead>'+
	                       '<tbody id="doctorTableBody">'+
	                           '<!-- Table rows will be dynamically added here -->'+
	                       '</tbody>'+
	                   '</table>'+
	               '</div>'+
	           '</div>'+
	       '</div>'+
	   '</div>';
let searchStaffForm='<div class="container mt-5">'+
	          		'<h1 class="text-center mb-4">Staff Search</h1>'+
	          			'<div class="card">'+
	              			'<div class="card-body">'+
	                  			'<form id="searchForm">'+
	                      			'<div class="row mb-3">'+
	                          			'<div class="col-md-6">'+  
	                              			'<label for="staffIdName" class="form-label">Search by Staff ID / Name:</label>'+
	                              			'<input type="text" class="form-control" id="staffIdName" placeholder="Enter Staff ID or Name">'+
	                          			'</div>'+
	                          			'<div class="col-md-6">'+
	                              			'<label for="dateSearch" class="form-label">Search by Date:</label>'+
	                              			'<input type="date" class="form-control" id="dateSearch">'+
	                         	 		'</div>'+
	                      			'</div>'+
	                      		'<div class="d-grid gap-2 d-md-flex justify-content-md-end">'+
	                          		'<button type="submit" class="btn btn-primary me-md-2">Search</button>'+
	                          		'<button type="button" class="btn btn-danger" id="deleteBtn">Delete Selected</button>'+
	                      		'</div>'+
	                  			'</form>'+
	              		'</div>'+
	          		'</div>'+
	          '<div class="card mt-4">'+
	              '<div class="card-body">'+
	                  '<div class="table-responsive">'+
	                      '<table class="table table-striped table-hover">'+
	                          '<thead>'+
	                              '<tr>'+
	                                  '<th><input type="checkbox" id="selectAll"></th>'+
	                                  '<th>Staff ID</th>'+
	                                  '<th>Name</th>'+
	                                  '<th>Age</th>'+
	                                  '<th>Designation</th>'+
	                                  '<th>Phone</th>'+
	                                  '<th>Address</th>'+
	                                  '<th>Joined Date</th>'+
	                                  '<th>Left Date</th>'+
	                              '</tr>'+
	                          '</thead>'+
	                          '<tbody id="staffTableBody">'+
	                          '</tbody>'+
	                      '</table>'+
	                  '</div>'+
	              '</div>'+
	          '</div>'+
	      '</div>';
  document.addEventListener("DOMContentLoaded", function() {
	
	
    let addPatientBtn = document.getElementById("addPatient");
	let searchPatientBtn = document.querySelector("#searchPatient");
	let searchStaffBtn = document.querySelector("#searchStaff");
	let addStaffBtn = document.querySelector("#addStaff");
	let searchDoctorBtn = document.querySelector("#searchDoctor");
	let addDoctorBtn = document.querySelector("#addDoctor");
	
	
	
	let searchWardBtn = document.querySelector("#searchWard");
		let addWardBtn = document.querySelector("#addWard");
		let searchPaymentsBtn = document.querySelector("#searchPayments");
		let addPaymentsBtn = document.querySelector("#addPayments");
	
	
	
	
		     searchPatientBtn.addEventListener("click", () => {
		       addChildElements(1);
			   });
      addPatientBtn.addEventListener("click", () => {
        addChildElements(2);
		
      });

	       searchStaffBtn.addEventListener("click", () => {
	         addChildElements(3);
	  	   });
	  addStaffBtn.addEventListener("click", () => {
	    addChildElements(4);

	  });

	       searchDoctorBtn.addEventListener("click", () => {
	         addChildElements(5);
	  	   });
	  addDoctorBtn.addEventListener("click", () => {
	    addChildElements(6);

	  });

	       searchWardBtn.addEventListener("click", () => {
	         addChildElements(7);
	  	   });
	  addWardBtn.addEventListener("click", () => {
	    addChildElements(8);

	  });

	       searchPaymentsBtn.addEventListener("click", () => {
	         addChildElements(9);
	  	   });
	  addPaymentsBtn.addEventListener("click", () => {
	    addChildElements(10);

	  });	
		 
});
  
function addChildElements(choice) {
  // Get the existing container element, if any
  let container = document.querySelector("#container");

  // If a container already exists, clear its content
  if (container) {
    container.innerHTML = ""; // Clear the container's content
  } else {
    // If no container exists, create a new div
    container = document.createElement("div");
    container.setAttribute("class", "container-fluid w-75 float-end me-5 p-5");
    document.body.appendChild(container); // Append it to the body
  }

  // Based on the choice, inject the appropriate form
  switch(choice)
  {
	case 1:
		container.innerHTML = "";	
	container.innerHTML = searchForm;
		break;
	case 2:
		container.innerHTML = ""; 
	container.innerHTML = newForm;
		break;
	case 3:
		container.innerHTML = ""; 
			container.innerHTML = searchStaffForm;
		break;
	case 4:
			container.innerHTML = "";	
			container.innerHTML = addStaff;
		break;
	case 5:
			container.innerHTML = ""; 
			container.innerHTML = searchDoctor;
		break;
	case 6:
		container.innerHTML = ""; 
		container.innerHTML = addDoctor;
		break;
	case 7:
				container.innerHTML = "";	
			container.innerHTML = searchForm;
		break;
	case 8:
			container.innerHTML = ""; 
			container.innerHTML = newForm;
		break;
	case 9:
			break;
	case 10:
			break;
				
  }
    
}
