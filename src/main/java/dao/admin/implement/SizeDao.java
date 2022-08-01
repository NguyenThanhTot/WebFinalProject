package dao.admin.implement;

import dao.admin.ISizeDao;
import dbConnect.DBConnect;
import modelsAdmin.Size;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SizeDao implements ISizeDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public List<Size> getSizeList() throws SQLException {
        List<Size> sizeList = new ArrayList<>();
        String sql = "select * from size";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Size size = new Size();
                size.setSize_id(rs.getString("size_id"));
                size.setSize_name(rs.getString("size_name"));

                sizeList.add(size);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return sizeList;
    }

    @Override
    public boolean deleteSize(String id) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from size where size_id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            int i = ps.executeUpdate();

            return i == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void addSize(String size_id, String size_name) {
        PreparedStatement ps = null;
        try {
            Connection sql = DBConnect.getConnect();
            String query =  "insert into size value (?,?)";
            ps = sql.prepareStatement(query);
            ps.setString(1, size_id);
            ps.setString(2, size_name);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
