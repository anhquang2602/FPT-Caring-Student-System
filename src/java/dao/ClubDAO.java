/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Club;
import model.Event;

/**
 *
 * @author win
 */
public class ClubDAO extends DBContext {

    public ArrayList<Club> getListClubs() {
        ArrayList<Club> listClub = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Clubs]";
        PreparedStatement st;
        try {
            st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listClub.add(new Club(rs.getInt("ClubID"), rs.getString("Avatar"), rs.getString("ClubName"), rs.getString("ClubPresident"), rs.getString("Facebook"), rs.getString("Email"), rs.getString("Description")));
               
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listClub;
        

    }

    public Club getClubByName(int id) {
        Club club = new Club();
        String sql = "select * from Clubs where ClubID = ?";
        PreparedStatement st;
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                club.setClubID(rs.getInt("ClubID"));
                club.setAvatar(rs.getString("Avatar"));
                club.setClubName(rs.getString("ClubName"));
                club.setClubPresident(rs.getString("ClubPresident"));
                club.setFacebook(rs.getString("Facebook"));
                club.setEmail(rs.getString("Email"));
                club.setDes(rs.getString("Description"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return club;
    }

    public ArrayList<Event> getEvent(int id) {
        ArrayList<Event> list = new ArrayList<>();
        String sql = "select * from EventOfClub where ClubID = ?";
        PreparedStatement st;
        try {
            st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Event(rs.getInt("EventID"), rs.getInt("ClubID"), rs.getString("EventName"), rs.getString("Time"), rs.getString("Description"), rs.getString("Url1")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        ClubDAO club = new ClubDAO();
        System.out.println(club.getListClubs());
    }
}
