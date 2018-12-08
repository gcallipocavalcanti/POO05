
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


        <%
            String page5 = "";
            String page6 = "";
            String page7 = "";
            String page8 = "active";
            String page9 = "";
            String page10 = "";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>08</strong>
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
                        <small>08</small>
                        <span class="task-body-header-title-text"> Apostila</span>
                    </h1>
                    <br/>
                    <h3>Python Básico: O interpretador Python</h3>
                    <p>Mantendo a tradição vamos fazer o “Hello World”</p>
                    <div class="card"><p>>> a = “Hello”
                        <p>>>> b = “World”
                        <p>>>> print a, b

                        <p>Hello World
                    </div>
                    <p>Observe que o comando print insere um espaço
                        automaticamente entre as duas variáveis. O mesmo poderia
                        ter sido feito com os comandos abaixo:
                    <div class="card"><p>>>> a = “Hello World”
                        <p>>>> print a
                        <p>Hello World
                        <p>>>> print “Hello World”
                        <p>Hello World
                        <p>>>> “Hello World”
                        <p>'Hello World'
                    </div>
                    <br/>
                    <h3>Criando um programa Python</h3>
                    <p>O mesmo pode ser feito através da criação de um módulo
                        (como são chamados os programas em Python). Em um
                        editor de sua escolha escreva:</p>
                    <div class="card"><p># Primeiro programa Python: hello.py
                        <p>a = “Hello”</p>
                        <p>b = “World”</p>
                        <p>print a, b</p>
                    </div>
                    <p>Salve o programa com o nome hello.py e execute-o
                        chamando o interpretador:</p>
                    <div class="card"><p>$ python hello.py
                        <p>Hello World</p>
                        <p>$ _</p>
                    </div>

                    <p>O interpretador pode ser chamado automaticamente pelo
                        sistema. Para isto acrescente o path dele no início programa
                        e o torne executável:</p>
                    <div class="card">
                        <p>#!/usr/bin/python</p>
                        <p># Primeiro programa Python: hello.py</p>
                        <p>a = “Hello”</p>
                        <p>b = “World”</p>
                        <p>print a, b</p>
                        <p>$ chmod +x hello.py</p>
                        <p>$ ./hello.py</p>
                        <p>Hello World</p>
                        <p>$ _</p>
                    </div>
                    <p>Se tiver dúvidas quando a localização do interpretador
                        Python, use o comando: which python</p>



                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="9.jsp" aria-hidden="true"">Próxima Atividade</a>
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
