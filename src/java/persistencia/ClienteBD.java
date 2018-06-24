package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Cliente;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class ClienteBD {
    
    private static final String caminho = "D:\\FATEC\\2 Semestre\\PI\\IntranetMercadinho\\";
    
    private static ArrayList<Cliente> lista = new ArrayList<Cliente>();
    //adiciona um objeto da classe Cliente 
    //na lista que simula o banco de dados
    public static void inserir(Cliente cliente){
        lerXml(); //lê o XML e preenche a lista de Cliente
        int ultimaPosicao = lista.size()-1;
        if (ultimaPosicao >= 0){
            Cliente ultimoCliente = lista.get(ultimaPosicao);
            cliente.setCodigo(ultimoCliente.getCodigo()+1);
        }else{
            cliente.setCodigo(1);
        }
        lista.add(cliente); //adiciona um cliente no final da lista
        salvarXml(); //atualiza o xml com o que tem na lista
    }
    
    public static void alterar(Cliente cliente){
        lerXml();
        excluir(cliente.getCodigo());
        inserir(cliente);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Cliente
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Cliente cadaCliente = lista.get(i);
            
            //procura o cliente que tem o CODIGO igual 
            //Ã  variÃ¡vel "codigo", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCliente.getCodigo() == codigo){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Cliente> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Cliente getNome(String nome){
        lerXml();
        Cliente clienteEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Cliente cadaCliente = lista.get(i);
            
            //procura o cliente que tem o NOME igual 
            //Ã  variÃ¡vel "nome", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCliente.getNome().equals(nome)){
                clienteEncontrado = cadaCliente;
                break;
            }
        }
        return clienteEncontrado;
    }

    public static Cliente getByCpf(String cpf){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Cliente cadaCliente = lista.get(i);
            
            //procura o cliente que tem o CODIGO igual 
            //Ã  variÃ¡vel "codigo", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaCliente.getCpf().equals(cpf)){
                return cadaCliente;
            }
        }
        return null;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "clientes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("cliente",Cliente.class);
            lista = (ArrayList<Cliente>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Cliente>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cliente",Cliente.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "clientes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
