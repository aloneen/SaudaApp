<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>Sauda</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="style.css">

    </head>

    <body>
    <div class="header">
        <div class="container">
            <div class="header_inner">
                <div class="header_logo">
                    <h1>
                        <a id="logo" class="header_nav" href="/">SAUDA</a>
                    </h1>
                </div>
                <div class="header_navs">

                    <#if user.email??>
                        <div class="form_logout" style="width: 100%; max-width: 0 auto; align-items: center;">
                            <h3>${user.name}</h3>
                            <form action="/logout" method="post">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <input type="submit" value="logout"/>
                            </form>
                        </div>
                    <#else>

                    <a class="header_nav" href="/login">sign in</a>

                </#if>

                    <#if user.isAdmin()>
                        <a href="/admin">Панель администратора</a>
                    </#if>
                </div>
            </div>

    <hr>


    <div>
        <div class="products">
            <div class="container">
                <div class="products_inner">
                    <div class="products_title">
                        <h4>
                            Товары по Казахстану
                        </h4>
                    </div>

                    <div class="search">
                        <div class="search_inner">
                            <div class="search_title">
                                <h4>
                                    Поиск
                                </h4>
                            </div>
                            <form action="/" method="get">
                                <input type="text" name="title" class="searching">
                                <input type="submit" value="ok" class="btn">
                            </form>
                        </div>
                    </div>



                    <div class="products_main">
                        <#list products as product>
                            <div>
                                <p>
                                    <a href="/product/${product.id}">
                                        <b>${product.title}</b> ${product.price}
                                    </a>
                                </p>
                            </div>
                            <#else>
                            <h3>Нету товаров</h3>
                        </#list>
                    </div>
                </div>
            </div>
        </div>

        <#if user.email??>
            <div class="container">
                <form action="/product/create" method="post" enctype="multipart/form-data">
                    Имя товара: <input type="text" name="title"> <br>
                    Описание: <input type="text" name="description"> <br>
                    Цена: <input type="number" name="price"> <br>
                    Город: <input type="text" name="city"> <br>
                    Фото 1: <input type="file" name="file1"> <br>
                    Фото 2: <input type="file" name="file2"> <br>
                    Фото 3: <input type="file" name="file3"> <br>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Отправить" class="btn"> <br>
                </form>
            </div>

        </#if>


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