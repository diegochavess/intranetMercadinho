<%@page import="persistencia.FornecedorBD"%>
<%
    String cpf = request.getParameter("cpf");
    FornecedorBD.excluir(cpf);
    response.sendRedirect("listar.jsp");
%>