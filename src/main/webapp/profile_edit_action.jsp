<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%@ include file="session.jsp" %>
<% // 1. Start JDBC Driver, JDBC = Java Database Connectivity
    Statement sm = cn.createStatement(); 
    String name = request.getParameter("name");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    sm.executeUpdate("update user set name = '" + name + "', username = '" + username + "', password = '" + password + "' where id = '" + session_id + "'");
    
    response.sendRedirect("/profile.jsp");
    //rs.next(); // read only 1 line

    //rs.close();
    sm.close();
    cn.close();
%>
