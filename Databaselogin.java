import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Databaselogin")
public class Databaselogin extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        @SuppressWarnings("unused")
		boolean isValidUser = false;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp","root","shalini");
        	PreparedStatement ps=connection.prepareStatement("insert into user where username=? and password=?");
        	
        	
            ps.setString(1, username);
            ps.setString(2,password);
            response.sendRedirect("success.jsp");
            

            // Close resources
            
        } catch (Exception e) {
            // Handle errors
            e.printStackTrace();
        
            // Redirect back to the login page with an error message if login fails
            //response.sendRedirect("failure.jsp?error=true");
        }
	}
}