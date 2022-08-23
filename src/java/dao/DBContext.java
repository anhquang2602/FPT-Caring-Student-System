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
     public DBContext() {
=======

    public DBContext() {
>>>>>>> 78707b25053ba382b1881c3e356ce3dc45fd8d71
        try {
            String url = "jdbc:sqlserver://DESKTOP-JPH6L6A\\SQLEXPRESS01:1433;databaseName=FCS";
            String user = "sa";
            String pass = "12345678";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
 