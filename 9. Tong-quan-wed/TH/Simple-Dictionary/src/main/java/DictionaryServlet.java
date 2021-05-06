import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Dictionary-Servlet", urlPatterns = "/translate")
public class DictionaryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,String> dictionary = new HashMap<>();
        dictionary.put("Hello", "Xin chào");
        dictionary.put("How", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "máy tính");

        String search = request.getParameter("txtSearch");
        PrintWriter writer = response.getWriter();

        writer.println("<html>");

        String result = dictionary.get(search);
        if (result != null){
            writer.println("Word " + search);
            writer.println("Result " + result);
        }
        else {
            writer.println("Not Found");
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String,String> dictionary = new HashMap<>();
//        dictionary.put("Hello", "Xin chào");
//        dictionary.put("How", "Thế nào");
//        dictionary.put("book", "Quyển vở");
//        dictionary.put("computer", "máy tính");
//
//        String search = request.getParameter("txtSearch");
//        PrintWriter writer = response.getWriter();
//
//        writer.println("<html>");
//
//        String result = dictionary.get(search);
//        if (result != null){
//            writer.println("Word " + search);
//            writer.println("Result " + result);
//        }
//        else {
//            writer.println("Not Found");
//        }
//        writer.println("</html>");
    }
}
