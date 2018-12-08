package br.com.curso.web;
import java.sql.DriverManager;
import java.sql.Connection;

public class Database {
    private static Connection connection;
    private static Exception connectionException;
    
    public static Connection getConnection(){
        if(connection == null){
            try{
                Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
                String url = "jdbc:derby:c:/derby/projetoCurso;create=true";
                connection = DriverManager.getConnection(url);
                connectionException = null;
            }catch(Exception ex){
                connectionException = ex;
                try{
                    DriverManager.getConnection
                    ("jdbc:derby:c:/derby/projetoCurso;shutdown=true");
                }catch(Exception ex2){}
                connection = null;
            }
        }
        return connection;
    }
    
    public static Exception getConnectionException(){
        return connectionException;
    }
}