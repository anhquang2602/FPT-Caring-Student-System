/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import dao.AddressDAO;
import dao.DepartmentDAO;
import dao.HostelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Department;
import model.Hostel;
import model.User;

/**
 *
 * @author nguye
 */
public class EditHostelController extends HttpServlet {

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
        processRequest(request, response);
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        String id = request.getParameter("id");
        HostelDAO dao = new HostelDAO();
        Hostel h = dao.getHostelInfo(Integer.parseInt(id));
      
        

        AddressDAO a = new AddressDAO();
        request.setAttribute("listProvince", a.listProvince());
        request.setAttribute("editHostel", h);
        request.setAttribute("listDistrict", a.getDistrictByProName(h.getProvinceNamẹ()));
        request.getRequestDispatcher("editHostel.jsp").forward(request, response);
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
        
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        HostelDAO dao = new HostelDAO();
        int id = Integer.parseInt(request.getParameter("hostelId"));
        String hostelName = request.getParameter("hostelName");
        int room = Integer.parseInt(request.getParameter("room"));
        boolean status = request.getParameter("status").equals("yes");
        int floor = Integer.parseInt(request.getParameter("floor"));
        int provinceID = Integer.parseInt(request.getParameter("province"));
        int districtID = Integer.parseInt(request.getParameter("district"));
        String address = request.getParameter("address");
        double cost = Double.parseDouble(request.getParameter("cost"));
        double distance = Double.parseDouble(request.getParameter("distance"));
        String description = request.getParameter("description");
        
	Hostel h  = new Hostel(id,hostelName, room, status, floor, provinceID, districtID, address, cost, distance, description);
	dao.updateHostel(h);   
        
	response.sendRedirect(request.getContextPath() + "/edithostel?id="+id);
       
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
    