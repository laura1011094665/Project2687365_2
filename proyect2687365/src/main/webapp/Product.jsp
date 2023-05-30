<%--
  Created by IntelliJ IDEA.
  User: Win
  Date: 18/05/2023
  Time: 9:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/styleProduct.css">
  <title>producto</title>
</head>
<body>
<section>
  <div class="cont">
    <form action="registerProduct" method="post"><br><br>
      <img src="img/caja.png">
      <h1>Registre un producto</h1><br>

      <label class="b" for="product_name">Nombre</label><br>
      <input type="text" class="contenido" id="product_name" name="product_name" placeholder="digite el nombre"><br>
      <label class="b" for="product_value">valor</label><br>
      <input type="text" class="contenido" id="product_value" name="product_value" placeholder="digite el valor"><br>
      <label class="b" for="category_id">id categoria</label><br>
      <input type="text" class="contenido" id="category_id" name="category_id" placeholder="digite el nombre"><br>
      <button class="buton">Registrar</button>
    </form>
  </div>
</section>
</body>
</html>
