
package com.mycompany.despesascasa;


public class Despesas {
    
    private String data, categoria, descricao, local;
    private double valor, valorParcelas;
    private int parcelas;

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public double valorParcelas() {
        return this.valor / this.parcelas;
    }

    public int getParcelas() {
        return parcelas;
    }

    public void setParcelas(int parcelas) {
        this.parcelas = parcelas;
    }
    public String imprimir(){
        return "Data: " + this.getData() + "<br>" +
               "Categoria: " + this.getCategoria() + "<br>" +
               "Descrição: " + this.getDescricao() + "<br>" +
               "Local: " + this.getLocal() + "<br>" +
               "Valor: R$" + this.getValor() + "<br>" +
               "Parcelas: " + this.getParcelas() + "x<br>" +
               "Valor Parcelas: R$" + String.format("%.2f", this.valorParcelas()) + "<br>";
    }
}
