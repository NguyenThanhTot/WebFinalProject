package dao.admin;

import modelsAdmin.Categories;
import modelsAdmin.Categories_child;
import modelsAdmin.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDao {
    List<Product> getListProduct() throws SQLException;
    List<Categories> getCategoriesList() throws SQLException;
    List<Categories_child> getSubcategoriesList() throws SQLException;
    void addProductNew(String idProduct, String nameProduct, Categories_child categories_child, double cost, double price, double priceDesc, String description);
    void deleteProduct(String idProduct);
}
