<%-- 
    Document   : index
    Created on : Aug 22, 2022, 4:08:25 PM
    Author     : Dell Precision 7510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registering</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-3">
            <h3 class="mb-5">Registration Form</h3>
            <form action="add">
                <p class="text-danger mb-5">${error_account}</p>
                <div class="row mb-3">
                    <div class="col">
                        <label for="firstname" class="form-label">First Name:</label>
                        <input type="text" class="form-control" id="firstname" placeholder="Enter First Name" name="firstName" value="${user.firstName}"  required>
                    </div>
                    <div class="col">
                        <label for="Last Name" class="form-label">Last Name:</label>
                        <input type="text" class="form-control" id="lastname" placeholder="Enter Last Name" name="lastName" value="${user.lastName}" required>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="Country" class="form-label">Country:</label>
                    <input type="text" class="form-control" id="country" placeholder="Enter Country" name="country" value="${user.country}" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" value="${user.email}" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" value="${user.password}" required>
                </div>
                <div>
                    <label for="password" class="form-label">Confirm Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter Confirm Password" name="confirmpassword" value="${confirmPassword}" required>
                </div>
                <p class="text-danger mb-5">${error_confirm}</p>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div> 
            </form>
            
        </div>
    </body>
</html>
