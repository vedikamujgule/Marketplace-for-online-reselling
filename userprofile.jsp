<%-- 
    Document   : userprofile
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
        <title>User Profile</title>
        <%@ include file="header.jsp"%>
    </head>
    
        <%
            
            String conn=null;
         try{
        HttpSession session1=request.getSession(false);  
        if(session1!=null){  
        //String name=(String)session1.getAttribute("name");  
        conn=(String)session1.getAttribute("ucon");  
        //out.println(conn);
        //out.println(name);
        //String conn = request.getParameter("mobile");
        //out.println(conn);
        }
             
             Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select name,email,contact from register where contact='"+conn+"'");
          if(rs.next())
          {
          String name = rs.getString("name");
          String email = rs.getString("email");
          String mob = rs.getString("contact");
          out.println(" Welcome... "+name);
           out.println("\n"+" Your email_id is: "+email);
         out.println("\n"+" Your contact_number is: "+mob);
          }
          %>
          
           
           <%
         }catch(Exception e){
          out.println(e);
         }
     
          
       
        %>
        
        
       
      <%--  <%@ include file="footer.jsp"%>--%>
    

