<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

<style>
    /* Basic reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body and general styles */
    body {
        font-family: Arial, sans-serif;
        padding-top: 60px; /* Adds space below the navbar */
        background-color: #f1f1f1; /* Optional: for better contrast */
    }

    /* Navbar styles */
    .navbar {
        background-color: #333;
        color: #fff;
        padding: 10px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        position: fixed; /* Fixed navbar on top */
        width: 100%;
        top: 0;
        z-index: 1000;
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px;
        display: inline-block;
    }

    /* Content styles */
    .content {
        margin-top: 20px;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        max-width: 800px;
        margin-left: auto;
        margin-right: auto;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .content h2 {
        font-size: 24px;
        color: #333;
        margin-bottom: 10px;
        text-align: center;
    }

    .form-container {
        padding-left: 20px;
        font-size: 16px;
        color: #555;
    }

    .form-container li {
        margin-bottom: 8px;
    }
</style>
</head>
<body>
	<%@include file="adminnavbar.jsp" %>
	<div class="content">
	    <h2>Welcome to admin home page</h2>
	    <ol class="form-container">
	        <li>Controller Layer will access Service Layer</li>
	        <li>Service Layer will access Repository Layer</li>
	        <li>Repository Layer contains Database Logic</li>
	    </ol>
	</div>
</body>
</html>
