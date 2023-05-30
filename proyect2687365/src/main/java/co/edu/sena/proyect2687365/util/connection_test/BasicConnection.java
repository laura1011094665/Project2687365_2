package co.edu.sena.proyect2687365.util.connection_test;

import java.sql.*;

public class BasicConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/myapp?serverTimezone=America/Bogota";
        String userName = "root";
        String password = "";

        String sql = null;
        Connection conn = null;
        Statement stm = null;
        ResultSet rs = null;

        try {
            sql = "SELECT * FROM myapp.users_tbl";
            conn = DriverManager.getConnection(url,userName,password);
            stm = conn.createStatement();
            rs = stm.executeQuery(sql);

            while (rs.next()){
                System.out.println("Nombre: " + rs.getString("user_firstname"));

                System.out.println("Apellido: " + rs.getString("user_lastname"));

                System.out.println("");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try{
                rs.close();
                stm.close();
                conn.close();
            }catch (SQLException e){
                throw new RuntimeException(e);
            }
        }
    }
}

