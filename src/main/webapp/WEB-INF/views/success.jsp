<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            text-align: center;
            background-color: #f4f4f4;
        }

        h2 {
            color: #333;
        }

        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        .container {
            margin: auto;
            width: 50%;
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

    <h2>Registration was successful! Here is the details</h2>

    <c:if test="${not empty student}">
        <table>
            <tr>
                <th>ID</th>
                <td>${student.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td>${student.name}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${student.email}</td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td>${student.dateOfBirth}</td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>${student.gender}</td>
            </tr>
            <tr>
                <th>Quota</th>
                <td>${student.quota}</td>
            </tr>
            <tr>
                <th>Country</th>
                <td>${student.country}</td>
            </tr>
        </table>
        <div class="container">
                <a href="${pageContext.request.contextPath}/create" class="link">Create Student</a>
                <a href="${pageContext.request.contextPath}/students" class="link">See all students</a>
            </div>
    </c:if>

</body>
</html>