package serviec;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditCustomerServlet", urlPatterns = "/eidtcustomer")
public class EditCustomerServlet extends HttpServlet {
    CustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customer = new Customer(0,fullName,email,address);
        customerService.update(customer);
        request.setAttribute("Message", "Cap nhat thanh cong");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("EditCustomer.jsp");
        requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            int id =Integer.parseInt(request.getParameter("id"));
            Customer customer=customerService.findById(id);
            RequestDispatcher dispatcher;
            if (customer == null){
                dispatcher= request.getRequestDispatcher("Error.jsp");
            }
            else {
                request.setAttribute("customer", customer);
                request.setAttribute("Message", "Ban vua cap nhat thanh cong");
                dispatcher= request.getRequestDispatcher("EditCustomer.jsp");
            }
            dispatcher.forward(request,response);
        } catch (Exception e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Erro.jsp");
            dispatcher.forward(request,response);
        }
    }
}
