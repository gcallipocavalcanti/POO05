/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.curso.web;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AulasJava {
    private int id;
    private String url;

    public AulasJava(int id, String url) {
        this.id = id;
        this.url = url;
    }
    
    public static AulasJava getAulas(String id) throws SQLException {
        String SQL = "SELECT * FROM aulas WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, id);
        ResultSet rs = s.executeQuery();
        AulasJava u = null;
        if (rs.next()) {
            u = new AulasJava(rs.getInt("id"),
                    rs.getString("link"));
        }
        rs.close();
        s.close();
        return u;
    }
            
}
