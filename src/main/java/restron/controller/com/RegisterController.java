package restron.controller.com;
import restron.conn.com.DBConnection;
import restron.dao.com.RegisterDao;
import restron.dto.com.RegisterDto;     

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
               
        String fname=request.getParameter("fname");  
        String lname=request.getParameter("lname");  
        String mobile=request.getParameter("mobile");  
        String email=request.getParameter("email");  
        String password=request.getParameter("password");  
        
        RegisterDto RegDto =new RegisterDto(fname,lname,mobile,email,password);
        RegisterDao RegDao =new RegisterDao(DBConnection.getConn());
        boolean Reg = RegDao.Registration(RegDto);        
        String s = RegDto.toString();
        if(Reg)
        {          
          request.setAttribute("RegistrationSuccess", true);
          request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else
        {
          request.getRequestDispatcher("registration.jsp").forward(request, response);
        }
        
        
    }
}
