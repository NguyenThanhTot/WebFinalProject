package dao.client;

import models.News;

import java.sql.SQLException;
import java.util.List;

public interface INewsDao {
    List<News> getListNews() throws SQLException;
}
