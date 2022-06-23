package models;
import java.util.Date;

public class News {
    private String NewsId;
    private String Image;
    private String Title;
    private String DateUpdate;
    private String Description;


    public News(String newsId, String image, String title, String dateUpdate, String description) {
        NewsId = newsId;
        Image = image;
        Title = title;
        DateUpdate = dateUpdate;
        Description = description;
    }

    public String getNewsId() {
        return NewsId;
    }

    public void setNewsId(String newsId) {
        NewsId = newsId;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getDateUpdate() {
        return DateUpdate;
    }

    public void setDateUpdate(String dateUpdate) {
        DateUpdate = dateUpdate;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}
