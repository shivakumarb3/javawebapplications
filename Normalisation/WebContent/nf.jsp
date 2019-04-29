<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 out.println("left hand side produdction");
 out.println(request.getParameter("t"));
String t= request.getParameter("t");
 out.println("right hand side production");
out.println(request.getParameter("p"));
StringTokenizer st=new StringTokenizer(t,".");
ArrayList<String> li=new ArrayList<String>();

while(st.hasMoreTokens())
{
	li.add(st.nextToken());
}
out.println(li);
%>
 
</body>
</html>