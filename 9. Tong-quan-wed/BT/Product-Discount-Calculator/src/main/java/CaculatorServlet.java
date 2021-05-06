import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Caculator-Servlet", urlPatterns = "/discount")
public class CaculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("Description");
        float price = Float.parseFloat(request.getParameter("Price"));
        float discount = Float.parseFloat(request.getParameter("Discount"));

        float result = (float) (price * discount * 0.01);

        PrintWriter writer = response.getWriter();
        writer.println("<html><head><style>h1{color: deeppink;}</style></head><body>");

        writer.println("<h1> " + description);
        writer.println("<h1> "+ "Price" + price + " Discount " + discount);
        writer.println("<h1> " + result);
        writer.println("</body></html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
