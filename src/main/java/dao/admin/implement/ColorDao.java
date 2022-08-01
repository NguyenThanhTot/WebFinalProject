package dao.admin.implement;

import dao.admin.IColorDao;
import dbConnect.DBConnect;
import modelsAdmin.Color;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ColorDao implements IColorDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Color> getColorList() throws SQLException{
        List<Color> colorList = new ArrayList<>();
        String sql = "select * from colors";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Color color = new Color();
                color.setColor_id(rs.getString("color_id"));
                color.setColor_name(rs.getString("color_name"));

                colorList.add(color);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return colorList;
    }

    @Override
    public boolean deleteColor(String id) {
        PreparedStatement ps = null;
        try {
            Connection conn = DBConnect.getConnect();
            String sql = "delete from colors where color_id = ?";
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
    public void addColor(String id, String name) {
        PreparedStatement ps = null;
        try {
            Connection sql = DBConnect.getConnect();
            String query =  "insert into colors value (?,?)";
            ps = sql.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    public static void main(String[] args) throws SQLException {
        ColorDao usd = new ColorDao();
//        usd.deleteColor("#008000")
        usd.addColor("123","123");

        List<Color> list = usd.getColorList();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getColor_id()+"");
        }
    }
}
