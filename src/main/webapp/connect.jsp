<%@page import="java.sql.*" %>
<%
    new com.mysql.jdbc.Driver();
    String url = "jdbc:mysql://localhost/myuser";
    Connection cn = DriverManager.getConnection(url, "root", "1234");
%>
