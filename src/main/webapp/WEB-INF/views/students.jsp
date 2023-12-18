<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>All Students</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #fff;
            padding: 5px 10px;
            background: #e784f8;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #007BFF;
            color: #fff;
        }

        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 999;
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 998;
        }

        .btn-danger {
            background-color: #dc3545;
            color: #fff;
        }
        .btn-details {
            background-color: #923896;
            color: #fff;
        }
        a{
        border: 0
         }
    </style>
</head>
<body>

<h2>All Students</h2>

<c:if test="${not empty students}">
<div class="container">
        <a href="${pageContext.request.contextPath}/create" class="link">Create Student</a>
        <a href="${pageContext.request.contextPath}" class="link">Home</a>
    </div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date of Birth</th>
                <th>Gender</th>
                <th>Quota</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.dateOfBirth}</td>
                    <td>${student.gender}</td>
                    <td>${student.quota}</td>
                    <td>${student.country}</td>
                    <td>
                        <a class="btn-details" href="${pageContext.request.contextPath}/students/${student.id}">Details</a>
                        <a href="${pageContext.request.contextPath}/students/${student.id}/edit">Edit</a>
                        <a href="#" class="btn-danger" onclick="showPopup(${student.id})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>

<c:if test="${empty students}">
    <p>No students found.</p>
</c:if>

<div class="popup" id="deletePopup">
    <p>Are you sure you want to delete this student?</p>
    <a href="#" onclick="confirmDelete()">Yes</a>
    <a href="#" onclick="cancelDelete()">No</a>
</div>

<div class="overlay" id="overlay"></div>

<script>
    function showPopup(studentId) {
        document.getElementById("deletePopup").style.display = "block";
        document.getElementById("overlay").style.display = "block";
        // Pass the student ID to the confirmation functions
        window.studentIdToDelete = studentId;
    }

    function hidePopup() {
        document.getElementById("deletePopup").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }

    function confirmDelete() {
        // Redirect to the delete URL with the student ID
        window.location.href = "${pageContext.request.contextPath}/students/" + window.studentIdToDelete + "/delete";
    }

    function cancelDelete() {
        hidePopup();
    }
</script>

</body>
</html>
