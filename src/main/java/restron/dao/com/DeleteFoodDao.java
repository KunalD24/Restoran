package restron.dao.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DeleteFoodDao {
    private Connection conn;
    public DeleteFoodDao()
    {
        
    }
    public DeleteFoodDao(Connection conn) {
        this.conn = conn;
    }

    public boolean DeleteFoodItem(String foodid) {     
        boolean flag=false;        
        try{
           
            String SQL = "DELETE FROM food_item WHERE food_id = ?";
            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, foodid);            
            int delete = ps.executeUpdate();               
            if(delete>0)
            {
                flag = true;
            }
        }
        catch(Exception e)
        {
            System.out.print(e);
        }
        return flag;
    }
    
}
