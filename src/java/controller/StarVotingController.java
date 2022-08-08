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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.StarVoting;

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
        
//        int star = Integer.parseInt(request.getParameter("star"));    
//        int hostelId = Integer.parseInt(request.getParameter("hostelId"));  
//        StudentDAO stdao = new StudentDAO();
//        int studentNo = Integer.parseInt(stdao.getStudentNo((String) request.getSession().getAttribute("username")));
//        
//        StarDAO dao = new StarDAO();
//        
//        for (StarVoting a : dao.getAllStarVotings()) {
//            if(a.getStudentNo()==studentNo && a.getHostelID() == hostelId){
//                dao.updateStarVoting(a.getId(), star);
//            }
//        }
//      
//        dao.addStarVoting(new StarVoting(studentNo, hostelId, star));
//        String json = new Gson().toJson(star);
//        
//        out.print(json);
//        out.flush();
//        out.close();
        
        
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
        
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        
        StarDAO dao = new StarDAO();
        dao.addStarVoting(new StarVoting(studentNo, hostelId, date, comment, star));
        
        out.print(json);
        out.flush();
        out.close();
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
