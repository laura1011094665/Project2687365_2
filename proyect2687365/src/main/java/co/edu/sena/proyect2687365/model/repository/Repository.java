package co.edu.sena.proyect2687365.model.repository;

import co.edu.sena.proyect2687365.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Repository<T> {
    List<T> listAllObj() throws SQLException;

    T byIdObj(Integer id) throws SQLException;
    Integer saveObj(T t) throws SQLException;
    void deleteObj(Integer id) throws SQLException;
    T createObj(ResultSet rs) throws SQLException;

}
