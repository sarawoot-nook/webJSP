<%@include  file="session.jsp" %>
<%
    session.removeAttribute("id");	
    session.removeAttribute("username");
    out.print(("<script LANGUAGE='JavaScript'>window.alert('Logout !');window.location.href='login.jsp';</script>"));
%>
