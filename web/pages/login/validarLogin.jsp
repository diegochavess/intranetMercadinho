<%@page import="dominio.Login" %>
<%
     Login LoginLogado = null;
if (session.getAttribute("Login") != null ){
    LoginLogado = (Login) session.getAttribute("Login");
}else{
    response.sendRedirect("/IntranetMercadinho/pages/login/login.jsp");
}
%>

