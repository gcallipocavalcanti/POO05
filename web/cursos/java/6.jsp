

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


        <%
            String url = "https://www.youtube.com/embed/ijXXaIYsVx4";
            String page6 = "active";
            String page7 = "";
            String page8 = "";
            String page9 = "";
            String page10 = "";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>06</strong>
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
                        <small>06</small>
                        <span class="task-body-header-title-text"> Primeiro programa</span>
                    </h1>
                    <!-- INCLUDE VIDEO AULA -->
                    <%@include file="/WEB-INF/jspf/videoAula.jspf" %>




                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="7.jsp" aria-hidden="true">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
        <!-- INCLUDE FOOTER -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
