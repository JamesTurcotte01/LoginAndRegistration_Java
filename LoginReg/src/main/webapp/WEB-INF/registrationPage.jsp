<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Registration Page</title>
</head>
<body>
	<div class="d-flex justify-content-evenly">
    
    
    <div class="input-group mb-3" style="margin-left: 100px">
    
    <form:form method="POST" action="/registration" modelAttribute="user">
    <h1>Register!</h1>
   		<p>
            <form:label for="exampleFormControlInput1" class="form-label" path="firstName">First Name:</form:label>
            <form:errors path="firstName"/>
            <form:input type="firstName" path="firstName" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <p>
            <form:label for="exampleFormControlInput1" class="form-label" path="lastName">Last Name:</form:label>
            <form:errors path="lastName"/>
            <form:input type="lastName" path="lastName" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <p>
            <form:label for="exampleFormControlInput1" class="form-label" path="email">Email:</form:label>
            <form:errors path="email"/>
            <form:input type="email" path="email" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <p>
            <form:label for="exampleFormControlInput1" class="form-label" path="password">Password:</form:label>
            <form:errors path="password"/>
            <form:password path="password" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <p>
            <form:label for="exampleFormControlInput1" class="form-label" path="passwordConfirmation">Password Confirmation:</form:label>
            <form:errors path="password"/>
            <form:password path="passwordConfirmation" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <input type="submit" value="Register!"/>
    </form:form>
    
    </div>
    
    	<div class="input-group mb-3" style="margin-left: 100px">
    
    <form method="post" action="/login">
    <h1>Login</h1>
    <p><c:out value="${error}" /></p>
        <p>
            <label for="email"for="exampleFormControlInput1" class="form-label">Email</label>
            <form:errors path="email"/>
            <input id="email" name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <p>
            <label for="password" for="exampleFormControlInput1" class="form-label">Password</label>
            <form:errors path="password"/>
            <input type="password" id="password" name="password" class="form-control" id="exampleFormControlInput1" placeholder=""/>
        </p>
        <input type="submit" value="Login!"/>
    </form>    
    </div>
    </div>
</body>
</html>
