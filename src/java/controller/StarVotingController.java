/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import dao.AddressDAO;
import dao.StarDAO;
import dao.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.StarVoting;
import java.sql.Date;

/**
 *
 * @author nguye
 */
public class StarVotingController extends HttpServlet {

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
            out.println("<title>Servlet StarVotingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StarVotingController at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        int star = Integer.parseInt(request.getParameter("star"));
        int hostelId = Integer.parseInt(request.getParameter("hostelId"));
        String comment = request.getParameter("message");
        StudentDAO stdao = new StudentDAO();
        int studentNo = Integer.parseInt(stdao.getStudentNo((String) request.getSession().getAttribute("username")));

        StarDAO dao = new StarDAO();

        if (dao.getListCommentByStudent(hostelId, studentNo) != null) {
            dao.updateStarVoting(dao.getListCommentByStudent(hostelId, studentNo).getId(), star, comment);
        }

        dao.addStarVoting(new StarVoting(studentNo, hostelId, comment, star));
        String json = new Gson().toJson(star);

        out.print(json);
        out.flush();
        out.close();

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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        int star = Integer.parseInt(request.getParameter("star"));
        int hostelId = Integer.parseInt(request.getParameter("hostelId"));
        String comment = request.getParameter("message");

        String json = new Gson().toJson(star);
        StudentDAO stdao = new StudentDAO();

        int studentNo = Integer.parseInt(stdao.getStudentNo((String) request.getSession().getAttribute("username")));

//        long millis = System.currentTimeMillis();
//        java.sql.Date date = new java.sql.Date(millis);
//        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//        java.util.Date date = new java.util.Date(); 
//       java.sql.Date date1 = new java.sql.Date(dateFormat.format(date));
        StarDAO dao = new StarDAO();

        if (dao.getListCommentByStudent(hostelId, studentNo) != null) {
            dao.updateStarVoting(dao.getListCommentByStudent(hostelId, studentNo).getId(), star, comment);
        }

        dao.addStarVoting(new StarVoting(studentNo, hostelId, comment, star));

        
        response.sendRedirect(request.getContextPath() + "/detailhostel?id="+hostelId);
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
