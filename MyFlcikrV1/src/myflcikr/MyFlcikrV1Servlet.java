package myflcikr;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;
import com.google.appengine.api.rdbms.AppEngineDriver;
import java.io.IOException;
import java.sql.*;

@SuppressWarnings("serial")
public class MyFlcikrV1Servlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		PrintWriter out = resp.getWriter();
		Connection c = null;
		try {
			DriverManager.registerDriver(new AppEngineDriver());
		    c = DriverManager.getConnection("jdbc:google:rdbms://cphatnyu:myflcikrdatabase/MyFlickr");
		    String userName=req.getParameter("inputUserName");
		    String email=req.getParameter("inputEmail");
		    String password=req.getParameter("inputPassword");
		    String sql1="SELECT * FROM Users Where uname='"+userName+"'";
		    String sql2="SELECT * FROM Users Where email='"+email+"'";
		    ResultSet rs1 = c.createStatement().executeQuery(sql1);
		    ResultSet rs2 = c.createStatement().executeQuery(sql2);
		    if(rs1.next())
		    {
		    	 out.println("<html><head></head><body><script>" +
		    			 	"alert('Username has already been taken!Choose a different one!')</script></body></html>");
		    }
		    else if(rs2.next())
		    {
		    	out.println("<html><head></head><body><script>" +
	    			 	"alert('Email has already been taken!Choose a different one!')</script></body></html>");
		    }
		    else{ 
		    	String statement ="INSERT INTO Users (uname, email,pass_word) VALUES( ? , ?, ? )";
		        PreparedStatement stmt = c.prepareStatement(statement);	 
		        stmt.setString(1, userName);
		        stmt.setString(2, email);
		        stmt.setString(3, password);
		        int success = 2;
		        success = stmt.executeUpdate();
		        if(success == 1) {
		        	out.println("<html><head></head><body><script>" +
		    			 	"alert('Your account is created!')</script></body></html>");		        
		        } 
		        else if (success == 0) {
		        	out.println("<html><head></head><body><script>" +
		    			 	"alert('System Failure!Please try again')</script></body></html>");		        
		        }
		    }
		    
		}catch (SQLException e) {
	        e.printStackTrace();
	    }finally {
	        if (c != null) 
	            try {
	              c.close();
	              } catch (SQLException ignore) {
	            }
	        } resp.setHeader("Refresh","1;url=/Signup.jsp");
	}
}
