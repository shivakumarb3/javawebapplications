package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class workreg {

	 String mail;
	 List<String> s;
	 public workreg(String mail,List<String> s)
	 {
		 this.mail=mail;
		 this.s=s;
	 }
	 public static void main(String args[])
	 
	 {
		 List<String> v=new ArrayList<String>();
		 v.add("bikedriver");
		 v.add("taxi driver");
		 workreg w=new workreg("sk@g.in",v);
		 if(w.insert())
			 System.out.println("works are registered");
		 else
			 System.out.println("sorry");
	 }

	 
	  
	  
public boolean insert()
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");  
        int flag=0;
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/hnet","root","");
		for(String v:s) {
		PreparedStatement stmt=con.prepareStatement("insert into acworks values(?,?)");
		stmt.setString(1, mail);
		stmt.setString(2, v);
		if(stmt.executeUpdate()>0)
			flag=1;
		else
			flag=0;
		
		}
		if(flag==1)
			return true;
		else
			return false;
		
		
	}
		catch(Exception e)
		{
			System.out.println(e);
	}
		return false;

}
}

	

