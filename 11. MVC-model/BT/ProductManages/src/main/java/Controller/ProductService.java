package Controller;

import Model.Product;
import Service.BassService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements BassService<Product> {
    public static Map<Integer, Product> productMap;
    public static int count = 5;

    static {
        productMap = new HashMap<>();
        productMap.put(1,new Product(1,"Cocacola",1000,"beverage","Phuoc"));
        productMap.put(2,new Product(2,"Pepsi",10000,"beverage","Phuoc"));
        productMap.put(3,new Product(3,"7Up",10000,"beverage","Phuoc"));
        productMap.put(4,new Product(4,"Number one",8000,"beverage","Phuoc"));
        productMap.put(5,new Product(5,"Twister",8000,"beverage","Phuoc"));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product object) {
        ++count;
        object.setId(count);
        productMap.put(object.getId(),object);
    }

    @Override
    public void update(Product object) {
        productMap.put(object.getId(),object);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void delete(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> list = new ArrayList<>(productMap.values());
        for (Product product : list){
            if (product.getProductName().equals(name)){
                return product;
            }
        }
        return null;
    }
}
