package restron.controller.com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import restron.conn.com.DBConnection;
import restron.dao.com.ContactDao;
import restron.dto.com.ContactDto;

@WebServlet(name = "ContactController", urlPatterns = {"/ContactController"})
public class ContactController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();

        String contact_id = request.getParameter("contact_id");  
        String contact_subject = request.getParameter("contact_subject");  
        String contact_message = request.getParameter("contact_message");  
        
        ContactDto Contact = new ContactDto(contact_id,contact_subject,contact_message);
        ContactDao ContDao =new ContactDao(DBConnection.getConn());
        boolean value = ContDao.ContactInsertion(Contact);
        if(value)
        {
          request.setAttribute("ContactSuccess", true);
          request.getRequestDispatcher("contact.jsp").forward(request, response);
        }
        else
        {
//          request.setAttribute("ContactUnSuccess", true);
          request.getRequestDispatcher("contact.jsp").forward(request, response);
        }
             
    }
}