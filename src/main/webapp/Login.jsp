<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./Connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-7/assets/css/registration-7.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN | Hospital Management System</title>
</head>
<body>
    <section class="bg-light p-3 p-md-4 p-xl-5">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6 col-xxl-5">
              <div class="card border border-light-subtle rounded-4">
                <div class="card-body p-3 p-md-4 p-xl-5">
                  <div class="row">
                    <div class="col-12">
                      <div class="mb-5">
                        <div class="text-center mb-4">
                          <a href="#!">
                          
                          </a>
                        </div>
                        <h2 class="h4 text-center" style="color:rgb(227, 42, 42);">Login</h2>
                        <h3 class="fs-6 fw-normal text-secondary text-center m-0">Enter your details to login</h3>
                      </div>
                    </div>
                  </div>
                  <form action="Login.jsp" method="POST">
                    <div class="row gy-3 overflow-hidden">
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                          <label for="email" class="form-label">Email</label>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" required>
                          <label for="password" class="form-label">Password</label>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="d-grid">
                          <button class="btn bsb-btn-xl btn-primary" type="submit">Login</button>
                        </div>
                      </div>
                    </div>
                  </form>
                  
                  <div class="row">
                    <div class="col-12">
                      <hr class="mt-5 mb-4 border-secondary-subtle">
                      <div class="d-flex justify-content-center">
                      <p class="m-0 text-secondary text-center">New to Hospital Management ?<form action="Signup.jsp" method="POST"></form> <a href="Signup.jsp" class="link-primary text-decoration-none" name="register"><button type="submit" style="border: none; background-color: inherit;"class="m-0 text-primary text-center">Register</button></form></a></p>
                    	</div>
                    </div>
                  </div>
               
   
<%

String userEmail =  request.getParameter("email");
String userPass =  request.getParameter("password");

if(userEmail==null || userPass==" ")
{	
 	
}
else
{
String ExistingEmail=null;
String ExistingPass=null;
ps=con.prepareStatement("SELECT USER_EMAIL, USER_PASS FROM LOGIN WHERE USER_EMAIL=? AND USER_PASS = ?");
ps.setString(1,userEmail);
ps.setString(2,userPass);
rs=ps.executeQuery();
out.println("In ELSE");

while(rs.next())
{
	ExistingEmail = rs.getString("USER_EMAIL");
	ExistingPass= rs.getString("USER_PASS");
	out.println(ExistingEmail);
	out.println(ExistingPass);
}
if(ExistingEmail.equals(userEmail) && ExistingPass.equals(userPass))
{
	if(userEmail.equals("admin@hospital.com") && userPass.equals("admin@123"))
	{
		response.sendRedirect("./Admin.jsp");
		out.println("IN IF");
	}
	else
	{
		response.sendRedirect("./Patient.jsp");
	}
	
}
}
%>

  </body>
</html>
