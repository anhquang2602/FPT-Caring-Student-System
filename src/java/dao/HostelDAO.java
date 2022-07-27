/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Hostel;

/**
 *
 * @author nguye
 */
public class HostelDAO extends DBContext {

    public void addHostel(Hostel h) {
        try {
            String sql = "INSERT INTO [dbo].[Hostels]\n"
                    + "           ([HostelName]\n"
                    + "           ,[SellerID]\n"
                    + "           ,[TotalRoom]\n"
                    + "           ,[Status]\n"
                    + "           ,[Floors]\n"
                    + "           ,[CountryID]\n"
                    + "           ,[ProvinceID]\n"
                    + "           ,[DistrictID]\n"
                    + "           ,[AddressDetail]\n"
                    + "           ,[RentCost]\n"
                    + "           ,[Distance]\n"
                    + "           ,[Descriptions])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,1\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, h.getHostelName());
            statement.setInt(2, h.getSellerID());
            statement.setInt(3, h.getTotalRoom());
            statement.setBoolean(4, h.isStatus());
            statement.setInt(5, h.getFloor());
            statement.setInt(6, h.getProvinceID());
            statement.setInt(7, h.getDistrictID());
            statement.setString(8, h.getAddress());
            statement.setDouble(9, h.getCost());
            statement.setDouble(10, h.getDistance());
            statement.setString(11, h.getDescription());
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Hostel> listAllHostel() {
        ArrayList<Hostel> h = new ArrayList<>();
        try {

            String sql = "select h.HostelID, h.HostelName,s.FirstName + ' '+ s.LastName as sellerName, h.TotalRoom, h.Status,h.Floors,c.CountryName,p.ProvinceName,d.DistrictName,h.AddressDetail,h.RentCost,h.Distance,h.Descriptions,i.Url1,i.Url2,i.Url3,i.Url4,i.Url5,i.Url6 from Hostels h\n"
                    + "join Country c on h.CountryID =c.CountryID\n"
                    + "join District d on h.DistrictID = d.DistrictID\n"
                    + "join Province p on h.ProvinceID = p.ProvinceID\n"
                    + "join Sellers s on h.SellerID = s.SellerID\n"
                    + "left join HostelImage i on h.HostelID = i.HostelID";

            PreparedStatement st;

            st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                h.add(new Hostel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getBoolean(5), rs.getInt(6),
                        rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getDouble(11), rs.getDouble(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18),
                        rs.getString(19)));

            }

        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return h;
    }

    public ArrayList<Hostel> listHostelbySeller(int sellerID) {
        ArrayList<Hostel> h = new ArrayList<>();
        try {

            String sql = "select h.HostelID, h.HostelName,s.FirstName + ' '+ s.LastName as sellerName, h.TotalRoom, h.Status,h.Floors,c.CountryName,p.ProvinceName,d.DistrictName,h.AddressDetail,h.RentCost,h.Distance,h.Descriptions,i.Url1,i.Url2,i.Url3,i.Url4,i.Url5,i.Url6 from Hostels h\n"
                    + "                   join Country c on h.CountryID =c.CountryID\n"
                    + "                   join District d on h.DistrictID = d.DistrictID\n"
                    + "                    join Province p on h.ProvinceID = p.ProvinceID\n"
                    + "                    join Sellers s on h.SellerID = s.SellerID\n"
                    + "                    left join HostelImage i on h.HostelID = i.HostelID where s.SellerID = ? ";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, sellerID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                h.add(new Hostel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getBoolean(5), rs.getInt(6),
                        rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
                        rs.getDouble(11), rs.getDouble(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18),
                        rs.getString(19)));

            }

        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return h;
    }

    public Hostel getHostelInfo(int HostelID) {
        Hostel h = new Hostel();
        try {

            String sql = "select h.HostelID, h.HostelName,s.FirstName + ' '+ s.LastName as sellerName, h.TotalRoom, h.Status,h.Floors,c.CountryName,p.ProvinceName,d.DistrictName,h.AddressDetail,h.RentCost,h.Distance,h.Descriptions,i.Url1,i.Url2,i.Url3,i.Url4,i.Url5,i.Url6 from Hostels h \n"
                    + "join Country c on h.CountryID =c.CountryID\n"
                    + "join District d on h.DistrictID = d.DistrictID\n"
                    + "join Province p on h.ProvinceID = p.ProvinceID\n"
                    + "join Sellers s on h.SellerID = s.SellerID\n"
                    + "left join HostelImage i on h.HostelID = i.HostelID where h.HostelID = ?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, HostelID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                h.setHostelID(rs.getInt(1));
                h.setHostelName(rs.getString(2));
                h.setSellerName(rs.getString(3));
                h.setTotalRoom(rs.getInt(4));
                h.setStatus(rs.getBoolean(5));
                h.setFloor(rs.getInt(6));
                h.setCountryName(rs.getString(7));
                h.setProvinceNamẹ(rs.getString(8));
                h.setDistrictName(rs.getString(9));
                h.setAddress(rs.getString(10));
                h.setCost(rs.getDouble(11));
                h.setDistance(rs.getDouble(12));
                h.setDescription(rs.getString(13));
                h.setImg1(rs.getString(14));
                h.setImg2(rs.getString(15));
                h.setImg3(rs.getString(16));
                h.setImg4(rs.getString(17));
                h.setImg5(rs.getString(18));
                h.setImg6(rs.getString(19));
            }
            return h;
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public void updateHostel(Hostel h) {
        try {
       
            String sql = "UPDATE [dbo].[Hostels]\n"
                    + "   SET [HostelName] = ?\n"
                    + "      ,[TotalRoom] = ?\n"
                    + "      ,[Status] = ?\n"
                    + "      ,[Floors] = ?\n"
                    + "      ,[ProvinceID] = ?\n"
                    + "      ,[DistrictID] = ?\n"
                    + "      ,[AddressDetail] = ?\n"
                    + "      ,[RentCost] = ?\n"
                    + "      ,[Distance] = ?\n"
                    + "      ,[Descriptions] = ?\n"
                    + " WHERE HostelID = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, h.getHostelName());
            statement.setInt(2, h.getTotalRoom());
            statement.setBoolean(3, h.isStatus());
            statement.setInt(4, h.getFloor());
            statement.setInt(5, h.getProvinceID());
            statement.setInt(6, h.getDistrictID());
            statement.setString(7, h.getAddress());
            statement.setDouble(8, h.getCost());
            statement.setDouble(9, h.getDistance());
            statement.setString(10, h.getDescription());
            statement.setInt(11, h.getHostelID());
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteHostelImage(int hostelID) {
        
        try {
       
            String sql = "DELETE FROM HostelImage WHERE HostelID =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,hostelID );
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteHostel(int hostelID) {
        
        try {
       
            String sql = "DELETE FROM Hostels WHERE HostelID =?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, hostelID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    

    public static void main(String[] args) {
        HostelDAO h = new HostelDAO();
        for (Hostel a : h.listHostelbySeller(2)) {
            System.out.println(a.getHostelName());
        }

    }
}
