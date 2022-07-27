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

/**
 *
 * @author DELL
 */
public class SellerDAO extends DBContext {

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

    public ArrayList<Seller> getAllSeller() throws ClassNotFoundException, SQLException, Exception {
        ArrayList<Seller> list = new ArrayList<>();
        String sql = "select SellerID, FirstName , LastName , Age , Phone , Email , CountryName , ProvinceName , DistrictName , AddressDetail ,Account.AccountStatus , Gender,Avatar\n"
                + "from Sellers\n"
                + "inner join Country on Sellers.CountryID=Country.CountryID\n"
                + "inner join Province on Sellers.ProvinceID = Province.ProvinceID\n"
                + "inner join District on Sellers.DistrictID = District.DistrictID\n"
                + "inner join Account on Sellers.Email = Account.username";
        PreparedStatement st;
        try {
            st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Seller(rs.getInt("sellerID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"), rs.getInt("Gender"),rs.getString("Avatar")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(list);
        return list;
    }

    public Seller getSellertBySellerID(int sellerID) {
        try {
            String sql = "select SellerID, FirstName , LastName , Age , Phone , Email , CountryName , ProvinceName , DistrictName , AddressDetail , Account.AccountStatus,Gender,Avatar\n"
                    + "from Sellers\n"
                    + "inner join Country on Sellers.CountryID=Country.CountryID\n"
                    + "inner join Province on Sellers.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Sellers.DistrictID = District.DistrictID\n"
                    + "inner join Account on Sellers.Email = Account.username\n"
                    + "where SellerID=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setInt(1, sellerID);
            rs = st.executeQuery();
            while (rs.next()) {
                Seller seller = new Seller(rs.getInt("SellerID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"),rs.getInt("Gender"),rs.getString("Avatar"));
                st.close();
                rs.close();
                return seller;
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
    public Seller getAccount(String account) {
        try {
            String sql = "select SellerID, FirstName , LastName , Age , Phone , Email , CountryName , ProvinceName , DistrictName , AddressDetail , Account.AccountStatus,Gender,Avatar\n"
                    + "from Sellers\n"
                    + "inner join Country on Sellers.CountryID=Country.CountryID\n"
                    + "inner join Province on Sellers.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Sellers.DistrictID = District.DistrictID\n"
                    + "inner join Account on Sellers.Email = Account.username\n"
                    + "where Email=?";
            PreparedStatement st;
            ResultSet rs;
            st = connection.prepareStatement(sql);
            st.setString(1, account);
            rs = st.executeQuery();
            while (rs.next()) {
                Seller seller = new Seller(rs.getInt("SellerID"), rs.getString("FirstName"), rs.getString("LastName"), rs.getInt("Age"), rs.getInt("Phone"),
                        rs.getString("Email"), rs.getString("CountryName"), rs.getString("ProvinceName"), rs.getString("DistrictName"), rs.getString("AddressDetail"), rs.getInt("AccountStatus"),rs.getInt("Gender"),rs.getString("Avatar"));
                st.close();
                rs.close();
                return seller;
            }
            st.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
    
    public String getSellerID(String userName) {
        String sql = "select s.SellerID from Sellers s join Account a on s.Email = a.Username where a.Username = ?";
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
}