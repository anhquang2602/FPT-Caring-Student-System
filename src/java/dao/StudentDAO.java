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

    public ArrayList<Student> getAllStudent() throws ClassNotFoundException, SQLException, Exception {
        ArrayList<Student> list = new ArrayList<>();
        String sql = "select StudentID, FirstName , LastName , Age , Phone , Unit , Email , CountryName , ProvinceName , DistrictName , AddressDetail ,Account.AccountStatus , Gender, Avatar\n"
                + "from Students\n"
                + "inner join Country on Students.CountryID=Country.CountryID\n"
                + "inner join Province on Students.ProvinceID = Province.ProvinceID\n"
                + "inner join District on Students.DistrictID = District.DistrictID\n"
                + "inner join Account on Students.Email = Account.username";
        PreparedStatement st;
        try {
            st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"),rs.getString("Avatar")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(list);
        return list;
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
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"),rs.getString("Avatar"));
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
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"),rs.getString("Avatar"));
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
