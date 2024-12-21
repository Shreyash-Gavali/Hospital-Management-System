
# Hospital Management System
The Hospital Management Web Platform is a comprehensive web-based application designed to streamline hospital operations and improve efficiency. By providing an online registration system, the platform reduces the need for offline patient registration by 20%. The application also includes an advanced Admin Portal that empowers hospital administrators to manage critical resources and data effectively


## Authors

- [@Shreyash-Gavali](https://www.github.com/shreyash-gavali)


## Run Locally

Clone the project

```bash
  git clone https://github.com/Shreyash-Gavali/Hospital-Management-System
```
## Configuring The Project
```bash
  Go to Eclipse & Create a new project named 'HospitalManagement'
  Also install Apache Tomcat webserver 10.0 for the project to run on
```
## Jar Files Configuration
```bash
  For succesfully running the project we need to have the neccessary jar files 
  All the jar files are mentioned below 
  - mysql-connector-j-9.0.0.jar
  - json-20210307.jar
  - gson-2.10.1.jar
  - activation-1.1.jar
```

```bash
  Download the jar files then 
  - Paste the files in the WEB-INF/lib folder 
  - Right click on the Project-name
  - Then Select Build Path from the list
  - In Build path there will be libraries option 
  - Select the libraries option a new menu will be displayed 
  - click on class path on that menu and then on the right click on add external jars 
  - Go to your project-name/src/main/webapp/WEB-INF/lib and 
  - select all the jar files one by one and then click on apply and close

```
## Configuring the database 
```bash
  ** You need to have mysql installed on your pc with username and password
  - Run the Project 
  - In the Url type 'localhost:yourportnumber/HospitalManagement/DbConfig.jsp'
  - Enter Your MySQL username and Password
  - If no error exist then in url type 'localhost:yourportnumber/HospitalManagement/Tables.jsp'
  - Click on all the buttons to create a table in your local database 
```
## Running the project
```bash
  - On the top menu click on run as run on server 
  - Select your web server
  - If browser opens the project is running succesfully
```
``` bash
- For accessing the admin portal you can use the username as 'admin@hospitalmanagement'
   & password as admin@123
- For accessing the patient portal First create a new patient by going to the signup page
  and then login
```
## Tech Stack

**Client:** HTML, CSS, Bootstrap CSS , Java Server Pages(JSP) , Javascript

**Server:** Java Server Pages(JSP), JDBC(Java Database Connectivity), Javascript 

**Databases:** MySQL


## Support

For support, email shreyashgavali21@gmail.com 

