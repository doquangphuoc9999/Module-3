import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Calculator-Servlet", urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("firtOperand"));
        char operand = request.getParameter("operand").charAt(0);
        float second = Float.parseFloat(request.getParameter("second-operand"));

        PrintWriter writer = response.getWriter();

        try {
            writer.println(Calculator.calculator(firstOperand,operand,second));
        } catch (Exception e) {
            writer.println("Không biết chia à");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
