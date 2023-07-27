/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class Order {

    private int userID;
    private int orderID;
    private String chairName;
    private String productName;
    private String nameCinema;
    private String dateWatch;
    private String timeWatch;
    private double amount;
    private String orderPhone;
    private String date;

    public Order() {
        connect();
    }

    public Order(int userID, String chairName, String productName, String nameCinema, String dateWatch, String timeWatch, double amount, String orderPhone, String date) {
        this.userID = userID;
        this.chairName = chairName;
        this.productName = productName;
        this.nameCinema = nameCinema;
        this.dateWatch = dateWatch;
        this.timeWatch = timeWatch;
        this.amount = amount;
        this.orderPhone = orderPhone;
        this.date = date;
        connect();
    }
      
 
                
    public Order(int userID, int orderID, String chairName, String productName, String nameCinema, String dateWatch, String timeWatch, double amount, String orderPhone) {
        this.userID = userID;
        this.orderID = orderID;
        this.chairName = chairName;
        this.productName = productName;
        this.nameCinema = nameCinema;
        this.dateWatch = dateWatch;
        this.timeWatch = timeWatch;
        this.amount = amount;
        this.orderPhone = orderPhone;
        connect();
    }

    public Order(String chairName, String nameCinema, String timeWatch, String dateWatch) {
        this.chairName = chairName;
        this.nameCinema = nameCinema;
        this.dateWatch = dateWatch;
        this.timeWatch = timeWatch;
        connect();
    }

    public Order(int userID, String chairName, String productName, String nameCinema, String dateWatch, String timeWatch, double amount, String orderPhone) {
        this.userID = userID;
        this.chairName = chairName;
        this.productName = productName;
        this.nameCinema = nameCinema;
        this.dateWatch = dateWatch;
        this.timeWatch = timeWatch;
        this.amount = amount;
        this.orderPhone = orderPhone;
        connect();
    }

    public Order(String nameCinema, String timeWatch, String dateWatch) {
        this.nameCinema = nameCinema;
        this.dateWatch = dateWatch;
        this.timeWatch = timeWatch;
        connect();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    
    
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getChairName() {
        return chairName;
    }

    public void setChairName(String chairName) {
        this.chairName = chairName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getNameCinema() {
        return nameCinema;
    }

    public void setNameCinema(String nameCinema) {
        this.nameCinema = nameCinema;
    }

    public String getDateWatch() {
        return dateWatch;
    }

    public void setDateWatch(String dateWatch) {
        this.dateWatch = dateWatch;
    }

    public String getTimeWatch() {
        return timeWatch;
    }

    public void setTimeWatch(String timeWatch) {
        this.timeWatch = timeWatch;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    // khai bao cac thanh phan xu ly DataBase
    Connection cnn; // ket noi DataBase
    Statement stm; // thuc thi cau lenh
    PreparedStatement pstm;
    ResultSet rs; // luu tru xu ly du lieu

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {
        }
    }

//    public void addOrder() {
//        try {
//            String str = "INSERT INTO [dbo].[Order]("
//                    + "[ChairName], "
//                    + "[ProductName], "
//                    + "[NameCinema], "
//                    + "[DateWatch], "
//                    + "[TimeWatch], "
//                    + "[Amount], "
//                    + "[OrderPhone])\n"
//                    + "VALUES (\n"
//                    + "?,\n"
//                    + "?,\n"
//                    + "?,\n"
//                    + "?,\n"
//                    + "?,\n"
//                    + "?,\n"
//                    + "?\n"
//                    + ")";
//            pstm = cnn.prepareStatement(str);
//            pstm.setString(1, chairName);
//            pstm.setString(2, productName);
//            pstm.setString(3, nameCinema);
//            pstm.setString(4, dateWatch);
//            pstm.setString(5, timeWatch);
//            pstm.setDouble(6, amount);
//            pstm.setString(7, orderPhone);
//            pstm.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println("addOrder: " + e.getMessage());
//        }
//    }
    public void addOrder() {
        try {
            String str = "INSERT INTO [dbo].[Order]("
                    + "[userID],"
                    + "[ChairName], "
                    + "[ProductName], "
                    + "[NameCinema], "
                    + "[DateWatch], "
                    + "[TimeWatch], "
                    + "[Amount], "
                    + "[OrderPhone],"
                    + "[DateNow])\n"
                    + "VALUES (\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?\n"
                    + ")";
            pstm = cnn.prepareStatement(str);
            pstm.setInt(1, userID);
            pstm.setString(2, chairName);
            pstm.setString(3, productName);
            pstm.setString(4, nameCinema);
            pstm.setString(5, dateWatch);
            pstm.setString(6, timeWatch);
            pstm.setDouble(7, amount);
            pstm.setString(8, orderPhone);
            pstm.setString(9, date);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addOrder: " + e.getMessage());
        }
    }

    public ArrayList<Order> getListOrderByID(int id) {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String strSelect = "select * from [Order] where userID=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setInt(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                orderID = rs.getInt(1);
                userID = rs.getInt(2);
                chairName = rs.getString(3);
                productName = rs.getString(4);
                nameCinema = rs.getString(5);
                dateWatch = rs.getString(6);
                timeWatch = rs.getString(7);
                amount = rs.getDouble(8);
                orderPhone = rs.getString(9);
                date = rs.getString(10);
                list.add(new Order(userID, chairName, productName, nameCinema, dateWatch, timeWatch, amount, orderPhone, date));
            }
        } catch (SQLException e) {
            System.out.println("getListOrderByID " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Order> getListOrder() {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String strSelect = "select * from [Order]";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                orderID = rs.getInt(1);
                userID = rs.getInt(2);
                chairName = rs.getString(3);
                productName = rs.getString(4);
                nameCinema = rs.getString(5);
                dateWatch = rs.getString(6);
                timeWatch = rs.getString(7);
                amount = rs.getDouble(8);
                orderPhone = rs.getString(9);
                list.add(new Order(
                        userID, orderID, chairName, productName, nameCinema, dateWatch, timeWatch, amount, orderPhone));
            }
        } catch (SQLException e) {
            System.out.println("getListOrderByID " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Order> getTop4Order() {
        ArrayList<Order> list = new ArrayList<>();
        try {
            String strSelect = "select * from \n"
                    + "(select top 5 * from [dbo].[Order]\n"
                    + "order by ID desc) as a";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                orderID = rs.getInt(1);
                userID = rs.getInt(2);
                chairName = rs.getString(3);
                productName = rs.getString(4);
                nameCinema = rs.getString(5);
                dateWatch = rs.getString(6);
                timeWatch = rs.getString(7);
                amount = rs.getDouble(8);
                orderPhone = rs.getString(9);
                list.add(new Order(
                        userID, orderID, chairName, productName, nameCinema, dateWatch, timeWatch, amount, orderPhone));
            }
        } catch (SQLException e) {
            System.out.println("getTop4Order " + e.getMessage());
        }
        return list;
    }

    public Order getTop1Order() {
        try {
            String strSelect = "select * from \n"
                    + "(select top 1 * from [dbo].[Order]\n"
                    + "order by ID desc) as a";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                orderID = rs.getInt(1);
                userID = rs.getInt(2);
                chairName = rs.getString(3);
                productName = rs.getString(4);
                nameCinema = rs.getString(5);
                dateWatch = rs.getString(6);
                timeWatch = rs.getString(7);
                amount = rs.getDouble(8);
                orderPhone = rs.getString(9);
                return new Order(
                        userID, orderID, chairName, productName, nameCinema, dateWatch, timeWatch, amount, orderPhone);
            }
        } catch (SQLException e) {
            System.out.println("getTop4Order " + e.getMessage());
        }
        return null;
    }
    
    public static void main(String[] args) {
        ArrayList<Order> list = new ArrayList<>();
        Order o = new Order();
        o.getTop4Order();
    }
}
