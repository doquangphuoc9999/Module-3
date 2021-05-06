package Model;

import Controller.ProductService;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FindByNameServlet", urlPatterns = "/findByName")
public class FindByNameServlet extends HttpServlet {
    ProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("findName");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/findName.jsp");
        Product product = productService.findByName(name);
        request.setAttribute("product",product);
        dispatcher.forward(request,response);

    }
}
