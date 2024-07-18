<div class="header">
    <div class="container">
        <div class="header_inner">
            <div class="header_logo">
                <h1>
                    <a id="logo" class="header_nav" href="/">SAUDA</a>
                </h1>
            </div>
            <div class="header_navs">
                <a class="header_nav" href="#">About us</a>
                <#if user.email??>
                <h3>${user.name}</h3>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="logout"/>
                </form>
                <#else>


                <a class="header_nav" href="/login">sign in</a>
            </#if>

            <#if user.isAdmin()>
            <a href="/admin">Панель администратора</a>
        </#if>
    </div>
</div>
</div>
</div>