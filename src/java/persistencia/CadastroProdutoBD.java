package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.CadastroProduto;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class CadastroProdutoBD {

    private static final String caminho = "G:\\novo projeto\\intranetMercadinho\\";
   
    private static ArrayList<CadastroProduto> lista = new ArrayList<CadastroProduto>();
    
    public static void inserir(CadastroProduto cadastroProduto){
        lerXml(); //lê o XML e preenche a lista de Produtos
        int ultimaPosicao = lista.size()-1;
        if (ultimaPosicao >= 0){
            CadastroProduto ultimoCadastroProduto = lista.get(ultimaPosicao);
            cadastroProduto.setCodigoProduto(ultimoCadastroProduto.getCodigoProduto()+1);
        }else{
            cadastroProduto.setCodigoProduto(1);
        }
        lista.add(cadastroProduto); //adiciona um produto no final da lista
        salvarXml(); //atualiza o xml com o que tem na lista
    }
    
    public static void alterar(CadastroProduto cadastroProduto){
        lerXml();
        excluir(cadastroProduto.getCodigoProduto());
        inserir(cadastroProduto);
        salvarXml();
    }
    
 
    public static void excluir(int codigoProduto){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            CadastroProduto cadaCadastroProduto = lista.get(i);
            
           
            if (cadaCadastroProduto.getCodigoProduto()== codigoProduto){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<CadastroProduto> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static CadastroProduto getCodigoProduto(int cogigoProduto){
        lerXml();
        CadastroProduto cadastroProdutoEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            CadastroProduto cadaCadastroProduto = lista.get(i);
            
            
            if (cadaCadastroProduto.getCodigoProduto()== (cogigoProduto)){
                cadastroProdutoEncontrado= cadaCadastroProduto;
                break;
            }
        }
        return cadastroProdutoEncontrado;
    }

    private static void lerXml(){
        File arquivo=new File(caminho + "cadastroProduto.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("cadastroProduto",CadastroProduto.class);
            lista = (ArrayList<CadastroProduto>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<CadastroProduto>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cadastroProduto",CadastroProduto.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "cadastroProduto.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
