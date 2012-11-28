package myflcikr;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;

import com.google.appengine.api.rdbms.AppEngineDriver;

public class SigninServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException,ServletException {
		PrintWriter out = resp.getWriter();
		Connection c = null;
		int userid=-1;
		try {
			DriverManager.registerDriver(new AppEngineDriver());
		    c = DriverManager.getConnection("jdbc:google:rdbms://cphatnyu:myflcikrdatabase/MyFlickr");
		    String email=req.getParameter("email");
		    String password=req.getParameter("password");
		    String sql="SELECT * FROM Users Where email='"+email+"' and pass_word='"+password+"'";
		    ResultSet rs = c.createStatement().executeQuery(sql);
		    if(rs.next())
		    {
		    	userid=rs.getInt("uid");
		    	Cookie cook=new Cookie("uid",Integer.toString(userid));
		    	resp.addCookie(cook);		//send it to the browser
		    	resp.setHeader("Refresh","1;url=/Home.jsp");
		    }
		    else{ 
		    	out.println("<html><head></head><body><script>alert('Record does not exist, check email and password')</script></body></html>");
		    	resp.setHeader("Refresh","1;url=/Signup.jsp");
		    }
		    
		}catch (SQLException e) {
	        e.printStackTrace();
	    }finally {
	        if (c != null) 
	            try {
	              c.close();
	              } catch (SQLException ignore) {
	            }
	        }
	}

}
