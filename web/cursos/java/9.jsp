

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  if (session.getAttribute("me.login") == null) {
        response.sendRedirect(request.getContextPath() + "/home.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Curso - JAVA</title>
        <%@include file="WEB-INF/jspf/css.jspf" %>
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="/WEB-INF/jspf/topmenu.jspf" %>
        <!-- INCLUDE MENU END -->


        <%--<%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("../telalogin.jsp");
            }
        %>--%>
        <%
            String url = "https://www.youtube.com/embed/ijXXaIYsVx4";
            String page6 = "";
            String page7 = "";
            String page8 = "";
            String page9 = "active";
            String page10 = "";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>09</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Primeiros programas
                                </h3>
                            </div>
                        </section>
                        <!-- INCLUDE MENU LATERAL -->
                        <%@include file="/WEB-INF/jspf/menuJava2.jspf" %>
                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloJava.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>

                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small></small>
                        <span class="task-body-header-title-text"> </span>
                    </h1>
                    <h3 class="text-center">
                        Tipos primitivos e valores</h3>
                    <br/>
                    <p>Esses tipos de variáveis são tipos primitivos do Java: o valor que elas guardam são o real conteúdo da variável. Quando você utilizar o operador de atribuição = o valor será copiado.
                        <br/>
                    <p>int i = 5; // i recebe uma cópia do valor 5</p>
                    <p>int j = i; // j recebe uma cópia do valor de i</p>
                    <p>i = i + 1; // i vira 6, j continua 5</p>
                    <p>Aqui, i fica com o valor de 6. Mas e j? Na segunda linha, j está valendo 5. Quando i passa a valer 6, será que j também muda de valor? Não, pois o valor de um tipo primitivo sempre é copiado.</p>
                    <br/>
                    <p>Apesar da linha 2 fazer j = i, a partir desse momento essas variáveis não tem relação nenhuma: o que acontece com uma, não reflete em nada com a outra.</p>
                    <br/>    
                    <h4>Outros tipos primitivos</h4>
                    <br/>
                    <p>Vimos aqui os tipos primitivos que mais aparecem. O Java tem outros, que são o byte, short, long e float.</p>

                    <p>Cada tipo possui características especiais que, para um programador avançado, podem fazer muita diferença.
                    </p>




                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="10.jsp" aria-hidden="true">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
        <!-- INCLUDE FOOTER -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
</html>

</body>
</html>
