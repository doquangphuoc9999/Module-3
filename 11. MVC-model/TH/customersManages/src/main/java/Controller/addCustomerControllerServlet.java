package Controller;

import model.Customer;
import serviec.CustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addCustomerControllerServlet", urlPatterns = "/addCustomer")
public class addCustomerControllerServlet extends HttpServlet {
    CustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customer = new Customer(0,fullname,email,address);
        customerService.save(customer);
        Customer cus = new Customer();
        request.setAttribute("customer", cus);
        request.setAttribute("message","Ban vua them moi thanh cong!!!");

        RequestDispatcher dispatcher = request.getRequestDispatcher("add-customer.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("add-customer.jsp");
            Customer cus = new Customer();
            request.setAttribute("customer", cus);
            requestDispatcher.forward(request,response);
        } catch (Exception e) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Erro.jsp");
            requestDispatcher.forward(request,response);
        }
    }
}
