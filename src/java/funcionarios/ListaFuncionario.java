
package funcionarios;

import dominio.Login;
import persistencia.LoginBD;


public class ListaFuncionario {
    public static void main (String [] args){
        Login login = new Login ();
        login.setLogin("maria");
        login.setSenha("maria1004");
        login.setCodigo(1);
        LoginBD.inserir(login);
    }
}
