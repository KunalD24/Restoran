package restron.dao.com;
import java.sql.Connection;
import java.sql.PreparedStatement;
import restron.dto.com.LoginDto;
import restron.controller.com.LogInController;
import java.sql.*;
public class LoginDao 
{
    private Connection conn;
    
    public LoginDao() {
    }

    public LoginDao(Connection conn) {
        this.conn = conn;
    }
    
    public LoginDto FetchUserId(LoginDto LogDto) {
        LoginDto user = null;  
        int flag = 0;
        try{
           
            String SQL = "Select * from registration where reg_email = ? AND reg_pass = ?";
            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, LogDto.getLogin_email());
            ps.setString(2, LogDto.getLogin_password());
            ResultSet rs = ps.executeQuery();               
            while(rs.next())
            {        
                    user = new LoginDto();
                    user.setLogin_id(rs.getInt("reg_id"));
                    user.setLogin_fname(rs.getString("reg_fname")); 
                    user.setLogin_lname(rs.getString("reg_lname"));
                    user.setLogin_mobile(rs.getString("reg_mobile"));
                    user.setLogin_email(rs.getString("reg_email"));
                    user.setRole(rs.getInt("reg_role"));                
            }
        }
        catch(Exception e)
        {
            System.out.print(e);
        }
        return user;
    }
    
}
