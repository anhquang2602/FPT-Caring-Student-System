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
import model.Student;

/**
 *
 * @author DELL
 */
public class StudentDAO extends DBContext {

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

    public String getStudentNo(String userName) {
        String sql = "select s.StudentNo from Students s join Account a on s.Email = a.Username where a.Username = ?";
        PreparedStatement st;
        try {
            st = connection.prepareCall(sql);
            st.setString(1, userName);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Student> getAllStudent(int index) throws ClassNotFoundException, SQLException, Exception {
        ArrayList<Student> list = new ArrayList<>();
        String sql = "select StudentID, FirstName , LastName , Age , Phone , Unit , Email , CountryName , ProvinceName , DistrictName , AddressDetail ,Account.AccountStatus , Gender, Avatar\n"
                + "from Students\n"
                + "inner join Country on Students.CountryID=Country.CountryID\n"
                + "inner join Province on Students.ProvinceID = Province.ProvinceID\n"
                + "inner join District on Students.DistrictID = District.DistrictID\n"
                + "inner join Account on Students.Email = Account.username\n"
                + "ORDER BY StudentID\n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY;";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, (index - 1) * 6);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                    rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"), rs.getString("Avatar")));
        }
        return list;
    }

    public int getTotalStudent() {
        String sql = "select count(*) from Students";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public Student getStudentByStudentID(String studentID) {
        try {
            String sql = "select StudentID, FirstName , LastName , Age , Phone , Unit,Email , CountryName , ProvinceName , DistrictName , AddressDetail , Account.AccountStatus ,Gender, Avatar\n"
                    + "from Students\n"
                    + "inner join Country on Students.CountryID=Country.CountryID\n"
                    + "inner join Province on Students.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Students.DistrictID = District.DistrictID\n"
                    + "inner join Account on Students.Email = Account.username\n"
                    + "where StudentID=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setString(1, studentID);
            rs = st.executeQuery();
            while (rs.next()) {
                Student student = new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"), rs.getString("Avatar"));
                st.close();
                rs.close();
                return student;
            }
            st.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    public boolean updateStatus(String username, int status) {
        try {
            String sql = "UPDATE Account SET  AccountStatus=? where Username=?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, status);
            stm.setString(2, username);
            stm.executeUpdate();
            System.out.println(sql);
            System.out.println("Update OK");
            stm.close();
            return true;
        } catch (Exception e) {
            System.out.println("Update fail" + e.getMessage());
        }
        return false;
    }

    public Student getAccount(String account) {
        try {
            String sql = "select StudentID, FirstName , LastName , Age , Phone , Unit,Email , CountryName , ProvinceName , DistrictName , AddressDetail , Account.AccountStatus ,Gender,Avatar\n"
                    + " from Students\n"
                    + " inner join Country on Students.CountryID=Country.CountryID\n"
                    + " inner join Province on Students.ProvinceID = Province.ProvinceID\n"
                    + " inner join District on Students.DistrictID = District.DistrictID\n"
                    + " inner join Account on Students.Email = Account.username\n"
                    + " where Email=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setString(1, account);
            rs = st.executeQuery();
            while (rs.next()) {
                Student student = new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"), rs.getString("Avatar"));
                st.close();
                rs.close();
                return student;
            }
            st.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
}
