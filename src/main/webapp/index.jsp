<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Spring Students App</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        hr {
            border: 1px solid #ccc;
            margin-bottom: 20px;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            margin-top: 20px;
        }

        .link {
            text-decoration: none;
            color: #007BFF;
            padding: 10px;
            border: 1px solid #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .link:hover {
            background-color: #007BFF;
            color: #fff;
        }
    </style>
</head>
<body>
    <h2>Welcome to Spring Students App!</h2>

    <hr>

    <div class="container">
        <a href="${pageContext.request.contextPath}/create" class="link">Create Student</a>
        <a href="${pageContext.request.contextPath}/students" class="link">See all students</a>
    </div>
</body>
</html>
