<%@page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<% // 1. Start JDBC Driver, JDBC = Java Database Connectivity
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username != null && password != null){
        String sql = "select * from user where username = '" + username + "' and password = '" + password + "'";
        PreparedStatement sm = cn.prepareStatement(sql);
        ResultSet rs = sm.executeQuery();

        if(rs.next()) {
            String id = rs.getString("id");
            String name = rs.getString("name");
            session.setAttribute("id",id);	
            session.setAttribute("username",username);
            //response.sendRedirect("/profile.jsp");
            out.print(("<script LANGUAGE='JavaScript'>window.alert('Login Success !');window.location.href='profile.jsp';</script>"));
            out.print(name);
        } else {
            out.print(("<script LANGUAGE='JavaScript'>window.alert('Username or Password Wrong !');window.location.href='login.jsp';</script>"));
        }
        rs.close(); 
        sm.close(); 
        cn.close();
    }
%>

