<%@page import="persistencia.LoginBD"%>
<%@page import="dominio.Login"%>
<%
    String login = request.getParameter("Login");
    String senha = request.getParameter("Senha");
    
Login LoginEncontrado = LoginBD.procurarPorLoginSenha( login, senha); 
if (LoginEncontrado != null){
    session.setAttribute("Login", LoginEncontrado);
    response.sendRedirect("../../index.jsp");
}else {
    response.sendRedirect("login.jsp?erro=USUARIO_NAO_EXISTE");
}
%>
