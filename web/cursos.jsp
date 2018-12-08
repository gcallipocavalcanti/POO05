<%--
    Document   : cursos
    Created on : 08/11/2017, 19:48:42
    Author     : Renan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>!  Cursos SPY ! </title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/titulo.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="text-center">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="img/java.jpg" alt="Card image cap" style="width: 29rem; height: 17rem">
                            <div class="card-body">
                                <h4 class="card-title">JAVA</h4>
                                <p class="card-text">Curso de introdução a JAVA</p>
                                <a href="cursos/java/1.jsp" class="btn btn-primary">Iniciar Curso</a>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-md-6 ">
                    <div class="text-center">
                        <div class="card" style="width: 30rem;">
                            <img class="card-img-top" src="img/python.jpg" alt="Card image cap" style="width: 29rem; height: 17rem">
                            <div class="card-body">
                                <h4 class="card-title">Python</h4>
                                <p class="card-text">Curso de introdução a Python</p>
                                <a href="cursos/python/1.jsp" class="btn btn-primary">Iniciar Curso</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <br><br>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
            </body>
            </html>
