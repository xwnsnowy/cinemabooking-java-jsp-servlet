package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Product;
import model.Seat;
import model.User;

/**
 *
 * @author user
 */
public class BookTimeController extends HttpServlet {

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
            out.println("<title>Servlet BookTimeControlller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookTimeControlller at " + request.getContextPath() + "</h1>");
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
        int pID = Integer.parseInt(request.getParameter("productID"));
        Product product = new Product();
        HttpSession session = request.getSession();
        Product p = product.getProduct(pID);
        session.setAttribute("product", p);
        request.getRequestDispatcher("BookTime.jsp").forward(request, response);
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
        String time = request.getParameter("timeWatch");
        String nameCinema = request.getParameter("nameCinema");
        String dateWatch = request.getParameter("dateWatch");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("acc");
        Seat s1 = new Seat();
        ArrayList<Seat> listSeatRow1 = s1.getSeatRow1();
        ArrayList<Seat> listSeatRow2 = s1.getSeatRow2();
        ArrayList<Seat> listSeatRow3 = s1.getSeatRow3();
        ArrayList<Seat> listSeatRow4 = s1.getSeatRow4();
        ArrayList<Seat> listSeatRow5 = s1.getSeatRow5();
        request.setAttribute("listSeatRow1", listSeatRow1);
        request.setAttribute("listSeatRow2", listSeatRow2);
        request.setAttribute("listSeatRow3", listSeatRow3);
        request.setAttribute("listSeatRow4", listSeatRow4);
        request.setAttribute("listSeatRow5", listSeatRow5);
        session.setAttribute("timeWatch", time);
        session.setAttribute("nameCinema", nameCinema);
        session.setAttribute("dateWatch", dateWatch);
        if (u == null) {
            response.sendRedirect("login");
        } else {
            request.getRequestDispatcher("Booking.jsp").forward(request, response);
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
