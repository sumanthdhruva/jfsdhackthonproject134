<%@page import="com.klef.jfsd.hackthon.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%
		Admin stu = (Admin) session.getAttribute("admin");
		if(stu==null)
		{
			response.sendRedirect("adminsessionexpiry");
			return;
		}
	%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Student</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styles */
        body {
            font-family: Arial, sans-serif;
            padding-top: 60px; /* Adds space for the navbar */
            background-color: #f1f1f1;
        }

        /* Navbar styles */
        .navbar {
            background-color: #333;
            color: white;
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            display: inline-block;
        }

        /* Content styles */
        .content {
            max-width: 1200px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            background-color: white;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid #333;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: #333;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        /* Responsive design for small screens */
        @media (max-width: 768px) {
            table, th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

<div class="content">
    <h3><u>View All Students</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>PASS OUT YEAR</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${stulist}" var="stu">
            <tr>
                <td><c:out value="${stu.id}"/></td>
                <td><c:out value="${stu.name}"/></td>
                <td><c:out value="${stu.gender}"/></td>
                <td><c:out value="${stu.dateofbirth}"/></td>
                <td><c:out value="${stu.department}"/></td>
                <td><c:out value="${stu.ypassout}"/></td>
                <td><c:out value="${stu.location}"/></td>
                <td><c:out value="${stu.email}"/></td>
                <td><c:out value="${stu.contact}"/></td>
                <td><c:out value="${stu.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
