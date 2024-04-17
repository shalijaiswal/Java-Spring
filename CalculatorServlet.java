

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class CalculatorServlet
 */
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculatorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Retrieve parameters from the form
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        
        // Check which button was clicked
        if (request.getParameter("add") != null) {
            // Perform addition
            int result = num1 + num2;
            PrintWriter out=response.getWriter();
            out.println("Result of Addition: " + result);
        } else if (request.getParameter("subtract") != null) {
            // Perform subtraction
            int result = num1 - num2;
            response.getWriter().println("Result of Subtraction: " + result);
        }
        else if(request.getParameter("Multiply")!=null) {
        	int result = num1*num2;
        	response.getWriter().println("Result of multiplication:"+result);
        	
	}
        else
        	{
        	int result = num1/num2;
        	response.getWriter().println("result of division" +result);
        	}
        }
}

        	


