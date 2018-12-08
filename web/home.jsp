
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>!  Cursos SPY !  </title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <%@include file="WEB-INF/jspf/titulo.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="logo"> <img src="img/Logo.png" width="100" align="center"/></div>
        <div class="sublogo text-danger"><h3>O Melhor Site de Cursos do Mercado !!</h3></div>

        <div class="card mb-3">
            <img class="card-img-top" src="img/imagem_banner.jpg" alt="Card image cap">
            <div class="card-body text-center"></div>                          


            <div class="jumbotron">
                <h1 <p><u>Conheça nossos cursos!</h1></p></u>
                <br><p class="lead font-weight-bold">Venha se tornar o melhor desenvolvedor aqui na SPY !</p> <br>
                <p class="font-italic text-center">Empresa com 10 anos de mercado e credibilidade que só você conhece !! <br>
                    Profissionais especializados e aulas 100% digitais !!<br>
                    Simplesmente a melhor escolha para invadir qualquer vaga de emprego !!</p>
            </div>       
            <hr class="my-1">
            <p>Caso queira saber mais é só clicar. E não esqueça de se cadastrar.</p>

            <a class="btn btn-outline-primary btn-lg" href="cursos.jsp" role="button">Learn more</a>
            <a class="btn btn-outline-success btn-lg" href="cadastro.jsp" role="button">Cadastre-se</a>
        </div>

    </div>



    <div class="logo">MATRÍCULAS ABERTAS !!</div>

    <br> <br>
    <hr>
    <br><br>

    <div class="text-center"> <h4>Sobre nós:</h4></div>
    <div class="text-center"> <a href="https://github.com/delamano">Arthur de la Mano</a>
    <div class="text-center"> <a href="https://github.com/gcallipocavalcanti">Gustavo Cavalcanti</a>
    <div class="text-center"> <a href="https://github.com/GustavoCarvalhoPessoa">Gustavo Carvalho</a>




    </div>
    <br><br>




    <%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
