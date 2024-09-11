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
    <title>Sign Up Form</title>
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
                        <h2 class="h4 text-center" style="color:rgb(227, 42, 42);">Registration</h2>
                        <h3 class="fs-6 fw-normal text-secondary text-center m-0">Enter your details to register</h3>
                      </div>
                    </div>
                  </div>
                  <form action="Signup.jsp" method="POST">
                    <div class="row gy-3 overflow-hidden">
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name" required>
                          <label for="firstName" class="form-label">First Name</label>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="text" class="form-control" name="lastName" id="lastName" placeholder="First Name" required>
                          <label for="lastName" class="form-label">Last Name</label>
                        </div>
                      </div>
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
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" name="iAgree" id="iAgree" required>
                          <label class="form-check-label text-secondary" for="iAgree">
                            I agree to the <a href="#!" class="link-primary text-decoration-none">terms and conditions</a>
                          </label>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="d-grid">
                          <button class="btn bsb-btn-xl btn-primary" type="submit">Sign up</button>
                        </div>
                      </div>
                    </div>
                  </form>
                  <div class="row">
                    <div class="col-12">
                      <hr class="mt-5 mb-4 border-secondary-subtle">
                      <div class="d-flex justify-content-center">
                       <p class="m-0 text-secondary text-center">Already Have an Account ?<form action="Login.jsp" method="POST"></form> <a href="Login.jsp" class="link-primary text-decoration-none" name="register"><button type="submit" style="border: none; background-color: inherit;"class="m-0 text-primary text-center">Signin</button></form></a></p>
                    </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-12">
                      <p class="mt-5 mb-5">Or continue with</p>
                      <div class="d-flex gap-2 gap-sm-3 justify-content-center">
                        <a href="#!" class="btn btn-lg btn-outline-danger p-3 lh-1">
                          <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                            <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                          </svg>
                        </a>
                        <a href="#!" class="btn btn-lg btn-outline-primary p-3 lh-1">
                          <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                            <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                          </svg>
                        </a>
                        <a href="#!" class="btn btn-lg btn-outline-info p-3 lh-1">
                          <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                            <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                          </svg>
                           </a>
                          </div>
                          </div>
                          </div>
                          <%
                          String UserFirstName = request.getParameter("firstName");
                          String UserLastName = request.getParameter("lastName");
                          String UserEmail = request.getParameter("email");
                          String UserPass = request.getParameter("password");
                          String ExistingEmail = null;
                          if(UserFirstName!= null && UserLastName!= null && UserEmail!= null && UserPass!= null)
                          {
                              ps=con.prepareStatement("CREATE TABLE IF NOT EXISTS LOGIN(USER_FIRST_NAME VARCHAR(30),USER_LAST_NAME VARCHAR(30),USER_EMAIL VARCHAR(80),USER_PASS VARCHAR(40))");
                              int sval=ps.executeUpdate();
                              if(sval==0)
                              {
                            	  System.out.println("Created Table Login");
                              }
                              else
                              {
                            	 	System.out.println("Cannot Create Table Login As it Already Exist");

                              }
                          }
                          else
                          {
                        	  return;
                          }
                          ps=con.prepareStatement("SELECT USER_EMAIL FROM LOGIN WHERE USER_EMAIL = ?");
                          ps.setString(1,UserEmail);
                          rs=ps.executeQuery();
                          while(rs.next())
                          {
                        	  ExistingEmail=rs.getString("USER_EMAIL");
                          }
                          if(UserEmail.equals(ExistingEmail))
                          {
                        	  %>
                        	  
                        	  <div class="alert alert-danger position-absolute top-0 start-0 w-100" role="alert">
    							An User with this email address already exist</div>
<% 
                          }
                          else
                          {
                          	ps=con.prepareStatement("INSERT INTO LOGIN VALUES(?,?,?,?)");
                          	ps.setString(1,UserFirstName);
                          	ps.setString(2,UserLastName);
                          	ps.setString(3,UserEmail);
                          	ps.setString(4,UserPass);
                          	int sval=ps.executeUpdate();
                          	if(sval==0)
                          	{
                          		%>
                        	  
                      	  <div class="text-center alert alert-danger position-absolute top-0 start-0 w-100" role="alert">
  							An User with this email address already exist</div>
<% 
                        	  
                        	  }
                          	else
                          	{%>
                      	  
                        	  <div class="alert alert-success position-absolute top-0 start-0 w-100" role="alert">
    							Registered Succesfully</div>
<% 
                          	}
                          }
                        	 %>
                          
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
