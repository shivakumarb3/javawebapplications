<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="tex/javascript">
  function warning(){
 alert("please enter correct message");
}
</script>
</head>
<body>


<% 
if(request.getParameter("uname").equals("shiva@s.in")&&request.getParameter("pswd").equals("shiva123")){
	//response.sendRedirect("userinfo.jsp");
session.setAttribute("us",request.getParameter("uname"));
response.sendRedirect("userinfo.jsp");
 


}
else
{

     out.println("enter correct details");
   %>
   <input type="button" value="Try again" onclick="location.href='log.html'">
<%  
}

%>

</body>
</html>