package com.mycompany.receitas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbUtil {

    private static final String URL = "jdbc:mysql://localhost:3306/rsti2024";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnetion() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
