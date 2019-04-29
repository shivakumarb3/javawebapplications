package db;
import java.sql.*;  
public class userreg {
 
	  String mail;
	  String password;
	  String name;
	  String phone;
	  public userreg(String name,String mail,String password,String phone)
	  {
		  this.name=name;
		  this.password=password;
		  this.phone=phone;
		  this.mail=mail;
		  
	  }
	  
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/hnet","root","");  
			//here sonoo is database name, root is username and password  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from accounts");  
			while(rs.next())  
			System.out.println(rs.getString(1)+"  "+rs.getString(2));  
			con.close();  
			userreg r=new userreg("shiva","lp","sk","123");
			if(r.insert())
				System.out.println("succes");
			else
				System.out.println("nope");
			}catch(Exception e){ System.out.println(e);
			}  
			}
			
			

	
	public boolean insert()
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/hnet","root","");
		PreparedStatement stmt=con.prepareStatement("insert into accounts values(?,?,?,?)");
		stmt.setString(1,mail); 
		stmt.setString(2,name);  
		stmt.setString(3,password);  
		stmt.setString(4,phone);
		System.out.println(mail+" "+name+" "+password+" "+phone);
		if(stmt.executeUpdate()>0)
			return true;
		else
			return true;
		
	}
		catch(Exception e)
		{
			System.out.println(e);
	}
		return false;

}
}
