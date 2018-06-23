package dominio;



public class Estoque{
    private String empresa;
    private int numCompra;
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

    public int getNumCompra() {
        return numCompra;
    }

    public void setNumCompra(int numCompra) {
        this.numCompra = numCompra;
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