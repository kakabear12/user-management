<%-- 
    Document   : admin.jsp
    Created on : May 30, 2022, 11:31:57 AM
    Author     : Xqy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sample.user.UserDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleID().equals("AD")) {
                response.sendRedirect("index.jsp");
            }
            String year = request.getParameter("year");
            if (year == null) {
                year = "";
            }
            String month = request.getParameter("month");
            if (month == null) {
                month = "";
            }
            String day = request.getParameter("day");
            if (day == null) {
                day = "";
            }        
        %>
        
        Welcome: <h1> <%= loginUser.getFullName()%>  </h1>

        <form action="MainController">
            <input type="submit" name="action" value="Logout"/>
        </form>
        
        <form action="MainController">
            Year <input type="number" name="year" value="<%=year%>" placeholder="Input year" > </br>
            Month <input type="number" name="month" value="<%=month%>" placeholder="Input month" > </br>
            Day <input type="number" name="day" value="<%=day%>" placeholder="Input day" > </br>       
            <input type="submit" name="action" value="Check">
            <input type="reset" name="Reset" />
        </form>
        <%
                    String error = (String) request.getAttribute("ERROR");
                    if (error == null) {
                        error = "";
                    }
        %>
        <%=error%>
    </body>
</html>
