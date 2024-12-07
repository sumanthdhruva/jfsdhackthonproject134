<%@page import="com.klef.jfsd.hackthon.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student stu = (Student) session.getAttribute("student");
if(stu==null)
{
	response.sendRedirect("stusessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
    <style type="text/css">
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .main-content {
            margin-left: 220px;
            padding: 30px;
            background-color: #f2f2f2;
            min-height: 100vh;
            transition: margin-left 0.3s;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .sidenav:hover ~ .main-content {
            margin-left: 270px;
        }
        h3 {
            font-size: 24px;
            color: #374564;
            text-align: center;
            margin-bottom: 20px;
        }
        h4 {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
        
        /* Form Container */
        .form-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        
        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
            vertical-align: top;
        }
        td:first-child {
            text-align: right;
            font-weight: bold;
            color: #555;
        }
        td:last-child {
            text-align: left;
        }
        input[type="text"], input[type="number"], input[type="email"], input[type="password"], input[type="date"], select {
            width: 100%;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #fafafa;
            font-size: 14px;
        }
        
        /* Radio Buttons and Labels */
        input[type="radio"] {
            margin-right: 5px;
        }
        label {
            margin-right: 15px;
            font-weight: normal;
            color: #333;
        }
        
        /* Submit and Reset Buttons */
        .button-container {
            text-align: center;
            padding-top: 10px;
        }
        .button-container input[type="submit"],
        .button-container input[type="reset"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            margin: 5px;
        }
        .button-container input[type="submit"] {
            background-color: #28a745;
        }
        .button-container input[type="reset"] {
            background-color: #dc3545;
        }
        .button-container input[type="submit"]:hover {
            background-color: #218838;
        }
        .button-container input[type="reset"]:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
  <%@include file="studentnavbar.jsp" %>
  <div class="main-content">
    
    <div class="form-container">
    <h4><c:out value="${message}"></c:out></h4>
    <h3><u>Update Student Profile</u></h3>
        <form method="post" action="updatestuprofile">
            <table>
                <tr>
                    <td><label for="sid">Student ID</label></td>
                    <td><input type="number" id="sid" name="sid" readonly value="<%= stu.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%= stu.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" <%= stu.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" <%= stu.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" <%= stu.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" value="<%= stu.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= stu.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>CSE</option>
                            <option value="MARKETING" <%= stu.getDepartment().equals("MARKETING") ? "selected" : "" %>>CSIT</option>
                            <option value="SALES" <%= stu.getDepartment().equals("SALES") ? "selected" : "" %>>ECE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="sypassout">Enter Passout year:</label></td>
                    <td><input type="number" id="sypassout" name="sypassout" step="0.01" value="<%= stu.getYpassout() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%= stu.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" readonly value="<%= stu.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" value="<%= stu.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" value="<%= stu.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
  </div>
</body>
</html>
