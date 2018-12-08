

<%@page import="br.com.curso.web.Usuario"%>
<%@page import="br.com.curso.web.Quiz"%>
<%@page import="br.com.curso.web.Questao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  if (session.getAttribute("me.login") == null) {
        response.sendRedirect(request.getContextPath() + "/home.jsp");
    }else{
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


        <%
            String url = "https://www.youtube.com/embed/Mp0vhMDI7fA";
            String page1 = "";
            String page2 = "";
            String page3 = "";
            String page4 = "active";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>04</strong>
                                    <span>de 10</span></span>
                                <h3 class="task-menu-section-title-text">
                                    Introdução
                                </h3>
                            </div>
                        </section>
                        <!-- INCLUDE MENU LATERAL -->
                        <%@include file="/WEB-INF/jspf/menuPython1.jspf" %>
                        <!-- INCLUDE MODULOS -->
                        <%@include file="/WEB-INF/jspf/moduloPython.jspf" %>
                        <!-- INCLUDE TROCAR CURSO -->
                        <%@include file="/WEB-INF/jspf/trocarCurso.jspf" %>

                    </aside>


                </nav>
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">

                    <h1 class="task-body-header-title">
                        <small>04</small>
                        <span class="task-body-header-title-text"> EXERCICIO</span>
                    </h1>
                    <div class="card" >

                        <%int i = 0;
                        int acertos = 0;
                        int id = (int)session.getAttribute("me.id");
                            if (request.getParameter("finalizar") != null) {
                                for (Questao q : Quiz.getQuestoesPython()) {
                                    String resposta = request.getParameter(q.getPergunta());
                                    if (resposta != null) {
                                        if (resposta.equals(q.getResposta())) {
                                            acertos++;
                                        }
                                    }
                                }
                                Quiz.notaPython1 = (20 * acertos);
                                  Usuario.updateNota3(Quiz.notaPython1, id);
                            }%>
                        <div class="container">
                            <br/>
                            <form>
                                <%i = 0;%>
                                <%for (Questao q : Quiz.getQuestoesPython()) {
                                        i++;%>

                                <div id="<%=i%>" >
                                    <h4><%=q.getPergunta()%></h4>
                                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[0]%>">
                                    <%=q.getAlternativas()[0]%><br>
                                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[1]%>">
                                    <%=q.getAlternativas()[1]%><br>
                                    <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativas()[2]%>">
                                    <%=q.getAlternativas()[2]%>

                                </div>

                                <%}%>

                        </div>


                        <br><br>
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
                            <a class="btn btn-primary" href="5.jsp" aria-hidden="true"">Próxima Atividade</a>
                        </div>
                    </section>
                </main>
            </div>
        </div><%}%>
        <!-- INCLUDE FOOTER -->
        <%@include file="/WEB-INF/jspf/footer.jspf" %>
</html>

</body>
</html>
