<%@page import="dominio.CadastroProduto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistencia.CadastroProdutoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
    </head>
    
        <h1>Lista de Produtos</h1>
        <table>
            <thead>
                <tr>
                    <th>Produto</th>
                    <th>Preço</th>
                    <th>estoqueMinimo</th>
                    <th>estoqueAtual</th>
                </tr>
            </thead>
            <tbody>
        <%
        ArrayList<CadastroProduto> listaProdutos = CadastroProdutoBD.listar();
        
        for(int i=0; i < listaProdutos.size(); i++){
            CadastroProduto cadaCadastroProduto = listaProdutos.get(i);
        %>
        
        <tr>
            <td><%=cadaCadastroProduto.getProduto()%></td>
             <td><%=cadaCadastroProduto.getPreco()%></td>
               <td><%=cadaCadastroProduto.getEstoqueMinimo()%></td>
                <td><%=cadaCadastroProduto.getEstoqueAtual()%></td>
                <td> 
                    <a href="excluir.jsp?codigoProduto=<%=cadaCadastroProduto.getCodigoProduto()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a>
                    <a href="cadastroProduto.jsp?codigoProduto=<%=cadaCadastroProduto.getCodigoProduto()%>">Alterar</a>
                </td>  
        </tr>
           
        <%
        }
        %>
            </tbody>
        </table>
</html>
