package restron.dao.com;
import restron.controller.com.RegisterController;
import restron.dto.com.RegisterDto;
import java.sql.*;
import restron.conn.com.DBConnection;

public class RegisterDao {
    private Connection conn;
    public RegisterDao(Connection conn){
        this.conn = conn;
    }
    
    public boolean Registration(RegisterDto RegDto)
    {
        boolean result=false;        
        try{
            String SQL = "Insert into registration (reg_fname,reg_lname,reg_mobile,reg_email,reg_pass)values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(SQL);
            ps.setString(1, RegDto.getFname());
            ps.setString(2, RegDto.getLname());
            ps.setString(3, RegDto.getMobile());
            ps.setString(4, RegDto.getEmail());
            ps.setString(5, RegDto.getPassword());
            int i = ps.executeUpdate();
            if(i==1)
            {
                result=true;               
            }
        }catch(Exception e){
            System.out.print(e);                        
        }
        
        return result;        
    }
}
