package dao.admin;

import java.sql.SQLException;
import java.util.List;

import modelsAdmin.Color;

public interface IColorDao {
    List<Color> getColorList() throws SQLException;
    public boolean deleteColor(String id);
    public void addColor(String id, String name);
}

