let onPageClickChange = document.querySelector("#onPageClickChange");
let rightSection = document.querySelector("#rightSection");
    
    let overView ='<div class="container-fluid d-flex justify-content-evenly align-items-center flex-wrap ">'+
      '<div class="card mt-3" style="width: 30rem;">'+
      '<div class="card-body">'+
      '<h5 class="card-title" id="employeeCount">Total Employee'+
      '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-person-add float-end bg-primary rounded" viewBox="0 0 16 16">'+
      '<path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>'+
      '<path d="M8.256 14a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1z"/>'+
      '</svg>'+
      '</h5>'+
      '<p class="card-text mt-3">Employee Count : </p>'+
      '<button class="btn btn-primary mt-3" id="goToEmployee">Go To Employee Page</button>'+
      '</div>'+
      '</div>'+
      '<div class="card mt-3" style="width: 30rem;">'+
      '<div class="card-body">'+
      '<h5 class="card-title">Total Patients'+
      '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-person-add float-end bg-success rounded" viewBox="0 0 16 16">'+
      '<path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>'+
      '<path d="M8.256 14a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1z"/>'+
      '</svg>'+
      '</h5>'+
      '<p class="card-text mt-3">Patient Count : </p>'+
      '<button class="btn btn-success mt-3" id="goToPatient">Go To Patient Page</button>'+
      '</div>'+
      '</div>'+
      '<div class="card mt-3" style="width: 30rem;">'+
      '<div class="card-body">'+
      '<h5 class="card-title">Total Ward'+
      '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="black" class="bi bi-person-video float-end bg-info rounded p-1" viewBox="0 0 16 16">'+
      '<path d="M8 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>'+
      '<path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm10.798 11c-.453-1.27-1.76-3-4.798-3-3.037 0-4.345 1.73-4.798 3H2a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1z"/>'+
      '</svg>'+
      '</h5>'+
      '<p class="card-text mt-3">Ward Count : </p>'+
      '<button class="btn btn-info mt-3" id="goToWard">Go To Ward Page</button>'+
      '</div>'+
      '</div>'+
      '<div class="card mt-3" style="width: 30rem;">'+
      '<div class="card-body">'+
      '<h5 class="card-title">Total Payments'+
      '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="red" class="bi bi-credit-card-fill float-end  rounded" viewBox="0 0 16 16">'+
      '<path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1"/>'+
      '</svg>'+
      '</h5>'+
      '<p class="card-text mt-3">Payments : </p>'+
      '<button class="btn btn-danger mt-3" id="goToPayments">Go To Payment Page</button>'+
      '</div>'+
      '</div>'+
      '<div class="card mt-3" style="width: 30rem;">'+
      '<div class="card-body">'+
      '<h5 class="card-title">Total Medicines'+
      '<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-capsule float-end rounded" viewBox="0 0 16 16">'+
      '<path d="M1.828 8.9 8.9 1.827a4 4 0 1 1 5.657 5.657l-7.07 7.071A4 4 0 1 1 1.827 8.9Zm9.128.771 2.893-2.893a3 3 0 1 0-4.243-4.242L6.713 5.429z" />'+
      '</svg>'+
      '</h5>'+
      '<p class="card-text mt-3">Medicines Available : </p>'+
      '<button class="btn btn-dark mt-3" id="goToMedicine" >Go To Medicines Page</button>'+
      '</div>'+
      '</div>'+
      '</div>'+  
    '</div>';
    let patient =
      '<div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4">' +
      '<table class="table table-hover table-success caption-top" id="table-rounded">' +
      '<caption class="text-light fs-5">Patient Details</caption>' +
      '<thead class="rounded">' +
      '<tr class="rounded">' +
      '<th scope="col"></th>' +
      '<th scope="col">Patient ID</th>' +
      '<th scope="col">Patient Name</th>' +
      '<th scope="col">Age</th>' +
      '<th scope="col">Patient Phn No</th>' +
      '<th scope="col">Patient Email</th>' +
	  '<th scope="col">Patient Blood Type</th>' +
	  '<th scope="col">Patient Address</th>' +
      '<th scope="col">Patient Disease</th>' +
      '<th scope="col">Patient Admitted On</th>' +
      '<th scope="col">Patient Left On</th>' +
      '<th scope="col">Patient Ward Type</th>' +
      '<th scope="col">Patient Fees Paid</th>' +
      '<th scope="col">Patient Fess Due</th>' +
      '<th scope="col">Total Fees</th>' +
      "</tr>" +
      "</thead>" +
      '<tbody class="rounded">' +
      '<tr class="rounded">' +
      '<th scope="row"><div class="form-check">' +
      '<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">' +
      "</th>" +
      '<th scope="row">1</th>' +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
      "<td></td>" +
	  "<td></td>" +
	  "<td></td>" +
      "</tr>" +
      "</table>" +
      '<button type="button" class="btn btn-success mb-3 me-5 w-25">Add Patient</button>' +
      '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Patient</button>' +
      "</div>";
    let doctor ='<div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4">' +
    '<table class="table table-hover table-warning caption-top" id="table-rounded">' +
    '<caption class="text-light fs-5">Patient Details</caption>' +
    '<thead class="rounded">' +
    '<tr class="rounded">' +
    '<th scope="col"></th>' +
    '<th scope="col">Doctor ID</th>' +
    '<th scope="col">Doctor Name</th>' +
    '<th scope="col">Age</th>' +
    '<th scope="col">Doctor Speciality</th>' +
    '<th scope="col">Doctor Joining Date</th>' +
    '<th scope="col">Doctor Address</th>' +
    '<th scope="col">Doctor Phone Number</th>' +
    '<th scope="col">Doctor Salary</th>' +
    "</tr>" +
    "</thead>" +
    '<tbody class="rounded">' +
    '<tr class="rounded">' +
    '<th scope="row"><div class="form-check">' +
    '<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">' +
    "</th>" +
    '<th scope="row">1</th>' +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "</tr>" +
    "</table>" +
    '<button type="button" class="btn btn-success mb-3 me-5 w-25">Add Doctor</button>' +
    '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Doctor</button>' +
    "</div>";
    let employee ='<div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4">' +
    '<table class="table table-hover table-primary caption-top" id="table-rounded">' +
    '<caption class="text-light fs-5">Patient Details</caption>' +
    '<thead class="rounded">' +
    '<tr class="rounded">' +
    '<th scope="col"></th>' +
    '<th scope="col">Staff ID</th>' +
    '<th scope="col">Staff Name</th>' +
    '<th scope="col">Age</th>' +
    '<th scope="col">Staff Designation</th>' +
    '<th scope="col">Staff Joined Date</th>' +
    '<th scope="col">Staff Address</th>' +
    '<th scope="col">Staff Phn No</th>' +
    '<th scope="col">Staff Salary</th>' +
    "</tr>" +
    "</thead>" +
    '<tbody class="rounded">' +
    '<tr class="rounded">' +
    '<th scope="row"><div class="form-check">' +
    '<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">' +
    "</th>" +
    '<th scope="row">1</th>' +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "<td></td>" +
    "</tr>" +
    "</table>" +
    '<button type="button" class="btn btn-success mb-3 me-5 w-25" id="addEmployee">Add Employee</button>' +
    '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Employee</button>' +
    '<div class="container" id="form">'+
    '</div>'+
    "</div>";
  /*  let doctor ='<div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4">' +
  '<table class="table table-hover table-warning caption-top" id="table-rounded">' +
  '<caption class="text-light fs-5">Patient Details</caption>' +
  '<thead class="rounded">' +
  '<tr class="rounded">' +
  '<th scope="col"></th>' +
  '<th scope="col">Doctor ID</th>' +
  '<th scope="col">Doctor Name</th>' +
  '<th scope="col">Age</th>' +
  '<th scope="col">Doctor Speciality</th>' +
  '<th scope="col">Doctor Joining Date</th>' +
  '<th scope="col">Doctor Address</th>' +
  '<th scope="col">Doctor Phone Number</th>' +
  '<th scope="col">Doctor Salary</th>' +
  "</tr>" +
  "</thead>" +
  '<tbody class="rounded">' +
  '<tr class="rounded">' +
  '<th scope="row"><div class="form-check">' +
  '<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">' +
  "</th>" +
  '<th scope="row">1</th>' +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "<td></td>" +
  "</tr>" +
  "</table>" +
  '<button type="button" class="btn btn-success mb-3 me-5 w-25">Add Patient</button>' +
  '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Patient</button>' +
  "</div>";
  */
    let ward = ' <div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4 ms-5">'+
    '<table class="table table-hover table-info caption-top" id="table-rounded">'+
    '<caption class="text-light fs-5">Patient Details</caption>'+
    '<thead class="rounded">'+
    '<tr class="rounded">'+
    '<th scope="col"></th>'+
    '<th scope="col">Ward ID</th>'+
    '<th scope="col">Floor No</th>'+
    '<th scope="col">Ward Type</th>'+
    '<th scope="col">Status</th>'+
    '<th scope="col">Patient Id</th>'+
    '<th scope="col">Doctor Id</th>'+
    '<th scope="col">Staff Id</th>'+
    '</tr>'+
    '</thead>'+
    '<tbody class="rounded">'+
    '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
   	'<th scope="row">GEN101</th>'+
    '<td>1</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-danger" disabled>'+
  'Assigned '+
