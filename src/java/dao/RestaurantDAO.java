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
import model.Food;
import model.Restaurant;

/**
 *
 * @author DELL
 */
public class RestaurantDAO extends DBContext {

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

    public boolean createRestaurant(String restaurantName, int sellerID, int countryID, int provinceID, int districtID, String address, String cost, float distance, String description, String restaurantImage) {
        try {
            String sql = "INSERT INTO Restaurants (RestaurantName,SellerID,CountryID,ProvinceID,DistrictID,AddressDetail,Cost,Distance,Descriptions,RestaurantImage) VALUES (?,?,?,?,?,?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, restaurantName);
            stm.setInt(2, sellerID);
            stm.setInt(3, countryID);
            stm.setInt(4, provinceID);
            stm.setInt(5, districtID);
            stm.setString(6, address);
            stm.setString(7, cost);
            stm.setFloat(8, distance);
            stm.setString(9, description);
            stm.setString(10, restaurantImage);
            stm.executeUpdate();
            System.out.println(sql);
            System.out.println("Insert OK");
            return true;
        } catch (Exception e) {
            System.out.println("Insert fail" + e.getMessage());
        }
        return false;
    }

    public ArrayList<Restaurant> listRestaurantBySeller(int sellerID) {
        ArrayList<Restaurant> restaurant = new ArrayList<>();
        try {
            String sql = "select Restaurants.RestaurantID,Restaurants.RestaurantName, Sellers.FirstName + ' '+ Sellers.LastName as sellerName, \n"
                    + "Country.CountryName, Province.ProvinceName, District.DistrictName,\n"
                    + "Restaurants.AddressDetail,Restaurants.Cost,Restaurants.Distance,Restaurants.Descriptions, Restaurants.RestaurantImage\n"
                    + "from Restaurants\n"
                    + "inner join Sellers on Restaurants.SellerID = Sellers.SellerID\n"
                    + "inner join Country on Restaurants.CountryID = Country.CountryID\n"
                    + "inner join Province on Restaurants.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Restaurants.DistrictID = District.DistrictID\n"
                    + "where Restaurants.SellerID=?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, sellerID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                restaurant.add(new Restaurant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getFloat(9), rs.getString(10), rs.getString(11)));
            }

        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return restaurant;
    }

