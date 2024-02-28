package restron.dto.com;

import java.io.InputStream;

public class FoodDto {
    private String Food_Name;
    private String Food_Description;
    private String Food_Path;
    private String Food_Category;
    private float Food_Price;

    public FoodDto() {
    }

    public FoodDto(String Food_Name, String Food_Description, String Food_Path, String Food_Category, float Food_Price) {
        this.Food_Name = Food_Name;
        this.Food_Description = Food_Description;
        this.Food_Path = Food_Path;
        this.Food_Category = Food_Category;
        this.Food_Price = Food_Price;
    }
    
    public void setFood_Path(String Food_Path) {
        this.Food_Path = Food_Path;
    }

    public void setFood_Name(String Food_Name) {
        this.Food_Name = Food_Name;
    }

    public void setFood_Description(String Food_Description) {
        this.Food_Description = Food_Description;
    }


    public void setFood_Category(String Food_Category) {
        this.Food_Category = Food_Category;
    }

    public void setFood_Price(float Food_Price) {
        this.Food_Price = Food_Price;
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
        return "FoodDto{" + "Food_Name=" + Food_Name + ", Food_Description=" + Food_Description + ", Food_Path=" + Food_Path + ", Food_Category=" + Food_Category + ", Food_Price=" + Food_Price + '}';
    }    
}