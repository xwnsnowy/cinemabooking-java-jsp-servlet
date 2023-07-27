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
import model.Order;
import model.OrderDetail;
import model.Product;

/**
 *
 * @author user
 */
public class BookingController extends HttpServlet {

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
        //        String seat = request.getParameter("seat");
        String[] seat = request.getParameterValues("seat");
        HttpSession session = request.getSession();
        String time = String.valueOf(session.getAttribute("timeWatch"));
        String nameCinema = String.valueOf(session.getAttribute("nameCinema"));
        String dateWatch = String.valueOf(session.getAttribute("dateWatch"));
//      Order o = new Order(nameCinema, timeWatch, dateWatch);
        Product p = (Product) session.getAttribute("product");
        String listSeat = "";
        int length = seat.length;
        String errorSeat = "Bạn chỉ được đặt tối đa 3 ghế !";
        if (length > 0 && length <= 3) {
            for (int i = 0; i < length; i++) {
                if (i < length - 1) {
                    listSeat += seat[i] + " ";
                } else {
                    listSeat += seat[i];
                }
            }
            Order oNew = new Order(listSeat, nameCinema, time, dateWatch);
            OrderDetail orderDetail = new OrderDetail(length, p.getPrice());
            session.setAttribute("orderDetail", orderDetail);
            session.setAttribute("listSeat", listSeat);
            session.setAttribute("productBill", p);
      
            session.setAttribute("order", oNew);
        } else {
            request.setAttribute("errorSeat", errorSeat);
        }
        request.getRequestDispatcher("CompleteBook.jsp").forward(request, response);
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
        processRequest(request, response);
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
