package models;

public class Color {
    private String IdColor;
    private String ColorName;

    public Color(String idColor, String colorName) {
        IdColor = idColor;
        ColorName = colorName;
    }

    public String getIdColor() {
        return IdColor;
    }

    public void setIdColor(String idColor) {
        IdColor = idColor;
    }

    public String getColorName() {
        return ColorName;
    }

    public void setColorName(String colorName) {
        ColorName = colorName;
    }
}
