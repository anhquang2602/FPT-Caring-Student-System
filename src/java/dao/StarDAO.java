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
import model.Department;
import model.StarVoting;

/**
 *
 * @author nguye
 */
public class StarDAO extends DBContext {

    public void addStarVoting(StarVoting s) {
        try {
            String sql = "INSERT INTO [dbo].[StarVotingHostel]\n"
                    + "           ([StudentNo]\n"
                    + "           ,[HostelID]\n"
                    + "           ,[StarVoting])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, s.getStudentNo());
            statement.setInt(2, s.getHostelID());
            statement.setInt(3, s.getStarvoting());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StarDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateStarVoting(int id, int star) {
        try {
            String sql = "UPDATE [dbo].[StarVotingHostel]\n"
                    + "   SET [StarVoting] = ?\n"
                    + " WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, star);
            statement.setInt(2, id);

            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StarDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<StarVoting> getAllStarVotings() {
        ArrayList<StarVoting> star = new ArrayList<>();
        try {

            String sql = "select * from StarVotingHostel";
            PreparedStatement st;

            st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                star.add(new StarVoting(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
            }

        } catch (SQLException ex) {
            Logger.getLogger(StarDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return star;

    }

    public static void main(String[] args) {

        StarDAO dao = new StarDAO();
//       dao.addStarVoting(new StarVoting(1, 76, 5));
        ArrayList<StarVoting> star = dao.getAllStarVotings();
        dao.updateStarVoting(1, 4);
        System.out.println(star.get(0).getHostelID());

    }
}
