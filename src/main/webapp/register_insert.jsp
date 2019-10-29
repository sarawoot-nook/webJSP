<%@page import="java.sql.*" %>
<% // 1. Start JDBC Driver, JDBC = Java Database Connectivity
    new com.mysql.jdbc.Driver();
    String url = "jdbc:mysql://localhost/myuser";
    Connection cn = DriverManager.getConnection(url, "root", "1234");
    Statement sm = cn.createStatement(); 
    String name = request.getParameter("name");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    sm.executeUpdate("insert into user (name, username, password) values('" + name + "', '" + username + "', '" + password +"')");
    response.sendRedirect("/register_success.jsp");
    sm.close();
    cn.close();
%>
