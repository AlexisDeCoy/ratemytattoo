<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Review</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<style>
* {
	font-family: sans-serif;
}

td{
width: 100px;
text-align: center;
}

form{
width: 90vw;
margin: 0 auto;
justify-content: center;
}

.header{
width: 90vw;
margin: 0 auto;
}
</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">
        <a class="navbar-brand ms-2" href="/home">Rate My Tattoo</a>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">${userName}</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/logout">Log Out</a>
	      </li>
	    </ul>
	 </div>
    </nav>

<div class="header">
<h1>Add a Review:</h1>
</div>


<form:form action="/artists/${artId}/new" method="post" modelAttribute="review">
	<form:hidden path="artistId" value="${artId}"/>
    <div class="form-group">
        <form:label path="heading">Heading:</form:label>
        <form:input class="form-control" path="heading"/>
        <form:errors path="description" style="color: red" />
    </div>
    <div class="form-group">
        <form:label path="description">Description:</form:label>
        <form:textarea class="form-control" path="description"/>
        <form:errors path="description" style="color: red" />
    </div>
    
    <div class="form-group mt-2">
    <form:label path="affordability">Affordability:</form:label>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="affordability" value="1" />1
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="affordability" value="2" />2
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="affordability" value="3" />3
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="affordability" value="4" />4
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="affordability" value="5" />5
		</div>
	</div>
	
	<div class="form-group mt-2">
    <form:label path="atmosphere">Atmosphere:</form:label>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="atmosphere" value="1" />1
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="atmosphere" value="2" />2
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="atmosphere" value="3" />3
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="atmosphere" value="4" />4
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="atmosphere" value="5" />5
		</div>
	</div>
	
	
	<div class="form-group mt-2">
    <form:label path="efficiency">Efficiency:</form:label>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="efficiency" value="1" />1
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="efficiency" value="2" />2
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="efficiency" value="3" />3
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="efficiency" value="4" />4
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="efficiency" value="5" />5
		</div>
	</div>
	
	<div class="form-group mt-2">
    <form:label path="satisfaction">Satisfaction:</form:label>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="satisfaction" value="1" />1
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="satisfaction" value="2" />2
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="satisfaction" value="3" />3
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="satisfaction" value="4" />4
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="satisfaction" value="5" />5
		</div>
	</div>

	<div class="form-group mt-2">
    <form:label path="professionalism">Professionalism:</form:label>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="professionalism" value="1" />1
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="professionalism" value="2" />2
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="professionalism" value="3" />3
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="professionalism" value="4" />4
		</div>
		<div class="form-check form-check-inline">
		  <form:radiobutton path="professionalism" value="5" />5
		</div>
	</div>

    <input type="submit" value="Submit"/>
</form:form>    
  
</body>
</html>