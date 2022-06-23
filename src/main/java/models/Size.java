package models;

public class Size {
    private String IdSize;
    private String SizeName;

    public Size(String idSize, String sizeName) {
        IdSize = idSize;
        SizeName = sizeName;
    }

    public String getIdSize() {
        return IdSize;
    }

    public void setIdSize(String idSize) {
        IdSize = idSize;
    }

    public String getSizeName() {
        return SizeName;
    }

    public void setSizeName(String sizeName) {
        SizeName = sizeName;
    }
}
