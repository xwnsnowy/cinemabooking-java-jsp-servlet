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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class Category {
    int categoryID;
    String categoryName;

    public Category() {
        connect();
    }

    public Category(int categoryID, String categoryName) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        connect();
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
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
//   public List<Category> getListCategory() {
//        List<Category> list = new ArrayList<>();
//        try {
//            String strSelect = "select * from Category";
//            pstm = cnn.prepareStatement(strSelect);
//            rs = pstm.executeQuery();
//            while (rs.next()) {
//                categoryID = rs.getInt(1);
//                categoryName = rs.getString(2);
//                list.add(new Category(categoryID, categoryName));
//            }
//        } catch (SQLException e) {
//            System.out.println("getListProduct " + e.getMessage());
//        }
//        return list;
//    }
}
