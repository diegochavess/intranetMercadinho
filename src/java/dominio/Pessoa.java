package dominio;

public class Pessoa {
    private int codigo;
    private String nome;
    private String endereco;
    private String numero;
    private String cidade;
    private String uf;
    private String telefone;
    private String celular;
    private String email;
    private String senha;

    public int getCodigo() {
        return codigo;
    }
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    public void setNome(String novoNome){
        nome = novoNome;
    }
    public String getNome(){
        return nome;
    }
    
    public void setEndereco(String novoEndereco){
        endereco = novoEndereco;
    }
    public String getEndereco(){
        return endereco;
    }
    
    public void setNumero(String novoNumero){
        numero = novoNumero;
    }
    public String getNumero(){
        return numero;
    }
    
    public void setCidade(String novoCidade){
        cidade = novoCidade;
    }
    public String getCidade(){
        return cidade;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }
    public String getUf() {
        return uf;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getTelefone() {
        return telefone;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }
    public String getCelular() {
        return celular;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    public String getSenha() {
        return senha;
    }    
}
