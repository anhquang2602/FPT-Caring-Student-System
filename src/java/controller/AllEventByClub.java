/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ClubDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Club;
import model.Event;

/**
 *
 * @author win
 */
@WebServlet(name = "AllEventByClub", urlPatterns = {"/AllEventByClub"})
public class AllEventByClub extends HttpServlet {

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
        HttpSession session = request.getSession();
        ClubDAO clubDAO = new ClubDAO();
        String username = (String) request.getSession().getAttribute("username");
//        Club club = clubDAO.getClubByEmail(username);
        String index = request.getParameter("index");
        if (index == null || index.equals("") || index == "") {
            index = "1";
        }
        ArrayList<Event> listEvent = clubDAO.getEventByEmail(username);
        ArrayList<Event> listEventPagging = clubDAO.getEventByEmail2(username, Integer.parseInt(index));

        int totalPage = 1;
        if (listEvent.size() % 2 == 0) {
            totalPage = listEvent.size() / 2;
        } else {
            totalPage = listEvent.size() / 2 + 1;
        }
        request.setAttribute("endP", totalPage);
        request.setAttribute("tag", index);
        request.setAttribute("listEvent", listEventPagging);
        request.getRequestDispatcher("listAllEventOfClub.jsp").forward(request, response);
        session.removeAttribute("stt");
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
