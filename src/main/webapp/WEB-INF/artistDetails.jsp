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

.artist-box{
display: flex;
justify-content: space-around;
margin: 20px 0;
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
    
<div class="artist-box">

<img src="${artist.photosImagePath}" />

<div class="info-box">
<h1>Name:
<c:out value="${artist.firstName} ${artist.lastName}"></c:out>
</h1>

<h1>Email:
<c:out value="${artist.email}"></c:out>
</h1>

<h1>Art Style:
<c:out value="${artist.artStyle}"></c:out>
</h1>

<h1>Review Average:
<c:if test="${reviewAvg != null}">
<c:out value="${reviewAvg}"></c:out>
</c:if>
</h1>
<c:if test="${reviewAvg == null}">
<h4>This artist has not received any reviews.</h4>
</c:if>
</div>
</div>



<c:if test="${reviewAvg != null}">
<table class="table">
<tr>
	<th>Heading:</th>
	<th>Affordability:</th>
	<th>Atmosphere:</th>
	<th>Efficiency:</th>
	<th>Satisfaction:</th>
	<th>Professionalism:</th>
</tr>
<c:forEach var="review" items="${artist.reviews}">
   	<tr>
   		<td><a href="/artists/reviews/${review.id}"><c:out value="${review.heading}"></c:out></a></td>
   		<td><c:out value="${review.affordability}"></c:out></td>
   		<td><c:out value="${review.atmosphere}"></c:out></td>
   		<td><c:out value="${review.efficiency}"></c:out></td>
   		<td><c:out value="${review.satisfaction}"></c:out></td>
   		<td><c:out value="${review.professionalism}"></c:out></td>
   	</tr>
</c:forEach> 
</table>
</c:if>
    
<div class="mx-auto" style="width: 200px">
<a class="btn btn-primary" href="/artists/${artist.id}/new">New Review</a>
</div>

</body>
</html>