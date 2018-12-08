<%@page import="br.com.curso.web.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String loginErrorMessage = null;
    if(request.getParameter("do-login")!= null){
        String login = request.getParameter("usuario");
        String pass = request.getParameter("senha");
        try{
            Usuario u = Usuario.getUsuario(login, pass);
            if(u==null){
                loginErrorMessage = "Login e/ou senha não encontrados";
            }else{
                session.setAttribute("me.id", u.getId());
                session.setAttribute("me.name", u.getNome());
                session.setAttribute("me.login", u.getLogin());
                session.setAttribute("me.passwordHash", u.getPasswordHash());
                response.sendRedirect(request.getContextPath()+"/cursos.jsp");
            }
        }catch(Exception ex){
            loginErrorMessage = ex.getMessage();
        }
    }
%>
<html>
    <head>
        <title>Entrar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <!-- INCLUDE MENU END -->
        
        <div class="card border-secondary mb-3" style="max-width: 20rem;margin: 0 auto;margin-top: 100px;">
            <div class="card-body">
                <h1 class="display-4 text-center">Login</h1>
                 <%if(loginErrorMessage!=null){%>
                <div style="color: red;"><%=loginErrorMessage%></div>
            <%}%>
                <form method="post">
                  <div class="form-group">
                    <label for="loginUsuario">Usuário</label>
                    <input type="text" name="usuario" class="form-control" id="loginUsuario" placeholder="Digite seu nome de usuário">
                  </div>
                  <div class="form-group">
                    <label for="loginSenha">Senha</label>
                    <input type="password" name="senha" class="form-control" id="loginSenha" placeholder="Digite sua senha">
                  </div>
                    <a href="cadastro.jsp" class="btn btn-secondary btn-sm" >Cadastrar</a>
                    <button type="submit" name="do-login" value="login" class="btn btn-primary btn-lg" style="width: 40%">Entrar</button>
                </form>
            </div>
        </div>
        
        
        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>