    public ArrayList<Food> listFoodByRestaurant(int restaurantID) {
        ArrayList<Food> food = new ArrayList<>();
        try {
            String sql = "select Foods.FoodID,Restaurants.RestaurantID,Restaurants.RestaurantName , Foods.FoodName, Foods.Cost, Foods.Descriptions, FoodImage.ImageUrl\n"
                    + "from Foods\n"
                    + "inner join Restaurants on Foods.RestaurantID = Restaurants.RestaurantID\n"
                    + "inner join FoodImage on Foods.FoodID = FoodImage.FoodID\n"
                    + "where Restaurants.RestaurantID =?";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, restaurantID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                food.add(new Food(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
            }

        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return food;
    }

    public Restaurant getRestaurantID(int restaurantID) {
        Restaurant restaurant = new Restaurant();
        try {
            String sql = "select Restaurants.RestaurantID,Restaurants.RestaurantName, Sellers.FirstName + ' '+ Sellers.LastName as sellerName, \n"
                    + "Country.CountryName, Province.ProvinceName, District.DistrictName,\n"
                    + "Restaurants.AddressDetail,Restaurants.Cost,Restaurants.Distance,Restaurants.Descriptions,Restaurants.RestaurantImage\n"
                    + "from Restaurants\n"
                    + "inner join Sellers on Restaurants.SellerID = Sellers.SellerID\n"
                    + "inner join Country on Restaurants.CountryID = Country.CountryID\n"
                    + "inner join Province on Restaurants.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Restaurants.DistrictID = District.DistrictID\n"
                    + "where Restaurants.RestaurantID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, restaurantID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                restaurant.setRestaurantID(rs.getInt(1));
                restaurant.setRestaurantName(rs.getString(2));
                restaurant.setSellerName(rs.getString(3));
                restaurant.setCountryName(rs.getString(4));
                restaurant.setProvinceName(rs.getString(5));
                restaurant.setDistrictName(rs.getString(6));
                restaurant.setAddress(rs.getString(7));
                restaurant.setCost(rs.getString(8));
                restaurant.setDistance(rs.getFloat(9));
                restaurant.setDescription(rs.getString(10));
            }
            return restaurant;
        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean updateRestaurant(int restaurantID, String restaurantName, int provinceID, int districtID, String address, String cost, float distance, String description, String image) {
        try {
            String sql = "UPDATE Restaurants SET  RestaurantName = ?, ProvinceID = ?, DistrictID= ? , "
                    + "AddressDetail= ? , Cost= ? , Distance=?, Descriptions=?, RestaurantImage=?"
                    + "  WHERE RestaurantID = ? ";
            stm = connection.prepareStatement(sql);
            stm.setString(1, restaurantName);

            stm.setInt(2, provinceID);
            stm.setInt(3, districtID);
            stm.setString(4, address);
            stm.setString(5, cost);
            stm.setFloat(6, distance);
            stm.setString(7, description);
            stm.setString(8, image);
            stm.setInt(9, restaurantID);
            
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

    public void deleteRestaurant(int restaurantID) {
        try {
            String sql = "DELETE FROM Restaurants WHERE RestaurantID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, restaurantID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean createFood(int restaurantID, String foodName, double cost, String description) {
        try {
            String sql = "INSERT INTO Foods (RestaurantID,FoodName,Cost,Descriptions) VALUES (?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, restaurantID);
            stm.setString(2, foodName);
            stm.setDouble(3, cost);
            stm.setString(4, description);
            stm.executeUpdate();
            System.out.println(sql);
            System.out.println("Insert OK");
            return true;
        } catch (Exception e) {
            System.out.println("Insert fail" + e.getMessage());
        }
        return false;
    }

//    public boolean createImageFood(int foodID, String imageFood) {
//        try {
//            String sql = "INSERT INTO FoodImage (FoodID,ImageUrl) VALUES (?,?)";
//            stm = connection.prepareStatement(sql);
//            stm.setInt(1, foodID);
//            stm.setString(2, imageFood);
//            stm.executeUpdate();
//            System.out.println(sql);
//            System.out.println("Insert OK");
//            return true;
//        } catch (Exception e) {
//            System.out.println("Insert fail" + e.getMessage());
//        }
//        return false;
//    }

    public Food getFoodID(int foodID) {
        Food food = new Food();
        try {
            String sql ="select Foods.FoodID,Restaurants.RestaurantID,Restaurants.RestaurantName , Foods.FoodName, Foods.Cost, Foods.Descriptions, FoodImage.ImageUrl\n"
                    + "from Foods\n"
                    + "inner join Restaurants on Foods.RestaurantID = Restaurants.RestaurantID\n"
                    + "inner join FoodImage on Foods.FoodID = FoodImage.FoodID\n"
                    + "where Foods.FoodID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, foodID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                food.setFoodID(rs.getInt(1));
                food.setRestaurantID(rs.getInt(2));
                food.setRestaurantName(rs.getString(3));
                food.setFoodName(rs.getString(4));
                food.setCost(rs.getDouble(5));
                food.setDescriptions(rs.getString(6));
                food.setImageURL(rs.getString(7));
            }
            return food;
        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<Restaurant> listAllRestaurant() {
        ArrayList<Restaurant> restaurant = new ArrayList<>();
        try {
            String sql = "select Restaurants.RestaurantID,Restaurants.RestaurantName, Sellers.FirstName + ' '+ Sellers.LastName as sellerName, \n"
                    + "Country.CountryName, Province.ProvinceName, District.DistrictName,\n"
                    + "Restaurants.AddressDetail,Restaurants.Cost,Restaurants.Distance,Restaurants.Descriptions, Restaurants.RestaurantImage\n"
                    + "from Restaurants\n"
                    + "inner join Sellers on Restaurants.SellerID = Sellers.SellerID\n"
                    + "inner join Country on Restaurants.CountryID = Country.CountryID\n"
                    + "inner join Province on Restaurants.ProvinceID = Province.ProvinceID\n"
                    + "inner join District on Restaurants.DistrictID = District.DistrictID\n";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                restaurant.add(new Restaurant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getFloat(9), rs.getString(10), rs.getString(11)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(RestaurantDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return restaurant;
    }   
    public boolean updateFood(int foodID, String foodName, double cost, String description) {
        try {
            String sql = "UPDATE Foods SET  FoodName = ?, Cost = ?, Descriptions= ? "
                    + "  WHERE FoodID = ? ";
            stm = connection.prepareStatement(sql);
            stm.setString(1, foodName);
            stm.setDouble(2, cost);
            stm.setString(3, description);
            stm.setInt(4, foodID);
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
    public void deleteFood(int foodID) {
        try {
            String sql = "DELETE FROM Foods WHERE FoodID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, foodID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(HostelDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}