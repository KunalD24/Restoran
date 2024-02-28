package restron.controller.com;

import com.razorpay.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import com.razorpay.*;
import restron.dto.com.BookingDto;
 
@WebServlet(name = "CreateBooking", urlPatterns = {"/CreateBooking"})
public class CreateBooking extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {                        
            RazorpayClient razorpay = new RazorpayClient("YOUR_ID","YOUR_KEY");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String booking_date = request.getParameter("booking_date");
            String time_slot = request.getParameter("time_slot");
            String booking_table = request.getParameter("booking_table");
            String price = request.getParameter("price");
            
            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", price);
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "receipt#1");
            
            JSONObject notes = new JSONObject();
            notes.put("notes_key_1", "Tea, Earl Grey, Hot");
            orderRequest.put("notes", notes);            
            
            Order order = razorpay.orders.create(orderRequest);                    
            String orderId = order.get("id");
            orderRequest.put("order_id", orderId); 
            
            request.setAttribute("NewOrderId", orderId);
            request.setAttribute("NewName", name);
            request.setAttribute("NewEmail", email);
            request.setAttribute("NewBooking_Date", booking_date);
            request.setAttribute("NewTime_Slot", time_slot);
            request.setAttribute("NewBooking_Table", booking_table);
            request.setAttribute("NewPrice", price);
            if(orderId!=null)
            {
                request.getRequestDispatcher("review.jsp").forward(request, response);
            }            
            
        } catch (RazorpayException ex) {
            Logger.getLogger(CreateBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
}
