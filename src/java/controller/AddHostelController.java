/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AddressDAO;
import dao.HostelDAO;
import dao.SellerDAO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Hostel;

/**
 *
 * @author nguye
 */
@MultipartConfig
public class AddHostelController extends HttpServlet {

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

        AddressDAO a = new AddressDAO();
        request.setAttribute("listProvince", a.listProvince());
        request.getRequestDispatcher("addHostel.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final String UPLOAD_DIRECTORY = "C:/";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        HostelDAO dao = new HostelDAO();
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

        String hostelImg;

        SellerDAO sda = new SellerDAO();

        String sellerID = sda.getSellerID((String) request.getSession().getAttribute("username"));

        Part part1 = request.getPart("image1");
        Part part2 = request.getPart("image2");
        Part part3 = request.getPart("image3");
        Part part4 = request.getPart("image4");
        Part part5 = request.getPart("image5");
        Part part6 = request.getPart("image6");

        List<Part> listPart = new ArrayList<>();
        listPart.add(part1);
        listPart.add(part2);
        listPart.add(part3);
        listPart.add(part4);
        listPart.add(part5);
        listPart.add(part6);

        String realPath1 = request.getServletContext().getRealPath("/HostelImages");
        String realPath = realPath1.replaceFirst("build", "");
        if (!Files.exists(Paths.get(realPath))) {
            Files.createDirectories(Paths.get(realPath));
        }
        dao.addHostel(new Hostel(hostelName, Integer.parseInt(sellerID), room, status, floor, 1, provinceID, districtID, address, cost, distance, description));
        int newestHostelID = dao.getNewestHostelID();
        dao.addHostelID(newestHostelID);
        int u = 0;
        for (int i = 0; i < listPart.size(); i++) {

            if (listPart.get(i).getSize() != 0) {
                u++;
                String filename = Paths.get(listPart.get(i).getSubmittedFileName()).getFileName().toString();
//                if (filename.endsWith(".jpg") || filename.endsWith(".png") || filename.endsWith(".jpeg") || filename.endsWith(".gif")) {

                String imgName = hostelName + "url" + u + ".jpg";
                hostelImg = "HostelImages/" + imgName;
                listPart.get(i).write(realPath + "/" + imgName);

                dao.addEachImage(newestHostelID, hostelImg, "url" + u);

//                } 
            }

        }
        try {
            Thread.sleep(3000);
        } catch (InterruptedException ex) {
            Logger.getLogger(AddHostelController.class.getName()).log(Level.SEVERE, null, ex);
        }
        session.setAttribute("stt", "1");
        response.sendRedirect(request.getContextPath() + "/hostellist");
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
