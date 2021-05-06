package Service;

import Model.Country;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CountryDao implements ICountry{

    public static final String url = "jdbc:mysql://127.0.0.1:3306/countryUser";
    public static final String user = "root";
    public static final String password = "thanhcongnhe9999";
    public static final String SELECT_ALL = "SELECT * FROM country";
    public static final String CREATE_COUNTRY = "insert into country(nameCountry) values (?)";
    public static final String FIND_NAME = "SELECT * FROM country WHERE nameCountry = ?";

    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    @Override
    public List<Country> showAllCountry() throws SQLException {
        List<Country> countryList = new ArrayList<>();
        try (
             Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL);
                )
        {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
               int id = resultSet.getInt("id");
               String name = resultSet.getString("nameCountry");
               Country country = new Country(id,name);
               countryList.add(country);
            }

        }
        return countryList;
    }

    @Override
    public void createCountry(Country object) {
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement statement = connection.prepareStatement(CREATE_COUNTRY);
                        )
        {
            statement.setString(1,object.getNameCountry());
            statement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Country findByName(String name) {
        Country country = null;
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement statement = connection.prepareStatement(FIND_NAME)

                )
        {
            statement.setString(1,name);
            ResultSet set = statement.executeQuery();

            while (set.next()){
                int id = set.getInt("id");
                String nameCountry = set.getString("nameCountry");

                country = new Country(id,nameCountry);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return country;
    }
}
