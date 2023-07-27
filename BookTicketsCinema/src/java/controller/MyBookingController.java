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
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.Seat;
import model.User;

/**
 *
 * @author user
 */
public class MyBookingController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MyBookingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyBookingController at " + request.getContextPath() + "</h1>");
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
        try {
            Order o = new Order();
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("acc");
            ArrayList<Order> listO = o.getListOrderByID(u.getId());
            session.setAttribute("listO", listO);
            request.getRequestDispatcher("MyBooking.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            System.out.println("Loi ManagementProductController" + e.getMessage());
        }
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
        try {
            String payment = request.getParameter("payment");
            HttpSession session = request.getSession();
            Product p = (Product) session.getAttribute("product");
            User u = (User) session.getAttribute("acc");
            Order o = (Order) session.getAttribute("order");
            OrderDetail od = (OrderDetail) session.getAttribute("orderDetail");
            String listSeat = String.valueOf(session.getAttribute("listSeat"));
//            Seat s = new Seat();
//            ArrayList<Seat> listS = s.getAllSeat();


            
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("uuuu/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            Order oNew = new Order(
                    u.getId(),
                    listSeat,
                    p.getProductName(),
                    o.getNameCinema(),
                    o.getDateWatch(),
                    o.getTimeWatch(),
                    od.total(),
                    u.getTelephone(),
                    dtf.format(now));
//            java.util.Date date=new java.util.Date();   
//            session.setAttribute("date", date);
            if (payment != null) {
                oNew.addOrder();
                Order oo = new Order();
                Order ooID = oo.getTop1Order();
                OrderDetail odNew = new OrderDetail(ooID.getOrderID(), p.getProductID(), od.getQuantity(), od.getPrice(), ooID.getAmount());
                odNew.addOrderDetail();
                String[] arr = listSeat.split(" ");
                for (String arr1 : arr) {
                    if (arr1.equalsIgnoreCase("A1")
                            | arr1.equalsIgnoreCase("B1")
                            | arr1.equalsIgnoreCase("C1")
                            | arr1.equalsIgnoreCase("D1")
                            | arr1.equalsIgnoreCase("E1")
                            | arr1.equalsIgnoreCase("A2")
                            | arr1.equalsIgnoreCase("B2")
                            | arr1.equalsIgnoreCase("C2")
                            | arr1.equalsIgnoreCase("D2")
                            | arr1.equalsIgnoreCase("E2")
                            | arr1.equalsIgnoreCase("A3")
                            | arr1.equalsIgnoreCase("B3")
                            | arr1.equalsIgnoreCase("C3")
                            | arr1.equalsIgnoreCase("D3")
                            | arr1.equalsIgnoreCase("E3")
                            | arr1.equalsIgnoreCase("A4")
                            | arr1.equalsIgnoreCase("B4")
                            | arr1.equalsIgnoreCase("C4")
                            | arr1.equalsIgnoreCase("D4")
                            | arr1.equalsIgnoreCase("A5")
                            | arr1.equalsIgnoreCase("B5")
                            | arr1.equalsIgnoreCase("C5")
                            | arr1.equalsIgnoreCase("D5")
                            | arr1.equalsIgnoreCase("E5")) {
                        Seat sNew = new Seat(arr1);
                        sNew.updateStatus();
                    }
                }
                response.sendRedirect("mybooking");
            }
        } catch (IOException e) {
            System.out.println("error doGet PaymentController" + e.getMessage());
        }
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
