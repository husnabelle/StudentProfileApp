<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Information</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: url("img/profile_bg.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: 'Poppins', sans-serif;
        }
        .profile-card {
            max-width: 700px;
            margin: 50px auto;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            background-color: rgba(255,255,255,0.95);
        }
        .profile-header {
            background: linear-gradient(135deg, #4e73df, #1cc88a);
            color: white;
            padding: 20px;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            text-align: center;
        }
        .profile-body {
            padding: 25px;
        }
        .profile-body p {
            font-size: 16px;
            margin-bottom: 12px;
        }
        .icon {
            margin-right: 8px;
            color: #4e73df;
        }
    </style>
</head>
<body>
    <div class="profile-card">
        <div class="profile-header">
            <h2>${sessionScope.profile.name}</h2>
            <p class="mb-0">Student ID: ${sessionScope.profile.studentId}</p>
        </div>
        <div class="profile-body">
            <p><strong>Programme:</strong> ${sessionScope.profile.programme}</p>
            <p><strong>Email:</strong> ${sessionScope.profile.email}</p>
            <p><strong>Hobbies:</strong> ${sessionScope.profile.hobbies}</p>
            <p><strong>Introduction:</strong> ${sessionScope.profile.introduction}</p>
        </div>
        <div class="text-center mb-3">
            <a href="edit.jsp" class="btn btn-primary">Edit</a>
            <a href="delete.jsp" class="btn btn-primary">Delete</a>
            <a href="index.jsp" class="btn btn-secondary">Back to Home</a>

        </div>
    </div>
</body>
</html>
