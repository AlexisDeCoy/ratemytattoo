<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rate My Tattoo</title>
</head>

<style>
* {
	font-family: sans-serif;
}

p {
	text-align: center;
}

main {
	display: flex;
	justify-content: space-evenly;
}

img{
width: 350px;
}

form {
	margin: 25px auto;
	width: 350px;
	display: flex;
	flex-direction: column;
	border: 2px solid black;
	padding: 10px;
	background-color: #33393E;
}

h1 {
	color: #FEC008;
	text-align: center;
}

label {
	color: #CED0D3;
}

input {
	margin: 10px 0;
	border-radius: 5px;
	height: 25px;
}

.submit {
	background-color: #FEC008;
	width: 50%;
	border-radius: 4px;
	box-shadow: 2px 2px black;
	margin-bottom: -15px;
	text-align: center;
	text-decoration: none;
	color: black;
	margin: 10px 0;
}

#hregister {
	color: #0A74ED;
}

#register {
	background-color: #0A74ED;
	color: white;
	font-size: 1em;
}

#hlogin {
	color: #28A644;
}

#login {
	background-color: #28A644;
	color: white;
	font-size: 1em;
}
</style>

<body>
	<h1>Rate My Tattoo</h1>
	
	<main>
		<div>
		<h1>Register</h1>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<p>
					<form:label path="userName">User Name:</form:label>
					<form:input path="userName" />
				</p>
				<p>
					<form:errors path="userName" style="color: red" />
				</p>
				
				<p>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
				</p>
				<p>
					<form:errors path="email" style="color: red" />
				</p>
				
				<p>
					<form:label path="password">Password: </form:label>
					<form:input type="password" path="password" />
				</p>
				<p>
					<form:errors path="password" style="color: red" />
				</p>
				
				<p>
					<form:label path="confirm">Confirm Password: </form:label>
					<form:input type="password" path="confirm" />
				</p>
				<p>
					<form:errors path="confirm" style="color: red" />
				</p>
				<input type="submit" value="Register" />
			</form:form>
		</div>
		
		<div>
			<img src="/user-photos/styles/tribal.png"/>
		</div>

		<div>
		<h1>Login</h1>
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<p>
					<form:label path="email">Email:</form:label>
					<form:input path="email" />
				</p>
				<p>
					<form:errors path="email" style="color: red" />
				</p>
				
				<p>
					<form:label path="password">Password: </form:label>
					<form:input type="password" path="password" />
				</p>
				<p>
					<form:errors path="password" style="color: red" />
				</p>
				<input type="submit" value="Login" />
			</form:form>
		</div>
	</main>
	
	<p><a href="https://tattooswizard.com/blog/tattoo-styles-explained">photos</a></p>
</body>
</html>