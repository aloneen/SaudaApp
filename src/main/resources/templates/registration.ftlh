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



        <div class="form_registration">
            <div class="container">
                <div class="form_inner">
                    <div class="form_title">
                        <h4>Регистрация</h4>
                    </div>
                    <div class="form">
                        <form action="/registration" method="post">
                            Имя пользователя: <input type="text" name="name"><br><br>
                            Эл. почта: <input type="email" name="email"><br><br>
                            Номер телефона: <input type="text" name="phoneNumber"><br><br>
                            Пароль: <input type="password" name="password"><br><br>
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <input type="submit" value="register"/>
                        </form>
                    </div>
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