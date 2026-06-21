<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="background-color:#f5f5f5;">
<div class="container mt-5">
    <h2 class="text-center mb-4">Confirm Delete</h2>
    <div class="alert alert-danger text-center">
        Are you sure you want to delete this profile?
    </div>
    <form action="DeleteProfileServlet" method="post" class="mx-auto" style="max-width:600px;">
        <input type="hidden" name="studentId" value="${profile.studentId}">
        <div class="mb-3">
            <label class="form-label">Student ID:</label>
            <input type="text" class="form-control" value="${profile.studentId}" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Name:</label>
            <input type="text" class="form-control" value="${profile.name}" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Programme:</label>
            <input type="text" class="form-control" value="${profile.programme}" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Email:</label>
            <input type="text" class="form-control" value="${profile.email}" readonly>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-danger btn-lg">Delete</button>
            <a href="ListProfileServlet" class="btn btn-secondary btn-lg">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
