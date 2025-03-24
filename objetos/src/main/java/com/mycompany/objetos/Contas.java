
package com.mycompany.objetos;

public class Contas {
    private String receitas, despesas, mes;
    private double saldo;
    public String getReceitas() {
        return receitas;
    }

    public void setReceitas(String receitas) {
        this.receitas = receitas;
    }

    public String getDespesas() {
        return despesas;
    }

    public void setDespesas(String despesas) {
        this.despesas = despesas;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public double getSaldo() {
        double receitas = Double.parseDouble(this.getReceitas());
        double despesas = Double.parseDouble(this.getDespesas());
        this.saldo = receitas - despesas;
        return saldo;
    }

    public String mostrar(){
        return "<br>Receitas: R$" + this.getReceitas() +
               "<br>Despesas: R$" +this.getDespesas() +
               "<br>Saldo: R$" + this.getSaldo() +
               "<br>Mês: " + this.getMes();
    }

    
}
