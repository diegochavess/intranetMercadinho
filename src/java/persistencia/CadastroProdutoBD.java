package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.CadastroProduto;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class CadastroProdutoBD {

    private static final String caminho = "C:\\Users\\felip\\Desktop\\intranetMercadinho-master (4)\\";
    private static ArrayList<CadastroProduto> lista = new ArrayList<CadastroProduto>();

    public static void inserir(CadastroProduto novoCadastroProduto) {
        lerXml();
        lista.add(novoCadastroProduto);
        salvarXml();
    }

    public static void alterar(CadastroProduto cadastroProdutoAlterado) {
        excluir(cadastroProdutoAlterado.getCodigoProduto());
        inserir(cadastroProdutoAlterado);

    }

    public static void excluir(int codigoProduto) {
        for (int i = 0; i < lista.size(); i++) {
            CadastroProduto cadaEstoque = lista.get(i);
            if (cadaEstoque.getCodigoProduto()==codigoProduto) {
                lista.remove(i);
                break;
            }
        }
    }

    public static ArrayList<CadastroProduto> listar() {
           return lista;
           
    }
 private static void lerXml(){
        File arquivo=new File(caminho + "Estoque.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("estoque",CadastroProduto.class);
            lista = (ArrayList<CadastroProduto>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<CadastroProduto>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("estoque",CadastroProduto.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "estoque.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
