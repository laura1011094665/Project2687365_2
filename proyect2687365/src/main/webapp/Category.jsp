<%--
  Created by IntelliJ IDEA.
  User: Win
  Date: 18/05/2023
  Time: 9:14 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleCategory.css">
    <title>Category</title>
</head>
<body>
<section>
    <div class="cont">
        <form action="registerCategory" method="post"><br><br>
            <img src="img/categorias1.png">
            <h1>Registre una Categoria</h1><br>

            <label class="b" for="Category_name">Nombre</label><br>
            <input type="text" class="contenido" id="category_name" name="category_name" placeholder="digite el nombre"><br>
            <br>
            <button class="buton">Registrar</button>
        </form>
    </div>
</section>
</body>
</html>