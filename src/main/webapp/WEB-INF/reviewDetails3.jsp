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
td{
width: 100px;
text-align: center;
}
</style>

<body>
<h1>
<c:out value="${review.heading}"></c:out>
</h1>

<h1>
<c:out value="${review.description}"></c:out>
</h1>

<h1>
Affordability:
<c:out value="${review.affordability}"></c:out>
Atmosphere:
<c:out value="${review.atmosphere}"></c:out>
Efficiency:
<c:out value="${review.efficiency}"></c:out>
Satisfaction:
<c:out value="${review.satisfaction}"></c:out>
Professionalism:
<c:out value="${review.professionalism}"></c:out>
</h1>

<a href="/home">Back</a>

</body>
</html>