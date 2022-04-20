package entidade;

public class Apartamento extends Imovel{
    private int andar;

    public Apartamento(String local, double valorImovel, int andar) {
        super(local, valorImovel);
        this.andar = andar;
    }

    public int getAndar() {
        return andar;
    }
}
