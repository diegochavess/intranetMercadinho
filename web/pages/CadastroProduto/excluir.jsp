<%@page import="persistencia.CadastroProdutoBD"%>
<%
    int codigoProduto = Integer.parseInt(request.getParameter("codigoProduto"));
    CadastroProdutoBD.excluir(codigoProduto);
    response.sendRedirect("CadastroProduto.jsp");
%>