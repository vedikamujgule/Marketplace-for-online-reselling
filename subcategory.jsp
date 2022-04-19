


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="headercat.jsp"%>
        <title>Sub_Category</title>
    </head>
    <body>
           

        <h1></h1>
          <%
     try{
         String cname = request.getParameter("cname");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");              
            
         
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select bname,bdes,book_location from subcat where bcategory = '"+cname+"'");
         
         while(rs.next())
         {
             String book = rs.getString("bname");
            
             String book_des = rs.getString("bdes");
             String book_loc = rs.getString("book_location");
             %>
              <%
              out.println(book);
              
               
              out.println( " "+book_des);
                          
             %>
             <a href="http://localhost:8080/MyBookStore/pdf<%=book_loc%>">Download</a>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
           </div>
    </body >    
     
    
</html>
