package Model;

import Controller.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProductServlet", urlPatterns = "/editProduct")
public class EditProductServlet extends HttpServlet {
    ProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameProducts = request.getParameter("productName");
        float productPrices = Float.parseFloat(request.getParameter("productPrice"));
        String productDescriptions = request.getParameter("description");
        String producers = request.getParameter("producer");
        RequestDispatcher dispatcher;

        int id = Integer.parseInt(request.getParameter("id"));
        Product productFindId = this.productService.findById(id);

        if (productFindId != null){
            productFindId.setProductName(nameProducts);
            productFindId.setProductPrice(productPrices);
            productFindId.setProductDescription(productDescriptions);
            productFindId.setProducer(producers);

            productService.update(productFindId);
            request.setAttribute("message","update is success");
            request.setAttribute("product",productFindId);
            dispatcher = request.getRequestDispatcher("editProduct.jsp");

        }
        else {
            dispatcher = request.getRequestDispatcher("error.jsp");
        }
        dispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Product product = this.productService.findById(id);
            RequestDispatcher dispatcher;

            if (product != null){
                request.setAttribute("product", product);
                dispatcher = request.getRequestDispatcher("editProduct.jsp");
            }
            else {
                dispatcher = request.getRequestDispatcher("error.jsp");
            }
            dispatcher.forward(request,response);
        } catch (Exception e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request,response);
        }
    }
}
