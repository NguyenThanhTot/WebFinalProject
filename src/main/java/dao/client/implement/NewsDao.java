package dao.client.implement;

import dao.client.INewsDao;
import dbConnect.DBConnect;
import models.News;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDao implements INewsDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<News> getListNews() throws SQLException {
        List<News> newsList = new ArrayList<>();
        String sql = "select * from news";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News();
                news.setNewsId(rs.getString("news_id"));
                news.setTitle(rs.getString("title"));
                news.setDateUpdate(rs.getString("date_upload"));
                news.setDescription(rs.getString("content"));

                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }

    public static void main(String[] args) throws SQLException {
        NewsDao usd = new NewsDao();
        List<News> list = usd.getListNews();
        for(int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getNewsId() + "");
        }
    }
}
