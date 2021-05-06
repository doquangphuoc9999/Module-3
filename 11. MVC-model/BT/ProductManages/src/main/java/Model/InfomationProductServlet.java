package Model;

import Controller.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InfomationProductServlet",urlPatterns = "/infomationProduct")
public class InfomationProductServlet extends HttpServlet {
    ProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        RequestDispatcher dispatcher = request.getRequestDispatcher("/infomation.jsp");
        Product product = productService.findById(id);
        request.setAttribute("product",product);
        dispatcher.forward(request,response);
    }
}
