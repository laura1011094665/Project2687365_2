package co.edu.sena.proyect2687365.model;

public class Category {
    private Integer Category_id;
    private String Category_name;

    public Category() {

    }

    public Category(String Category_name) {
        this.Category_name = Category_name;
    }

    public Integer getCategory_id() {
        return Category_id;
    }

    public void setCategory_id(Integer category_id) {
        Category_id = category_id;
    }

    public String getCategory_name() {
        return Category_name;
    }

    public void setCategory_name(String category_name) {
        Category_name = category_name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "Category_id='" + Category_id+'\''+
                ", Category_name='" + Category_name + '\'' +
                '}';

    }
}