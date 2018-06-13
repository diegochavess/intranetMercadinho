package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Login;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class LoginBD {
    private static ArrayList<Login> lista = new ArrayList<Login>();
    private static String caminho = "F: \\PI\\NOVOPROJETO\\intranetMercadinho\\";
    
    public static void inserir(Login novoLogin){
        lerXml();
        lista.add(novoLogin);
        salvarXml();
    }
        
    public static void alterar(Login LoginAlterado){
        excluir(LoginAlterado.getcodigo());
        inserir(LoginAlterado);
    }
    
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Login cadaLogin = lista.get(i);
            if (cadaLogin.getcodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    
    public static ArrayList<Login> listar(){
        lerXml();
        return lista;
    }
        
    //pega o que está no XML e coloca na lista 
    public static void lerXml(){
        File arquivo=new File(caminho + "Logins.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("Login",Login.class);
            lista = (ArrayList<Login>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Login>();
        }
    }
    
    //pega o que está na lista e salva no XML
    public static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("Login",Login.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "Logins.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }   
    }
    
    public static Login procurarPorLoginSenha(String login, String senha){
        lerXml();
        Login LoginEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Login Login = lista.get(i);
            if (Login.getLogin().equals(login) && Login.getSenha().equals(senha)){
                LoginEncontrado = Login;
                break;
            }
        }
        return LoginEncontrado;
    }
}