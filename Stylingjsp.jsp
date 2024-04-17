<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP with Styling</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: cyan;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h1 {
            color: red;
        }

        p {
            color: magenta;
        }
         button {
            padding: 10px 15px;
            font-size: 16px;
            background-color: green;
            color: orange;
            border: 2px;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: pink;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome shalini</h1>
    <p>good morning.</p>
<button type="submit">hello</button>
</div>


</body>
</html>
