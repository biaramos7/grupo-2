package entidade;

public class Imovel {
    protected String local;
    private double valorImovel;

    //construtor
    public Imovel(String local, double valorImovel) {
        this.local = local;
        this.valorImovel = valorImovel;
    }

    //toString
    @Override
    public String toString() {
        return "Imovel{" +
                "local='" + local + '\'' +
                ", valorImovel=" + valorImovel +
                '}';
    }

    //metodo
    public double calculaImpostoVenda(){
        double valorITBI;
        return valorITBI = valorImovel*0.035;
    }
}
