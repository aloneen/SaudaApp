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
                                SAUDA
                            </h1>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr>


        <div class="admin_panel">
            <div class="container">
                <div class="admin_inner">
                    <h4>Панель администратора</h4>
                    <table border="1">
                        <tr>
                            <th>Email</th>
                            <th>Номер телефона</th>
                            <th>Активность</th>
                            <th>Роли</th>
                            <th>Бан</th>
                            <th>Редактирование</th>
                            <th>Подробная информация</th>
                        </tr>
                        <#list users as user>
                        <tr>
                            <th>${user.email}</th>
                            <th>${user.phoneNumber}</th>
                            <th><#if user.active>true<#else>false</#if></th>
                            <th><#list user.roles as role>${role}</#list></th>
                            <th>
                                <form action="/admin/user/ban/${user.id}" method="post">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    <input type="submit" value="Бан">
                                </form>
                            </th>
                            <th><a href="/admin/user/edit/${user.id}">Редактировние</a></th>
                            <th><a href="/user/${user.id}">Подробная информация</a></th>
                        </tr>
                        <#else>
                        <h3>Пользователей нет</h3>
                    </#list>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>