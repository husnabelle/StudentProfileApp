<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Student Profiles</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="background-color:#f5f5f5;">
<div class="container mt-5">
    <h2 class="text-center mb-4">All Student Profiles</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Programme</th>
                <th>Email</th>
                <th>Hobbies</th>
                <th>Introduction</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="p" items="${profiles}">
                <tr>
                    <td>${p.studentId}</td>
                    <td>${p.name}</td>
                    <td>${p.programme}</td>
                    <td>${p.email}</td>
                    <td>${p.hobbies}</td>
                    <td>${p.introduction}</td>
                    <td>
                        <a href="LoadEditServlet?studentId=${p.studentId}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="LoadDeleteServlet?studentId=${p.studentId}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="text-center">
        <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
    </div>
</div>
</body>
</html>
