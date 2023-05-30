<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;
 charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="author" content="Laura Vanessa Vega Tique">
    <meta name="description" content="es una pagina para loguearse">
    <meta name="keywords" content="crear cuenta">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulario Login</title>
    <link rel="icon" type="image/x-ico" href="./img/logo.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <link rel="stylesheet"
          href="css/styles.css">
</head>

<body style="background-color:rgb(0, 0, 0);">
        <main class="form-sigin w-100 m-auto">
            <form id="form" action="" method="post">
                <img id="img" src="./img/logo.ico" alt="MY APP" width="200" height="120">
                <h4 class="text-secundary">MY-APP</h4>
                <h1 class="h5 mb-3 fw-normal">ingresar</h1>
                <div class="from-floating">
                    <div class="contenedor-input">
                        <li>
                            <label  for="floatingInput">Usuario</label><br><br>

                            <input class="form-signin" type="text" class="from-control" id="floatingInput" placeholder="ingrese su usuario" required autofocus
                                   pattern="[A-Za-z]{2,40}"><br><bR>
                        </li>
                    </div>
                    <div class="form_control">
                        <label for="floatingPassword">Contraseña:</label><br><br><br>
                        <input type="password" id="floatingPassword" class="form_control" name="password" placeholder="ingrese su contraseña"
                               required pattern="[A-Za-z0-9]{8,12}"><br><br>

                    </div>


                    <div id="register">


                        <input type="submit" class="button button-block"placeholder="" >
                    </div>
                    <a href="index.jsp">Registrar</a>
                    <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados MY APP ©<%=displayDate()%>
                    </p>





                    <script src="https://cdn.jsdelivr.net/mpm/boostrap@5.2.3/dist/js/boostrap.bundle.min.js"
                            integrity="sha384-kenU1KFdBIe4zVF0S0G1M5b4hcpxyT9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                            CROSSORIGIN="anonymous"></script>
        </main>
    </div>

</div>
<%!
    public String displayDate(){
        SimpleDateFormat dateFormat =new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return  dateFormat.format(date);
    }
%>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>

</body>
</html>

