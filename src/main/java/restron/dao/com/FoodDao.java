package restron.dao.com;
import java.util.logging.Logger;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import static org.apache.logging.log4j.spi.PropertyComponent.LOGGER;
import restron.dto.com.FoodDto;
import restron.dto.com.UpdateFoodDto;

public class FoodDao {
    private Connection conn;
    private static final Logger LOGGER = Logger.getLogger(FoodDao.class.getName());
    public FoodDao(Connection conn){
        this.conn = conn;
    }
    public boolean InsertFoodItem(FoodDto foodItem)
    {
        boolean result=false;
        try
        {
            
            String SQL = "Insert into food_item (food_name,food_description,food_image_name,food_category,food_price)values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, foodItem.getFood_Name());
            ps.setString(2, foodItem.getFood_Description());            
            ps.setString(3, foodItem.getFood_Path()); 
            ps.setString(4, foodItem.getFood_Category());
            ps.setFloat(5, foodItem.getFood_Price());
            int i = ps.executeUpdate();
            if(i==1)
            {
                result = true;
            }
        }catch(Exception e)
        {
            LOGGER.severe("An error occurred: " + e.getMessage());
        }
        return result;
    }
    
    public boolean UpdateFoodItem(UpdateFoodDto foodItem) {
    boolean result = false;
    try 
    {
        String SQL = "UPDATE food_item SET food_name=?, food_description=?, food_image_name=?, food_category=?, food_price=? WHERE food_id=?";
        PreparedStatement ps = conn.prepareStatement(SQL);
        ps.setString(1, foodItem.getFood_Name());
        ps.setString(2, foodItem.getFood_Description());
        ps.setString(3, foodItem.getFood_Path());
        ps.setString(4, foodItem.getFood_Category());
        ps.setFloat(5, foodItem.getFood_Price());
        ps.setString(6, foodItem.getFood_ID());
        int i = ps.executeUpdate();
        if (i > 0) {
            result = true;
        }
    } 
    catch (Exception e) 
    {
        LOGGER.severe("An error occurred: " + e.getMessage());
    }
    return result;
    }
}