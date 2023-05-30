package co.edu.sena.proyect2687365.model.repository;

import co.edu.sena.proyect2687365.model.Category;
import co.edu.sena.proyect2687365.util.connection_test.ConnectionPool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements Repository<Category> {

    private String sql=null;
    @Override
    public List<Category> listAllObj() throws SQLException{
        sql = "select c.category_id, c.category_name"+
                " from category c order by c.category_id, c.category_name ";
        List<Category> category=new ArrayList<>();
        try (Connection conn = ConnectionPool.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)){
            while (rs.next()){
                Category c =createObj(rs);
                category.add(c);
            }
        }
        return category;
    }

    @Override
    public Category byIdObj(Integer id) throws SQLException {
        sql = " select c.category_id, c.category_name" +
                " from category c where c.category_id = ? ";
        Category category = null;
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    category = createObj(rs);
                }
            }
            return category;
        }
    }

    @Override
    public Integer saveObj(Category category) throws SQLException {
        int rowsAffected = 0;
        if (category.getCategory_id() != null && category.getCategory_id() >0){
            sql = "update category set category_name =?" +
                    "where category_id = ?";
        }else{
            sql = "insert into category (category_name)"+
                    "values(upper(?))";
        }
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1, category.getCategory_name());
            if (category.getCategory_id() !=null && category.getCategory_id()>0){
                ps.setInt(2, category.getCategory_id());
            }
            rowsAffected = ps.executeUpdate();
        }
        return rowsAffected;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {
        sql = "delete  from category where category_id =?";
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1, id);
            ps.executeUpdate();
        }

    }

    @Override
    public Category createObj(ResultSet rs) throws SQLException {
        Category category= new Category();
        category.setCategory_id(rs.getInt("Category_id"));
        category.setCategory_name(rs.getString("Category_name"));
        return category;
    }
}
