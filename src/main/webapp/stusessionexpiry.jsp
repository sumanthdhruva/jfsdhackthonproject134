<html>
<head>
<meta charset="UTF-8">
<title>Session Expired</title>
<style type="text/css">
	.main-content {
        margin-left: 200px; /* Aligns content after nav bar initially */
        padding: 20px;
        flex: 1;
        background-color: #f2f2f2;
        transition: margin-left 0.3s;
    }
    /* Adjust main content margin when sidenav is hovered */
    .sidenav:hover ~ .main-content {
        margin-left: 250px;
    }
</style>
</head>
<body>
<%@include file="studentnavbar.jsp" %>
<div class="main-content">
oops ....! session Expired
<br><br>
<a href="stulogin">Login Again</a>
</div>
</body>
</html>