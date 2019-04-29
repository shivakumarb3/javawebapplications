<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="postwork.jsp" method =post name="f1"><br>
workname:<input type="text" name="workname"><br>
address:<textarea rows="4" cols="50" name="comment" >
Enter address here...</textarea>
phonumber<input type="text" name="ph"><br>
From date: <input type="date" name="from">
Todate:<input type="date" name="to"><br>
amount:<input type="text" name="cost"><br>
work hours:<input type="time" name="fromtime"><br>
           <input type="time" name="tomtime"><br>
            

<table>
<tr>
<td>  <input type="checkbox" name="work1" value="Tutor"> Tutor</td>
       <td> <input type="checkbox" name="work2" value="Mentor"> Mentor </td>
       </tr>
     <tr>
     <td> <input type="checkbox" name="work3" value="cardriver"> Car Driver </td>
     <td> <input type="checkbox" name="work4" value="bikedriver"> Bike Driver </td>
     </tr>
     <tr>
    <td> <input type="checkbox" name="work5" value="delivery"> Delievery </td>
    <td> <input type="checkbox" name="work6" value="catering"> Catering </td>
    <td> <input type="checkbox" name="work7" value="cheff"> Cheff </td>
      </tr>
        <tr>
       </tr>
       </table>
       
      <input type="submit" value="post">

</form>
</body>
</html>