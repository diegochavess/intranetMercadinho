<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="persistencia.FornecedorBD"%>
<%@page import="dominio.Fornecedor"%>

<%
    String idalterado = request.getParameter("idalterado");
    String empresa = request.getParameter("empresa");
    String codigo = request.getParameter("codigo");
    String cpf = request.getParameter("cpf");
    String data = request.getParameter("data");
    String cidade = request.getParameter("cidade");
    String uf = request.getParameter("uf");
    String endereco = request.getParameter("endereco");
    String numero = request.getParameter("numero");
    String telefone = request.getParameter("telefone");
    String celular = request.getParameter("celular");
    String email = request.getParameter("email");

    SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
    Date dataX = formato.parse(data);

    Fornecedor fornecedor;
    if (!idalterado.equals("null")) {
        fornecedor = FornecedorBD.getByCpf(idalterado);
    } else {
        fornecedor = new Fornecedor();
    }
    fornecedor.setEmpresa(empresa);
    fornecedor.setCodigo(codigo);
    fornecedor.setCpf(cpf);
    fornecedor.setData(dataX);
    fornecedor.setCidade(cidade);
    fornecedor.setUf(uf);
    fornecedor.setEndereco(endereco);
    fornecedor.setNumero(numero);
    fornecedor.setTelefone(telefone);
    fornecedor.setCelular(celular);
    fornecedor.setEmail(email);

    if (idalterado != "null") {
        FornecedorBD.alterar(fornecedor);
    } else {
        FornecedorBD.inserir(fornecedor);
    }
    response.sendRedirect("cadastrarFornecedor.jsp?status=OK");


%>