'</button>'+
      '</td>'+
    '<td></td>'+
    '<td></td>'+
    '<td></td>'+
      '</tr>'+
       '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">GEN102</th>'+
    '<td>1</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
 'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
         '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">GEN103</th>'+
    '<td>1</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
  '</tr>'+
      '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL104</th>'+
    '<td>1</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
   '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
    '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL105</th>'+
    '<td>1</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
     '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">GEN201</th>'+
    '<td>2</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-danger" disabled>'+
  'Assigned'+
'</button>'+
      '</td>'+
    '<td></td>'+
    '<td></td>'+
    '<td></td>'+
      '</tr>'+
       '<tr class="rounded">'+
    '<th scope="row">'+
      '<div class="form-check">'+
    '</th>'+
    '<th scope="row">GEN202</th>'+
    '<td>2</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr> '+
          '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">GEN203</th>'+
    '<td>2</td>'+
    '<td>General</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
  '</tr>'+
      '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL204</th>'+
    '<td>2</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
     '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL205</th>'+
    '<td>2</td>'+
    '<td>Special</td>'+
    '<td>'+
    '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
     '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL301</th>'+
    '<td>3</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-danger" disabled>'+
  'Assigned'+
'</button>'+
      '</td>'+
    '<td></td>'+
    '<td></td>'+
    '<td></td>'+
      '</tr>'+
       '<tr class="rounded">'+
    '<th scope="row">'+  
    '</th>'+
    '<th scope="row">SPL302</th>'+
    '<td>3</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
          '<tr class="rounded">'+
    '<th scope="row">'+
      '<div class="form-check">'+
    '</th>'+
    '<th scope="row">SPL303</th>'+
    '<td>3</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
  '</tr>'+
      '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL304</th>'+
    '<td>3</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
     '<tr class="rounded">'+
    '<th scope="row">'+
    '</th>'+
    '<th scope="row">SPL305</th>'+
    '<td>3</td>'+
    '<td>Special</td>'+
    '<td>'+
      '<button type="button" class="btn btn-success">'+
  'Not Assigned'+ 
