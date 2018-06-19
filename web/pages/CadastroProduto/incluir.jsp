<%@page import="persistencia.CadastroProdutoBD"%>
<%@page import="dominio. CadastroProduto"%>
<%
    String codigoProduto = request.getParameter("codigoProduto");
    String produto = request.getParameter("produto");
    String grupo = request.getParameter("grupo");
    String unidade = request.getParameter("unidade");
    String preco = request.getParameter("preco");
    String estoqueMinimo = request.getParameter("estoqueMinimo");
    String estoqueAtual = request.getParameter("estoqueAtual");
    
    preco = preco.replace(".", "");
    preco = preco.replace("R$", "");
    preco = preco.replace(" ", "");
    preco = preco.replace(",", ".");
    
    CadastroProduto cadastroProduto = new CadastroProduto();
    cadastroProduto.setCodigoProduto(Integer.parseInt(codigoProduto));
    cadastroProduto.setProduto(produto);
    cadastroProduto.setGrupo(grupo);
    cadastroProduto.setUnidade(unidade);
    cadastroProduto.setPreco(Double.parseDouble(preco));
    cadastroProduto.setEstoqueMinimo(Integer.parseInt(estoqueMinimo));
    cadastroProduto.setEstoqueAtual(Integer.parseInt(estoqueAtual));
    
    CadastroProdutoBD.inserir(cadastroProduto);
    response.sendRedirect("CadastroProduto.jsp?status=OK");
%>
