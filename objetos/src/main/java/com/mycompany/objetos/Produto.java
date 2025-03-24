
package com.mycompany.objetos;

public class Produto {
    private String nome;
    private double valorProduto, lucro, valorVenda;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getValorProduto() {
        return valorProduto;
    }

    public void setValorProduto(double valorProduto) {
        this.valorProduto = valorProduto;
    }

    public double getLucro() {
        return lucro;
    }

    public void setLucro(double lucro) {
        this.lucro = lucro;
    }

    public double getValorVenda() {
        return valorVenda;
    }

    public void setValorVenda(double valorVenda) {
        this.valorVenda = (this.valorProduto *(this.lucro/100)+this.valorProduto);
    }
    public String mostrar(){
        return "<br>Nome: " + this.getNome() +
               "<br>Valor: " + this.getValorProduto() +
               "<br>Lucro: " + this.getLucro() +
               "<br>Valor Venda: " + this.getValorVenda();
    }
    
}
