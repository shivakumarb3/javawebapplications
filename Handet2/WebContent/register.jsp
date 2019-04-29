<%@page import="db.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
  
  String name=request.getParameter("Name");
out.println(name);
String mail=request.getParameter("email");
out.println(mail);
String pwd=request.getParameter("pwd");
//out.println(pwd);
String ph=request.getParameter("ph");
//out.println(ph);
 userreg r=new userreg(name,mail,pwd,ph);
 
if( r.insert())
	out.println("succesfully registered");
else
	out.println("something is happend try again");
		List<String> s=new ArrayList<String>();
		for(int i=1;i<=7;i++)
		{
			
			String v=request.getParameter("work"+i);
			if(v!=null)
			{
				out.println(v+" <br>");
				s.add(v);
			}
			
		}
		workreg w=new workreg(mail,s);
		if(w.insert())
			out.println("<br>wokrs successfuly reg");
		else
			out.println("<br> works not successfuly reg");
	
		
			
			
			
  

%>
<a href="index.html" >go home</a>
</body>
</html>