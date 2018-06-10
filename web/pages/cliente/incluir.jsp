<%@page import="persistencia.ClienteBD"%>
<%@page import="dominio.Cliente"%>
<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String numero = request.getParameter("numero");
    String cidade = request.getParameter("cidade");
    String uf = request.getParameter("uf");
    String telefone = request.getParameter("telefone");
    String celular = request.getParameter("celular");
    String email = request.getParameter("email");
    String sexo = request.getParameter("sexo");
    String estadoCivil = request.getParameter("estadoCivil");
    String profissao = request.getParameter("profissao");
    String renda = request.getParameter("renda");
    String limite = request.getParameter("limite");
    String cpf = request.getParameter("cpf");
    
    Cliente cliente = new Cliente();
    cliente.setNome(nome);
    cliente.setEndereco(endereco);
    cliente.setNumero(numero);
    cliente.setCidade(cidade);
    cliente.setUf(uf);
    cliente.setTelefone(telefone);
    cliente.setCelular(celular);
    cliente.setEmail(email);
    cliente.setSexo(sexo);
    cliente.setEstadoCivil(estadoCivil);
    cliente.setProfissao(profissao);
    cliente.setRenda(renda);
    cliente.setLimite(limite);
    cliente.setCpf(cpf);
    
    // A classe de persistência ClienteBD insere
    //o objeto cliente no banco de dados
    ClienteBD.inserir(cliente);
    response.sendRedirect("cadastrarCliente.jsp?status=OK");
%>
