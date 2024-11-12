<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/database/Connection.jsp" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.ListIterator" %>
<%
/* class PatientData
{
	 int patientId = -1;
	  String patientName = "";
	 int patientAge = -1;
	 String patientPhnNo = "";
	 String patientEmail = "";
	 String patientDisease = "";
	 Timestamp patientAdmittedOn = null;
	 Timestamp patientLeftOn = null;
	 String patientWardType = "";
	 String patientAddress = "";
	 String patientBloodType = "";
	 float patientFeesPaid = 0;
	 float patientFeesDue = 0;
	
	PatientData(int patientId,String patientName,int patientAge,String patientPhnNo,String patientEmail,String patientDisease,Timestamp patientAdmittedOn,Timestamp patientLeftOn,String patientWardType,String patientAddress,String patientBloodType)
	{
		this.patientId=patientId;
		this.patientName=patientName;
		this.patientAge=patientAge;
		this.patientPhnNo=patientPhnNo;
		this.patientEmail=patientEmail;
		this.patientDisease=patientDisease;
		this.patientAdmittedOn=patientAdmittedOn;
		this.patientLeftOn=patientLeftOn;
		this.patientWardType=patientWardType;
		this.patientAddress=patientAddress;
		this.patientBloodType=patientBloodType;
		
	}
		
} */
class PatientData
{
	
	 int patientId = 0; 
	  String patientName = "";
	 int patientAge = -1;
	 String patientPhnNo = "";
	 String patientEmail = "";
	 String patientDisease = "";
	 Timestamp patientAdmittedOn = null;
	 Timestamp patientLeftOn = null;
	 String patientWardType = "";
	 String patientAddress = "";
	 String patientBloodType = "";
	 float patientFeesPaid = 0;
	 float patientFeesDue = 0; 
	
	/* PatientData()
	{
		
		this.patientLeftOn=patientLeftOn;
		this.patientWardType=patientWardType;
		this.patientAddress=patientAddress;
		this.patientBloodType=patientBloodType;
		
	} */
	 public void setData(int patientId,String patientName,int patientAge,String patientPhnNo,String patientEmail,String patientDisease,Timestamp patientAdmittedOn,Timestamp patientLeftOn,String patientWardType,String patientAddress,String patientBloodType)
	{
		
		return patientId,patientName,patientAge,patientPhnNo,patientEmail,patientDisease,patientAdmittedOn,patientLeftOn,patientWardType,patientAddress,patientBloodType;
	} 
}
PatientData data = new PatientData();
int patientIds = -1;
 String patientName = "";
int patientAge = -1;
String patientPhnNo = "";
String patientEmail = "";
String patientDisease = "";
Timestamp patientAdmittedOn = null;
Timestamp patientLeftOn = null;
String patientWardType = "";
String patientAddress = "";
String patientBloodType = "";
float patientFeesPaid = 0;
float patientFeesDue = 0;

	ArrayList<Integer> ids = new ArrayList<Integer>();
			 HashMap<Integer,data> hashmapdata = new HashMap<Integer,data>();
	try 
	{
		ps=con.prepareStatement("SELECT PATIENT_ID FROM PATIENT");
		rs=ps.executeQuery();
		while(rs.next())
		{
			/* ids.add(rs.getInt("PATIENT_ID")); */
		}
		
	ListIterator li = ids.listIterator();
		while(li.hasNext())
		{
			/* out.println(li.next());
		 */
			patientIds=(Integer)li.next();
		
			ps=con.prepareStatement("SELECT * FROM PATIENT WHERE PATIENT_ID=?");
			ps.setInt(1,patientIds);
			rs=ps.executeQuery();
			while(rs.next()){
				patientName = rs.getString("PATIENT_NAME");
				patientAge = rs.getString("PATIENT_AGE");
				patientPhnNo = rs.getString("PATIENT_PH_NO");
				patientEmail = rs.getString("PATIENT_EMAIL");
				patientDisease = rs.getString("PATIENT_DISEASE");
				patientAdmittedOn = rs.getTimestamp("PATIENT_ADMITTED_ON");
				patientLeftOn = rs.getTimestamp("PATIENT_LEFT_ON");
				patientWardType = rs.getString("PATIENT_WARD_TYPE");
				patientAddress = rs.getString("PATIENT_ADDRESS");
				patientBloodType = rs.getString("PATIENT_BLOOD_TYPE");
				
				hashmapdata.put(patientIds,data.setData(patientName,patientAge,patientPhnNo,patientEmail,patientDisease,patientAdmittedOn,patientLeftOn,patientWardType,patientAddress,patientBloodType));
		System.out.println(hashmapdata.size());
			}
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();	
	}
	finally
	{
		if(rs!=null && ps!=null)
		{
			
		}
		else
		{
			rs.close();
			ps.close();
		}
	}
	
%>

