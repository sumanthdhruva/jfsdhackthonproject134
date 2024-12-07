<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Fail</title>
<style>
    body, html {
        height: 100%;
        margin: 0;
        align-items: center;
        justify-content: center;
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 80%;
        padding-top: 100px;
        max-width: 400px;
        padding: 90px;
        text-align: center;
        border: 1px solid #ddd;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 20px;
        margin: auto;
    }
</style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="container">
        <c:out value="${message}"></c:out>
        <br><br>
        
        <a href="stulogin">Try Again</a>
    </div>
</body>
</html>