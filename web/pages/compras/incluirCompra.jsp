<%@page import="persistencia.EstoqueBD"%>
<%@page import="dominio.Estoque"%>
<%
    String empresa = request.getParameter("empresa");
    String numCompra = request.getParameter("numCompra");    
    String tipoCompra = request.getParameter("tipoCompra");
    String valorCompra = request.getParameter("valorCompra");
    String dataCompra = request.getParameter("dataCompra");
    String venceCompra = request.getParameter("venceCompra");
        
    valorCompra = valorCompra.replace(".", "");
    valorCompra = valorCompra.replace(" ","");
    valorCompra = valorCompra.replace("R$","");
    valorCompra = valorCompra.replace(",",".");
    
    Estoque estoque = new Estoque();
    estoque.setEmpresa(empresa);        
    estoque.setNumCompra(Integer.parseInt(numCompra));
    estoque.setTipoCompra(tipoCompra);
    estoque.setValorCompra(Double.parseDouble(valorCompra));    
    estoque.setDataCompra(dataCompra);
    estoque.setVenceCompra(venceCompra);
   
    
    // A classe de persistência EstoqueBD insere
    //o objeto estoque no banco de dados
    EstoqueBD.inserir(estoque);
    response.sendRedirect("compras.jsp?status=OK");
%>