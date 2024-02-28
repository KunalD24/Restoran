package restron.conn.com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBConnection {
    private static Connection conn;
    public static Connection getConn()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/restroan","root","");
        }catch(Exception e)
        {
            e.printStackTrace();
        }        
        return conn;        
    }        
       
}
