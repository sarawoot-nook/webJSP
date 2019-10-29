<!doctype html>
<%@ include file="connect.jsp" %>
<%@ include file="session.jsp" %>
<% if(session.getAttribute("id") == null) {
        out.print(("<script LANGUAGE='JavaScript'>window.alert('Please Login !');window.location.href='login.jsp';</script>"));
    } else {
%>
<%
    String sql = "select * from user where id = '" + session_id + "'";
    PreparedStatement sm = cn.prepareStatement(sql);
    ResultSet rs = sm.executeQuery();
    rs.next();
    String name = rs.getString("name");
    String username = rs.getString("username");
    String password = rs.getString("password");
%>           
<!doctype html>
<html>
    <head>
        <title>Profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="bg-secondary">
        <main class="container text-center bg-white card">
            <h2>Profile</h2>
            <br>
            <div class="row">
                <div class="col-3 text-left ">Name :</div>
                <div class="col-9">
                  <input value="<% out.print(name); %>" name="name" class="form-control" readonly="">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-3 text-left ">Username :</div>
                <div class="col-9">
                  <input value="<% out.print(username); %>" name="username" class="form-control" readonly="">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-3 text-left ">Password :</div>
                <div class="col-9">
                  <input value="<% out.print(password); %>" name="password" class="form-control" readonly="">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-6 text-left ">
                    <a href="/profile_edit.jsp" class="btn btn-primary btn-block">Edit Profile</a>
                </div>
                <div class="col-6">
                  <a href="/logout.jsp" class="btn btn-secondary btn-block">Logout</a>
                </div>
            </div>
            <br>
        </main>
    </body>
    <style>
        button {
            margin-bottom: 0.5rem;
        }
        .container {
            margin-top: 2rem;
            margin-bottom: 2rem;
            width: 30%;
        }
        .card {
            padding-top: 0.5rem;
            padding-bottom: 1rem;
        }
    </style>
</html>
<% } %>