<!DOCTYPE html>
<html>
    <head>
        <title>Sauda</title>
        <meta charset="utf-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>

    <body>
        <div class="header">
            <div class="container">
                <div class="header_inner">
                    <div class="header_logo">
                        <a href="/">
                            <h1>
                                Sauda
                            </h1>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <div class="info">
            <div class="container">
                <div class="info_inner">
                    <h3>Подробная информация о пользователе ${user.name}</h3>
                    <b>Номер телефона: </b> ${user.phoneNumber}<br>
                    <b>Email: </b> ${user.email}<br>
                    <h4>Товары пользователя ${user.name}</h4>
                    <#list products as product>
                    <div>
                        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
                    </div>
                    <#else>
                    <h3>Товаров нет</h3>
                    </#list>
                        <#if errorMessage??>
                        <h2 style="color: red">${errorMessage}</h2>
                    </#if>
                </div>
            </div>
        </div>
    </body>


    <style>
        body {
            background-color: black;
            color: white;
            font-size: 14px;

        }
        .container {
            width: 1170px;
            max-width: 0 auto;

        }
    </style>
</html>