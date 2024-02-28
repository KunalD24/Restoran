package restron.controller.com;
import java.util.logging.Logger;
import java.io.File;
import java.io.IOException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.UUID;
import restron.conn.com.DBConnection;
import restron.dao.com.FoodDao;
import restron.dto.com.FoodDto;


@WebServlet(name = "AddFoodItem", urlPatterns = {"/AddFoodItem"})
@MultipartConfig
public class AddFoodItem extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(AddFoodItem.class.getName());
    public AddFoodItem()
    {
        super();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{   
        String food_name = request.getParameter("food_name");  
        String food_description = request.getParameter("food_description");
        Part image_file_part = request.getPart("food_image");
        String image_file_name = image_file_part.getSubmittedFileName(); 
        String uploadPath="C:/Users/admin/Desktop/Coding/Project/Restoran/src/main/webapp/admin/FoodItemsImg/"+image_file_name;
        FoodDto foodItem = new FoodDto();
        foodItem.setFood_Name(food_name);
        foodItem.setFood_Description(food_description);
        FileOutputStream fos = new FileOutputStream(uploadPath);
        InputStream is = image_file_part.getInputStream();
        byte[] data = new byte[is.available()];
        is.read(data);
        fos.write(data);
        fos.close();
        foodItem.setFood_Path(image_file_name);
        String foodCategory = request.getParameter("food_category");
        float foodPrice = Float.parseFloat(request.getParameter("food_price"));
        foodItem.setFood_Category(foodCategory);
        foodItem.setFood_Price(foodPrice);
        FoodDao foodDao = new FoodDao(DBConnection.getConn());
        boolean status = foodDao.InsertFoodItem(foodItem);
        if(status)       
        {
            request.setAttribute("FoodItemAdded", true);
            request.getRequestDispatcher("admin/dashboard.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("FoodItemNotAdded", true);
            request.getRequestDispatcher("admin/add-food-item.jsp").forward(request, response);
        }
      }
      catch(Exception e)
      {
          LOGGER.severe("An error occurred: " + e.getMessage());
      }
    }
}