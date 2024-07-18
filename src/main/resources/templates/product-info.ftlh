<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Sauda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
                </div>
            </div>
        </div>
    </div>

    <hr>

    <div class="products">
        <div class="container">
            <div class="products_inner">
                <div class="products_title">
                    <h1>
                        ${product.title}
                    </h1>
                </div>
                <div class="products_price">
                    <h3>
                        ${product.price}
                    </h3>
                </div>
                <div class="products_photos">
                    <#list images as img>
                        <a href="/images/${img.id}">
                            <img src="/images/${img.id}" height="60px">
                        </a>
                    </#list>
                </div>
                <div class="products_main">
                    ${product.description}
                </div>
                <div class="product_city">
                    ${product.city}
                </div>
                <div class="product_author">
                    <a href="/user/${product.user.id}">${product.user.name}</a>
                </div>
                <div class="number">
                    ${product.user.phoneNumber}
                </div>
            </div>
        </div>
    </div>

<!--<div class="container">-->
<!--    <form action="/product/delete/${product.id}" method="post">-->
<!--        <input type="submit" value="delete"> <br>-->
<!--    </form>-->
<!--</div>-->



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