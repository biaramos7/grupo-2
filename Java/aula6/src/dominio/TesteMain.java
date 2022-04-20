package dominio;

import entidade.Apartamento;
import entidade.Casa;
import entidade.Imovel;
import entidade.Proprietario;

public class TesteMain {
    public static void main(String[] args) {
        Imovel im1 = new Apartamento("Logo ali", 500000, 5);
        Imovel im2 = new Casa("Logo ali", 456485465.6, true);

        Proprietario p1 = new Proprietario("Bia", im1);
        Proprietario p2 = new Proprietario("Rafael", im2);

        System.out.println("Proprietario: " + p1.getNome());
        System.out.println(p1.getImovel().toString());
        System.out.println("O valor a pagar será: " + p1.getImovel().calculaImpostoVenda());

        System.out.println("Proprietario: " + p2.getNome());
        System.out.println(p1.getImovel().toString());
        System.out.println("O valor a pagar será: " + p2.getImovel().calculaImpostoVenda());
    }
}
