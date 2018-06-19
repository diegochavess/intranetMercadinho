package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Estoque;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
public class EstoqueBD {
    
    private static String caminho = "C:\\Users\\Cilin\\Desktop\\GTI\\intranetMercadinho\\";
    
    private static ArrayList<Estoque> lista = new ArrayList<Estoque>();
    //adiciona um objeto da classe Estoque 
    //na lista que simula o banco de dados
    public static void inserir(Estoque estoque){
        lerXml();//le o XML e preenche a lista de estoque
        //pega o ultimo estoque cadastrado
    int ultimaPosicao = lista.size()-1;
    if(ultimaPosicao >= 0){ //se a lista não estiver vazia
    Estoque ultimoEstoque = lista.get(ultimaPosicao);
    estoque.setnCompra(ultimoEstoque.getnCompra()+1);
    }else{
        // se não tem niguem na lista, o ncompra é 1
        estoque.setnCompra(1);
    }
        lista.add(estoque);//adiciona um estoque pro final da lista
        salvarXml();//atualiza o XML com o que tem na lista
    
    
    
    }
    public static void alterar(Estoque estoque){
        lerXml();
        excluir(estoque.getnCompra());
        inserir(estoque);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Estoque
    public static void excluir(int ncompra){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Estoque cadaEstoque = lista.get(i);
            
            //procura o estoque que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaEstoque.getnCompra()==ncompra){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Estoque> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Estoque getByEmpresa(String empresa){
        lerXml();
        Estoque estoqueEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Estoque cadaEstoque = lista.get(i);
            
            //procura o estoque que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaEstoque.getEmpresa().equals(empresa)){
                estoqueEncontrado = cadaEstoque;
                break;
            }
        }
        return estoqueEncontrado;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "estoquees.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("estoque",Estoque.class);
            lista = (ArrayList<Estoque>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Estoque>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("estoque",Estoque.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "estoquees.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
/*public class EstoqueBD {
    
    private static final String caminho = "C:\\Users\\Cilin\\Desktop\\GTI\\intranetMercadinho\\";
    
    private static ArrayList<Estoque> lista = new ArrayList<Estoque>();
    //adiciona um objeto da classe Estoque 
    //na lista que simula o banco de dados
    public static void inserir(Estoque estoque){
        lerXml(); //lê o XML e preenche a lista de Estoque
        lista.add(estoque); //adiciona um estoque no final da lista
        salvarXml(); //atualiza o xml com o que tem na lista
    }
    private static void lerXml(){
        File arquivo=new File(caminho + "estoque.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("estoque",Estoque.class);
            lista = (ArrayList<Estoque>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Estoque>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("estoque",Estoque.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "estoque.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
*/