<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><c:out value="${artist.firstName} ${artist.lastName}"></c:out></title>
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

img{
width: 250px;
}

a{
text-decoration: none;
}

.ratings{
width: 500px;
text-align: center;
margin: 0 auto;
}

.description{
border: 2px solid black;
text-align: center;
background-color: grey;
font-style: italic;
color: whitesmoke;
width: 80vw;
margin: 10px auto;
}

</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
    

<div class="info-box">
<h1 class="ratings">
<c:out value="${review.heading}"></c:out>
</h1>

<h2 class="description">
<c:out value="${review.description}"></c:out>
</h2>
</div>

<div class="ratings">
	<h3>
	Affordability:
	<c:out value="${review.affordability}"></c:out>
	</h3>
	<h3>
	Atmosphere:
	<c:out value="${review.atmosphere}"></c:out>
	</h3>
	<h3>
	Efficiency:
	<c:out value="${review.efficiency}"></c:out>
	</h3>
	<h3>
	Satisfaction:
	<c:out value="${review.satisfaction}"></c:out>
	</h3>
	<h3>Professionalism:
	<c:out value="${review.professionalism}"></c:out>
	</h3>
</div>

<div class="mx-auto" style="width: 140px">
<a class="btn btn-primary" href="/artists/${review.artistId.id}">Back to Artist</a>
</div>

</body>
</html>