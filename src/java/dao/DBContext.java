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

//    public DBContext() {
//        try {
//             String url = "jdbc:sqlserver://DESKTOP-P8PPKT2\\SQLEXPRESS:1433;databaseName=FCS";
//            String user = "sa";
//            String pass = "123";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }


     public DBContext() {
        try {

            String url = "jdbc:sqlserver://localhost:1433;databaseName=FCS_UPDATE";
            String user = "sa";
            String pass = "bacninh123";

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
//        public DBContext() {
//        try {
//
//             String url = "jdbc:sqlserver://DESKTOP-P8PPKT2\\SQLEXPRESS:1433;databaseName=FCS_UPDATE";
//            String user = "sa";
//            String pass = "bacninh123";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }

    

     
//      public DBContext() {
//        try {
//
//
//            String url = "jdbc:sqlserver://DESKTOP-PV3034R\\SQLEXPRESS:1433;databaseName=FCSchuannhat";
//            String user = "sa";
//            String pass = "12345";
//
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException ex) {
//            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
     

}
