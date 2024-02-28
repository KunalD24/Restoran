package restron.controller.com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import restron.conn.com.DBConnection;
import restron.dao.com.LoginDao;
import restron.dao.com.RegisterDao;
import restron.dto.com.LoginDto;

@WebServlet(name = "LogInController", urlPatterns = {"/LogInController"})
public class LogInController extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String login_email = request.getParameter("email");  
        String login_password = request.getParameter("password");
        LoginDto LogDto = new LoginDto(0,null,null,null,login_email,login_password,0);        
        LoginDao LogDao =new LoginDao(DBConnection.getConn());
        LoginDto info = LogDao.FetchUserId(LogDto);
        if((info!=null))
        {                    
          if(info.role==0)
          {
            request.setAttribute("LoginSuccess", true);
            HttpSession session = request.getSession();          
            session.setAttribute("userid", info.Login_id);
            session.setAttribute("userfname", info.Login_fname);
            session.setAttribute("userlname", info.Login_lname);
            session.setAttribute("useremail", info.Login_email);
            session.setAttribute("usermobile", info.Login_mobile);
            request.getRequestDispatcher("index.jsp").forward(request, response);
          }
          else
          {
            request.setAttribute("AdminLoginSuccess", true);
            HttpSession session = request.getSession();          
            session.setAttribute("Adminid", info.Login_id);
            session.setAttribute("Adminfname", info.Login_fname);
            session.setAttribute("Adminlname", info.Login_lname);
            session.setAttribute("Adminemail", info.Login_email);
            session.setAttribute("Adminmobile", info.Login_mobile);            
            request.getRequestDispatcher("/admin/dashboard.jsp").forward(request, response);                         
          }
        }
        else
        {
          request.setAttribute("LoginUnSuccess", true);                    
          RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
          dispatcher.forward( request, response);
        }
    }
}
