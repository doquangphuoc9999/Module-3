package serviec;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements BaseServiec<Customer>{
    public static Map<Integer,Customer> customerMap;
    public static int count = 4;

    static {
        customerMap = new HashMap<>();
        customerMap.put(1,new Customer(1,"phuoc","phuoc@gmail.com","Hue"));
        customerMap.put(2,new Customer(2,"hai","hai@gmail.com","Hue"));
        customerMap.put(3,new Customer(3,"thang","thang@gmail.com","Hue"));
        customerMap.put(4,new Customer(4,"thinh","thinh@gmail.com","Hue"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }

    @Override
    public void save(Customer object) {
        ++count;
        object.setId(count);
        customerMap.put(object.getId(),object);
    }

    @Override
    public void update(Customer object) {
        customerMap.put(object.getId(),object);
    }

    @Override
    public Customer findById(int id) {
        return customerMap.get(id);
    }

    @Override
    public void delete(int id) {
        customerMap.remove(id);
    }
}
