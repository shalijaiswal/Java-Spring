<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        // Establish connection (You might want to use connection pooling instead)
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp", "root", "shalini");

        // Prepare SQL statement
        String sql = "INSERT INTO user (username, password) VALUES (?, ?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, password);

        // Execute SQL statement
        int rowsAffected = preparedStatement.executeUpdate();
        
        if(rowsAffected > 0) {
            out.println("Data successfully inserted into the database.");
        } else {
            out.println("Failed to insert data into the database.");
        }
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    } finally {
        // Close resources
        if(preparedStatement != null) {
            try { preparedStatement.close(); } catch (SQLException e) { /* Ignored */ }
        }
        if(connection != null) {
            try { connection.close(); } catch (SQLException e) { /* Ignored */ }
        }
    }
%>
