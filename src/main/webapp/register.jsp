<!doctype html>
<html>
    <head>
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="bg-secondary"  >
       <main class="container text-center card">
            <form action="/register_insert.jsp" >
                <h3 class="text-center">Register</h3><br>
                <input name="name" class="form-control" placeholder="Name"><br>
                <input name="username" class="form-control" placeholder="Username"><br>
                <input name="password" class="form-control" placeholder="Password"><br>
                <button class="btn btn-primary btn-block">Register</button>
                <a href="/index.jsp" class="btn btn-secondary btn-block">Home</a>
            </form>
        </main>
    </body>
    <style>
        button {
            margin-bottom: 0.5rem;
        }
        .container {
            margin-top: 2rem;
            margin-bottom: 2rem;
            width: 25%;
        }
        .card {
            padding-top: 1rem;
            padding-bottom: 1rem;
        }
    </style>
</html>
