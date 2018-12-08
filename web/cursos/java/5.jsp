

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
        <title>Curso - JAVA</title>

        <!--INCLUDE CSS -->
        <link href="../../assets/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../../css/estilo.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="/WEB-INF/jspf/topmenu.jspf" %>
        <!-- INCLUDE MENU END -->


        <%
            String url = "https://www.youtube.com/embed/v_ZCtgwbS3o";
            String page1 = "";
            String page2 = "";
            String page3 = "";
            String page4 = "";
            String page5 = "active";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>05</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Introdução
                                </h3>
                            </div>
                        </section>
                        <!-- INCLUDE MENU LATERAL -->
                        <%@include file="/WEB-INF/jspf/menuJava1.jspf" %>
                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloJava.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>


                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>05</small>
                        <span class="task-body-header-title-text"> Exercício 2</span>
                    </h1>
                    <div class="card" >

                        <%int i = 0;
                            int id = (int) session.getAttribute("me.id");
                            String erro = null;
                            if (request.getParameter("finalizar") != null) {
                                int acertos = 0;
                                for (Questao q : Quiz.getQuestoesJava()) {
                                    String resposta = request.getParameter(q.getPergunta());
                                    if (resposta != null) {
                                        if (resposta.equals(q.getResposta())) {
                                            acertos++;
                                        }
                                    }
                                }
                                Quiz.notaJava1 = (10 * acertos);

                                try {
                                    Usuario.updateNota1(Quiz.notaJava1, id);
                                } catch (Exception e) {
                                    erro = e.getMessage();
                                }
                            }
                        %>

                        <div class="container">
                            <br/>
                            <form>
                                <%if (erro != null) {%>
                                <div style="color: red;"><%=erro%></div>
                                <%}%>
                                <%i = 0;%>
                                <%for (Questao questao : Quiz.getQuestoesJava()) {
                                        i++;%>

                                <div id="<%=i%>" >
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
                        <input class="btn btn-success" type="submit" name="finalizar" value="Responder"> 
                        </form>
                    </div>
                    <%if (request.getParameter("finalizar") != null) {%>
                    <form>
                        <input class="btn btn-success" type="submit" name="correcao" value="Respostas Corretas">
                    </form>
                    <%}%>
                    <%if (request.getParameter("correcao") != null) {%>
                    <div class="container">
                        <br/>
                        <h3 class="text-center">Respostas correta</h3>
                        <form>
                            <%i = 0;%>
                            <%for (Questao questao : Quiz.getQuestoesJava()) {
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
                            <a class="btn btn-primary" href="6.jsp" aria-hidden="true">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div>
        <!-- INCLUDE FOOTER -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
