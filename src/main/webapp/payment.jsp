<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 16px;
            padding: 0;
            margin: 0;
            background-color: #f4f4f9;
        }

        * {
            box-sizing: border-box;
        }

        .main-content {
            margin: 30px auto;
            text-align: center;
        }

        h3 {
            font-size: 26px;
            color: #333;
            margin-bottom: 20px;
        }

        .container {
            background-color: #ffffff;
            padding: 25px 30px;
            border: 1px solid #ddd;
            border-radius: 10px;
            max-width: 700px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 0 auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .col-50 {
            flex: 0 0 48%;
            margin-bottom: 20px;
        }

        label {
            margin-bottom: 8px;
            display: block;
            color: #555;
            font-weight: bold;
        }

        input[type=text] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        input[type=text]:focus {
            border-color: #04AA6D;
            outline: none;
        }

        .btn {
            background-color: #04AA6D;
            color: white;
            padding: 14px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: block;
            width: 100%;
        }

        .btn:hover {
            background-color: #45a049;
        }

        hr {
            border: 1px solid #ddd;
            margin: 20px 0;
        }

        .qr-code {
            text-align: center;
            margin-top: 30px;
        }

        .qr-code img {
            width: 200px;
            height: 200px;
            border: 5px solid #eee;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .qr-code img:hover {
            transform: scale(1.05);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
        }

        .qr-code p {
            margin-top: 10px;
            color: #555;
        }

        @media (max-width: 768px) {
            .row {
                flex-direction: column;
            }

            .col-50 {
                flex: 0 0 100%;
            }
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<div class="main-content">
    <h3>Secure Payment Page</h3>
    <div class="container">
        <form action="processPayment" method="post">
            <div class="row">
                <div class="col-50">
                    <h3>Billing Address</h3>
                    <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                    <input type="text" id="fname" name="firstname" placeholder="John Doe">

                    <label for="email"><i class="fa fa-envelope"></i> Email</label>
                    <input type="text" id="email" name="email" placeholder="john@example.com">

                    <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                    <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
                </div>

                <div class="col-50">
                    <h3>Payment</h3>
                    <label for="cname">Name on Card</label>
                    <input type="text" id="cname" name="cardname" placeholder="John Doe">

                    <label for="ccnum">Credit Card Number</label>
                    <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">

                    <label for="expmonth">Exp Month</label>
                    <input type="text" id="expmonth" name="expmonth" placeholder="September">
                </div>
            </div>
            <input type="submit" value="Proceed to Pay" class="btn">
        </form>

        <!-- QR Code Section -->
        <div class="qr-code">
            <h4>Scan to Pay</h4>
            <img alt="QR Code" src="images/QR.jpg" />
            <p>Use your preferred payment app to scan this code.</p>
        </div>
    </div>
</div>
</body>
</html>
