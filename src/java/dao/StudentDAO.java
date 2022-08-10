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
import model.Seller;
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
                list.add(new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getString("Phone"),
                        rs.getString("Unit"), rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"), rs.getString("Avatar")));
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
                Student student = new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getString("Phone"),
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

    public void insertNewStudent(String email) {
        String sql = "insert into Students(Email) values(?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
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

    public String getStAvatarByUsername(String username) {
        try {
            String sql = "select Avatar\n"
                    + "from Students\n"
                    + "where Students.Email=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setString(1, username);
            rs = st.executeQuery();
            if (rs.next()) {
                String avatar = rs.getString(1);
                st.close();
                rs.close();
                return avatar;
            }
            st.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
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
                Student student = new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getString("Phone"),
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

    public Student getStudentByEmail(String email) {
        try {
            String sql = "select StudentID, FirstName , LastName , Age , Phone , Unit,Email , Students.CountryId , Students.ProvinceId "
                    + ", Students.DistrictId , AddressDetail , Account.AccountStatus ,Gender,Avatar,LinkFacebook,StudentNo\n"
                    + " from Students\n"
                    + " inner join Account on Students.Email = Account.username\n"
                    + " where Email=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setString(1, email);
            rs = st.executeQuery();
            while (rs.next()) {
                Student student = new Student(rs.getString("StudentID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getString("Phone"),
                        rs.getString("Unit"), rs.getString("Email"), rs.getInt("CountryID"), rs.getInt("ProvinceID"), rs.getInt("DistrictID"),
                        rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"), rs.getString("Avatar"), rs.getString("LinkFacebook"), rs.getInt("StudentNo"));
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

    public boolean updateStudentProfile(String avatar, Student student) {
        boolean gender = true;
        if (student.getGender() == 1) {
            gender = true;
        } else if (student.getGender() == 0) {
            gender = false;
        }
        try {
            String sql = "UPDATE Students SET  Avatar=?,FirstName=?,LastName=?,Age=?,Phone=?,CountryID=?,ProvinceID=?,DistrictID=?,AddressDetail=?,Gender=?,LinkFacebook=?,StudentID=?,Unit=? where email=?";
            PreparedStatement st;
            st = connection.prepareStatement(sql);
            st.setString(1, avatar);
            st.setString(2, student.getFirstName());
            st.setString(3, student.getLastName());
            st.setInt(4, student.getAge());
            st.setString(5, student.getPhone());
            st.setInt(6, student.getCountryID());
            st.setInt(7, student.getProvinceID());
            st.setInt(8, student.getDistrictID());
            st.setString(9, student.getAddress());
            st.setBoolean(10, gender);
            st.setString(11, student.getLinkFb());
            st.setString(12, student.getStudentID());
            st.setString(13, student.getUnit());
            st.setString(14, student.getEmail());
            st.executeUpdate();
            st.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

//    public static void main(String[] args) {
//        Student s=new Student();
//        StudentDAO sdb=new StudentDAO();
//        s=sdb.getStudentByEmail("nguyenmyhoa120920@gmail.com");
//        System.out.println(s.getEmail());
//    }
}
