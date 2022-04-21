package br.com.serratec.entities;

import java.time.LocalDate;

public class Moto extends Veiculo{
    private int cilindrada;

    public Moto(String modelo, LocalDate dataConserto, double valorCobrado, Proprietario proprietario, int cilindrada) {
        super(modelo, dataConserto, proprietario);
        this.cilindrada = cilindrada;
    }
}
