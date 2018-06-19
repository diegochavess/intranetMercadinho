package dominio;

public class Cliente extends Pessoa{
    private String sexo;
    private String estadoCivil;
    private String profissao;
    private double renda;
    private double limite;
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

    public void setRenda(double novoRenda) {
        this.renda = novoRenda;
    }
    public double getRenda() {
        return renda;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }
    public double getLimite() {
        return limite;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getCpf() {
        return cpf;
    }
}
