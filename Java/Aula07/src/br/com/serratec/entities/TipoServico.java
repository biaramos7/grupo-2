package br.com.serratec.entities;

public enum TipoServico {
    OLEO(100), LAVAGEM(50), REVISAO(200);
    private double valorPorServico;

    TipoServico(double valorPorServico) {
        this.valorPorServico = valorPorServico;
    }

    public double getValorPorServico() {
        return valorPorServico;
    }
}
