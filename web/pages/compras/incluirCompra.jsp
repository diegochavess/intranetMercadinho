<%@page import="persistencia.EstoqueBD"%>
<%@page import="dominio.Estoque"%>
<%
    String empresa = request.getParameter("empresa");
    String ncompra = request.getParameter("nCompra");    
    String tipocompra = request.getParameter("tipoCompra");
    String valorcompra = request.getParameter("valorCompra");
    String datacompra = request.getParameter("dataCadastro");
    String venceCompra = request.getParameter("venceCompra");
        
    valorcompra = valorcompra.replace(".", "");
    valorcompra = valorcompra.replace(" ","");
    valorcompra = valorcompra.replace("R$","");
    valorcompra = valorcompra.replace(",",".");
    
    Estoque estoque = new Estoque();
    estoque.setEmpresa(empresa);        
    estoque.setnCompra(ncompra);
    estoque.setTipoCompra(tipocompra);
    estoque.setValorCompra(Double.parseDouble(valorcompra));    
    estoque.setDataCompra(datacompra);
    estoque.setvenceCompra(vencecompra);
   
    
    // A classe de persistência EstoqueBD insere
    //o objeto estoque no banco de dados
    EstoqueBD.inserir(estoque);
    response.sendRedirect("compras.jsp?status=OK");
%>