package Customers;

import java.util.Date;

public class Customerss {
    private String name;
    private String  dateOfBird;
    private String address;
    private String images;

    public Customerss(String name, String dateOfBird, String address, String images) {
        this.name = name;
        this.dateOfBird = dateOfBird;
        this.address = address;
        this.images = images;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String  getDateOfBird() {
        return dateOfBird;
    }

    public void setDateOfBird(String dateOfBird) {
        this.dateOfBird = dateOfBird;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }
}
