package com.mycompany.receitas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Receita {
    private int id;
    private String nome;
    private String descricao;
    private int tempoPreparo;
    private int porcoes;
    private String ingredientes;
    private String preparo;

    // Getters e Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getDescricao() { return descricao; }
    public void setDescricao(String descricao) { this.descricao = descricao; }

    public int getTempoPreparo() { return tempoPreparo; }
    public void setTempoPreparo(int tempoPreparo) { this.tempoPreparo = tempoPreparo; }

    public int getPorcoes() { return porcoes; }
    public void setPorcoes(int porcoes) { this.porcoes = porcoes; }

    public String getIngredientes() { return ingredientes; }
    public void setIngredientes(String ingredientes) { this.ingredientes = ingredientes; }

    public String getPreparo() { return preparo; }
    public void setPreparo(String preparo) { this.preparo = preparo; }

    
    
    // Método para salvar a receita no banco de dados
    public boolean salvar() {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "INSERT INTO receitas (nome, descricao, tempo_preparo, "
                + "porcoes, ingredientes, preparo) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getDescricao());
            ps.setInt(3, getTempoPreparo());
            ps.setInt(4, getPorcoes());
            ps.setString(5, getIngredientes());
            ps.setString(6, getPreparo());

            int rowsInserted = ps.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    
    
    //Método para atualizar um registro na tabela 
    public boolean atualizar() {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "UPDATE receitas SET nome = ?, descricao = ?, tempo_preparo = ?, porcoes = ?, ingredientes = ?, preparo = ? WHERE receitas.id = ?";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getDescricao());
            ps.setInt(3, getTempoPreparo());
            ps.setInt(4, getPorcoes());
            ps.setString(5, getIngredientes());
            ps.setString(6, getPreparo());
            ps.setInt(7, getId());

            int rowsUpdate = ps.executeUpdate();
            return rowsUpdate > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    
    //Método para atualizar um registro na tabela 
    public boolean deletar() {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "DELETE FROM receitas WHERE receitas.id = ?";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, getId());

            int rowsDeleted = ps.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    
    
    // Método para retornar todas as receitas do banco de dados
    public static List<Receita> getAllReceitas() {
        List<Receita> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM receitas";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Receita receita = new Receita();
                receita.setId(rs.getInt("id"));
                receita.setNome(rs.getString("nome"));
                receita.setDescricao(rs.getString("descricao"));
                receita.setTempoPreparo(rs.getInt("tempo_preparo"));
                receita.setPorcoes(rs.getInt("porcoes"));
                receita.setIngredientes(rs.getString("ingredientes"));
                receita.setPreparo(rs.getString("preparo"));
                receitas.add(receita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return receitas;
    }
    
    
    
    // Método para retornar somente uma receitas do banco de dados
    public static List<Receita> getReceita(int id) {
        List<Receita> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM receitas where id = ?";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                Receita receita = new Receita();
                receita.setId(rs.getInt("id"));
                receita.setNome(rs.getString("nome"));
                receita.setDescricao(rs.getString("descricao"));
                receita.setTempoPreparo(rs.getInt("tempo_preparo"));
                receita.setPorcoes(rs.getInt("porcoes"));
                receita.setIngredientes(rs.getString("ingredientes"));
                receita.setPreparo(rs.getString("preparo"));
                receitas.add(receita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return receitas;
    }   
}