<%
HttpSession s=request.getSession(false);
if(s==null || s.getAttribute("username")==null)
{
	response.sendRedirect(request.getContextPath()+"/Login");
}
else
{
String userName = (String)s.getAttribute("username");

}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/database/Connection.jsp" %>
<%@ page import="jakarta.servlet.*" %>
<%@ page import="jakarta.servlet.http.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="<%=request.getContextPath() +"/main/css/Admin.css"%>" />
  </head>
  <body>
    <nav
      class="navbar bg-dark position-sticky top-0 end-0 w-100 p-3"
      id="mainNavBar"
    >
      <div class="container-fluid d-flex justify-content-evenly">
        <a class="navbar-brand text-light float-end" href="#"
          >Hospital Management System</a
        >
        <div class="container d-flex justify-content-around align-items-center">
          <p class="text-light mt-2 fs-5" id="onPageClickChange"></p>
          <input
            class="form-control w-25"
            type="text"
            placeholder="Search For Anything"
          />
        </div>
       <!--  <button
          type="button"
          class="btn btn-primary rounded float-end"
          id="addBtn"
        >
          Add +
        </button> -->
        
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            fill="white"
            class="bi bi-gear me-5"
            viewBox="0 0 16 16"
            id="settingsIcon"
            role="button"
          >
            <path
              d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492M5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0"
            />
            <path
              d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115z"
            /></svg>
       <a href="<%=request.getContextPath() + "/Logout" %>"><svg
            xmlns="http://www.w3.org/2000/svg"
            width="30"
            height="30"
            fill="white"
            class="bi bi-box-arrow-right me-3"
            viewBox="0 0 16 16"
            role="button"
          >
            <path
              fill-rule="evenodd"
              d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"
            />
            <path
              fill-rule="evenodd"
              d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"
             onclick="<%=request.getContextPath() + "/Logout" %>"
            /></svg
          ></a>
      </div>
    </nav>

    <div class="container-fluid bg-dark position-fixed start-0" id="sideBar">
      <div class="list-group mt-4">
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="overviewClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-columns-gap me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M6 1v3H1V1zM1 0a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1zm14 12v3h-5v-3zm-5-1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1zM6 8v7H1V8zM1 7a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1zm14-6v7h-5V1zm-5-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"
                /></svg
              >Overview
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="patientClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-people me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4"
                /></svg
              >Patient
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="doctorClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-person-heart me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M9 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0m-9 8c0 1 1 1 1 1h10s1 0 1-1-1-4-6-4-6 3-6 4m13.5-8.09c1.387-1.425 4.855 1.07 0 4.277-4.854-3.207-1.387-5.702 0-4.276Z"
                /></svg
              >Doctor
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="employeeClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-person-vcard me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M5 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4m4-2.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5M9 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4A.5.5 0 0 1 9 8m1 2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5"
                />
                <path
                  d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H8.96q.04-.245.04-.5C9 10.567 7.21 9 5 9c-2.086 0-3.8 1.398-3.984 3.181A1 1 0 0 1 1 12z"
                /></svg
              >Employees
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="wardClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-hospital me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M8.5 5.034v1.1l.953-.55.5.867L9 7l.953.55-.5.866-.953-.55v1.1h-1v-1.1l-.953.55-.5-.866L7 7l-.953-.55.5-.866.953.55v-1.1zM13.25 9a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zM13 11.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25zm.25 1.75a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zm-11-4a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5A.25.25 0 0 0 3 9.75v-.5A.25.25 0 0 0 2.75 9zm0 2a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zM2 13.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25z"
                />
                <path
                  d="M5 1a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1a1 1 0 0 1 1 1v4h3a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h3V3a1 1 0 0 1 1-1zm2 14h2v-3H7zm3 0h1V3H5v12h1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1zm0-14H6v1h4zm2 7v7h3V8zm-8 7V8H1v7z"
                /></svg
              >Wards
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="medicineClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-capsule me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M1.828 8.9 8.9 1.827a4 4 0 1 1 5.657 5.657l-7.07 7.071A4 4 0 1 1 1.827 8.9Zm9.128.771 2.893-2.893a3 3 0 1 0-4.243-4.242L6.713 5.429z"
                /></svg
              >Medicines
            </h5>
          </div>
        </a>
        <a
          href="#"
          class="list-group-item list-group-item-action bg-dark border border-dark p-4"
          aria-current="true"
        >
          <div class="d-flex w-100 justify-content-evenly align-items-center mt-3">
            <h5 class="mb-1 fs-5 text-light" id="paymentClicked">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="20"
                height="20"
                fill="currentColor"
                class="bi bi-credit-card-fill me-3"
                viewBox="0 0 16 16"
              >
                <path
                  d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1"
                /></svg
              >Payments
            </h5>
          </div>
        </a>
        <hr class="border border-light w-100 mt-5" />
       
      </div>
    </div>
    <div class="container p-5 mt-3 w-100 h-100" id="rightSection">
    <div class="container-fluid d-flex justify-content-evenly align-items-center flex-wrap ">
      <div class="card mt-3" style="width: 30rem;">
      <div class="card-body">
      <h5 class="card-title" id="employeeCount">Total Employee
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-person-add float-end bg-primary rounded" viewBox="0 0 16 16">
      <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>
      <path d="M8.256 14a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1z"/>
      </svg>
      </h5>
      <p class="card-text mt-3">Employee Count : </p>
      <p class="btn btn-primary mt-3" id="goToEmployee">Go To Employee Page</p>
      </div>
      </div>
      <div class="card mt-3" style="width: 30rem;">
      <div class="card-body">
      <h5 class="card-title">Total Patients
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-person-add float-end bg-success rounded" viewBox="0 0 16 16">
      <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4"/>
      <path d="M8.256 14a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1z"/>
      </svg>
      </h5>
      <p class="card-text mt-3">Patient Count : </p>
      <p class="btn btn-success mt-3" id="goToPatient">Go To Patient Page</p>
      </div>
      </div>
      <div class="card mt-3" style="width: 30rem;">
      <div class="card-body">
      <h5 class="card-title">Total Ward
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="black" class="bi bi-person-video float-end bg-info rounded p-1" viewBox="0 0 16 16">
      <path d="M8 9.05a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
      <path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zm10.798 11c-.453-1.27-1.76-3-4.798-3-3.037 0-4.345 1.73-4.798 3H2a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1z"/>
      </svg>
      </h5>
      <p class="card-text mt-3">Ward Count : </p>
      <p class="btn btn-info mt-3" id="goToWard">Go To Ward Page</p>
      </div>
      </div>
      <div class="card mt-3" style="width: 30rem;">
      <div class="card-body">
      <h5 class="card-title">Total Payments
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="red" class="bi bi-credit-card-fill float-end  rounded" viewBox="0 0 16 16">
      <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1"/>
      </svg>
      </h5>
      <p class="card-text mt-3">Payments : </p>
      <p class="btn btn-danger mt-3" id="goToPayments">Go To Payment Page</p>
      </div>
      </div>
      <div class="card mt-3" style="width: 30rem;">
      <div class="card-body">
      <h5 class="card-title">Total Medicines
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-capsule float-end rounded" viewBox="0 0 16 16">
      <path d="M1.828 8.9 8.9 1.827a4 4 0 1 1 5.657 5.657l-7.07 7.071A4 4 0 1 1 1.827 8.9Zm9.128.771 2.893-2.893a3 3 0 1 0-4.243-4.242L6.713 5.429z" />
      </svg>
      </h5>
      <p class="card-text mt-3">Medicines Available : </p>
      <p class="btn btn-dark mt-3" id="goToMedicine">Go To Medicines Page</p>
      </div>
      </div>
      </div>    
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script src="main/js/Admin.js"></script>

    <%
    int patientId = -1;
    String patientName = "";
    int patientAge = -1;
    String patientPhnNo = "";
    String patientEmail = "";
    String patientDisease = "";
    	/* List<String,Object>
    	ps=con.prepareStatement("SELECT * FROM PATIENT");
    	rs = ps.executeQuery();
    	if(rs.next())
    	{
    			
    	} */
    %>
    </script>
  </body>
</html>
