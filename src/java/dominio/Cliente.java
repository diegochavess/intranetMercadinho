package dominio;

public class Cliente extends Pessoa{
    private String sexo;
    private String estadoCivil;
    private String profissao;
    private String renda;
    private String limite;
    private String cpf;

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getSexo() {
        return sexo;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }
    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }
    public String getProfissao() {
        return profissao;
    }

    public void setRenda(String novoRenda) {
        this.renda = novoRenda;
    }
    public String getRenda() {
        return renda;
    }

    public void setLimite(String limite) {
        this.limite = limite;
    }
    public String getLimite() {
        return limite;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getCpf() {
        return cpf;
    }
}
