package co.edu.sena.proyect2687365.util.connection_test;
import java.sql.*;
public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/myapp?serverTimezone=America/Bogota";
    private static String user = "root";
    private static String pass = "";

    private static Connection conn;

    public static  Connection getInstace() throws SQLException{
        if (conn == null){
            conn = DriverManager.getConnection(url,user,pass);
        }
        return conn;
    }
}
