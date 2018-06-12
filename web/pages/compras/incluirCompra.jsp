<%@page import="persistencia.EstoqueBD"%>
<%@page import="dominio.Estoque"%>
<%
    String empresa = request.getParameter("empresa");
    String ncompra = request.getParameter("ncompra");    
    String codigo = request.getParameter("codigo");
    String cnpj = request.getParameter("cnpj");
    String dataCadastro = request.getParameter("dataCadastro");
    String descricao = request.getParameter("descricao");
    String observacoes = request.getParameter("observacoes");
    
    
    Estoque estoque = new Estoque();
    estoque.setEmpresa(empresa);        
    estoque.setCodigo(codigo);
    estoque.setCnpj(cnpj);
    estoque.setDataCadastro(dataCadastro);
    estoque.setDescricao(descricao);
    estoque.setObservacoes(observacoes);
   
    
    // A classe de persistência EstoqueBD insere
    //o objeto estoque no banco de dados
    EstoqueBD.inserir(estoque);
    response.sendRedirect("compras.jsp?status=OK");
%>