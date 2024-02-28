package restron.dao.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import restron.dto.com.ContactDto;
import restron.controller.com.ContactController;
import restron.conn.com.DBConnection;


public class ContactDao {
    private Connection conn;

    public ContactDao() {
    }
    
    public ContactDao(Connection conn) {
        this.conn = conn;
    }
    public boolean ContactInsertion(ContactDto Contact)
    {
        boolean result = false;
        try{
            String SQL = "Insert into contact (user_id,subject,message) Values (?,?,?)";
            PreparedStatement S = conn.prepareStatement(SQL);
            S.setString(1, Contact.getContact_id());
            S.setString(2, Contact.getContact_subject());
            S.setString(3, Contact.getContact_message());
            int i = S.executeUpdate();
            if(i==1)
            {
                result = true;
            }
        }catch(Exception e)             
        {
            System.out.println(e);
        }
        return result;
    }
}
