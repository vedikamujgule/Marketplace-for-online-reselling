<%-- 
    Document   : sell
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%@ include file="newhead.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
       <div class="b">
            
            <div style="background-image: url('image/books-4.jpg'); padding:200px; width : 1100px ; height: 600px; border: 1px solid black ;">
                
           
            <div class="reg_back">
            
            <h1>Seller form</h1>
            
            <pre>
            <form action="sell.jsp" method="post">
          
           <input name="name"  placeholder="Enter your name" type="text" style= "font-size: 20px;width:200px;height:30px ; margin-left: 10px;" >
            <br>
            <input name="bname"  placeholder="Enter your book name" type="text" style= "font-size: 20px;width:200px;height:30px" >
            <br>
            <input name="year"  placeholder="Enter year" type="text" style= "font-size: 20px;width:200px;height:30px" > 
            <br>
            <input name="branch"  placeholder="Enter the department" type="text" style= "font-size: 20px;width:200px;height:30px" > 
            <br>
            <input name="contact"  placeholder="contact" type="text"style= "font-size: 20px;width:200px;height:30px" > 
            <br>
            <input name="price"  placeholder="Set price" type="text" style= "font-size: 20px;width:200px;height:30px" > 
            <br>
            <input name="description"  placeholder="Enter book description" type="text" style= "font-size: 20px;width:200px;height:30px" > 
            <br>
            <input value="Submit"   type="submit" class="btn" style="padding-bottom: 30px;" style= "font-size: 20px;width:200px;height:30px" > 
            <br>
             </div>
            </form>
            </pre>
            </div>
        </div>
        <%
    String contact = request.getParameter("contact");
        String name = request.getParameter("name");
        String bname = request.getParameter("bname");
        String branch = request.getParameter("branch");
        String year = request.getParameter("year");
        String price = request.getParameter("price");
        String  description  = request.getParameter("description");
      
        
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");
            
         
          Statement stmt = con.createStatement();
          stmt.execute("insert into sell(contact,name,bname,branch,year,price,description)values('"+contact+"','"+name+"','"+bname+"','"+branch+"','"+year+"','"+price+"','"+description+"')");
          out.println("registration success");
          
          session.setAttribute("ucon", contact); 
            //response.sendRedirect("category.jsp");
           //response.sendRedirect(".jsp");
           //response.sendRedirect("upload.jsp");
        }
        catch(Exception e)
        {
            
        }
        
      
        %>
    </body>
</html>
