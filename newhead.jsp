<%-- 
    Document   : header
    Created on : 7 Oct, 2017, 4:36:18 PM
    Author     : TANVI JOSHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css">
        <title>header</title>
    </head>
    <body>
        <%
            String n = (String) session.getAttribute("name");
            if (n == null) {%>
        <div class="back">
            <div class="logo">
               
            </div>
            <div class="menu1">
                <%--<img src="mechanical.gif"--%>
              <h1 style="margin-left: -700px"> Welcome...
     </h1>
                <ul>
                   
                    <li><a href="aboutus.jsp">About</a></li>&nbsp;&nbsp; 
                    <li><a href="contactus.jsp">Contact us</a></li> &nbsp;&nbsp;
                    <li><a href="category.jsp" >Question papers</a> </li> &nbsp;&nbsp; 
                    <li><a href="shop.jsp">Book shop</a></li> &nbsp; &nbsp;
                    <li><a href="chat.jsp">Join Chat Room</a></li> &nbsp;&nbsp;
                    <li><a href="index.jsp" style="color:mintcream">Logout </a></li> 
                </ul>
                <div style="margin-top: 15px; margin-left: 180px;">
                    &nbsp;&nbsp;
               

                </div>
            </div>
        </div>


        <%} else {%>
        <div class="back">
            <div class="menu1">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                     
                    <li><a href="books.jsp">Category</a> </li>  
                    <li><a href="about.jsp">About</a></li> 
                    <li><a href="contactus.jsp">Contact us</a></li> 
                </ul>
                <div style="margin-top: 15px; margin-left: 180px;">
                    <li><a href="logout.jsp" style="color:mintcream">LogOut </a></li> &nbsp;&nbsp;


                </div>
            </div>
        </div>
        <%}
        %>




    </body>
</html>
