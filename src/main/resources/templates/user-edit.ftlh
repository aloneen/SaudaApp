<!DOCTYPE html>
<html>
    <head>
        <title>SAUDA</title>
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




        <div class="form_edit">
            <div class="container">
                <div class="form_edit_inner">
                    <div class="form_logo">
                        <h3>Редактирование пользователя ${user.name}</h3>
                    </div>
                    <form action="/admin/user/edit" method="post">
                        <#list roles as role>
                        <div>
                            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
                        </div>
                        </#list>
                        <input type="hidden" value="${user.id}" name="userId">
                        <input type="hidden" value="${_csrf.token}" name="_csrf">
                        <button type="submit">Сохранить</button>
                    </form>
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


