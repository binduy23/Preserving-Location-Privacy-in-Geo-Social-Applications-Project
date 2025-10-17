package db;
import java.sql.*;

public class dbcon
{
	static Connection con;
	public static Connection getCon()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/geosocial","root","root");
		}
		catch(Exception e)
		{
			System.out.println(" database error:"+e);
		}
		return con;
	}
	
}
