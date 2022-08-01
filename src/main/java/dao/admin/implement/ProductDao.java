package dao.admin.implement;

import dao.admin.IProductDao;
import dbConnect.DBConnect;
import modelsAdmin.Categories;
import modelsAdmin.Categories_child;
import modelsAdmin.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    PreparedStatement ps2 = null;//category
    ResultSet rs2 = null; //category

    PreparedStatement psCategoryFormAdd = null;//
    ResultSet rsCategoryFormAdd = null; // for form add

    PreparedStatement psSubCatFormAdd = null;//
    ResultSet rsSubCatFormAdd = null; // for form add
    PreparedStatement ps_ca_pr = null;
    ResultSet rs_ca_pr = null;

    @Override
    public  List<Product> getListProduct() throws SQLException {
        List<Product> listProduct = new ArrayList<>();
        String sql = "select * from products";
        cnt = DBConnect.getConnect();

        try {
        ps = cnt.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()){
        Product p = new Product();
          p.setIdProduct(rs.getString("product_id"));
          p.setNameProduct(rs.getString("product_name"));

            Categories_child categories_child = new Categories_child();
            ps2 = cnt.prepareStatement(
                    "select s.subcategory_id, s.subcategory_name,c.category_id, c.category_name " +
                            "from subcategories s join categories c on s.category_id = c.category_id " +
                            "join products p on p.subcategory_id = s.subcategory_id " +
                            "where p.product_id = ?");
            ps2.setString(1, rs.getString("product_id"));
            rs2 = ps2.executeQuery();
            rs2.next();
            categories_child.setCategory_child_id(rs2.getString("subcategory_id"));
            categories_child.setCategory_child_name(rs2.getString("subcategory_name"));
            Categories categories = new Categories();
            categories.setCategory_id(rs2.getString("category_id"));
            categories.setCategory_name(rs2.getString("category_name"));
            categories_child.setCategory_parent(categories);

          p.setCategories_child(categories_child);
          p.setCost(Double.parseDouble(rs.getString("cost")));
          p.setPrice(Double.parseDouble(rs.getString("price")));
          p.setPriceDesc(Double.parseDouble(rs.getString("price_desc")));
          p.setDescription(" ");

          listProduct.add(p);
        }
    }
        catch (SQLException e){
        e.printStackTrace();
    }
        return listProduct;
    }

    @Override
    public List<Categories> getCategoriesList() throws SQLException {
        List<Categories> listCategories = new ArrayList<>();
        String sql = "select * from categories";
        cnt = DBConnect.getConnect();
        try {
            psCategoryFormAdd = cnt.prepareStatement(sql);
            rsCategoryFormAdd = psCategoryFormAdd.executeQuery();
            while (rsCategoryFormAdd.next()){
            Categories c = new Categories();
            c.setCategory_id(rsCategoryFormAdd.getString("category_id"));
            c.setCategory_name(rsCategoryFormAdd.getString("category_name"));
            listCategories.add(c);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return listCategories;
    }

    @Override
    public List<Categories_child> getSubcategoriesList() throws SQLException {
        List<Categories_child> categories_childList = new ArrayList<>();
        String sql = "select * from subcategories";
        cnt = DBConnect.getConnect();

        try {
            psSubCatFormAdd = cnt.prepareStatement(sql);
            rsSubCatFormAdd = psSubCatFormAdd.executeQuery();
            while (rsSubCatFormAdd.next()){
                Categories_child c_child = new Categories_child();
                c_child.setCategory_child_id(rsSubCatFormAdd.getString("subcategory_id"));
                c_child.setCategory_child_name(rsSubCatFormAdd.getString("subcategory_name"));
                    Categories c_parent = new Categories();
                    String sql_getCategory = "select * from categories where category_id = ?";
                    ps_ca_pr = cnt.prepareStatement(sql_getCategory);
                    ps_ca_pr.setString(1, rsSubCatFormAdd.getString("category_id"));
                    rs_ca_pr = ps_ca_pr.executeQuery();
                    rs_ca_pr.next();
                    c_parent.setCategory_id(rs_ca_pr.getString(1));
                    c_parent.setCategory_name(rs_ca_pr.getString(2));
                c_child.setCategory_parent(c_parent);
                categories_childList.add(c_child);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return categories_childList;
    }

    @Override
    public void addProductNew(String idProduct, String nameProduct, Categories_child categories_child, double cost, double price, double priceDesc, String description) {
        PreparedStatement ps = null;
        try {
            Connection sql = DBConnect.getConnect();
            String query =  "insert into products value (?,?,?,?,?,?,?)";
            ps = sql.prepareStatement(query);
            ps.setString(1, idProduct);
            ps.setString(2, nameProduct);
            ps.setString(3, categories_child.getCategory_child_id());
            ps.setDouble(4, cost);
            ps.setDouble(5, price);
            ps.setDouble(6, priceDesc);
            ps.setString(7, description);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProduct(String idProduct) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from products where product_id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, idProduct);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws SQLException {
        ProductDao pd = new ProductDao();
        List<Categories_child> list = pd.getSubcategoriesList();
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).getCategory_child_id()+" - "+ list.get(i).getCategory_child_name()
//            +"---"+list.get(i).getCategory_parent().getCategory_name());
//        }
        pd.addProductNew("123","3213", list.get(1), 2312, 21312, 31231, "3213");
    }
}
