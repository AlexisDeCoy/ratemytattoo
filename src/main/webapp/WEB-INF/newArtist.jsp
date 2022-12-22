<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add an Artist</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>

<style>
*{
font-family: sans-serif;
}
td{
width: 100px;
text-align: center;
}

a{
text-decoration: none;
}

.form-container{
width: 90%;
margin: 0 auto;
}

.photo-group{
margin: 25px 0;
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

<div class="form-container">
<h1>Add an Artist:</h1>
<form:form action="/artists/new" method="post" modelAttribute="artist" enctype="multipart/form-data">
    <div class="form-group">
        <form:label path="firstName">First Name:</form:label>
        <form:input class="form-control" path="firstName"/>
        <form:errors path="firstName" style="color: red" />
    </div>
    <div class="form-group">
        <form:label path="lastName">Last Name:</form:label>
        <form:input class="form-control" path="lastName"/>
        <form:errors path="lastName" style="color: red" />
    </div>
    <div class="form-group">
        <form:label path="artStyle">Art Style:</form:label>
        <form:input class="form-control" path="artStyle"/>
        <form:errors path="artStyle" style="color: red"/>
    </div>
    <div class="form-group">
        <form:label path="instagram">Instagram:</form:label>
        <form:input class="form-control" path="instagram"/>
        <form:errors path="instagram" style="color: red"/>
    </div>
    <div class="form-group">
        <form:label path="twitter">Twitter:</form:label>
        <form:input class="form-control" path="twitter"/>
        <form:errors path="twitter" style="color: red"/>
    </div>
    <div class="form-group">
        <form:label path="email">Email:</form:label>
        <form:input class="form-control" path="email"/>
        <form:errors path="email" style="color: red"/>
    </div>
    
    <div class="photo-group">
	    <label>Photos: </label>
	    <input type="file" class="form-control-file" name="image" accept="image/png, image/jpeg" />
   </div>
   
    <input type="submit" value="Submit"/>
</form:form>  
</div>  
</body>
</html>