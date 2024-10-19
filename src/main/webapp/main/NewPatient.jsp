<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@include file="/database/Connection.jsp" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.time.LocalDate" %>
<%@page import="java.text.ParseException" %>
<%
String NewpatientEmail = "";
	String patientName = "";
	int patientAge = 0;
	String patientPhnNo="";
	String patientDisease = "";
	Timestamp patientAdmittedOn = null;
	String patientAdmittedOnFormatted = "";
	Timestamp patientDischargedOn = null;
	String patientLeftOnFormatted = "";
	String patientWard = "";
	String existingEmail = "";
	int patientId = 0;
String patientEmail = "";
int userpatientId=-1;
int feesPaid = -1;
int feesDue = -1;
String patientDischargedFormatted = "";
HttpSession s=request.getSession(false);
if(s==null || (s.getAttribute("patientEmail")==null && s.getAttribute("patientId")==null))
{
	response.sendRedirect(request.getContextPath()+"/Login");
}
else
{
 patientEmail = (String)s.getAttribute("patientEmail");
 userpatientId =(Integer)s.getAttribute("patientId");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Dashboard</title>
    <link rel="stylesheet" href="./css/Patient.css">
    <!-- Bootstrap CSS -->  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        .output-container {
            display: none;
        }
    </style>
</head>
<body>
<%
System.out.println(patientEmail);
System.out.println(patientId);
		try{
    		ps=con.prepareStatement("SELECT * FROM PATIENT WHERE PATIENT_ID=?");
    		ps.setInt(1,userpatientId);
    		rs=ps.executeQuery();
    %>
    <!-- Dashboard Navigation -->
    <div class="container-fluid bg-light p-3">
        <div class="row">
            <div class="col-md-8">
                <h3>Dashboard</h3>
            </div>
            <div class="col-md-4 text-end">
                <h5><span id="patientName"> 
                <%
                if(rs.next())
        		{
        			patientName=rs.getString("PATIENT_NAME");
                		out.println(patientName);
                		patientId=rs.getInt("PATIENT_ID"); 
            			patientName = rs.getString("PATIENT_NAME");	
            			patientDisease=rs.getString("PATIENT_DISEASE");
            			patientAdmittedOn = rs.getTimestamp("PATIENT_ADMITTED_ON");
            			patientDischargedOn = rs.getTimestamp("PATIENT_LEFT_ON");
            			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
            			if(patientAdmittedOn!=null)
            			{
            				
        			    patientAdmittedOnFormatted = sdf.format(patientAdmittedOn);
            			System.out.println(patientAdmittedOnFormatted);
            			}
            			if(patientDischargedOn!=null)
            			{
            				
        			    patientLeftOnFormatted = sdf.format(patientDischargedOn);
            			System.out.println(patientLeftOnFormatted);
            			}
            			patientWard=rs.getString("PATIENT_WARD_TYPE");
            			 

                		%></span></h5>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Settings
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="<%=request.getContextPath() +"/Profile" %>">Profile</a></li>
                        <li><a class="dropdown-item" href="<%=request.getContextPath() +"/Settings" %>">Settings</a></li>
                        <li><a class="dropdown-item" href="<%= request.getContextPath() + "/Logout"%>">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
	<h2 class="mt-5 fs-4 text-center text-success">Welcome <%=patientName %></h2>
    <!-- Patient Details Section -->
    <div class="container mt-4">
        <div class="card p-4">
            <h5 class="card-title text-center">Patient Details</h5>
          		
          		 <table class="table mt-5 p-4">
 					 <thead class="table-light">
     					<tr>
      						<th scope="col" class="p-4">Patient ID</th>
      						<th scope="col"class="p-4">Name</th>
     						<th scope="col" class="p-4">Disease</th>
      						<th scope="col" class="p-4">Ward</th>
        					<th scope="col" class="p-4">Admitted On</th>
        					<th scope="col" class="p-4">Discharged On</th>
        					<th scope="col" class="p-4">Medicines Given</th>
        					<th scope="col" class="p-4">Fees Paid</th>
        					<th scope="col" class="p-4">Fees Due</th>
    					</tr>
  					</thead>
  					<tbody>
    				<tr class="p-4">
      				<th class="p-4"><%=patientId %></th>
      				<td class="p-4"><%=patientName %></td>
      				<td class="p-4"><%=patientDisease %> </td>
      				<td class="p-4"><%=patientWard %> </td>
      				<td class="p-4"><%=patientAdmittedOnFormatted %> </td>
      				<td class="p-4"><%=patientLeftOnFormatted %> </td>
      				<td class="p-4"> </td>
     				 <td class="p-4"> </td>
      				<td class="p-4"> </td>
    				</tr>
 				 </tbody>
</table>
 <div class="row mt-4">
                    <div class="col-md-6">
                    	<%
                    	if(feesPaid==-1)
                    	{
                    		%>
                        <button type="button" class="btn btn-primary w-100" disabled onclick="<%= request.getContextPath()+"/Payment" %>" >Pay</button>
                    	<% 
                    	}
                    	else
                    	{
                    		%>
                    		 <button type="button" class="btn btn-primary w-100"  onclick="<%= request.getContextPath()+"/Payment" %>" >Pay</button>
                    			<% 
                    	}
                    	
                    	%>
                    </div>
                    <div class="col-md-6">
                        <button type="reset" class="btn btn-secondary w-100">Download Patient Reports</button>
                    </div>
                  
                </div>
               
               	
          	
    			  <%--  <form id="patientForm">
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="patientNameInput" class="form-label">Patient Name</label>
                        <input type="text" class="form-control" id="patientNameInput" disabled value="<%=patientName %>">
                    </div>
                    <div class="col-md-6">
                        <label for="patientIDInput" class="form-label">Patient ID</label>
                        <input type="text" class="form-control" id="patientIDInput" disabled value="<%=patientId %>">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="patientDisease" class="form-label">Patient Disease</label>
                        <input type="text" class="form-control" id="patientDisease" disabled value="<%=patientDisease %>">
                    </div>
                    <div class="col-md-6">
                        <label for="patientWard" class="form-label">Patient Ward</label>
                        <input type="text" class="form-control" id="patientWard" disabled value="<%=patientWard %>">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="admittedOn" class="form-label">Patient Admitted On</label>
                        <input type="date" class="form-control" id="admittedOn" disabled value="<% out.println(patientAdmittedOnFormatted); %>">
                    </div>
                    <div class="col-md-6">
                        <label for="dischargedOn" class="form-label">Patient Discharged On</label>
                        <input type="date" class="form-control" id="dischargedOn" disabled value="<%=patientLeftOnFormatted %>">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="medicinesGiven" class="form-label">Medicines Given</label>
                        <input type="text" class="form-control" id="medicinesGiven" disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="feesPaid" class="form-label">Fees Paid</label>
                        <input type="text" class="form-control" id="feesPaid" disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="feesDue" class="form-label">Fees Due</label>
                        <input type="text" class="form-control" id="feesDue" disabled>
                    </div>
                </div>
               
            </form> --%>
                </div>
            </div>
            </
    			<% 
    		}
    		else
    		{
    			
    			%>
    			  <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                      Settings
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="#">Profile</a></li>
                      <li><a class="dropdown-item" href="#">Settings</a></li>
                      <li><a class="dropdown-item" href="<%= request.getContextPath() + "/Logout"%>">Logout</a></li>
                  </ul>
              </div>
          </div>
      </div>
  </div>
    			</div>
    			</div>
    			<div class="container mt-4">
        <div class="card p-4">
            <h5 class="card-title text-center">Patient Details</h5>
            <form id="patientForm">
                <div class="row mb-3">
                  <div class="col-md-6">
                        <label for="patientEmailInput" class="form-label">Patient Email</label>
                        <input type="text" class="form-control" id="patientEmailInput" name="patientEmail">
                    </div>
                    <div class="col-md-6">
                        <label for="patientNameInput" class="form-label">Patient Name</label>
                        <input type="text" class="form-control" id="patientNameInput" name="patientName">
                    </div>
                  
                </div>
                <div class="row mb-4">
                        <div class="col-md-6">
                            <label for="age" class="form-label">Age</label>
                            <input type="number" class="form-control" id="age" required name="patientAge">
                        </div>
                        <div class="col-md-6">
                            <label for="phoneNo" class="form-label">Phone Number</label>
                            <input type="tel" class="form-control" id="phoneNo" required name="patientPhnNo">
                        </div>
                    </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="patientDisease" class="form-label">Patient Disease</label>
                        <input type="text" class="form-control" id="patientDisease">
                    </div>
                    <div class="col-md-6">
                        <label for="patientWard" class="form-label">Patient Ward</label>
                        <input type="text" class="form-control" id="patientWard">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="admittedOn" class="form-label">Patient Admitted On</label>
                        <input type="date" class="form-control" id="admittedOn">
                    </div>
                    <div class="col-md-6">
                        <label for="dischargedOn" class="form-label">Patient Discharged On</label>
                        <input type="date" class="form-control" id="dischargedOn">
                    </div>
                </div>
                
                <div class="row mt-4">
                    <div class="col-md-6">
                        <button type="submit" class="btn btn-primary w-100">Submit</button>
                    </div>
                    <div class="col-md-6">
                        <button type="reset" class="btn btn-secondary w-100">Clear</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    			
    			<% 
    		}
            
            %>
         
    

  
		<%
		}
catch(Exception e)
{
	e.printStackTrace();
}

}


%>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>
