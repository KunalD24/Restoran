package restron.dto.com;
public class UpdateFoodDto {
    private String Food_ID;
    private String Food_Name;
    private String Food_Description;
    private String Food_Path;
    private String Food_Category;
    private float Food_Price;
    
    public UpdateFoodDto() {
    }

    public UpdateFoodDto(String Food_ID, String Food_Name, String Food_Description, String Food_Path, String Food_Category, float Food_Price) {
        this.Food_ID = Food_ID;
        this.Food_Name = Food_Name;
        this.Food_Description = Food_Description;
        this.Food_Path = Food_Path;
        this.Food_Category = Food_Category;
        this.Food_Price = Food_Price;
    }

    public void setFood_ID(String Food_ID) {
        this.Food_ID = Food_ID;
    }

    public void setFood_Name(String Food_Name) {
        this.Food_Name = Food_Name;
    }

    public void setFood_Description(String Food_Description) {
        this.Food_Description = Food_Description;
    }

    public void setFood_Path(String Food_Path) {
        this.Food_Path = Food_Path;
    }

    public void setFood_Category(String Food_Category) {
        this.Food_Category = Food_Category;
    }

    public void setFood_Price(float Food_Price) {
        this.Food_Price = Food_Price;
    }

    public String getFood_ID() {
        return Food_ID;
    }

    public String getFood_Name() {
        return Food_Name;
    }

    public String getFood_Description() {
        return Food_Description;
    }

    public String getFood_Path() {
        return Food_Path;
    }

    public String getFood_Category() {
        return Food_Category;
    }

    public float getFood_Price() {
        return Food_Price;
    }

    @Override
    public String toString() {
        return "UpdateFoodDto{" + "Food_ID=" + Food_ID + ", Food_Name=" + Food_Name + ", Food_Description=" + Food_Description + ", Food_Path=" + Food_Path + ", Food_Category=" + Food_Category + ", Food_Price=" + Food_Price + '}';
    }
}