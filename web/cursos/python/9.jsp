

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  if (session.getAttribute("me.login") == null) {
        response.sendRedirect(request.getContextPath() + "/home.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Curso - Python</title>

        <!--INCLUDE CSS -->
        <link href="../../assets/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../../css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
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
            String page5 = "";
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
                                    Primeiros Comandos
                                </h3>
                            </div>
                        </section>
                        <!-- INCLUDE MENU LATERAL -->
                        <%@include file="/WEB-INF/jspf/menuPython2.jspf" %>

                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloPython.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>

                    </aside>



                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>09</small>
                        <span class="task-body-header-title-text"> Apostila</span>
                    </h1>
                    <br/>
                    <h3>Python Básico: Operadores - aritméticos</h3>
                    <div class="card">>> 7 + 3 # adição
                        <p>10
                        <p>>>> 7 – 3 # subtração
                        <p>4
                        <p>>>> 8 % 3 # resto da divisão
                        <p>2
                        <p>>>> 8 / 3 # divisão inteira
                        <p>2
                        <p>>>> 8 / 3. # divisão em ponto flutuante
                        <p>2.6666666666666665
                        <p>>>> 8 * 3 # produto
                        <p>24
                        <p>>>> 8 ** 2 # exponenciação
                        <p>64
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-4">
                            Strings
                            <div class="card">
                                <p>>>> a = 'bits'
                                <p>>>> a * 2
                                <p>'bitsbits'
                                <p>>>> print '64 ' + a
                                <p>64 bits
                                <p>>>></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            Listas
                            <div class="card">
                                <p>>>> a = [5, 6, 7, 8]
                                <p>>>> b = [9, 10]
                                <p>>>> print b * 2
                                <p>[9, 10, 9, 10]
                                <p>>>> print a + b
                                <p>[5, 6, 7, 8, 9, 10]
                            </div>
                        </div>
                        <div class="col-md-4">
                            Tuplas
                            <div class="card">
                                <p>>>> a = (2, 3, 4)
                                <p>>>> print a + (5, 6)
                                <p>(2, 3, 4, 5, 6)
                                <p>>>></p>
                                <p>>>></p>
                                <p>>>></p>
                            </div>
                        </div>
                    </div>

                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="10.jsp" aria-hidden="true"">Próxima Atividade</a>
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
