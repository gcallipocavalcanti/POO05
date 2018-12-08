

<%@page import="br.com.curso.web.Usuario"%>
<%@page import="br.com.curso.web.Quiz"%>
<%@page import="br.com.curso.web.Questao"%>
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
            String page9 = "";
            String page10 = "active";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>10</strong>
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
                        <span class="task-body-header-title-text"> Exercicios</span>
                    </h1>
                    <div class="card" >

                        <%int i = 0;
                        int id = (int)session.getAttribute("me.id");
                            if (request.getParameter("finalizar") != null) {
                                int acertos = 0;
                                for (Questao q : Quiz.getQuestoesPython()) {
                                    String resposta = request.getParameter(q.getPergunta());
                                    if (resposta != null) {
                                        if (resposta.equals(q.getResposta())) {
                                            acertos++;
                                        }
                                    }
                                }
                                Quiz.notaPython2 = (20 * acertos);
                                Usuario.updateNota4(Quiz.notaPython2, id);
                            }%>

                        <div class="container">
                            <br/>
                            <form>
                                <%i = 0;%>
                                <%for (Questao questao : Quiz.getQuestoesPython()) {
                                        i++;%>

                                <div class="form-group"id="<%=i%>" >
                                    <h4><%=questao.getPergunta()%></h4>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[0]%>">
                                    <%=questao.getAlternativas()[0]%><br>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[1]%>">
                                    <%=questao.getAlternativas()[1]%><br>
                                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[2]%>">
                                    <%=questao.getAlternativas()[2]%>

                                </div>

                                <%}%>

                        </div>

                        <br><br>
                        <input type="hidden" name="usuarioTestado" value="<%=String.valueOf(session.getAttribute("user"))%>"/>
                        <input class="btn btn-success" type="submit" name="finalizar" value="Responder"> 
                        </form>
                    </div>
                    <%if (request.getParameter("finalizar") != null) {%>
                    <form>
                        <input class="btn btn-primary" type="submit" name="correcao" value="Respostas Corretas">
                    </form>
                    <%}%>
                    <%if (request.getParameter("correcao") != null) {%>
                    <div class="container">
                        <br/>
                        <h3 class="text-center">Respostas corretas</h3>
                        <form>
                            <%i = 0;%>
                            <%for (Questao questao : Quiz.getQuestoesPython()) {
                                    i++;%>

                            <div id="<%=i%>" >
                                <h4><%=questao.getPergunta()%></h4>
                                <input checked disabled type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[0]%>">
                                <%=questao.getAlternativas()[0]%><br>
                                <input disabled type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[1]%>">
                                <%=questao.getAlternativas()[1]%><br>
                                <input disabled type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[2]%>">
                                <%=questao.getAlternativas()[2]%>

                            </div>

                            <%}%>

                    </div>
                    <%}%>
                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="../../cursos.jsp" aria-hidden="true"">Finalizar</a>
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
