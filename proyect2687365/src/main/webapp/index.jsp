<%@ page contentType="text/html;
 charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FORMULARIO</title>
    <link href="css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body style="background-color: rgb(215, 213, 213);">
<header>
    <h1 style="text-align: center;">Formulario para Registrarse</h1>
    <br>


</header>

<style>
    #form{
        text-align: center;
    }
</style>
<div id="form" class="container">
    <form class="" action="registerUser" method="post">
        <label for="user_firstname">Nombre:</label><br>
        <br>
        <input type="text" id="user_firstname" name="user_firstname" placeholder="ingrese su nombre" autofocus
               required pattern="{60}"><br><br>

        <label for="user_lastname">Apellido:</label><br>
        <br>
        <input type="text" id="user_lastname" name="user_lastname" placeholder="ingrese su apellido"
               required pattern="{60}"><br><br>

        <br>
        <label for="user_email">Correo:</label><br>
        <input type="text" id="user_email" name="user_email" placeholder="ingrese su correo" autofocus
               required pattern="{60}"><br><br>

        <label for="user_password">Contraseña:</label><br>
        <br>
        <input type="password" id="user_password" name="user_password" placeholder="ingrese su contraseña" autofocus
               required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$"><br>
        <br>
        <button class="btn btn-primary" type="submit">Enviar</button>
        <br><br>
        <a href="login.jsp">Log in</a>

        <a href="Category.jsp">categoria</a>
        <a href="Product.jsp">productos</a>
    </form>
</div>
<br>
<br>
<br>
<style>
    #footer {
        background: lightblue;
        text-align: center;
        width: 2000px;
        height: 100px;
    }
</style>
<footer id="footer">

    <u>
        <bR>
        <h6>Realizado por: Laura vanessa Vega Tique</h6>
        <h6>Ficha: 2687365</h6>
    </u>
</footer>

</h1>
<br/>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>


