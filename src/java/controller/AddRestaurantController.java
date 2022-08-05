/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AddressDAO;
import dao.RestaurantDAO;
import dao.SellerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author DELL
 */
@MultipartConfig
public class AddRestaurantController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AddressDAO a = new AddressDAO();
        request.setAttribute("listProvince", a.listProvince());
        request.getRequestDispatcher("addRestaurant.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String restaurantName = request.getParameter("restaurantName");
        int provinceID = Integer.parseInt(request.getParameter("province"));
        int districtID = Integer.parseInt(request.getParameter("district"));
        String address = request.getParameter("address");
        String cost = request.getParameter("cost");
        float distance = Float.parseFloat(request.getParameter("distance"));
        String description = request.getParameter("description");

        String image = request.getParameter("image");
         SellerDAO sda = new SellerDAO();
        String sellerID = sda.getSellerID((String) request.getSession().getAttribute("username"));
                RestaurantDAO restaurantDAO = new RestaurantDAO();
                if(restaurantDAO.createRestaurant(restaurantName, Integer.parseInt(sellerID), 1,provinceID, districtID, address, cost, distance, description,image)){
                    response.sendRedirect("ListRestaurantBySeller");
                }
            }
        
    

        
        SellerDAO sda = new SellerDAO();
        String sellerID = sda.getSellerID((String) request.getSession().getAttribute("username"));
        RestaurantDAO restaurantDAO = new RestaurantDAO();
        Part part = request.getPart("restaurantImage");
        String realPath1 = request.getServletContext().getRealPath("/restaurantImages");
        String realPath = realPath1.replaceFirst("build", "");
        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        if (!Files.exists(Paths.get(realPath))) {
            Files.createDirectories(Paths.get(realPath));
        }
        if (part.getSize() == 0) {
            if (restaurantDAO.createRestaurant(restaurantName, Integer.parseInt(sellerID), 1, provinceID, districtID, address, cost, distance, description, "")) {
                response.sendRedirect("ListRestaurantBySeller");
            }
        } else {
            String restaurantImg = restaurantName + "img.jpg";
            String SaveRestaurantImg = "restaurantImages/" + restaurantImg;
            part.write(realPath + "\\" + restaurantImg);
            if (restaurantDAO.createRestaurant(restaurantName, Integer.parseInt(sellerID), 1, provinceID, districtID, address, cost, distance, description, SaveRestaurantImg)) {
                response.sendRedirect("ListRestaurantBySeller");
            }

        }

    


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
