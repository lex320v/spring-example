<!doctype html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"><br>
</#list>
<b>Название товара: </b> ${product.title}<br>
<b>Описание товара: </b> ${product.description}<br>
<b>Цена: </b> ${product.price}<br>
<b>Город: </b> ${product.city}<br>
<b>Номер телефона: </b> ${product.user.phoneNumber}<br>
<b>Профиль продавца: <a href="/user/${product.user.id}">${product.user.name}</a></b><br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Удалить товар">
</form>
</body>
</html>