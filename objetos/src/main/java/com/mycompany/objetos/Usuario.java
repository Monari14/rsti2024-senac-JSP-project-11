
package com.mycompany.objetos;

public class Usuario {
    private String nome, sexo;
    private int idade;

    public Usuario(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
    public double getIdade() { return idade; }
    public void setIdade(int idade) { this.idade = idade; }

    public String getSexo() { return sexo; }
    public void setSexo(String sexo) { this.sexo = sexo; }
    
    public String imprimir(){
        return "<p><strong>Informações Atualizadas</strong>: Nome: " + this.nome + " | Idade: Descubra | Sexo: " + this.sexo + "</p>";
    }
    /*
    input -> nome
    Pedro -> setNome();
    getNome(); -> Pedro
    */
}
