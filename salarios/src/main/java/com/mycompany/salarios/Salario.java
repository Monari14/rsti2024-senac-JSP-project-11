package com.mycompany.salarios;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class Salario {
    private String 
        nome, 
        dataEntrada, 
        funcoes, 
        qntHorasExtras, 
        mesReferencias, 
        anoReferencias, 
        utiliza1, 
        utiliza2,
        possivelDescontos,
        dependentes;

    private int idade;
    private String uti1, uti2;
    private double salarioFinal;
    
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getDataEntrada() { return dataEntrada; }
    public void setDataEntrada(String dataEntrada) { this.dataEntrada = dataEntrada; }

    public String getFuncoes() { return funcoes; }
    public void setFuncoes(String funcoes) { this.funcoes = funcoes; }

    public String getQntHorasExtras() { return qntHorasExtras; }
    public void setQntHorasExtras(String qntHorasExtras) { this.qntHorasExtras = qntHorasExtras; }

    public String getMesReferencias() { return mesReferencias; }
    public void setMesReferencias(String mesReferencias) { this.mesReferencias = mesReferencias; }

    public String getAnoReferencias() { return anoReferencias; }
    public void setAnoReferencias(String anoReferencias) { this.anoReferencias = anoReferencias; }

    public String getUtiliza1() { return utiliza1; }
    public void setUtiliza1(String utiliza1) { this.utiliza1 = utiliza1; }

    public String getUtiliza2() { return utiliza2; }
    public void setUtiliza2(String utiliza2) { this.utiliza2 = utiliza2; }

    public String getPossivelDescontos() { return possivelDescontos;}
    public void setPossivelDescontos(String possivelDescontos) { this.possivelDescontos = possivelDescontos; }

    public String getDependentes() { return dependentes; }
    public void setDependentes(String dependentes) { this.dependentes = dependentes; }

    
    public int getIdade() { return idade; }
    public void setIdade(int idade) { this.idade = idade; }

    public String getUti1() { return uti1; }
    public void setUti1(String uti1) { this.uti1 = uti1; }

    public String getUti2() { return uti2; }
    public void setUti2(String uti2) { this.uti2 = uti2; }

    public double getSalarioFinal() { return salarioFinal; }
    public void setSalarioFinal(double salarioFinal) { this.salarioFinal = salarioFinal; }

    
    
    public double calculo() throws ParseException {
        int qnthora = Integer.parseInt(this.getQntHorasExtras());

        int filho = Integer.parseInt(this.getDependentes());

        double salarioCargo = 0.0;
        double valorHoraTrabalho = 0.0;
        if(this.getFuncoes() != null){
            switch (this.getFuncoes()){
                case "Produção":
                    salarioCargo = 1589.43;
                    valorHoraTrabalho = (salarioCargo / 44) * 0.5;
                    break;
                case "Comercial":
                    salarioCargo = 2129.45;
                    valorHoraTrabalho = (salarioCargo / 44) * 0.5;
                    break;
                case "Financeira":
                    salarioCargo = 2789.32;
                    valorHoraTrabalho = (salarioCargo / 44) * 0.5;
                    break;
                case "Recursos Humanos":
                    salarioCargo = 2789.32;
                    valorHoraTrabalho = (salarioCargo / 44) * 0.5;
                    break;
                case "Gerência":
                    salarioCargo = 3589.58;
                    valorHoraTrabalho = (salarioCargo / 44) * 0.5;
                    break;
            }
        }
        double ganhoHoraExtra = valorHoraTrabalho * qnthora;
        double salarioAteAgora = ganhoHoraExtra + salarioCargo;
        double reajusteF = 0.0;
        double descontado1 = 0.0;
        double descontado2 = 0.0;
        //double descontado2 = 0.0;
        if(this.getIdade() > 5){
            reajusteF = (salarioAteAgora * 0.05) + salarioAteAgora;
        }else{
            reajusteF = salarioAteAgora;
        }
        if(this.getUtiliza1() != null){
            descontado1 = reajusteF - (reajusteF * 0.05);
        }else{
            descontado1 = reajusteF;
        }
        if(this.getUtiliza2() != null){
            descontado2 = descontado1 - (descontado1 * 0.045);
        }else{
            descontado2 = descontado1;
        }
        //double somaDescontado = descontado1 + descontado2;
        double salarioFinal = 0.0;
            if(descontado2 < 1819.26){
                salarioFinal = descontado2 + (62.04 * filho);
            }else{
                salarioFinal = descontado2;
            }
            Salario s = new Salario();
            s.setSalarioFinal(salarioFinal);
        return salarioFinal;
    }
    
    public String mostra() throws ParseException{
            String uti1 = "";
            String uti2 = "";
            if(this.getUtiliza1() != null && this.getUtiliza2() != null){
                uti1 = this.getUtiliza1() + " e ";                
                uti2 = this.getUtiliza2();
            }
            if (this.getUtiliza1() == null) {
                uti1 = ""; 
            }else if(this.getUtiliza1() != null){ 
                uti1 = this.getUtiliza1();
            }
            
            if (this.getUtiliza2() == null) {
                uti2 = ""; 
            }else if(this.getUtiliza2() != null){ 
                uti2 = this.getUtiliza2();
            }
        return "<center><br>Nome: "+this.getNome() +
               "<br>Data de Entrada: " +this.getDataEntrada() +
               "<br>Tempo na Empresa: " + this.getIdade() + " anos" +
               "<br>Função: " + this.getFuncoes() +
               "<br>Horas Extras: " + this.getQntHorasExtras() +
               "<br>Mês de Referência: " + this.getMesReferencias() +
               "<br>Ano de Referência: " + this.getAnoReferencias() +
               "<br>Utiliza: " + uti1 + " " + uti2 +
               "<br>Dependentes: " + this.getDependentes() +
               "<br>Possíveis Descontos: " + this.getPossivelDescontos() +
               "<br>Salário Destinado: R$"+ String.format("%.2f", this.calculo()) +
               "</center>";

        }
    }
