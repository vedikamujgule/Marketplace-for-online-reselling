<%-- 
    Document   : register
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Success</title>
    </head>
    <body>
       
        <%
    
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String mobile = request.getParameter("contact");
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");
            
         
          Statement stmt = con.createStatement();
          stmt.execute("insert into register(name,email,pass,contact)values('"+name+"','"+email+"','"+pass+"','"+mobile+"')");
          out.println("registration success");
          
          session.setAttribute("ucon", mobile); 
            //response.sendRedirect("category.jsp");
           response.sendRedirect("userprofile.jsp");
        }catch(Exception e){
            
        }
        
      
        %>

    </body>
</html>
