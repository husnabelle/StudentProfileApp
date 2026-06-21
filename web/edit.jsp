<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body style="background-color:#f5f5f5;">
<div class="container mt-5">
    <h2 class="text-center mb-4">Edit Student Profile</h2>
    <form action="EditProfileServlet" method="post" class="mx-auto" style="max-width:600px;">
        <!-- Student ID is readonly -->
        <div class="mb-3">
            <label class="form-label">Student ID:</label>
            <input type="text" name="studentId" class="form-control" value="${profile.studentId}" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Name:</label>
            <input type="text" name="name" class="form-control" value="${profile.name}" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Programme:</label>
            <input type="text" name="programme" class="form-control" value="${profile.programme}" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Email:</label>
            <input type="email" name="email" class="form-control" value="${profile.email}" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Hobbies:</label>
            <input type="text" name="hobbies" class="form-control" value="${profile.hobbies}">
        </div>
        <div class="mb-3">
            <label class="form-label">Introduction:</label>
            <textarea name="introduction" class="form-control">${profile.introduction}</textarea>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-success btn-lg">Update</button>
            <a href="ListProfileServlet" class="btn btn-secondary btn-lg">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
