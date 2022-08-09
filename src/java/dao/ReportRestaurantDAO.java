/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ReportRestaurant;

/**
 *
 * @author DELL
 */
public class ReportRestaurantDAO extends DBContext {

    PreparedStatement stm = null;
    ResultSet rs = null;

    public void CloseConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (stm != null) {
            stm.close();
        }
        if (connection != null) {
            connection.close();
        }
    }

    public boolean createReportRestaurant(int restaurantID, int spam, int offensive, int violent, int truthless) {
        try {
            String sql = "INSERT INTO ReportRestaurant (RestaurantID,Spam,Offensive,Violent,Truthless) VALUES (?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, restaurantID);
            stm.setInt(2, spam);
            stm.setInt(3, offensive);
            stm.setInt(4, violent);
            stm.setInt(5, truthless);

            stm.executeUpdate();
            System.out.println(sql);
            System.out.println("Insert OK");
            return true;
        } catch (Exception e) {
            System.out.println("Insert fail" + e.getMessage());
        }
        return false;
    }

    public ArrayList<ReportRestaurant> listAllReportRestaurant() {
        ArrayList<ReportRestaurant> report = new ArrayList<>();
        try {
            String sql = "Select a.RestaurantID,a.RestaurantName, SUM( a.Spam) Spam, SUM(a.Violent) Violent,\n"
                    + "                    SUM(a.Offensive) Offensive,SUM(a.Truthless) Truthless\n"
                    + "                    from\n"
                    + "                    (\n"
                    + "                   select rt.RestaurantID,rt.RestaurantName RestaurantName, CONVERT(INT, rr.Spam) Spam, CONVERT(INT,rr.Offensive) Offensive,\n"
                    + "                   CONVERT(INT, rr.Violent) Violent, CONVERT(INT, rr.Truthless) Truthless\n"
                    + "                   from Restaurants rt\n"
                    + "                   inner join ReportRestaurant rr on rt.RestaurantID = rr.RestaurantID) as a\n"
                    + "                    group by a.RestaurantName, a.RestaurantID";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                 report.add(new ReportRestaurant(rs.getInt(1),rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return report;
    }
}
