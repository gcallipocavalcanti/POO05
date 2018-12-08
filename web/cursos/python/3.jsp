
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
            String url = "https://www.youtube.com/embed/Mp0vhMDI7fA";
            String page1 = "";
            String page2 = "";
            String page3 = "active";
            String page4 = "";
        %>
        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <aside class="task-menu">

                        <section class="task-menu-section">
                            <div class="task-menu-section-title">
                                <span class="task-menu-section-title-number ">Aula  <strong>03</strong>
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
                        <small>03</small>
                        <span class="task-body-header-title-text"> Apostila</span>
                    </h1>
                    <h3 class="text-center">Python: Tipagem dinâmica</h3>
                    <br/>
                    <p>Python possui o que se chama de tipagem dinâmica, ou seja, a tipagem pode mudar a cada nova entrada de dados em uma variável.</p>
                    <p>>>> a = 1</p>
                    <p>>>> type(a)</p>
                    <p><\type 'int'\></p>
                    <p>>>> a = 'abacaxi'</p>
                    <p> >>> type(a)</p>
                    <p><\type 'str'></p>
                    <p>>>> a = 1.0</p>
                    <p>>>> type(a)</p>
                    <p><\type 'float'></p>
                    <p>A tipagem dinâmica reduz a quantidade de tempo de planejamento prévio e é um mecanismos importante para garantir flexibilidade e simplicidade das funções Python.</p>

                    <h4 class="text-center">O que é Python: Delimitação por indentação</h4>
                    <br/>
                    <p>Em Python não existe um delimitador específico para</p>
                    <p>blocos de código. A delimitação é feita pela indentação:</p>
                    <p>print “O valor de a é “</p>
                    <p>if a == 0:</p>
                    <p>print “zero”</p>
                    <p>a = “zero”</p>
                    <p>else:</p>
                    <p>print a</p>
                    <p>exit()</p>
                    <p>Isto garante que o código seja sempre legível.</p>

                    <h4 class="text-center">Python: Tipos de alto nível</h4>
                    <br/>
                    <p>Além dos tipos básicos (inteiro, ponto flutuante, ...), o Python possui ainda outros tipos de mais alto nível:</p>
                    <p>Listas []: como um vetor em outras linguagens, lista é um conjunto de valores acessados por um índice numérico, inteiro, iniciado por zero. Em Python, uma lista ainda podem armazenar todo tipo de valores.</p>
                    <p>>>> a = [“A”, “B”, “C”, 1, 2, 3, 4.0]</p>
                    <p>>>> print a[0]</p>
                    <p>A</p>
                    <p>>>> a[6]</p>
                    <p>4.0</p>
                    <p>>>> a</p>
                    <p>['A', 'B', 'C', 1, 2, 3, 4.0]</p>
                    <p>>>> type(a[6])</p>
                    <p><\type 'float'></p>
                    <br/>
                    <p>Tuplas: Tuplas são seqüências de elementos arbitrários como listas, com a exceção de que são imutáveis.</p>
                    <p>Strings: string em Python é uma seqüência imutável, alocada dinamicamente e sem restrição de tamanho.</p>
                    <p>Dicionários: dicionários são seqüências que podem utilizar índices (imutáveis) de tipos variados. conhecidos como arrays associativos.</p>
                    <p>Arquivo: Python possui um tipo pré-definido para manipular arquivos. Este tipo permite que o arquivo seja facilmente lido, alterado e escrito.</p>
                    <p>Classes e Instâncias: classes são estruturas especiais que servem para apoiar programação orientada a objetos. Instâncias são expressões concretas destas classes.</p>

                    <section class="" >
                        <div class="text-right">
                            <a class="btn btn-primary" href="4.jsp" aria-hidden="true"">Próxima Atividade</a>
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
