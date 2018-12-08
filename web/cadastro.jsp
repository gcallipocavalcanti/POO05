<%@page import="br.com.curso.web.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <%

            String addUsuarioErrorMessage = null;
            if (request.getParameter("cadastrar") != null) {
                String login = request.getParameter("usuario");
                String senha = request.getParameter("senha");
                String senha2 = request.getParameter("senha2");
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String rgUsuario = request.getParameter("rgUsuario");

                if (senha.equals(senha2)) {
                    try {
                        Usuario.addUsuario(login, senha, nome, email, telefone, rgUsuario);
                        
                        response.sendRedirect("telalogin.jsp");
                        out.println("<script>alert('Cadastro Finalizado!')</script>");
                    } catch (Exception e) {
                        addUsuarioErrorMessage = e.getMessage();
                    }

                } else {
        out.println("<script>alert('Senhas não correspondem!')</script>");
                }
            }
        %>


        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <!-- INCLUDE MENU END -->
        <%--<%if (addUsuarioErrorMessage != null) {%>--%>
        <%--<%}%>--%>
        <div class="card border-secondary mb-3" style="max-width: 43rem;margin: 0 auto;margin-top: 100px;">
            <div class="card-body">
                <h1 class="display-4 text-center">Cadastro</h1>
                <form  method="post">
                    <!-- <form action="telalogin.jsp" method="post">-->
<% if (addUsuarioErrorMessage != null){%>
    <%=addUsuarioErrorMessage%>
<%}
%>
                    <div class="form-group">
                        <label for="nomeUsuario">Nome Completo</label>  
                        <input type="text" name="nome" class="form-control" id="nomeUsuario" placeholder="Digite seu nome" required>
                    </div>
                    <div class="form-group">
                        <label for="emailUsuario">Email</label>
                        <input type="text" name="email" class="form-control" id="emailUsuario" placeholder="Digite seu email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefoneUsuario">Telefone</label>
                        <input type="text" name="telefone" class="form-control" id="telefoneUsuario" placeholder="Digite seu telefone" required>
                    </div>
                    <div class="form-group">
                        <label for="rgUsuario">RG</label>
                        <input type="text" name="rgUsuario" class="form-control" id="rgUsuario" placeholder="Digite seu RG" required>
                    </div>
                    <div class="form-group">
                        <label for="loginUsuario">Usuário</label>
                        <input type="text" name="usuario" class="form-control" id="loginUsuario" placeholder="Digite seu nome de usuário" required>
                    </div>
                    <div class="form-group">
                        <label for="loginSenha">Senha</label>
                        <input type="password" name="senha" class="form-control" id="loginSenha" placeholder="Digite sua senha" required>
                        <input type="password" name="senha2" class="form-control" placeholder="Digite novamente sua senha" required>
                    </div>


                    <input type="submit" name="cadastrar" value="cadastrar" class="btn btn-primary btn-lg" style="width: 100%"/>
                </form>
            </div>
        </div>
        <div>
        </div>
        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>
