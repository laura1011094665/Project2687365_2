package co.edu.sena.proyect2687365.model;

public class Product {
    private static Integer product_id;
    private String product_name;

    private  float product_value;

    private Integer Category_id;

    public Product(){

    }

    public Product( String product_name, float product_value, Integer Category_id) {
        this.product_name = product_name;
        this.product_value=product_value;
        this.Category_id=Category_id;
    }

    public static Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public float getProduct_value() {
        return product_value;
    }

    public void setProduct_value(float product_value) {
        this.product_value = product_value;
    }

    public Integer getCategory_id() {
        return Category_id;
    }

    public void setCategory_id(Integer category_id) {
        Category_id = category_id;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_value='" + product_value + '\'' +
                ", Category_id='" + Category_id + '\''+
                '}';
    }
}
