<%@page import="persistencia.ClienteBD"%>
<%
    String codigo = request.getParameter("codigo");
    ClienteBD.excluir(Integer.parseInt(codigo));
    response.sendRedirect("cadastrarCliente.jsp");
%>
