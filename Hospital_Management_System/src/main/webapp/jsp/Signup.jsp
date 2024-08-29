<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<%@page import="jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration | Hospital Management System</title>
</head>
<body>
<%
String userName =  request.getParameter("userName");
String userPass =  request.getParameter("userPass");

Connection con = null;
PreparedStatement ps=null;
Statement stmt = null;
ResultSet rs=null;
String dbUrl = "jdbc:mysql://localhost:3306";
String dbUser ="root";
String dbPass = "shree@123";

	try{
		 Class.forName("com.mysql.jdbc.Driver");
		/* con=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","shree@123"); */	
		con=DriverManager.getConnection(dbUrl,dbUser,dbPass);	
		ps=con.prepareStatement("CREATE DATABASE IF NOT EXISTS hospital");
		/* rs=ps.executeQuery(); */
		int sval = ps.executeUpdate();
		if(sval == 0)
		{
			
			%><p> Cannot Create DB</p>
			
			 <% 
			 ps=con.prepareStatement("USE hospital"); //COMMAND FOR USING DATABASE AS HOSPITAL 
			ps.executeUpdate();
		}
		else
		{
			
		%>
		<p> Succesfully Logged In</p>
		<%
		System.out.println("Created Database hospital");
		 ps=con.prepareStatement("USE hospital"); //COMMAND FOR USING DATABASE AS HOSPITAL 
		 ps.executeUpdate();
		 
		 ps=con.prepareStatement("CREATE TABLE Login()"); 
		}
		
		
		
	
		
	}

	catch(Exception e)
	{
		e.printStackTrace();
	}

%>
</body>
</html>