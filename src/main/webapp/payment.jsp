<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial;
            font-size: 17px;
            padding: 8px;
            margin: 0;
        }

        * {
            box-sizing: border-box;
        }

        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
        }

        .col-75 {
            -ms-flex: 75%; /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f9f9f9;
            padding: 20px;
            border: 1px solid lightgrey;
            border-radius: 5px;
            max-width: 600px;
            margin: 50px auto;
        }

        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        .btn {
            background-color: #04AA6D;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        .qr-code {
            text-align: center;
            margin-top: 20px;
        }

        span.price {
            float: right;
            color: grey;
        }

        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }

        .main-content {
            margin-top: 30px;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>

<div class="main-content">
    <h3 align="center">Secure Payment Page</h3>
    <div class="container">
        <form action="processPayment" method="post">
            <div class="row">
                <div class="col-50">
                    <h3>Billing Address</h3>
                    <!-- Billing Address Fields -->
                    <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                    <input type="text" id="fname" name="firstname" placeholder="John Doe">
                    <!-- More fields here -->
                </div>

                <div class="col-50">
                    <h3>Payment</h3>
                    <!-- Payment Fields -->
                    <label for="cname">Name on Card</label>
                    <input type="text" id="cname" name="cardname" placeholder="John Doe">
                    <!-- More fields here -->
                </div>
            </div>
            <input type="submit" value="Proceed to Pay" class="btn">
        </form>

        <!-- QR Code Section -->
        <div class="qr-code">
            <h4>Scan to Pay</h4>
            <img src="https://chart.googleapis.com/chart?chs=200x200&cht=qr&chl=YourPaymentLinkHere&choe=UTF-8" alt="QR Code">
            <p>Use your preferred payment app to scan this code.</p>
        </div>
    </div>
</div>
</body>
</html>
