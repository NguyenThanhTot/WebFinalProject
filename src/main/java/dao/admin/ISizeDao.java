package dao.admin;

import modelsAdmin.Size;

import java.sql.SQLException;
import java.util.List;

public interface ISizeDao {
    List<Size> getSizeList() throws SQLException;
    public boolean deleteSize(String id);
    public void addSize(String size_id, String size_name);
}
