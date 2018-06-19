package dominio;



public class Estoque{
    private String empresa;
    private int nCompra;
    private String tipoCompra;
    private double valorCompra;
    private String dataCompra;
    private String venceCompra;

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public int getnCompra() {
        return nCompra;
    }

    public void setnCompra(int nCompra) {
        this.nCompra = nCompra;
    }

    public String getTipoCompra() {
        return tipoCompra;
    }

    public void setTipoCompra(String tipoCompra) {
        this.tipoCompra = tipoCompra;
    }

    public double getValorCompra() {
        return valorCompra;
    }

    public void setValorCompra(double valorCompra) {
        this.valorCompra = valorCompra;
    }

    public String getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(String dataCompra) {
        this.dataCompra = dataCompra;
    }

    public String getVenceCompra() {
        return venceCompra;
    }

    public void setVenceCompra(String venceCompra) {
        this.venceCompra = venceCompra;
    }

}