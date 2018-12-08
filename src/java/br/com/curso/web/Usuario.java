package br.com.curso.web;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class Usuario {

    private int id;
    private String nome;
    private String email;
    private String telefone;
    private String rgUsuario;
    private String login;
    private String passwordHash;
    private double nota1;
    private double nota2;
    private double nota3;
    private double nota4;

    public Usuario(int id, String nome, String email, String telefone, String rgUsuario, String login, String passwordHash, double nota1, double nota2, double nota3, double nota4) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.rgUsuario = rgUsuario;
        this.login = login;
        this.passwordHash = passwordHash;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.nota4 = nota4;
    }

    public static Usuario getUsuario(String login, String password) throws SQLException {
        String SQL = "SELECT * FROM usuarios WHERE login=? AND pass_hash=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, login);
        s.setString(2, password + "");
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario(rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"),
                    rs.getDouble("nota1"),
                    rs.getDouble("nota2"),
                    rs.getDouble("nota3"),
                    rs.getDouble("nota4"));
        }
        rs.close();
        s.close();
        return u;
    }

    public static Usuario getUsuarioAtual(String id) throws SQLException {
        String SQL = "SELECT * FROM usuarios WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, id);
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario(rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"),
                    rs.getDouble("nota1"),
                    rs.getDouble("nota2"),
                    rs.getDouble("nota3"),
                    rs.getDouble("nota4"));
        }
        rs.close();
        s.close();
        return u;
    }

    public static ArrayList<Usuario> getListaUsuario(int login) throws Exception {
        ArrayList<Usuario> list = new ArrayList<>();
        String SQL = "SELECT * FROM usuarios WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setInt(1, login);
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"),
                    rs.getDouble("nota1"),
                    rs.getDouble("nota2"),
                    rs.getDouble("nota3"),
                    rs.getDouble("nota4")
            );
            list.add(u);
        }
        rs.close();
        s.close();
        return list;
    }

    public static void addUsuario(String login, String password, String nome, String email, String telefone, String rgUsuario) throws Exception {
        String SQL = "INSERT INTO usuarios VALUES(default,?,?,?,?,?,?,null,null,null,null)";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)) {
            s.setString(1, nome);
            s.setString(2, login);
            s.setString(3, password);
            s.setString(4, email);
            s.setString(5, telefone);
            s.setString(6, rgUsuario);
            s.execute();
        }
    }

    public static void updateNota1(double notaJava1, int idUsuario) throws SQLException {
        String SQL = "UPDATE usuarios SET nota1 = ? where id=?";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)){
        s.setDouble(1, notaJava1);
        s.setInt(2, idUsuario);
        s.execute();
        }
    }
    
    
    
    public static void updateNota2(double notaJava2, int idUsuario) throws SQLException {
        String SQL = "UPDATE usuarios SET nota2 = ? where id=?";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)){
        s.setDouble(1, notaJava2);
        s.setInt(2, idUsuario);
        s.execute();
        }
    }
    
    public static void updateNota3(double notaPython1, int idUsuario) throws SQLException {
        String SQL = "UPDATE usuarios SET nota3 = ? where id=?";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)){
        s.setDouble(1, notaPython1);
        s.setInt(2, idUsuario);
        s.execute();
        }
    }
    
    public static void updateNota4(double notaPython2, int idUsuario) throws SQLException {
        String SQL = "UPDATE usuarios SET nota4 = ? where id=?";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)){
        s.setDouble(1, notaPython2);
        s.setInt(2, idUsuario);
        s.execute();
        }
    }
    
    public static void deleteUsuario(int id) throws Exception {
        String SQL = "DELETE FROM usuarios WHERE id = ?";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)) {
            s.setInt(1, id);
            s.execute();
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRgUsuario() {
        return rgUsuario;
    }

    public void setRgUsuario(String rgUsuario) {
        this.rgUsuario = rgUsuario;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }

    public double getNota4() {
        return nota4;
    }

    public void setNota4(double nota4) {
        this.nota4 = nota4;
    }

}
