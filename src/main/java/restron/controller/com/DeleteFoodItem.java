package restron.controller.com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;
import restron.dao.com.DeleteFoodDao;
import restron.conn.com.DBConnection;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

/**
 *
 * @author admin
 */
@WebServlet(name = "DeleteFoodItem", urlPatterns = {"/DeleteFoodItem"})
public class DeleteFoodItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        String foodid = request.getParameter("foodid");
        DeleteFoodDao DeleteFood =new DeleteFoodDao(DBConnection.getConn());
        boolean deletedfood = DeleteFood.DeleteFoodItem(foodid);
        if(deletedfood)
        {
            request.setAttribute("FoodItemDeleted", true);
            request.getRequestDispatcher("admin/list-food-item.jsp").forward(request, response);
        }
        else
        {
            request.getRequestDispatcher("admin/list-food-item.jsp").forward(request, response);
        }
        }catch(Exception e)
        {
          System.out.println("An error occurred: " + e.getMessage());
        }
    }
}
