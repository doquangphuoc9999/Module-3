package Controller;

import Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductControllerServlet", urlPatterns = "/products")
public class ListProductControllerServlet extends HttpServlet {
    ProductService productService = new ProductService();

    public ListProductControllerServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("List-product.jsp");
        List<Product> products =productService.findAll();
        request.setAttribute("product", products);
        dispatcher.forward(request,response);
    }
}
