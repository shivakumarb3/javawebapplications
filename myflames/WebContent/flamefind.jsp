<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.microsoft.azure.storage.*" %>
    <%@ page import="com.microsoft.azure.storage.table.*" %>
    <%@ page import="com.microsoft.azure.storage.table.TableQuery.*" %>
    <%@ page import=" com.microsoft.azure.storage.table.TableServiceException" %>
    <%@ page import="com.microsoft.azure.storage.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="REFRESH" content="100;url=url home.html">
<title>Insert title here</title>
</head>
<style>
p{
color:red;
dipslay:block;
fontsize:18px;
}
</style>
<body>
<% out.println("<p>we are finding your relationship</p>");%>
<jsp:include page="index.html" />
<%  
   
String s1=request.getParameter("firstname");
String s2=request.getParameter("secondname");
try{
String 	storageConnectionStrin="DefaultEndpointsProtocol=https;AccountName=myflames;AccountKey=XGDG4bbFW3oi0Q6lkveoNws3fT14O2hjdI6bVsIa8fqGIMnPSPBpZobSeefJQdi7wnKhngZoAINxVQnf8JxJ3Q==;TableEndpoint=https://myflames.table.cosmosdb.azure.com:443/;";
CloudStorageAccount storageAccount =
    CloudStorageAccount.parse(storageConnectionStrin);
CloudTableClient tableClient = storageAccount.createCloudTableClient();
CloudTable cloudTable = tableClient.getTableReference("flames");
myflames.CustomerEntity ns=new myflames.CustomerEntity(s1,s2);
ns.setEmail("sk");
ns.setPhoneNumber("9676");

TableOperation insertCustomer1 = TableOperation.insertOrReplace(ns);
cloudTable.execute(insertCustomer1);
}
catch(Exception e)
{
	out.println(e);
}







char arr[]={'f','l','a','m','e','s'};
int nof= find(s1,s2);
if(nof==0)
	out.println("<center><p>you are from another planet</p></center>");
//out.println(nof);

 

else{
int i;int count;

     int r=nof%6;int p;
     if(r==0){
		 arr[5]='\0';
		 p=5;
	 }
	 else{
      arr[r-1]='\0';
	   p=r-1;
	 }
     for(i=1;i<=4;i++)
	 {
		   count=0;
          while(count<=nof)
		  {
             if(count==nof){
				 arr[p]='\0';
			    break;
			 }
			 else
			 {
				 p++;
				 if(p==6)
					 p=0;
				 if(arr[p]!='\0')
					 count++;
			 }
		  }
	 }
     char t='\0';
	 for(i=0;i<6;i++)
		 if(arr[i]!='\0')
		    t=arr[i];
	      
	 if(t=='f')
	    	  out.print("<center><p>you both are friends</p></center>");
	 if(t=='a')
   	  out.print("<center><p>you are ancestors </p></center>");
	 if(t=='l')
		 out.print("<center><p>you are the lovers :)</p></center>");
	 if(t=='m')
		 out.print("<center><p>you both are going to get married </p></center> ");
		 if(t=='e')
			 out.print("<center><p>you are enimies and we are sorry </p></center>");
		 if(t=='s')
			 out.print("<center><p>you are sisters</p></center>");
		 
            	
}
     %>
     
     
     
    <%!

       public int find(String s1,String s2){

    	int count=0;
		  for(int i=0;i<s1.length();i++)
		  {
			  for(int j=0;j<s2.length();j++)
			  {
				  if(Character.toUpperCase(s1.charAt(i))==Character.toUpperCase(s2.charAt(j)))
					  count++;
			  }
		  }
		   
		int  total =Math.abs(s1.length()+s2.length()-(2*count));
		  return total;

}

%>
    
</body>
</html>