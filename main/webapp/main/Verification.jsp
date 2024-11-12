<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.DecimalFormat" %>
    <%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
    <%
    float amountToBePayed = 0;
    String patientEmail = "";
   String sessionId = null;
   Cookie[] cookies = request.getCookies();

   if (cookies != null) {
       for (Cookie cookie : cookies) {
           if (cookie.getName().equals("JSESSIONID")) {
               sessionId = cookie.getValue();
               System.out.println(sessionId);
               break;
           }
       }
   }
    

    HttpSession s=request.getSession();
    if(s==null)
    {
    	response.sendRedirect(request.getContextPath()+"/Login");
    }
    else
    {
    	if(sessionId!=null)
    	{
    		if(sessionId.equals(session.getId()))
    		{
    			
    		
    	if(s.getAttribute("amountToBePayed")!=null)
    	{		
     		amountToBePayed=(Float)s.getAttribute("amountToBePayed");
    	}
    	if(s.getAttribute("patientEmail")!=null)
    	{		
	     	patientEmail =(String)s.getAttribute("patientEmail");
    	}
    	
    
    %>
    <%
   	 	String OTP = "";
		double rand = 0;
		int max = 7;
		int min = 1;
		DecimalFormat df = new DecimalFormat("######");
		rand = Math.random()*(max-min+1)*100000;
		OTP=df.format(rand);
		System.out.println(df.format(rand));
		s.setAttribute("OTP",OTP);
    
    %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-7/assets/css/registration-7.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification | Hospital Management System</title>
</head>
<body>
 <section class="bg-light p-3 p-md-4 p-xl-5">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6 col-xxl-5">
                    <div class="card border border-light-subtle rounded-4">
                        <div class="card-body p-3 p-md-4 p-xl-5 mt-5">
                            <h2 class="h4 text-center" style="color:rgb(227, 42, 42);">Enter OTP </h2>
                            <h3 class="fs-5 fw-normal text-secondary text-center m-0 mt-4">Sent to <%=patientEmail %></h3>
                            

                            <form action="<%= request.getContextPath() +"/Verify"  %>" method="POST">
                                <div class="form-floating mb-3 mt-3">
                                    <input type="password" class="form-control" name="otp" id="otp" placeholder="OTP" required>
                                    <label for="password">Enter Six Digit OTP</label>
                                </div>
                                
                                <div class="d-grid">
                                    <button class="btn bsb-btn-xl btn-primary mt-4" type="submit" id="confirm"> Pay ₹<%=amountToBePayed %></button>
                                </div>
                            </form>
                            <hr class="mt-5 mb-4 border-secondary-subtle">
							<p class="m-0 text-secondary text-center mt-2">
                                   OTP will expire in <span id="time">0:00</span>
                                </p>
                            <div class="d-flex justify-content-center mt-3">
                                <p class="m-0 text-secondary text-center">DO NOT CLOSE OR REFRESH THE PAGE
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <%
    	int userInput= 0;
    	if(request.getParameter("OTP")!=null)
    	{
    		userInput=Integer.parseInt(request.getParameter("OTP"));
    		
    	}
    	
    	if(df.format(rand)==df.format(userInput))
    	{
    		  s=request.getSession();
    		    if(s==null)
    		    {
    		    	//response.sendRedirect(request.getContextPath()+"/Login");
    		    }
    		    else
    		    {
    		    	/* RequestDispatcher dispatcher = request.getRequestDispatcher("/Patient");
    		    	dispatcher.forward(request, response); */
    				 response.sendRedirect(request.getContextPath()+"/Payment;jsessionid="+sessionId); 
    		    }
    	}
    	else
    	{
    		%>
    			<button type="button" class="btn btn-primary">
  				Incorrect  <span class="badge text-bg-secondary">OTP</span>
				</button>
    		<% 
    	}
    	}
    	}
    }
    %>
    </section>
    <script src="main/js/Verification.js">
  

    </script>
    
</body>
</html>