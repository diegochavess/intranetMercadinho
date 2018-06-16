package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Estoque;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class EstoqueBD {
    
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
