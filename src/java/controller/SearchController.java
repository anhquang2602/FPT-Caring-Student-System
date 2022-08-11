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
@WebServlet(name = "SearchController", urlPatterns = {"/SearchController"})
public class SearchController extends HttpServlet {

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
    public void hostels(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String keywordHostel = request.getParameter("keywordHostel");
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";

        }
        HostelDAO hostelDAO = new HostelDAO();
        ArrayList<Hostel> hostels = new ArrayList<>();

        if (keywordHostel.equalsIgnoreCase("") || keywordHostel.isEmpty()) {
            int indexPage = Integer.parseInt(index);
            hostels = hostelDAO.listAllHostelPagging(indexPage);
        } else {
            hostels = hostelDAO.getlHostelByName(keywordHostel);
        }
        int totalPage = hostelDAO.getTotalPage(keywordHostel, hostels);
        String keywordRestaurant = request.getParameter("keywordRestaurant");

        request.setAttribute("totalPage", totalPage);
        request.setAttribute("hostels", hostels);
        request.setAttribute("keywordHostel", keywordHostel);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }

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
        ArrayList<Hostel> hostels = new ArrayList<Hostel>();
        String keywordHostel = request.getParameter("keywordHostel");
        int totalPage = hostelDAO.getTotalPage(keywordHostel, hostels);
        if (keywordHostel == null || keywordHostel == "") {
            int indexPage = Integer.parseInt(index);
            hostels = hostelDAO.listAllHostelPagging(indexPage);
        } else {
            int indexPage = Integer.parseInt(index);
            hostels = hostelDAO.getlHostelByNamePagging(keywordHostel,indexPage);
        }

        String keywordRestaurant = request.getParameter("keywordRestaurant");

        request.setAttribute("totalPage", totalPage);
        request.setAttribute("hostels", hostels);
        request.setAttribute("keywordHostel", keywordHostel);
        request.getRequestDispatcher("search.jsp").forward(request, response);
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
        String keywordHostel = request.getParameter("keywordHostel");
        String index = request.getParameter("index");
        if (index == null) {
            index = "1";

        }
        HostelDAO hostelDAO = new HostelDAO();
        ArrayList<Hostel> hostels = new ArrayList<>();

        if (keywordHostel == null || keywordHostel == "") {
            int indexPage = Integer.parseInt(index);
            hostels = hostelDAO.listAllHostelPagging(indexPage);
        } else {
            int indexPage = Integer.parseInt(index);
            hostels = hostelDAO.getlHostelByNamePagging(keywordHostel,indexPage);
        }
        int totalPage = hostelDAO.getTotalPage(keywordHostel, hostels);
//        String keywordRestaurant = request.getParameter("keywordRestaurant");

        request.setAttribute("totalPage", totalPage);
        request.setAttribute("hostels", hostels);
        request.setAttribute("keywordHostel", keywordHostel);
        request.getRequestDispatcher("search.jsp").forward(request, response);
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
