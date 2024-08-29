<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login | Hospital Management System</title>
  </head>
  <body>
   
<%

String userName =  request.getParameter("userName");
String userPass =  request.getParameter("userPass");

Connection con = null;
PreparedStatement ps=null;
Statement stmt = null;
ResultSet rs=null;

if(userName!=null && userPass!= null)
{
	try{
		 Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","shree@123");		
		ps=con.prepareStatement("Select * from employee");
		rs=ps.executeQuery();
	
		while(rs.next())
		{
			%><p>Success</p><% 
		}
	}

	catch(Exception e)
	{
		e.printStackTrace();
	}
}
else{
	%>
	<script>
	window.alert("Please Enter a Valid Username or Password");
	
	</script>
	<%
	
	response.sendRedirect("../html/Login.html");
}

%>
   
  </body>
</html>
