package br.com.serratec.entities;

import java.time.LocalDate;

public class Carro extends Veiculo{
    private String categoria;

    public Carro(String modelo, LocalDate dataConserto, double valorCobrado, Proprietario proprietario, String categoria) {
        super(modelo, dataConserto, proprietario);
        this.categoria = categoria;
    }

    public Carro(String modelo, LocalDate dataConserto, Proprietario proprietario, String categoria) {
        super(modelo, dataConserto, proprietario);
        this.categoria = categoria;
    }

    public String getCategoria() {
        return categoria;
    }

    @Override
    public double lavarVeiculo() {
        return 0;
    }

    @Override
    public double trocarOleo() {
        return 0;
    }

    @Override
    public double revisao() {
        return 0;
    }
}
