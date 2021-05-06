package Service;

import Model.Country;
import Model.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements IUserDao {

    public static final String url = "jdbc:mysql://127.0.0.1:3306/countryUser";
    public static final String user = "root";
    public static final String password = "thanhcongnhe9999";
    public static final String selectAllUser = "SELECT users.*, country.nameCountry  as country FROM users Left JOIN country ON users.country_id = country.id";
    public static final String ADD_USER = "insert into users(nameUser,ageUser,email,country_id) values (?,?,?,?)";
    public static final String FIND_ID = "SELECT * FROM users WHERE id = ?";
    public static final String EDIT_USER = "UPDATE users SET nameUser =?, ageUser = ?,email = ?, country_id = ? WHERE id = ?";
    public static final String DELETE_USER = "DELETE FROM users WHERE id = ?";
    public static final String FIND_NAME_COUNTRY = "SELECT * FROM users inner join country on users.country_id = country.id where nameCountry like ?";

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Users> SelectAllListUser() throws SQLException {
        List<Users> usersList = new ArrayList<>();
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement statement = connection.prepareStatement(selectAllUser);
                ) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("nameUser");
                int age = resultSet.getInt("ageUser");
                String gmail = resultSet.getString("email");
                int idCountry = resultSet.getInt("country_id");
                String countryName = resultSet.getString("country");
                Country country = new Country(idCountry, countryName);
                usersList.add(new Users(id, name, age, gmail, country));
            }
            return usersList;
        }
    }

    @Override
    public void createUsers(Users object) {
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement statement = connection.prepareStatement(ADD_USER);
                ) {
            statement.setString(1, object.getNameUser());
            statement.setInt(2, object.getAgeUser());
            statement.setString(3, object.getGmail());
            statement.setInt(4, object.getCountryId().getId());

            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean editUsers(Users object) throws SQLException {
        boolean update;
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(EDIT_USER);
        ) {
            statement.setString(1, object.getNameUser());
            statement.setInt(2, object.getAgeUser());
            statement.setString(3, object.getGmail());
            statement.setInt(4, object.getCountryId().getId());
            statement.setInt(5, object.getId());

            update = statement.executeUpdate() > 0;
        }
        return update;
    }

    @Override
    public boolean deleteUser(Users object) {
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(DELETE_USER)
        ) {
            statement.setInt(1, object.getId());

            int delete = statement.executeUpdate();
            return delete != 0;
        } catch (SQLException throwables) {
            return false;
        }
    }

    @Override
    public Users findById(int id) {
        Users users = null;
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(FIND_ID);
        ) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("nameUser");
                int age = resultSet.getInt("ageUser");
                String email = resultSet.getString("email");
                int countryId = resultSet.getInt("country_id");

                Country country = new Country(countryId);
                users = new Users(id, name, age, email, country);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public List<Users> findByName(String name) throws SQLException {
        List<Users> usersList = new ArrayList<>();
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement preparedStatement = connection.prepareStatement(FIND_NAME_COUNTRY);
                ) {
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Users users = null;
                int id = resultSet.getInt("id");
                String nameUsers = resultSet.getString("nameUser");
                int age = resultSet.getInt("ageUser");
                String gmail = resultSet.getString("email");
                int country = resultSet.getInt("country_id");
                String nameCountry = resultSet.getString("nameCountry");
                Country country1 = new Country(country,nameCountry);
                users = new Users(id, nameUsers, age, gmail, country1);

                usersList.add(users);

            }


        }
        return usersList;
    }
}
