package Model;

import Controller.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteProductServlet",urlPatterns = "/delete")
public class DeleteProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductService productService = new ProductService();

        productService.delete(id);

        List<Product> list = productService.findAll();
        request.setAttribute("product",list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/products");
        dispatcher.forward(request,response);
    }
}
