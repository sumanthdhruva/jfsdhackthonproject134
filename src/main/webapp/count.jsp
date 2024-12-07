<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee and Student Statistics</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #89f7fe, #66a6ff); /* Light blue gradient */
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        /* Container Styling */
        .container {
            background: #f7f9fc;
            color: #333333;
            padding: 30px 40px;
            border-radius: 20px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 600px;
            width: 100%;
        }

        /* Title Styling */
        h1 {
            font-size: 30px;
            color: #444;
            margin-bottom: 20px;
        }

        /* Statistics Section */
        .stats {
            margin-bottom: 30px;
        }

        .stats span {
            display: inline-block;
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb); /* Cool gradient */
            color: #444444;
            font-size: 20px;
            font-weight: bold;
            padding: 12px 25px;
            border-radius: 8px;
            margin: 10px;
        }

        /* Chart Canvas */
        canvas {
            margin: 20px 0;
            max-width: 100%;
        }

        /* Footer for Additional Info */
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #777777;
        }
    </style>
</head>
<body>
	<%@include file="adminnavbar.jsp" %>

    <div class="container">
        <h1>Employee and Student Statistics</h1>
        
        <!-- Statistics -->
        <div class="stats">
            <span>Total Employees: <c:out value="${empcount}" /></span>
            <span>Total Students: <c:out value="${stucount}" /></span>
        </div>

        <!-- Bar Chart -->
        <canvas id="statsChart"></canvas>
        
        <!-- Footer -->
        <div class="footer">
            Data dynamically updated from the database.
        </div>
    </div>

    <script>
        // Fetch counts dynamically
        const empCount = parseInt(<c:out value="${empcount}" />, 10);
        const stuCount = parseInt(<c:out value="${stucount}" />, 10);

        // Configure Chart.js Bar Graph
        const ctx = document.getElementById('statsChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Employees', 'Students'],
                datasets: [{
                    label: 'Counts',
                    data: [empCount, stuCount],
                    backgroundColor: [
                        'rgba(54, 162, 235, 0.7)', // Cool blue
                        'rgba(75, 192, 192, 0.7)'  // Cool teal
                    ],
                    borderColor: [
                        'rgba(54, 162, 235, 1)',
                        'rgba(75, 192, 192, 1)'
                    ],
                    borderWidth: 2
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: false,
                    },
                    tooltip: {
                        enabled: true,
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 1, // Ensures integer steps
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
