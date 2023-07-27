/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Order;
import model.Product;
import model.User;

/**
 *
 * @author user
 */
public class AdminController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {       
        try {
            User u = new User();
            HttpSession session = request.getSession();
            User uu = (User) session.getAttribute("acc");
            if(uu.getUsername().equalsIgnoreCase("admin")){
                Order o = new Order();
                Product p = new Product();
                ArrayList<Order> listO = o.getListOrder();
                ArrayList<Order> listO4 = o.getTop4Order();
                ArrayList<Product> listP = p.getListProduct();
                ArrayList<User> listU = u.getListUser();
                request.setAttribute("sizeU", listU.size());
                request.setAttribute("sizeP", listP.size());
                request.setAttribute("sizeO", listO.size());
                request.setAttribute("listO4", listO4);
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
            }
        } catch (ServletException | IOException e) {
            System.out.println("Loi AdminController" + e.getMessage());
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
