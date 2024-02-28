package restron.controller.com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
             
@WebServlet(name = "LogOutController", urlPatterns = {"/LogOutController"})
public class LogOutController extends HttpServlet {
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");         
        try {
            
            request.getSession(false).invalidate();            
            request.setAttribute("LogOutSuccess", true);                    
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.print(e);
        }
    }
}