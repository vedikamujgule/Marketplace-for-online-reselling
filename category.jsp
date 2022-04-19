
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%@ include file="header.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
       
            
  

        <div class="cat_left">
        
            <%            
                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from cat");

                    while (rs.next())
                    {

                        String cname = rs.getString("cname");
                        //String book_loc = rs.getString("book_location");
            %>
                        <h3> <%out.println(cname);%></h3>
                <%
                        }
                    } 
                    catch (Exception e) 
                    {
                   
                   
                    }
                %>
        </div>
       <div class="b">  
        <div style="background-image: url('image/20.jpg'); padding:200px; width : 1200px ; height: 700px; border: 1px solid black ;">
        <div class="cat_right">
        <h5><font size="4" color="beige">Download Question Papers!</h5>
        <h2><font size="4" color="beige">Enter your category:</h2>
        <form action="subcategory.jsp" method="post">
        <div class="search_input">     
        <input name="cname" placeholder="Enter Category Name" type="text" size="50px;" style="height: 50px; width: 220px; padding-bottom: 0px;padding-top: 0px; padding-left: -10px; padding-right: 70px; margin-top: -50px; margin-right: 10px; margin-left: 10px; margin-bottom: 10px"> </input>    
        </div>
        <div class="search_button">   
        <input type="submit" value="SEARCH" style="color: white;height: -100px; width: 200px; padding-bottom: 30px;padding-top: 10px;margin-left: 25px; margin-right: 100px; margin-bottom: 1000px; margin-top: -100px" class="btn"> </input>
            
        </div>
           </div>
    </div>
    </body>
 
    
</html>
