
<%@page import="br.com.curso.web.Quiz"%>
<%@page import="br.com.curso.web.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
           
    String loginErrorMessage = null;
    int id = (int)session.getAttribute("me.id");    
    try{
    
    } catch(Exception e){
        loginErrorMessage = e.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>!  Cursos SPY !  </title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <%@include file="WEB-INF/jspf/titulo.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
        <%try{%>
        <div class="row">
            <div class="col">
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
        <tr>
            <th>Nome:</th>
            <th>Email</th>
            <th>RG</th>
            <th>Telefone</th>
            <th>Login</th>
        </tr>
        <%for (Usuario p : Usuario.getListaUsuario(id)) {%>
        <tr>
            <td><%= p.getNome()%></td>
            <td><%= p.getRgUsuario()%></td>
            <td><%= p.getPasswordHash()%></td>
            <td><%= p.getLogin()%></td>
            <td><%= p.getEmail()%></td>
        </tr>
        </table>
            </div>
        </div>
        <div class="row notas">
        <div class="col-md-6">
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
            <tr>
                <th class="text-center" colspan="2">Java</th>
            </tr>
            <tr>
                <td>Nota 1: <%=p.getNota1()%></td>
                <td>Nota 2: <%=p.getNota2()%></td>
            </tr>
        </table>
        </div>
            <div class="col-md-6">
        <table class="table table-bordered table-hover" style="margin: 100px 10px;">
            <tr>
                <th class="text-center" colspan="2">Python</th>
            </tr>
            <tr>
                <td>Nota 1: <%=p.getNota3()%></td>
                <td>Nota 2: <%=p.getNota4()%></td>
            </tr>
        </table>
            </div>
        </div>
    <%}%>
    <%}
                catch(Exception e                
                    ){%>
    <div style="color: red;"><%=e.getMessage()%></div>
    <%}%>
    
    
    <div class="text-center">
        <form>
        <input class="btn btn-danger" type="submit" name="delete" value="Deletar conta">
        </form>
    </div>
    <%
    if (request.getParameter("delete") != null) {
        Usuario.deleteUsuario(id);
        session.removeAttribute("me.id");
        session.removeAttribute("me.name");
        session.removeAttribute("me.login");
        session.removeAttribute("me.passwordHash");
        response.sendRedirect(request.getContextPath() + "/home.jsp");
    }
    %>
    <br><br>
        </div>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</body>
</html>
