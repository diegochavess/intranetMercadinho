<%@page import="persistencia.EstoqueBD"%>
<%
    String numCompra = request.getParameter("numCompra");
    EstoqueBD.excluir(Integer.parseInt(numCompra));
    response.sendRedirect("compras.jsp");
%>
