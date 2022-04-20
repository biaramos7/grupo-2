package entidade;

public class Casa extends Imovel{
    private boolean garagem;

    public Casa(String local, double valorImovel, boolean garagem) {
        super(local, valorImovel); //puxa da classe principal
        this.garagem = garagem;
    }
}
