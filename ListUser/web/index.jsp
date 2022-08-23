<%-- 
    Document   : login
    Created on : Aug 22, 2022, 9:05:23 PM
    Author     : Dell Precision 7510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Login</title>
    </head>
    <body>
        <div class="container mt-3">
            <h3 class="mb-5">Login Form</h3>
            <p class="text-danger">${error}</p>
            <form action="login" >
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" value="${cookie.email.value}" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" value="${cookie.password.value}" required>
                </div>
                <div class="form-check mb-3">
                    <input type="checkbox" class="form-check-input" id="check1" ${(cookie.rem.value eq 'remember')? "checked" : ""} name="remember" value="remember">
                    <label class="form-check-label" for="check1">Remember Me</label>
                </div>
                
                <div class="d-grid">
                    <button type="submit" class="btn btn-secondary btn-block">Login</button>
                </div>
            </form>
            <div>
                <p class="mt-5 text-center">Not a member? <a href="register.jsp">Sign up now</a></p>
            </div>
        </div>
    </body>
</html>
