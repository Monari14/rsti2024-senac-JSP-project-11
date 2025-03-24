package com.mycompany.contabancaria;

public class Conta {
    public int numero;
    private String nomePessoa, banco;
    private double saldo, limite;
    private String situacaoSaque, situacaoLimite;

    public Conta(int numero, String nomePessoa, String banco) {
        this.numero = numero;
        this.nomePessoa = nomePessoa;
        this.banco = banco;
        this.saldo = 0.0;
        this.limite = 0.0;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNomePessoa() {
        return nomePessoa;
    }

    public void setNomePessoa(String nomePessoa) {
        this.nomePessoa = nomePessoa;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    public void deposito(double valor){
        double saldoAtual = this.saldo;
        double novoSaldo = saldoAtual + valor;
        this.saldo = novoSaldo;
        this.situacaoLimite = "Depósito de R$" + valor + " realizado com sucesso!";
    }
    public void saque(double valor){
        double saldoAtual = this.saldo;
        double novoSaldo = saldoAtual;
        if(saldoAtual >= valor){
            novoSaldo = saldoAtual - valor;
            this.situacaoSaque = "Sacou R$" + valor + "!";
        }else if(saldoAtual < valor){
            this.situacaoSaque = "Saque de R$" + valor + " inválidado!";
        }else{
            this.situacaoSaque = "Não informou o valor do Saque";
        }
        this.saldo = novoSaldo;
    }
 
    public String imprimirSaldo(){
        String msg = "Saldo: " + this.saldo;
        return msg;
    }
    public double imprimirLimite(){
        return this.limite;
    }
}
