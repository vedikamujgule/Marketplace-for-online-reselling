<%-- 
    Document   : bookbuy
    Created on : 7 Oct, 2017, 4:37:23 PM
    Author     : TANVI JOSHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h1></h1>
          <%
     try{
         String branch = request.getParameter("branch");
         String year = request.getParameter("year");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");              
            
         
                
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select * from sell where branch ='"+branch+"' and year = '"+year+"'");
         
         while(rs.next())
         {
             String book = rs.getString("bname");
             String contact = rs.getString("contact");
            
             %>
              <%out.print(book);
              out.print( " "+contact);
                           
             %>
             <%--<a href="http://localhost:8080/MyBookStore/pdf<%=book_loc%>">Download</a>--%>
             <li><a href="chat.jsp" style="color:red" >chat</a></li> &nbsp;&nbsp;
                
            <%
         }
        }catch(Exception e){
            
        }
     %>
     </body>   
</html>
