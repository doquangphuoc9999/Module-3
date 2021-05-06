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

@WebServlet(name = "addProductServlet", urlPatterns = "/addProduct")
public class addProductServlet extends HttpServlet {
    ProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        float productPrice = Float.parseFloat(request.getParameter("productPrice"));
        String productDescription = request.getParameter("description");
        String producer = request.getParameter("producer");

        Product product = new Product(0,productName,productPrice,productDescription,producer);
        request.setAttribute("message","Add product is success!!!");
        productService.save(product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
            Product product = new Product();
            request.setAttribute("product",product);

            dispatcher.forward(request,response);
        } catch (Exception e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request,response);
        }
    }
}
