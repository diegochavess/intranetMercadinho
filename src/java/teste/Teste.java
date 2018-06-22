
package teste;

import dominio.Login;
import persistencia.LoginBD;


public class Teste {
    public static void main(String[] args) {
        Login usuario = new Login();
        usuario.setCodigo(1);
        usuario.setLogin("SantaIzabel");
        usuario.setSenha("santaizabel");
        LoginBD.inserir(usuario);
        System.out.println("cadastrado");
    }
}
