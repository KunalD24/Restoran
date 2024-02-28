package restron.dto.com;
import restron.dao.com.RegisterDao;
import restron.controller.com.RegisterController;
import restron.conn.com.DBConnection;
import java.util.*;

public class RegisterDto 
{
    public String fname;
    public String lname;
    public String mobile;
    public String email;
    public String password;
    public RegisterDto(){}
    public RegisterDto(String fname,String lname,String mobile,String email,String password){
        this.fname = fname;
        this.lname = lname;
        this.mobile = mobile;
        this.email = email;
        this.password = password;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }
    
    public String getFname() {
        return fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLname() {
        return lname;
    }
    
    public String getMobile() {
        return mobile;
    }


    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "RegisterDto{" + "fname=" + fname + ", lname=" + lname + ", mobile=" + mobile + ", email=" + email + ", password=" + password + '}';
    } 
    
    
}
