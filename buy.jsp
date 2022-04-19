<%-- 
    Document   : buy
    Created on : 7 Oct, 2017, 4:36:33 PM
    Author     : TANVI JOSHI
--%>

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
        <%@ include file="newhead.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
         <div class="cat_left">
            <%            try {

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "admin");

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from cat");

                    while (rs.next()) {

                        String cname = rs.getString("cname");
                        //String book_loc = rs.getString("book_location");
            %>
             <h3><%out.println(cname);%></h3><%
            
            

                 // out.print( " "+book_loc);%>


                <%
                        }
                    } catch (Exception e) {

                    }
                %>
        </div>
               <div class="b">  

        <div class="cat_right">
            <h2>Enter your category</h2>
             <form action="bookbuy.jsp" method="post">
        <div class="search_input">
            
            <input name="branch" placeholder="Enter Branch Name" type="text" size="50px;" style="height: 70px; width: 300px;"> </input>
            <input name="year" placeholder="Enter Year eg.1/2/3/4" type="text" size="50px;" style="height: 70px; width: 300px;"> </input>
        </div>
        <div class="search_button">
            
            <input type="submit" value="SEARCH" style="color: white;height: -100px; width: 200px; padding-bottom: 40px;padding-top: 10px;margin-left: 70px; margin-right: auto;" class="btn"> </input>
            
        </div>
        </div>        
        </form>
        </div>

        <div style="margin-top: 500px; margin-left: -300px;">
        <%@ include file="footer.jsp"%>
    </div>
    </body>
</html>
