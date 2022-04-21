package br.com.serratec.entities;

import java.time.LocalDate;

public abstract class Veiculo implements Oficina{
    protected String modelo;
    protected LocalDate dataConserto;
    protected double valorCobrado;
    protected Proprietario proprietario;

    public Veiculo(String modelo, LocalDate dataConserto, Proprietario proprietario) {
        this.modelo = modelo;
        this.dataConserto = dataConserto;
        this.valorCobrado = valorCobrado;
        this.proprietario = proprietario;
    }

    public double getValorCobrado() {
        return valorCobrado;
    }

    @Override
    public String toString() {
        return "Veiculo{" +
                "modelo='" + modelo + '\'' +
                ", dataConserto=" + dataConserto +
                ", valorCobrado=" + valorCobrado +
                ", proprietario=" + proprietario +
                '}';
    }


}
