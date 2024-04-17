<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // JDBC driver name and database URL
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DB_URL = "jdbc:mysql://localhost:3306/";
	String databasename="emp";
    // Database credentials
    String USER = "root";
    String PASS = "shalini";

    Connection conn = null;
    Statement stmt = null;
    boolean isValidUser = false;

    try {
        // Register JDBC driver
        Class.forName(JDBC_DRIVER);

        // Open a connection
        conn = DriverManager.getConnection(DB_URL+databasename, USER, PASS);

        // Execute SQL query
        stmt = conn.createStatement();
        String sql;
        sql = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
        ResultSet rs = stmt.executeQuery(sql);

        // Check if the user is valid
        if (rs.next()) {
            isValidUser = true;
        }

        // Close resources
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        // Handle errors
        e.printStackTrace();
    }

    if (isValidUser) {
        // Redirect to a success page if login is successful
        response.sendRedirect("success.jsp");
    } else {
        // Redirect back to the login page with an error message if login fails
        response.sendRedirect("failure.jsp?error=true");
    }
%>
