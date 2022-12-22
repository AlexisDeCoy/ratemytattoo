<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
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

p {
	text-align: center;
}

a{
text-decoration: none;
}
  
.artist-table{
margin: 0 auto;
width: 90%;
}

.artist-header{
display: flex;
justify-content: space-between;
}

#add-artist{
text-decoration: none;
border: 2px solid black;
border-radius: 50px;
padding: 0 7px;
}

.vertical-spacer{
height: 50px;
}

.style-container{
display: flex;
flex-direction: column;
justify-content: space-evenly;
align-items: center;
border: 2px solid black;
width: 250px;
border-radius: 30px;
}

.style-img{
height: 200px;
}

.style-row{
display: flex;
justify-content: space-evenly;
padding: 20px 0;
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
    
	<div class="artist-table">
		<div class="artist-header">	
			<h2>Artists</h2>
			<h2><a id="add-artist" href="/artists/new">+</a></h2>
		</div>
		<c:if test="${artists.size() != 0}">
			<table class="table">
			<tr>
				<th>Name:</th>
				<th>Art Style:</th>
				<th>Num. Reviews:</th>
			</tr>
		    <c:forEach var="artist" items="${artists}">
		    	<tr>
		    		<td><a href="artists/${artist.id}"><c:out value="${artist.firstName} ${artist.lastName}"></c:out></a></td>
		    		<td><c:out value="${artist.artStyle}"></c:out></td>
		    		<td><c:out value="${artist.reviews.size()}"></c:out></td>
		    	</tr>
		    </c:forEach> 
			</table>
	    </c:if>
	</div>
		
	<c:if test="${artists.size() == 0}">
	<h3>There are currently no artists logged.</h3>
	</c:if>
	
	<div class="vertical-spacer"></div>
	
	<h2 class="artist-table">Styles</h2>
	<div class="style-row">
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/tribal.png"/>
			<h3>Tribal</h3>
		</div>
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/traditional.png"/>
			<h3>Traditional</h3>
		</div>
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/newSchool.png"/>
			<h3>New School</h3>
		</div>
	</div>
		<div class="style-row">
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/blackwork.png"/>
			<h3>Blackwork</h3>
		</div>
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/dotwork.png"/>
			<h3>Dotwork</h3>
		</div>
		<div class="style-container">
			<img class="style-img" src="/user-photos/styles/neoTrad.png"/>
			<h3>Neo-Traditional</h3>
		</div>
	</div>

</body>
</html>