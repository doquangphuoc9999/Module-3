package Model;

public class Country {
    private int id;
    private String nameCountry;

    public Country() {
    }

    public Country(int id) {
        this.id = id;
    }

    public Country(int id, String nameCountry) {
        this.id = id;
        this.nameCountry = nameCountry;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCountry() {
        return nameCountry;
    }

    public void setNameCountry(String nameCountry) {
        this.nameCountry = nameCountry;
    }
}
