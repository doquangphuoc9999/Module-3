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
import java.util.List;

@WebServlet(name = "ListCustomerControllerServlet", urlPatterns = "/customers")
public class ListCustomerControllerServlet extends HttpServlet {
    CustomerService customerService = new CustomerService();

    public ListCustomerControllerServlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("list-customer.jsp");
        List<Customer> list = customerService.findAll();
        request.setAttribute("customer",list);
        dispatcher.forward(request,response);
    }
}