'</button>'+
    '</td>'+
    '<td>'+
    '</td>'+
    '<td></td>'+
    '<td></td>'+
    '</tr>'+
    '</table>'+
    '<button type="button" class="btn btn-success mb-3 me-5 w-25">Add Doctor</button>'+
    '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Doctor</button>'+
    '</div>';
    let medicine = '<div class="container mt-5 p-4 ms-5 border border-dark-subtle rounded">'+
	        '<h1 class="text-center mb-3"><i class="bi bi-capsule me-2"></i>Medicine Management</h1>'+
	        '<form>'+
	            '<div class="row mb-3">'+
	                '<div class="col-md-6">'+
	                    '<label for="medicineName" class="form-label">Medicine Name</label>'+
	                    '<input type="text" class="form-control" id="medicineName" required>'+
	                '</div>'+
	                '<div class="col-md-6">'+
	                    '<label for="medicineType" class="form-label">Medicine Type</label>'+
	                    '<select class="form-select" id="medicineType" required>'+
	                        '<option value="">Select type</option>'+
	                        '<option value="cough">Cough</option>'+
	                        '<option value="pain">Pain Relief</option>'+
	                        '<option value="antibiotic">Antibiotic</option>'+
	                        '<option value="antiviral">Antiviral</option>'+
	                        '<option value="antihistamine">Antihistamine</option>'+
	                        '<option value="vitamin">Vitamin</option>'+
	                    '</select>'+
	                '</div>'+
	            '</div>'+
	            '<div class="row mb-3">'+
	                '<div class="col-md-6">'+
	                    '<label for="quantity" class="form-label">Quantity</label>'+
	                    '<input type="number" class="form-control" id="quantity" min="0" required>'+
	                '</div>'+
	                '<div class="col-md-6">'+
	                    '<label for="expiryDate" class="form-label">Expiry Date</label>'+
	                    '<input type="date" class="form-control" id="expiryDate" required>'+
	                '</div>'+
	            '</div>'+
	            '<div class="d-flex justify-content-end">'+
	                '<button type="submit" class="btn btn-primary me-2"><i class="bi bi-plus-circle me-2"></i>Add</button>'+
	                '<button type="button" class="btn btn-success"><i class="bi bi-pencil-square me-2"></i>Update</button>'+
	            '</div>'+
	        '</form>'+
	        '<table class="table table-striped table-hover">'+
	            '<thead>'+
	                '<tr>'+
	                    '<th>Medicine Name</th>'+
	                    '<th>Type</th>'+
	                    '<th>Quantity</th>'+
	                    '<th>Expiry Date</th>'+
	                    '<th>Actions</th>'+
	                '</tr>'+
	            '</thead>'+
	            '<tbody>'+
	                '<tr>'+
	                    '<td>Paracetamol</td>'+
	                    '<td>Pain Relief</td>'+
	                    '<td>100</td>'+
	                    '<td>2024-12-31</td>'+
	                    '<td>'+
	                        '<button class="btn btn-sm btn-primary me-1"><i class="bi bi-pencil"></i></button>'+
	                        '<button class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></button>'+
	                    '</td>'+
	                '</tr>'+
	                '<tr>'+
	                    '<td>Amoxicillin</td>'+
	                    '<td>Antibiotic</td>'+
	                    '<td>50</td>'+
	                    '<td>2023-10-15</td>'+
	                    '<td>'+
	                        '<button class="btn btn-sm btn-primary me-1"><i class="bi bi-pencil"></i></button>'+
	                        '<button class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></button>'+
	                    '</td>'+
	                '</tr>'+
	            '</tbody>'+
	        '</table>'+
	    '</div>';
    let payments = '<div class="container-fluid d-flex justify-content-center align-items-center flex-wrap border border-dark-subtle text-light rounded w-100 p-4 ms-4">'+
		  '<table class="table table-hover table-danger caption-top" id="table-rounded">'+
		  '<caption class="text-light fs-5">Patient Details</caption>'+
		  '<thead class="rounded">'+
		  '<tr class="rounded">'+
		  '<th scope="col"></th>'+
		  '<th scope="col">Payment ID</th>'+
		  '<th scope="col">Patient Id</th>'+
		  '<th scope="col">Payment Status</th>'+
		  '<th scope="col">Ward Id</th>'+
		  '<th scope="col">Ward Type</th>'+
		  '<th scope="col">Fees Paid</th>'+
		  '<th scope="col">Fees Due</th>'+
		  '<th scope="col">Total Fees</th>'+
		  '</tr>'+
		  '</thead>'+
		  '<tbody class="rounded">'+
		  '<tr class="rounded">'+
		  '<th scope="row"><div class="form-check">'+
		    '<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">'+
		  '</th>'+
		  '<th scope="row">1</th>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '<td></td>'+
		  '</tr>'+
		  '</table>'+
		  '<button type="button" class="btn btn-success mb-3 me-5 w-25">Add Payment</button>'+
		  '<button type="button" class="btn btn-danger  mb-3 me-5 w-25">Delete Payment</button>'+
		  '</div>';
	let goToEmployee=document.querySelector("#goToEmployee");
	let goToPatient=document.querySelector("#goToPatient");
	let goToWard=document.querySelector("#goToWard");
	let goToPayments=document.querySelector("#goToPayments");
	let goToMedicine=document.querySelector("#goToMedicine");
    let overviewClicked = document.querySelector("#overviewClicked");
    let patientClicked = document.querySelector("#patientClicked");
    let doctorClicked = document.querySelector("#doctorClicked");
    let employeeClicked = document.querySelector("#employeeClicked");
    let wardClicked = document.querySelector("#wardClicked");
    let medicineClicked = document.querySelector("#medicineClicked");
    let paymentClicked = document.querySelector("#paymentClicked");
    document.addEventListener("DOMContentLoaded", () => {
      overviewClicked.addEventListener("click", () => {
        addToRightSection(1);
      });
      patientClicked.addEventListener("click", () => {
        addToRightSection(2);
      });
      doctorClicked.addEventListener("click", () => {
        addToRightSection(3);
      });
      employeeClicked.addEventListener("click", () => {
        addToRightSection(4);
      });
      wardClicked.addEventListener("click", () => {
        addToRightSection(5);
      });
      medicineClicked.addEventListener("click", () => {
        addToRightSection(6);
      });
		paymentClicked.addEventListener("click", () => {
		addToRightSection(7);
	  });
	goToEmployee.addEventListener("click", () => {
        addToRightSection(4);
      });
	  goToPatient.addEventListener("click", () => {
		addToRightSection(2);
	  });
		goToWard.addEventListener("click", () => {
		addToRightSection(5);
	  });
		goToPayments.addEventListener("click", () => {
		addToRightSection(7);
	  });
		goToMedicine.addEventListener("click", () => {
		addToRightSection(6);
	  });
    });

    function addToRightSection(choice) {
      

      switch (choice) {
        case 1:
          rightSection.innerHTML = "";
          rightSection.innerHTML = overView;
          onPageClickChange.innerHTML = "Overview";
		  requestAnimationFrame(() => {
		       const goToEmployee = document.querySelector("#goToEmployee");
		       const goToPatient = document.querySelector("#goToPatient");
		       const goToWard = document.querySelector("#goToWard");
		       const goToPayments = document.querySelector("#goToPayments");
		       const goToMedicine = document.querySelector("#goToMedicine");

		       if (goToEmployee) {
		         goToEmployee.addEventListener("click", () => {
		           addToRightSection(4);
		         });
		       }
		       
		       if (goToPatient) {
		         goToPatient.addEventListener("click", () => {
		           addToRightSection(2);
		         });
		       }

		       if (goToWard) {
		         goToWard.addEventListener("click", () => {
		           addToRightSection(5);
		         });
		       }
		       
		       if (goToPayments) {
		         goToPayments.addEventListener("click", () => {
		           addToRightSection(7);
		         });
		       }
		       
		       if (goToMedicine) {
		         goToMedicine.addEventListener("click", () => {
		           addToRightSection(6);
		         });
		       }
		     });
          
          break;
        case 2:
          rightSection.innerHTML = "";
          rightSection.innerHTML = patient;
          onPageClickChange.innerHTML = "Patient";
          
          break;
        case 3:
          rightSection.innerHTML = "";
          rightSection.innerHTML = doctor;
          onPageClickChange.innerHTML = "Doctor";
         
          break;
        case 4:
          rightSection.innerHTML = "";
          rightSection.innerHTML = employee;
          onPageClickChange.innerHTML = "Employee";
          
          break;
        case 5:
          rightSection.innerHTML = "";
          rightSection.innerHTML = ward;
          onPageClickChange.innerHTML = "Ward";
         
          break;
        case 6:
          rightSection.innerHTML = "";
          rightSection.innerHTML = medicine;
          onPageClickChange.innerHTML = "Medicine";
         
          break;
        case 7:
          rightSection.innerHTML = "";
          rightSection.innerHTML = payments;
          onPageClickChange.innerHTML = "Payments";
         
          break;
      }
    }

    let patientData = {
    		patientId : 0,
    		patientName : "",
    		patientAge : 0,
    		patientPhnNo : 0,
    		patientDisease : "",
    		patientAdmittedOn : "",
    		patientLeftOn : "",
    		patientFeesDue : "",
    		patientTotalFees : ""
    }
    let form =document.querySelector("#form");

    