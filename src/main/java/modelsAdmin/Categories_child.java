package modelsAdmin;

public class Categories_child {
    private String category_child_id;
    private String category_child_name;
    private Categories category_parent;

    public Categories_child() {
    }

    public Categories_child(String category_child_id, String category_child_name, Categories category_parent) {
        this.category_child_id = category_child_id;
        this.category_child_name = category_child_name;
        this.category_parent = category_parent;
    }

    public String getCategory_child_id() {
        return category_child_id;
    }

    public void setCategory_child_id(String category_child_id) {
        this.category_child_id = category_child_id;
    }

    public String getCategory_child_name() {
        return category_child_name;
    }

    public void setCategory_child_name(String category_child_name) {
        this.category_child_name = category_child_name;
    }

    public Categories getCategory_parent() {
        return category_parent;
    }

    public void setCategory_parent(Categories category_parent) {
        this.category_parent = category_parent;
    }
}
