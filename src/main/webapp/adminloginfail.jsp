<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<style>
    /* Popup styles */
    .popup-overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.6); /* Dark overlay with transparency */
        display: none;
        justify-content: center;
        align-items: center;
    }

    .popup-message {
        background: rgba(255, 255, 255, 0.2); /* Semi-transparent white */
        backdrop-filter: blur(10px); /* Glassmorphism blur effect */
        padding: 20px;
        border-radius: 12px;
        max-width: 400px;
        width: 80%;
        text-align: center;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3); /* Soft shadow for depth */
        color: white;
    }

    .popup-message h3 {
        color: #fff;
        font-size: 18px;
        margin-bottom: 15px;
    }

    .popup-message button {
        padding: 8px 16px;
        background: rgba(255, 255, 255, 0.3); /* Semi-transparent button */
        color: #fff;
        border: none;
        border-radius: 20px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .popup-message button:hover {
        background: rgba(255, 255, 255, 0.5); /* Brighter on hover */
    }
</style>
</head>
<body>
    <!-- Popup overlay -->
    <div class="popup-overlay" id="popupOverlay">
        <div class="popup-message">
            <h3><c:out value="${message}"/></h3>
            <button onclick="closePopup()">Back To LogIn</button>
        </div>
    </div>

    <!-- Fallback message display -->
    <c:choose>
        <c:when test="${not empty message}">
            <script>
                // Display the popup on page load if there's a message
                document.addEventListener("DOMContentLoaded", function() {
                    document.getElementById("popupOverlay").style.display = "flex";
                });

                // Function to close the popup
                function closePopup() {
                    document.getElementById("popupOverlay").style.display = "none";
                    window.location.href = 'adminlogin';
                }
            </script>
        </c:when>
        <c:otherwise>
            <p>No message available.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>
