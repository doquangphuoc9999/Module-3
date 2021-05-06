package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConService {
    public static final String url = "jdbc:mysql://127.0.0.1:3306/iNotes";
    public static final String user = "root";
    public static final String password = "thanhcongnhe9999";


    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
