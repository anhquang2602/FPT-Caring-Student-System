/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.HostelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Hostel;

/**
 *
 * @author win
 */
@WebServlet(name = "SearchCostController", urlPatterns = {"/FilterHostelController"})
public class FilterHostelController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";
        }
        HostelDAO hostelDAO = new HostelDAO();
        ArrayList<Hostel> hostels = hostelDAO.listAllHostelPagging(Integer.parseInt(index));
        String costUnder = request.getParameter("under");
        String costUpper = request.getParameter("upper");
        String distance = request.getParameter("distance");
        String keywordHostel = request.getParameter("keywordHostel");
        String star = request.getParameter("star");
        int totalPage = 0;
        if (costUnder == null || costUnder.equals("")) {
            costUnder = "0";
        }
        if (costUpper == null || costUpper.equals("")) {
            costUpper = String.valueOf(hostelDAO.getMaxCost());
        }
        if (distance == null || distance.equals("")) {
            distance = "6";
        }
        if (star == null || star.equals("")) {
            star = "6";
        }
        if (keywordHostel == null ||keywordHostel.equalsIgnoreCase("") || keywordHostel.isEmpty()) {
            totalPage = hostelDAO.getTotalPageByFilter(hostels, Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance));
            hostels = hostelDAO.filterHostelPagging(Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance), Integer.parseInt(index));
        } else {
            hostels = hostelDAO.getlHostelByName(keywordHostel);
        }
//        totalPage = hostelDAO.getTotalPageByFilter(hostels, Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance));
//        hostels = hostelDAO.filterHostelPagging(Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance), Integer.parseInt(index));
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("hostels", hostels);
        request.setAttribute("distance", distance);
        request.setAttribute("under", costUnder);
        request.setAttribute("upper", costUpper);
        request.getRequestDispatcher("listAllHostels.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";

        }
        HostelDAO hostelDAO = new HostelDAO();
        ArrayList<Hostel> hostels = new ArrayList<Hostel>();
        String costUnder = request.getParameter("under");
        String costUpper = request.getParameter("upper");
        String distance = request.getParameter("distance");
        int totalPage = 0;
        if (costUnder.isEmpty() || costUnder.equals("")) {
            costUnder = "0";
        }
        if (costUpper.isEmpty() || costUpper.equals("")) {
            costUpper = String.valueOf(hostelDAO.getMaxCost());
        }
        totalPage = hostelDAO.getTotalPageByFilter(hostels, Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance));
        hostels = hostelDAO.filterHostelPagging(Double.parseDouble(costUnder), Double.parseDouble(costUpper), Double.parseDouble(distance), Integer.parseInt(index));
        String keywordRestaurant = request.getParameter("keywordRestaurant");

        request.setAttribute("totalPage", totalPage);
        request.setAttribute("hostels", hostels);
        request.setAttribute("distance", distance);
        request.setAttribute("under", costUnder);
        request.setAttribute("upper", costUpper);
        request.getRequestDispatcher("listAllHostels.jsp").forward(request, response);
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
