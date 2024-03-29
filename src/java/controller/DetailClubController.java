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
import model.Club;
import model.Event;

/**
 *
 * @author win
 */
@WebServlet(name = "DetailClubController", urlPatterns = {"/detailClub"})
public class DetailClubController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DetailClubController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailClubController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        ClubDAO clubDAO = new ClubDAO();
        String index = request.getParameter("index");
        if (index == null || index.equals("") || index == "") {
            index = "1";
        }
//        try {
//            int id = Integer.parseInt(request.getParameter("id"));
//            Club club = clubDAO.getClubByID(id);
//            ArrayList<Event> listEvent = new ArrayList<>();
//            listEvent = clubDAO.getEvent(id);
//            int totalPage = 1;
//            if (listEvent.size() % 2 == 0) {
//                totalPage = listEvent.size() / 2;
//            } else {
//                totalPage = listEvent.size() / 2 + 1;
//            }
//            ArrayList<Event> listEventPagging = clubDAO.getEventPagging(id, Integer.parseInt(index));
//
//            request.setAttribute("club", club);
//            request.setAttribute("listEvent", listEventPagging);
//            request.setAttribute("endP", totalPage);
//            request.setAttribute("tag", index);
//            request.getRequestDispatcher("detailClub.jsp").forward(request, response);
//        } catch (Exception e) {
            String email = request.getParameter("email");
            Club club = clubDAO.getClubByEmail(email);
            ArrayList<Event> listEvent = new ArrayList<>();
            listEvent = clubDAO.getEventByEmail(email);
            int totalPage = 1;
            if (listEvent.size() % 2 == 0) {
                totalPage = listEvent.size() / 2;
            } else {
                totalPage = listEvent.size() / 2 + 1;
            }
            ArrayList<Event> listEventPagging = clubDAO.getEventByEmail2(email, Integer.parseInt(index));
            if(listEvent.isEmpty()){
                request.setAttribute("eventNull", "Chưa có sự kiện nào");
            }
            request.setAttribute("club", club);
            request.setAttribute("listEvent", listEventPagging);
            request.setAttribute("endP", totalPage);
            request.setAttribute("tag", index);
            request.getRequestDispatcher("detailClub.jsp").forward(request, response);
//        }
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

        request.getRequestDispatcher("detailClub.jsp").forward(request, response);
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
