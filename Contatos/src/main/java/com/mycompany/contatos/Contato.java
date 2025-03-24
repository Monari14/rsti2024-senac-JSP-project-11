
package com.mycompany.contatos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Contato {
    private String nome, telefone;
    private int id, idade;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getTelefone() { return telefone; }
    public void setTelefone(String telefone) { this.telefone = telefone; }

    public int getIdade() { return idade; }
    public void setIdade(int idade) { this.idade = idade; }
    
    public boolean salvar() {
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "INSERT INTO contatos (nome, telefone, idade) VALUES (?, ?, ?)";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getTelefone());
            ps.setInt(3, getIdade());
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
        String sql = "UPDATE contatos SET nome = ?, telefone = ?, idade = ? WHERE contatos.id = ?";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getTelefone());
            ps.setInt(3, getIdade());
            ps.setInt(4, getId());

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
        String sql = "DELETE FROM contatos WHERE contatos.id = ?";

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
    
    public static List<Contato> getAllContatos() {
        List<Contato> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM contatos";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Contato c = new Contato();
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setTelefone(rs.getString("telefone"));
                c.setIdade(rs.getInt("idade"));
                receitas.add(c);
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
    public static List<Contato> getContato(int id) {
        List<Contato> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM contatos where id = ?";

        try {
            conn = dbUtil.getConnetion();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                Contato c = new Contato();
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setTelefone(rs.getString("telefone"));
                c.setIdade(rs.getInt("idade"));
                receitas.add(c);
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
