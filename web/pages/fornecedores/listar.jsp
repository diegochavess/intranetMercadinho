<%@page import="dominio.Fornecedor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="persistencia.FornecedorBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Fornecedores</title>
    </head>
    
        <h1>Lista de Fornecedores</h1>
        <table>
            <thead>
                <tr>
                    <th>Empresa</th>
                    <th>CPF/CNPJ</th>
                    <th>Cidade</th>
                    <th>Telefone</th>
                </tr>
            </thead>
            <tbody>
        <%
        ArrayList<Fornecedor> fornecedores = FornecedorBD.listar();
        
        for(int i=0; i < fornecedores.size(); i++){
            Fornecedor cadaFornecedor = fornecedores.get(i);
        %>
        
        <tr>
            <td><%=cadaFornecedor.getEmpresa()%></td>
             <td><%=cadaFornecedor.getCpf()%></td>
               <td><%=cadaFornecedor.getCidade()%></td>
                <td><%=cadaFornecedor.getTelefone()%></td>
                <td> 
                    <a href="excluir.jsp?cpf=<%=cadaFornecedor.getCpf()%>" onclick="return confirm('Deseja realmente excluir?')">Excluir</a>
                    <a href="cadastrarFornecedor.jsp?cpf=<%=cadaFornecedor.getCpf()%>">Alterar</a>
                </td>  
        </tr>
        
        
        <%
        }
        %>
            </tbody>
        </table>
</html>
