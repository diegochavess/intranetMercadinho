<%@page import="persistencia.EstoqueBD"%>
<%@page import="dominio. Estoque"%>
<%
    String codigoProduto = request.getParameter("codigoProduto");
    String produto = request.getParameter("produto");
    String grupo = request.getParameter("grupo");
    String unidade = request.getParameter("unidade");
    String preco = request.getParameter("preco");
    String estoqueMinimo = request.getParameter("estoqueMinimo");
    String estoqueAtual = request.getParameter("estoqueAtual");
    
    
    Estoque estoque = new Estoque();
    estoque.setCodigoProduto(Integer.parseInt(codigoProduto));
    estoque.setProduto(produto);
    estoque.setGrupo(grupo);
    estoque.setUnidade(unidade);
    estoque.setPreco(Double.parseDouble(preco));
    estoque.setEstoqueMinimo(Integer.parseInt(estoqueMinimo));
    estoque.setEstoqueAtual(Integer.parseInt(estoqueAtual));
    
    EstoqueBD.inserir(estoque);
    response.sendRedirect("CadastroProduto.jsp?status=OK");
%>
