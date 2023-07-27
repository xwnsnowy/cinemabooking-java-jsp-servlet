/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author user
 */
public class OrderDetail {

    private int orderID;
    private int productID;
    private int quantity;
    private double price;
    private double amount;

    public OrderDetail() {
        connect();
    }

    public OrderDetail(int orderID, int productID, double amount) {
        this.orderID = orderID;
        this.productID = productID;
        this.amount = amount;
        connect();
    }

    public OrderDetail(int orderID, int productID, int quantity, double price, double amount) {
        this.orderID = orderID;
        this.productID = productID;
        this.quantity = quantity;
        this.price = price;
        this.amount = amount;
        connect();
    }

    
    
    public OrderDetail(int quantity, double price) {
        this.quantity = quantity;
        this.price = price;
        connect();
    }

    public double total() {
        amount = quantity * price;
        return amount;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
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

    public void addOrderDetail() {
        try {
            String str = "INSERT INTO [dbo].[OrderDetails]"
                    + "("
                    + "[orderID],"
                    + "[productID], "
                    + "[Price], "
                    + "[quantity], "
                    + "[amount]) "
                    + "VALUES (\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
                    + "?\n"
                    + ")";
            pstm = cnn.prepareStatement(str);
            pstm.setInt(1, orderID);
            pstm.setInt(2, productID);
            pstm.setDouble(3, price);
            pstm.setInt(4, quantity);
            pstm.setDouble(5, amount);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addOrderDetail: " + e.getMessage());
        }
    }
}

