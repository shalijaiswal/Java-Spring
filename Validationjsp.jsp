<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Verification</title>
    <script>
        function validateForm() {
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;

            if (name == "") {
                alert("Please enter your name");
                return false;
            }

            if (email == "") {
                alert("Please enter your email");
                return false;
            } else {
                // Email format validation
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!email.match(emailRegex)) {
                    alert("Please enter a valid email address");
                    return false;
                }
            }

            if (password == "") {
                alert("Please enter your password");
                return false;
            } else {
                // Password length validation
                if (password.length < 6) {
                    alert("Password must be at least 6 characters long");
                    return false;
                }
            }

            // If all validations pass
            return true;
        }
    </script>
</head>
<body>
    <h2>Form Verification</h2>
    <form action="submitForm.jsp" onsubmit="return validateForm()" method="post">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>

        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email"><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password"><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
