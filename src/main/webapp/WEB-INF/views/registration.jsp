<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Registration Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            text-align: center;
            background-color: #f4f4f4;
        }

        h3 {
            color: #333;
        }

        .form-container {
            width: 300px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            text-align: left;
            margin-top: 10px;
            color: #555;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .checks {
            display: flex;
            align-items: center;
            margin: 20px 0;
            gap: 20px;
        }
        .checks label {
            margin-top: 0;
        }
        input[type="checkbox"], input[type="radio"] {
            width: auto;
            margin-top: 0;
            padding: 0;
            margin-bottom: 0;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            padding: 10px;
        }

        a {
            text-decoration: none;
            color: #007BFF;
            padding: 5px 10px;
            border: 1px solid #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #007BFF;
            color: #fff;
        }

        .error {
            color: red;
            text-align: left;
            margin-top: 5px;
        }
    </style>
</head>
<body>

    <div class="form-container">

        <h3>Registration Page</h3>

        <form:form method="post" action="${pageContext.request.contextPath}/store" modelAttribute="student">

            <label for="id">Id</label>
            <form:input path="id" id="id" type="number"/>
            <form:errors path="id" cssClass="error"/>

            <label for="name">Full Name</label>
            <form:input path="name" id="name"/>
            <form:errors path="name" cssClass="error"/>

            <label for="dateOfBirth">Date Of Birth</label>
            <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
            <form:errors path="dateOfBirth" cssClass="error"/>

            <label for="email">Email</label>
            <form:input path="email" id="email" type="email"/>
            <form:errors path="email" cssClass="error"/>

            <div class="checks">
                <label>Gender</label>
                <form:radiobutton path="gender" value="MALE" label="Male"/>
                <form:radiobutton path="gender" value="FEMALE" label="Female"/>
            </div>
            <form:errors path="gender" cssClass="error"/>

            <div class="checks">
                <label for="quota">Quota</label>
                <form:checkbox path="quota" id="quota" value="N/A"/>
                <form:errors path="quota" cssClass="error"/>
            </div>

            <label for="country">Country</label>
            <form:select path="country" id="country">
                 <form:option value="Bangladeshi" label="Bangladeshi"/>
                <form:option value="United States" label="United States"/>
                <form:option value="Canada" label="Canada"/>
                <form:option value="United Kingdom" label="United Kingdom"/>
                <form:option value="Australia" label="Australia"/>
                <form:option value="Germany" label="Germany"/>
                <form:option value="France" label="France"/>
                <form:option value="Japan" label="Japan"/>
                <form:option value="Brazil" label="Brazil"/>
                <form:option value="South Africa" label="South Africa"/>
            </form:select>
            <form:errors path="country" cssClass="error"/>

            <input type="submit" value="Register" />

        </form:form>

        <a href="${pageContext.request.contextPath}">Home</a>

    </div>

</body>
</html>
