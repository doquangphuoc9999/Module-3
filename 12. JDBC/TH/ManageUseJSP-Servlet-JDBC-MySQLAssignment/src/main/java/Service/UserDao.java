package Service;

import Model.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements  IUserDao{
    private static final String url = "jdbc:mysql://127.0.0.1:3306/demo";
    private static final String user = "root";
    private static final String password = "thanhcongnhe9999";
    private static final String selectSql = "SELECT * FROM users";
    private static final String addSql = "INSERT INTO users(nameUser, email, contry) VALUE (?,?,?)";
    private static final String findSql = "SELECT * FROM users WHERE id = ?";
    private static final String editSql = "UPDATE users SET nameUser = ?, email = ?, contry = ? WHERE id = ?";
    private static final String deleteSQl = "DELETE FROM users WHERE id = ?";


    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<Users> selectAllUser() throws SQLException {
        List<Users> usersList = new ArrayList<>();

        try(
                Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(selectSql);
                ResultSet resultSet = preparedStatement.executeQuery();
                ) {
            while (resultSet.next()){
                Users users = new Users();
                users.setId(resultSet.getInt("id"));
                users.setNameUser(resultSet.getString("nameUser"));
                users.setEmail(resultSet.getString("email"));
                users.setCountry(resultSet.getString("contry"));

                usersList.add(users);
            }
            return usersList;
        }
    }

    @Override
    public void createUser(Users object) throws SQLException {
        try(
                Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(addSql);
                ) {
            preparedStatement.setString(1,object.getNameUser());
            preparedStatement.setString(2,object.getEmail());
            preparedStatement.setString(3,object.getCountry());
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public Users findId(int id) {
        Users users =null;
        try (
                Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(findSql);
                )

        {
           preparedStatement.setInt(1,id);
           ResultSet resultSet = preparedStatement.executeQuery();
           while (resultSet.next()){
               String name = resultSet.getString("nameUser");
               String email = resultSet.getString("email");
               String address = resultSet.getString("contry");
               users = new Users(id,name,email,address);

           }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public boolean editUser(Users object) throws SQLException {
        boolean rowUpdate;
        try (
                Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(editSql);
                ){
            preparedStatement.setString(1,object.getNameUser());
            preparedStatement.setString(2,object.getEmail());
            preparedStatement.setString(3,object.getCountry());
            preparedStatement.setInt(4,object.getId());
          rowUpdate = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdate;
    }

    @Override
    public boolean deleteUser(Users object) throws SQLException {
        try(
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(deleteSQl);
                ) {
            statement.setInt(1, object.getId());
            int affect = statement.executeUpdate();
            return affect != 0;
        } catch (Exception e) {
            return false;
        }
    }
}
