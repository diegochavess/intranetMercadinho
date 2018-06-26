
package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Fornecedor;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

/**
 *
 * @author behbr
 */
public class FornecedorBD {
    private static ArrayList<Fornecedor> lista = new ArrayList<Fornecedor>();
    private static String caminho = "D:\\FATEC\\2 Semestre\\PI\\IntranetMercadinho\\";
    public static void inserir(Fornecedor novoFornecedor){
        lerXml();
        lista.add(novoFornecedor);
        salvarXml();
    }
    
    public static void alterar(Fornecedor fornecedorAlterado){
        excluir(fornecedorAlterado.getCpf());
        inserir(fornecedorAlterado);
}

    public static void excluir(String cpf){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Fornecedor cadaFornecedor = lista.get(i);
            if (cadaFornecedor.getCpf().equals(cpf)){
            lista.remove(i);
            break;
        }
        }
        salvarXml();
    }
    public static ArrayList<Fornecedor>listar(){
        lerXml();
        return lista;
    }
    public static Fornecedor getByCpf(String cpf){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Fornecedor cadaFornecedor = lista.get(i);
            if (cadaFornecedor.getCpf().equals(cpf)){
            return cadaFornecedor;
            
        }
        
    }
        return null;
    }
    
    //pega o que esta no XML e coloca na lista
    public static void lerXml(){
        File arquivo=new File(caminho + "fornecedores.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("fornecedor",Fornecedor.class);
            lista = (ArrayList<Fornecedor>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Fornecedor>();
        }
    }
    //pega o que eata na lista e salva no XML
    public static void salvarXml(){
         XStream xstream = new XStream();
        xstream.alias("fornecedor",Fornecedor.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "fornecedores.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
