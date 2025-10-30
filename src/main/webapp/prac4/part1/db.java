import java.sql.*;
import java.util.logging.*;

public class JDBC {
  private static Connection conn null;
  private static String connURL = "postgresql://dbs-maindb_owner:npg_C5qQ3ydIzrve@ep-polished-darkness-a1xc7woz-pooler.ap-southeast-1.aws.neon.tech/jad-practical?sslmode=require&channel_binding=require";

  public static Connection connect() {
		if (conn == null) {
		  try {
		    Class.forName("org.postgresql.Driver");
		    
		    conn = DriverManager.getConnection(url);

		  } catch (ClassNotFoundException cnfe) {
		    errorMessage = "Database driver not found. Contact the administrator.";
		    Logger.getLogger("JSP-DB").log(Level.SEVERE, "ClassNotFoundException", cnfe);
		  } catch(SQLException sqle) {
		    errorMessage = "Unable to connect to the database. Please try again later.";
		    Logger.getLogger("JSP-DB").log(Level.SEVERE, "SQLException", sqle);
		  }
	}}
  
  return conn;
}

