<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./Connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Registration | Hospital Management System</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-7/assets/css/registration-7.css">
</head>
<body>                    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
<% 
/* String PatientName = request.getParameter("patientName");
String PatientDateOfBirth = request.getParameter("patientName");
String PatientDisease = request.getParameter("patientName");
String PatientAddress = request.getParameter("patientName");
String PatientEmail = request.getParameter("patientName");
String RelativeEmail = request.getParameter("patientName");
String RelativeName = request.getParameter("patientName");
String RelativePhnNo = request.getParameter("patientName");
String PatientNo = request.getParameter("patientName"); */
String ExistingTable=null;
try{
	ps=con.prepareStatement("SHOW TABLES");
	rs=ps.executeQuery();
	while(rs.next())
	{
		ExistingTable=rs.getString(1);
		out.println(ExistingTable);
		
		if(ExistingTable.equals("patients"))
		{
			
				ps=con.prepareStatement("CREATE TABLE IF NOT EXISTS PATIENTS(PATIENT_ID INT AUTO_INCREMENT,PATIENT_NAME VARCHAR(50) NOT NULL,PATIENT_DATE_OF_BIRTH TIMESTAMP NOT NULL,PATIENT_DISEASE VARCHAR(50) NOT NULL,PATIENT_ADDRESS VARCHAR(50) NOT NULL,PATIENT_EMAIL VARCHAR(50),PATIENT_PH_NO INT NOT NULL,RELATIVES_NAME VARCHAR(50),RELATIVES_EMAIL VARCHAR(50),RELATIVES_PHN_NO INT,PRIMARY KEY(PATIENT_ID));");
				int sval = ps.executeUpdate();
				if(sval==0)
				{
					%>
						<div class="alert alert-success position-absolute top-0 start-0 w-100" role="alert">
				    							Patient Registered Succesfully</div>
					
					<%
				}
				else
				{
					%>
					<div class="alert alert-success position-absolute top-0 start-0 w-100" role="alert">
											Patient Not Registered Succesfully</div>

				<%
				}
			}
			else
			{
				%>
				<div class="alert alert-success position-absolute top-0 start-0 w-100" role="alert">
										Patient Not Registered Succesfully</div>

			<%
			}
		
	}
	


}
catch(Exception e)
{
	e.printStackTrace();
}
%>