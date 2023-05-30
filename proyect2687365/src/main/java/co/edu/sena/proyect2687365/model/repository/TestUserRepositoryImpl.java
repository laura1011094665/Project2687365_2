package co.edu.sena.proyect2687365.model.repository;

import co.edu.sena.proyect2687365.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository <User> repository = new UserRepositoryImpl();
        System.out.println("========== saveObj Insert ========== ");
        User userInsert = new User();
        userInsert.setUser_firstname("carlos");
        userInsert.setUser_lastname("rojas");
        userInsert.setUser_email("carlos@LoQueSea.com");
        userInsert.setUser_password("asdfg12345");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("pEpE");
        userInsert.setUser_lastname("perez");
        userInsert.setUser_email("PEPE@correo.com");
        repository.saveObj(userInsert);


        System.out.println("========== listAllObj ========== ");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("==========  byIdObj ========== ");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("========== saveObj Insert ========== ");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("jorge");
        userUpdate.setUser_lastname("palacios");
        userUpdate.setUser_email("jorge@example.com");
        userUpdate.setUser_password("12345asdfg");
        repository.saveObj(userUpdate);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();


        System.out.println("==========  deleteObj ========== ");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    }
}
