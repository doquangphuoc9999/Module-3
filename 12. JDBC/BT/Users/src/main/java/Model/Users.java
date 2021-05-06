package Model;

public class Users {
    private int id;
    private String nameUser;
    private int ageUser;
    private String gmail;
    private Country countryId;

    public Users() {
    }

    public Users(int id, String nameUser, int ageUser, String gmail, Country countryId) {
        this.id = id;
        this.nameUser = nameUser;
        this.ageUser = ageUser;
        this.gmail = gmail;
        this.countryId = countryId;
    }

    public Users(String nameUser, int ageUser, String gmail, Country countryId) {
        this.nameUser = nameUser;
        this.ageUser = ageUser;
        this.gmail = gmail;
        this.countryId = countryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public int getAgeUser() {
        return ageUser;
    }

    public void setAgeUser(int ageUser) {
        this.ageUser = ageUser;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public Country getCountryId() {
        return countryId;
    }

    public void setCountryId(Country countryId) {
        this.countryId = countryId;
    }
}
