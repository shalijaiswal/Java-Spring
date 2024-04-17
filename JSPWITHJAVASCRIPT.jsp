<!DOCTYPE html>
<html>
<head>
    <title>JavaScript in JSP Example</title>
</head>
<body>
    <h1>JavaScript in JSP Example</h1>

    <%-- Your JSP code here --%>

    <%-- Including JavaScript --%>
    <script type="text/javascript">
        // Your JavaScript code here
        function greets() {
            var name = document.getElementById('name').value;
            alert('Hello, ' + name + '!');
        }
    </script>

    <%-- Your HTML content here --%>
    <label for="name">Enter your name:</label>
    <input type="text" id="name" />
    <button onclick="greets()">Greet</button>
</body>
</html>
