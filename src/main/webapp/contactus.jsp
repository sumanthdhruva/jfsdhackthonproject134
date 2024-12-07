<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
	.h11 {
            padding-top: 70px;
            font-size: 3em;
            color: #1f3c88;
            text-align: center;
            font-weight: bold;
            letter-spacing: 1px;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        nav {
            margin-bottom: 20px; /* Gap after navbar */
        }

        .main-content {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }

        .email-section, .map-section {
            flex: 1;
            min-width: 300px;
        }

        h2 {
            text-align: center;
            color: #333333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
        }

        input, textarea {
            margin-top: 5px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            background-color: #007bff;
            color: #ffffff;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .map-container iframe {
            width: 100%;
            height: 100%;
            min-height: 400px;
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <!-- Include Navbar -->
    <%@ include file="mainnavbar.jsp" %>
 <h3 class="h11"></h3>
   
    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <!-- Email Section -->
            <div class="email-section">
                <h2>Send Email</h2>
                <form action="sendemail" method="post">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                    
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter recipient's email" required>
                    
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>
                    
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="5" placeholder="Write your message" required></textarea>
                    
                    <button type="submit">Send Email</button>
                </form>
            </div>

            <!-- Map Section -->
            <div class="map-section">
                <h2>Our Location</h2>
                <div class="map-container">
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1942082.2702656438!2d79.5994749!3d15.9128998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4a8589c1aa385d%3A0x4c7493ec489d7b80!2sAndhra%20Pradesh!5e0!3m2!1sen!2sin!4v1618947354952!5m2!1sen!2sin" 
                        allowfullscreen="" 
                        loading="lazy">
                    </iframe>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
