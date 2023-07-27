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
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Seat {

    private int id;
    private String chairname;
    private int row;
    private int status;

    public Seat() {
        connect();
    }

    public Seat(String chairname) {
        this.chairname = chairname;
        connect();
    }
    
    public Seat(int id) {
        this.id = id;
    }
    
    public Seat(int id, String chairname, int row, int status) {
        this.id = id;
        this.chairname = chairname;
        this.row = row;
        this.status = status;
        connect();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getChairname() {
        return chairname;
    }

    public void setChairname(String chairname) {
        this.chairname = chairname;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public ArrayList<Seat> getSeatRow1() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat] where row=1";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getSeatRow1 " + e.getMessage());
        }
        return listRow1;
    }

    public ArrayList<Seat> getSeatRow2() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat] where row=2";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getSeatRow1 " + e.getMessage());
        }
        return listRow1;
    }

    public ArrayList<Seat> getSeatRow3() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat] where row=3";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getSeatRow1 " + e.getMessage());
        }
        return listRow1;
    }

    public ArrayList<Seat> getSeatRow4() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat] where row=4";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getSeatRow1 " + e.getMessage());
        }
        return listRow1;
    }

    public ArrayList<Seat> getSeatRow5() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat] where row=5";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getSeatRow1 " + e.getMessage());
        }
        return listRow1;
    }
    
    public ArrayList<Seat> getAllSeat() {
        ArrayList<Seat> listRow1 = new ArrayList<>();
        try {
            String strSelect = "select * from [Seat]";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                chairname = rs.getString(2);
                row = rs.getInt(3);
                status = rs.getInt(4);
                listRow1.add(new Seat(id, chairname, row, status));
            }
        } catch (SQLException e) {
            System.out.println("getAllSeat " + e.getMessage());
        }
        return listRow1;
    }
    
    public void updateStatus() {
        try {
            String strUpdate = ""
                    + "UPDATE [SEAT] set\n"
                    + "            StatusBooking=1\n"
                    + "            where ChairName=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, chairname);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("updateInfo: " + e.getMessage());
        }
    }
    
    public static void main(String[] args) {
        Seat s = new Seat("A2");
        s.updateStatus();
    }
}
