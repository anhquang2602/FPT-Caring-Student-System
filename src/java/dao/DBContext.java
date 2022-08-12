/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author long
 */
public abstract class DBContext {

    protected Connection connection;

<<<<<<< HEAD


=======
>>>>>>> f26197ffcce80fa93ff321949e2821dbb105c75f
    public DBContext() {
        try {

            String url = "jdbc:sqlserver://localhost:1433;databaseName=FCS_UPDATE";
            String user = "sa";
<<<<<<< HEAD

            String pass = "123456";

=======
            String pass = "12345678";
>>>>>>> f26197ffcce80fa93ff321949e2821dbb105c75f
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
<<<<<<< HEAD

=======
//    public DBContext() {
//        try {
//            String url = "jdbc:sqlserver://DESKTOP-JPH6L6A\\SQLEXPRESS01:1433;databaseName=FCS";
//            String user = "sa";
//            String pass = "123";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
    
>>>>>>> f26197ffcce80fa93ff321949e2821dbb105c75f
//       public DBContext() {
//        try {
//
//
//
//            String url = "jdbc:sqlserver://DESKTOP-PV3034R\\SQLEXPRESS:1433;databaseName=FCSchuannhat";
//
//            String user = "sa";

//            String pass = "123456";

//            String pass = "12345";

//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
}
