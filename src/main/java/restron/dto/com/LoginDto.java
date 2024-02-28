package restron.dto.com;
import restron.dao.com.LoginDao;
import restron.controller.com.LogInController;
import restron.conn.com.DBConnection;
import java.util.*;

public class LoginDto {
    public int Login_id;
    public String Login_fname;
    public String Login_lname;
    public String Login_mobile;
    public String Login_email; 
    public String Login_password;    
    public int role;

    public LoginDto() {
    }

    public LoginDto(int Login_id, String Login_fname, String Login_lname, String Login_mobile, String Login_email, String Login_password, int role) {
        this.Login_id = Login_id;
        this.Login_fname = Login_fname;
        this.Login_lname = Login_lname;
        this.Login_mobile = Login_mobile;
        this.Login_email = Login_email;
        this.Login_password = Login_password;
        this.role = role;
    }

    public void setLogin_id(int Login_id) {
        this.Login_id = Login_id;
    }

    public void setLogin_fname(String Login_fname) {
        this.Login_fname = Login_fname;
    }

    public void setLogin_lname(String Login_lname) {
        this.Login_lname = Login_lname;
    }

    public void setLogin_mobile(String Login_mobile) {
        this.Login_mobile = Login_mobile;
    }

    public void setLogin_email(String Login_email) {
        this.Login_email = Login_email;
    }

    public void setLogin_password(String Login_password) {
        this.Login_password = Login_password;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getLogin_id() {
        return Login_id;
    }

    public String getLogin_fname() {
        return Login_fname;
    }

    public String getLogin_lname() {
        return Login_lname;
    }

    public String getLogin_mobile() {
        return Login_mobile;
    }

    public String getLogin_email() {
        return Login_email;
    }

    public String getLogin_password() {
        return Login_password;
    }

    public int getRole() {
        return role;
    }

    @Override
    public String toString() {
        return "LoginDto{" + "Login_id=" + Login_id + ", Login_fname=" + Login_fname + ", Login_lname=" + Login_lname + ", Login_mobile=" + Login_mobile + ", Login_email=" + Login_email + ", Login_password=" + Login_password + ", role=" + role + '}';
    }

    
    
}