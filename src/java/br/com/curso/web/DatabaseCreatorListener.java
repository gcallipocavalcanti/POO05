package br.com.curso.web;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Date;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DatabaseCreatorListener implements ServletContextListener {

   
    private void createTabelaUsuarios(Statement s) {
        try {
            s.execute("CREATE TABLE usuarios(\n"
                    + "    id INTEGER NOT NULL GENERATED ALWAYS \n"
                    + "        AS IDENTITY (START WITH 1, INCREMENT BY 1)\n"
                    + "    , nome varchar(200) not null\n"
                    + "    , login varchar(50)  not null\n"
                    + "    , pass_hash varchar(200) not null\n"
                    + "    , email varchar(200) \n"
                    + "    , telefone varchar(13) \n"
                    + "    , rgUsuario varchar(10) \n"
                    + "    )");
            System.out.println("Criada tabela users.");
            s.execute("INSERT INTO usuarios VALUES("
                    + "default"
                    + ", 'Administrador do Sistema'"
                    + ", 'admin'"
                    + ", '" + "1234".hashCode() + "'"
                    + ")");
            System.out.println("Usuário admin criado com a senha '1234'.");
        } catch (Exception ex2) {
            System.out.println("Ero ao criar a users: " + ex2.getMessage());
        }
    }

    private void createVehicleStaysTable(Statement s) {
        try {
            s.execute("CREATE TABLE vehicles_stays(\n"
                    + "    id  INTEGER NOT NULL GENERATED ALWAYS \n"
                    + "        AS IDENTITY (START WITH 1, INCREMENT BY 1)\n"
                    + "    , vehicle_model varchar(50) not null\n"
                    + "    , vehicle_color varchar(20) not null\n"
                    + "    , vehicle_plate varchar(7) not null\n"
                    + "    , begin_stay timestamp not null\n"
                    + "    , end_stay timestamp\n"
                    + "    , price numeric(10,2)\n"
                    + ")");
            System.out.println("Criada tabela vehicles_stays.");
        } catch (Exception ex2) {
            System.out.println("Ero ao criar a vehicles_stays: " + ex2.getMessage());
        }
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String url = "jdbc:derby:c:/derby/projetoCurso;create=true";
            Connection c = DriverManager.getConnection(url);
            Statement s = c.createStatement();
            System.out.println(new Date());
            System.out.println("Iniciando a criação do BD.");
            createTabelaUsuarios(s);
            createVehicleStaysTable(s);
            s.close();
            c.close();
            DriverManager.getConnection("jdbc:derby:c:/derby/projetoCurso;shutdown=true");
        } catch (Exception ex) {
            System.out.println("Erro: " + ex.getMessage());
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
