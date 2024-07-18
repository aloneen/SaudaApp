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


        <div class="form_login">
            <div class="container">
                <div class="login_title">
                    <h4>Авторизация</h4>
                </div>
                <div class="login_inner">
                    <form action="/login" method="post">
                        Эл. почта: <input type="email" name="username"><br><br>
                        Пароль: <input type="password" name="password"><br><br>
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Вход"/>
                    </form>
                </div>
                <a href="/registration">Зарегистрироваться</a>
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