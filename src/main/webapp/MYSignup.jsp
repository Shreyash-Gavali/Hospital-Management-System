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
<form method="POST" action="Signup.jsp">
<input type="text" name="userName">
<input type="text" name="userEmail">
<input type="text" name="userPass">
<input type="submit">SEND
</form>
<%
String userName =  request.getParameter("userName");
String userEmail = request.getParameter("userEmail");
String userPass =  request.getParameter("userPass");

Connection con = null;
PreparedStatement ps=null;
Statement stmt = null;
ResultSet rs=null;
String dbUrl = "jdbc:mysql://localhost:3306/hospital";
String dbUser ="root";
String dbPass = "shree@123";

	try{
		 Class.forName("com.mysql.jdbc.Driver");	
		con=DriverManager.getConnection(dbUrl,dbUser,dbPass);
		ps=con.prepareStatement("SHOW TABLES");
		
		ps=con.prepareStatement("CREATE TABLE LOGIN(LOGIN_ID INT AUTO_INCREMENT, USER_FULL_NAME VARCHAR(40),USER_EMAIL VARCHAR(40),USER_PASSWORD VARCHAR(50) ,PRIMARY KEY(LOGIN_ID))");
		int creation = ps.executeUpdate();
		if(creation == 0)
		{
			System.out.println(" ** TABLE LOGIN CREATED SUCCESSFULLY ** ");
		}
		else
		{
			System.out.println(" ** TABLE LOGIN NOT CREATED  ** ");
		}
		ps=con.prepareStatement("INSERT INTO LOGIN (USER_FULL_NAME,USER_EMAIL,USER_PASSWORD) VALUES (?,?,?)");
		ps.setString(1,userName);
		ps.setString(2,userEmail);
		ps.setString(3,userPass);
		int insertion = ps.executeUpdate();
		if(insertion == 0)
		{
			System.out.println(" ** INSERTION INTO TABLE LOGIN  SUCCESSFULLY ** ");
		}
		else
		{
			System.out.println(" ** INSERTION INTO TABLE LOGIN NOT SUCCESFULL  ** ");
		}
		response.sendRedirect("../html/Login.html");
	}

	catch(Exception e)
	{
		e.printStackTrace();
	}

%>
</body>
</html>