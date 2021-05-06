package Dao;

import Dao.Interface.IDao;
import Model.Category;
import Model.Post;
import Service.IBaseService;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class PostDao implements IDao<Post> {
    public final String url = "jdbc:mysql://127.0.0.1:3306/blogdemo";
    public final String user = "root";
    public final String password = "thanhcongnhe9999";
    public final String SELECT_POST = "SELECT post.id as idPost, title,fullContent, shortContent, publisht, image, category.id as id ,nameCategory FROM post LEFT JOIN category ON post.idCategory = category.id";
    public final String INSERT_POST = "INSERT INTO post (title, fullContent, shortContent, image, idCategory) VALUE  (?,?,?,?,?)";
    public final String FIND_BY_ID = "SELECT post.id as idPost, title,fullContent, shortContent, publisht, image, category.id as id, nameCategory FROM post LEFT JOIN category ON post.idCategory = category.id WHERE post.id = ?";
    public final String EDIT_POST = "UPDATE post SET title = ?, fullContent = ?, shortContent = ?, image = ? WHERE post.id = ?";
    public final String DELETE_POST = "DELETE FROM post WHERE post.id = ?";
    public final String CALL_INSERT = "call blogdemo.sp_AddPost(?, ?, ?, ?, ?)";

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
    public List<Post> selectAll() throws SQLException {
        List<Post> list = new ArrayList<>();
        try
        (
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(SELECT_POST);
            ResultSet set = statement.executeQuery();
        )
        {
            while (set.next()){
                int id = set.getInt("idPost");
                String title = set.getString("title");
                String fullContent = set.getString("fullContent");
                String shortContent = set.getString("shortContent");
                String publisht = set.getString("publisht");
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime dateTime = LocalDateTime.parse(publisht, formatter);
                String image = set.getString("image");
                int idCategory = set.getInt("id");
                String nameCategory = set.getString("nameCategory");
                Category category = new Category(idCategory,nameCategory);

                Post post = new Post(id,title,fullContent,shortContent,dateTime,image,category);

                list.add(post);
            }
        }
        return list;
    }

    @Override
    public void insert(Post object) {
//        try
//        (
//            Connection connection = getConnection();
//            PreparedStatement statement = connection.prepareStatement(INSERT_POST);
//        )
//        {
//            statement.setString(1,object.getTitle());
//            statement.setString(2,object.getFullContent());
//            statement.setString(3,object.getShortContent());
//            statement.setString(4,object.getImage());
//            statement.setInt(5,object.getCategory().getId());
//            statement.executeUpdate();
//
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }

        try
                (
                        Connection connection = getConnection();
                        CallableStatement statement = connection.prepareCall(CALL_INSERT);

                )

        {

            statement.setString(1,object.getTitle());
            statement.setString(2, object.getFullContent());
            statement.setString(3,object.getShortContent());
            statement.setString(4,object.getImage());
            statement.setInt(5,object.getCategory().getId());

            statement.executeUpdate();


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void update(Post object) {
        try
        (
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(EDIT_POST);

        )
        {
            statement.setString(1,object.getTitle());
            statement.setString(2,object.getFullContent());
            statement.setString(3,object.getShortContent());
            statement.setString(4,object.getImage());
            statement.setInt(5,object.getIdPost());

            statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        try
                (
                        Connection connection = getConnection();
                        PreparedStatement statement = connection.prepareStatement(DELETE_POST);
                )
        {
            statement.setInt(1,id);
            int affected = statement.executeUpdate();
            System.out.println("affect: " + affected    );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    @Override
    public Post findById(int id) {
        Post post = null;
        try
        (
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(FIND_BY_ID);
        )
        {
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int idPost = resultSet.getInt("idPost");
                String title = resultSet.getString("title");
                String fullContent = resultSet.getString("fullContent");
                String shortContent = resultSet.getString("shortContent");
                String publisht = resultSet.getString("publisht");
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime dateTime = LocalDateTime.parse(publisht, formatter);
                String image = resultSet.getString("image");
                int idCategory = resultSet.getInt("id");
                Category category = new Category(idCategory);

                post = new Post(idPost,title,fullContent,shortContent,dateTime,image,category);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return post;
    }
}
