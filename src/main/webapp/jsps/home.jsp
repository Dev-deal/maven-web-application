<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link href="https://img.freepik.com/free-vector/handwritten-vector-groove-word-sticker_53876-173526.jpg?w=996&t=st=1669267961~exp=1669268561~hmac=78e57db304ba02f1e00193df5bf0c5fab4c93f61d33b4725b365d0ad1dbd37f0" rel="icon">
</head>
</head>
<body>
<h1 align="center">App deployment from Jenkins </h1>
<h3>Today's task</h3>

<h2>slack notification + properties (old discard build , trigger) for pipeline (scripted and declarative )</h2>

<h1 align="center"><h3>-- We had successfully deployed the web app from jenkins via declarative pipeline --</h3>
<h3>Below is the template/steps:<br>
pipeline{
<br>
agent any
	<br>
tools{
	<br>
--------------
	<br>
}<br>
stages{<br>
<br>
stage('Git'){<br>
steps{<br>
--------------<br>
}}<br>
<br>
stage('Build'){<br>
steps{<br>
--------------<br>
}}<br>
<br>
stage('sendtosonarqube and nexus'){<br>
steps{<br>
--------------<br>
}}<br>
<br>
stage('deploytotomcat'){<br>
steps{<br>
--------------<br>
<br>

 }}<br>

}}</h3>
	<hr>
	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM1-JROctBy0tatw5tsBf6f05z2KncU-2kznhR6-d2O8nX4qZYsBAwQAAI0D4i3qN_EWs&usqp=CAU"><br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/mithunlogo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Mithun Technologies, 
		Martha Halli, Above ICICI Bank, Beside Meghana Foods,
		Bangalore,
		+91-9980923226
		devopstrainingblr@gmail.com
		<br>
		<a href="mailto:devopstrainingblr@gmail.com">Mail to Mithun Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Mithun Technologies - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2022 by <a href="http://mithuntechnologies.com/">Mithun Technologies,Bengaluru</a> </small></p>

</body>
</html>
