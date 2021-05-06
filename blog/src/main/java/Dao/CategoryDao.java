package Dao;

import Dao.Interface.IDao;
import Model.Category;
import Model.Post;
import Service.IBaseService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements IDao<Category> {
    public static final String url = "jdbc:mysql://127.0.0.1:3306/blogdemo";
    public static final String user = "root";
    public static final String password = "thanhcongnhe9999";
    public static final String SELECT_CATEGORY = "SELECT * FROM category";
    public final String INSERT_CATEGORY = "INSERT INTO category(nameCategory) VALUE (?)";
    public final String DELET_POST = "DELETE from post where idCategory = ?";
    public final String DELETE_CATEGORY = "delete from category where id = ?";

    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Category> selectAll() throws SQLException {
        List<Category> list = new ArrayList<>();

        try
                (
                        Connection connection = getConnection();
                        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY);
                        ResultSet resultSet = preparedStatement.executeQuery();
                        )
        {
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String nameCategory = resultSet.getString("nameCategory");

                Category category = new Category(id,nameCategory);
                list.add(category);
            }
        }
        return list;
    }

    @Override
    public void insert(Category object) {

    }

    @Override
    public void update(Category object) {

    }

    @Override
    public void delete(int id) throws SQLException {
            Connection connection = getConnection();
        try

        {

            connection.setAutoCommit(false);
            PreparedStatement statement = connection.prepareStatement(DELET_POST);
            statement.setInt(1, id);

            statement.executeUpdate();

            statement = connection.prepareStatement(DELETE_CATEGORY);
            statement.setInt(1,id);

            statement.executeUpdate();
            connection.commit();
            connection.setAutoCommit(true);
            connection.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            connection.rollback();
            connection.close();

        }
    }


    @Override
    public Category findById(int id) {
        return null;
    }
}
