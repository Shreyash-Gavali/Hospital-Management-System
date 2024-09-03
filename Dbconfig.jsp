<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.sql.*" %>
<%@page import="jakarta.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database Creation | Hospital Management System</title>
<style>
body{
margin:0;
padding: 0;
box-sizing: border-box;
}
input[type="text"]
{
	width: 18rem;
	height: 20px;
	
}
input[type="submit"]
{
	padding: 10px;
	margin: 5px 0px 0px 15px;;
	width: 30rem;
	border-radius: 10px;
	border: none;
	background-color:#16a34a ;
	color: white;
	font-size: 20px;
}
input[type="text"]:focus,input[type="text"]:active
{
	outline-color: #663399;
	border-color: #663399;
}
.container{

font-family: sans-serif;
width: 40rem;
height: 40rem;
position: relative;
top: 50px;;
left: 30%;
box-shadow: 0px 0px 10px #0f172a;
display: flex;
justify-content: center;
font-family: sans-serif;
align-items: center;
}
fieldset{
width:30rem;
 border-color: #3f3f46; 
margin-top: 8px;
}
legend{
font-size: 20px;}
p{
margin-left: 80px;
display: inline;}
.result{
margin: 8px;
padding: 8px;
width: 30rem;
display: flex;
justify-content: center;
flex-direction: column;
align-items: center;
border: solid 1px #b91c1c;
text-align: center;
font-family: sans-serif;
}

</style>
</head>
<body>
<div class="container">
<form method="POST" action="Dbconfig.jsp">
<field>
<legend>Database Manipulation Console </legend>
<fieldset>
<label for="dbUser">Database Username :</label>
<input type="text" name="dbUser" id="dbUser"  required>
</fieldset>
<fieldset>
<label for="dbPass">Database Password :</label>
<input type="text" name="dbPass" id="dbPass" required>
</fieldset>
<input type="submit" value="Submit">
</form>

<%
Connection con ;
PreparedStatement ps;
Statement stmt;
String dbUrl = "jdbc:mysql://localhost:3306";
String dbUser = request.getParameter("dbUser");
String dbPass = request.getParameter("dbPass");
int result;
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
	if(con!=null)
	{
		out.println("<div class='result'><h3>Connected To Database</h3>");
	}
	else
	{
		out.println("<h3>NOT Connected To Database</h3>");
	}
	ps=con.prepareStatement("CREATE DATABASE IF NOT EXISTS hospital");
	result = ps.executeUpdate();
	if(result == 0)
	{
		out.println("<h3>Database not created</h3>");
	}
	else
	{
		out.println("<h3>Database Created</h3>");
	}
	ps=con.prepareStatement("USE hospital");
	result=ps.executeUpdate();
	if(result == 0)
	{
		out.println("<h3>Using hospital</h3>");
	}
	else
	{
		out.println("<h3>NOT Using hospital</h3>");
	}
	
	out.println("<h3>Creating Table Admin</h3>");
	
	ps=con.prepareStatement("CREATE TABLE ADMIN(ADMIN_ID INT PRIMARY KEY,ADMIN_NAME VARCHAR(30),ADMIN_PRIORITY INT,ADMIN_EMAIL VARCHAR(50),ADMIN_PASSWORD VARCHAR(80))");
	result=ps.executeUpdate();
	if(result == 0)
	{
		out.println("<h3>Table Admin not created</h3>");
	}
	else
	{
		out.println("Table Admin Created");
	}
	ps=con.prepareStatement("CREATE TABLE ADMIN(ADMIN_ID INT PRIMARY KEY,ADMIN_NAME VARCHAR(30),ADMIN_PRIORITY INT,ADMIN_EMAIL VARCHAR(50),ADMIN_PASSWORD VARCHAR(80))");
	result=ps.executeUpdate();
	out.println("</div>");
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</div>
</div>
</body>
