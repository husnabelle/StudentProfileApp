<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Personal Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: url("img/background_main.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: 'Poppins', sans-serif;
        }
        .container { margin-top: 50px; }
        .card { transition: transform 0.2s; cursor: pointer; border: 2px solid black; }
        .card:hover { transform: scale(1.05); }
        h1 { text-align: center; margin-bottom: 30px; color: #fff; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Personal Profile App</h1>
        
        <div class="text-center mb-4">
            <a href="profile.html" class="btn btn-light btn-lg">Fill In Your Profile</a>
            <a href="ListProfileServlet" class="btn btn-light btn-lg">View All Profiles</a>
        </div>
        

        <c:if test="${not empty submitted}">
            <div class="alert alert-success text-center">${submitted}</div>
        </c:if>

        <c:if test="${not empty sessionScope.profile}">
            <div class="card mx-auto mt-3" style="max-width: 600px;" onclick="window.location.href='profile.jsp'">
                <div class="card-body">
                    <h4 class="card-title">${sessionScope.profile.name}</h4>
                    <p><strong>Student ID:</strong> ${sessionScope.profile.studentId}</p>
                    <p><strong>Programme:</strong> ${sessionScope.profile.programme}</p>
                    <p><strong>Email:</strong> ${sessionScope.profile.email}</p>
                    <p><strong>Hobbies:</strong> ${sessionScope.profile.hobbies}</p>
                    <p><strong>Introduction:</strong> ${sessionScope.profile.introduction}</p>
                </div>
            </div>
        </c:if>
    </div>
</body>
</html>


