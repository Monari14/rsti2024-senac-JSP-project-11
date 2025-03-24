
package com.mycompany.objetos;

public class Calculadora {
    private double valorA, valorB, resultado;

    public Calculadora(double valorA, double valorB) {
        this.valorA = valorA;
        this.valorB = valorB;
    }

    public double getValorA() { return valorA; }
    public void setValorA(double valorA) { this.valorA = valorA; }

    public double getValorB() { return valorB; }
    public void setValorB(double valorB) { this.valorB = valorB; }
    
    public String somar(){
        this.resultado = this.valorA + this.valorB;
        return "<br>Soma: " + this.resultado;
    }
    public String dividir(){
        this.resultado = this.valorA / this.valorB;
        return "<br>Divisão: " + this.resultado;    
    }
    public String subtrair(){
        this.resultado = this.valorA - this.valorB;
        return "<br>Subtração: " + this.resultado;    
    }
    public String multiplicar(){
        this.resultado = this.valorA * this.valorB;
        return "<br>Multiplicação: " + this.resultado;
    }
    
}
