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
public class Product {

    int productID;
    String productName;
    double price;
    String image;
    String description;
    String trailer;
    int categoryID;
    String movieGenre;
    String movieDirector;
    String movieActor;
    int movieDuration;
    String releaseDate;
    double rate;

    public Product() {
        connect();
    }

    public Product(String productName, double price, String image, String description, String trailer, int categoryID, String movieGenre, String movieDirector, String movieActor, int movieDuration, String releaseDate, double rate) {
        this.productName = productName;
        this.price = price;
        this.image = image;
        this.description = description;
        this.trailer = trailer;
        this.categoryID = categoryID;
        this.movieGenre = movieGenre;
        this.movieDirector = movieDirector;
        this.movieActor = movieActor;
        this.movieDuration = movieDuration;
        this.releaseDate = releaseDate;
        this.rate = rate;
        connect();
    }

    public Product(int productID, String productName, double price, String image, String description, String trailer, int categoryID, String movieGenre, String movieDirector, String movieActor, int movieDuration, String releaseDate, double rate) {
        this.productID = productID;
        this.productName = productName;
        this.price = price;
        this.image = image;
        this.description = description;
        this.trailer = trailer;
        this.categoryID = categoryID;
        this.movieGenre = movieGenre;
        this.movieDirector = movieDirector;
        this.movieActor = movieActor;
        this.movieDuration = movieDuration;
        this.releaseDate = releaseDate;
        this.rate = rate;
        connect();
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getMovieGenre() {
        return movieGenre;
    }

    public void setMovieGenre(String movieGenre) {
        this.movieGenre = movieGenre;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieActor() {
        return movieActor;
    }

    public void setMovieActor(String movieActor) {
        this.movieActor = movieActor;
    }

    public int getMovieDuration() {
        return movieDuration;
    }

    public void setMovieDuration(int movieDuration) {
        this.movieDuration = movieDuration;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
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

    public ArrayList<Product> getListProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                productID = rs.getInt(1);
                productName = rs.getString(2);
                price = rs.getDouble(3);
                image = rs.getString(4);
                description = rs.getString(5);
                trailer = rs.getString(6);
                categoryID = rs.getInt(7);
                movieGenre = rs.getString(8);
                movieDirector = rs.getString(9);
                movieActor = rs.getString(10);
                movieDuration = rs.getInt(11);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                releaseDate = "";
                if (rs.getDate(12) != null) {
                    releaseDate = f.format(rs.getDate(12));
                }
                rate = rs.getDouble(13);
                list.add(new Product(productID, productName, price, image, description, trailer, categoryID, movieGenre, movieDirector, movieActor, movieDuration, releaseDate, rate));
            }
        } catch (SQLException e) {
            System.out.println("getListProduct " + e.getMessage());
        }
        return list;
    }

    public List<Product> getTopProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from \n"
                    + "(select top 3 * from [dbo].[Product]\n"
                    + "where CategoryID=1 \n"
                    + "order by productID desc) as a";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                productID = rs.getInt(1);
                productName = rs.getString(2);
                price = rs.getDouble(3);
                image = rs.getString(4);
                description = rs.getString(5);
                trailer = rs.getString(6);
                categoryID = rs.getInt(7);
                movieGenre = rs.getString(8);
                movieDirector = rs.getString(9);
                movieActor = rs.getString(10);
                movieDuration = rs.getInt(11);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                releaseDate = "";
                if (rs.getDate(12) != null) {
                    releaseDate = f.format(rs.getDate(12));
                }
                rate = rs.getDouble(13);
                list.add(new Product(productID, productName, price, image, description, trailer, categoryID, movieGenre, movieDirector, movieActor, movieDuration, releaseDate, rate));
            }
        } catch (SQLException e) {
            System.out.println("getListProduct " + e.getMessage());
        }
        return list;
    }

    public List<Product> getListProductByCID2() {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product where categoryID=2";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                productID = rs.getInt(1);
                productName = rs.getString(2);
                price = rs.getDouble(3);
                image = rs.getString(4);
                description = rs.getString(5);
                trailer = rs.getString(6);
                categoryID = rs.getInt(7);
                movieGenre = rs.getString(8);
                movieDirector = rs.getString(9);
                movieActor = rs.getString(10);
                movieDuration = rs.getInt(11);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                releaseDate = "";
                if (rs.getDate(12) != null) {
                    releaseDate = f.format(rs.getDate(12));
                }
                rate = rs.getDouble(13);
                list.add(new Product(productID, productName, price, image, description, trailer, categoryID, movieGenre, movieDirector, movieActor, movieDuration, releaseDate, rate));
            }
        } catch (SQLException e) {
            System.out.println("getListProduct " + e.getMessage());
        }
        return list;
    }

    public List<Product> getListProductByCID1() {
        List<Product> list = new ArrayList<>();
        try {
            String strSelect = "select * from Product where categoryID=1";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                productID = rs.getInt(1);
                productName = rs.getString(2);
                price = rs.getDouble(3);
                image = rs.getString(4);
                description = rs.getString(5);
                trailer = rs.getString(6);
                categoryID = rs.getInt(7);
                movieGenre = rs.getString(8);
                movieDirector = rs.getString(9);
                movieActor = rs.getString(10);
                movieDuration = rs.getInt(11);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                releaseDate = "";
                if (rs.getDate(12) != null) {
                    releaseDate = f.format(rs.getDate(12));
                }
                rate = rs.getDouble(13);
                list.add(new Product(productID, productName, price, image, description, trailer, categoryID, movieGenre, movieDirector, movieActor, movieDuration, releaseDate, rate));
            }
        } catch (SQLException e) {
            System.out.println("getListProduct " + e.getMessage());
        }
        return list;
    }

    public Product getProduct(int pID) {
        try {
            String strSelect = "select * from Product where productID=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setInt(1, pID);
            rs = pstm.executeQuery();
            if (rs.next()) {
                productID = rs.getInt(1);
                productName = rs.getString(2);
                price = rs.getDouble(3);
                image = rs.getString(4);
                description = rs.getString(5);
                trailer = rs.getString(6);
                categoryID = rs.getInt(7);
                movieGenre = rs.getString(8);
                movieDirector = rs.getString(9);
                movieActor = rs.getString(10);
                movieDuration = rs.getInt(11);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                releaseDate = "";
                if (rs.getDate(12) != null) {
                    releaseDate = f.format(rs.getDate(12));
                }
                rate = rs.getDouble(13);
                return new Product(productID, productName, price, image, description, trailer, categoryID, movieGenre, movieDirector, movieActor, movieDuration, releaseDate, rate);
            }
        } catch (SQLException e) {
            System.out.println("getListProduct " + e.getMessage());
        }
        return null;
    }

    public void delete(String id) {
        try {
            String strDelete = "delete from [dbo].[Product] \n"
                    + "where productID=?";
            pstm = cnn.prepareStatement(strDelete);
            pstm.setInt(1, Integer.parseInt(id));
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Delete" + e.getMessage());
        }
    }

    public void addProduct() {
        try {
            String str = "INSERT INTO [dbo].[Product]("
                    + "[ProductName], "
                    + "[Price], "
                    + "[Image], "
                    + "[Description], "
                    + "[Trailer], "
                    + "[CategoryID], "
                    + "[movieGenre], "
                    + "[movieDirector], "
                    + "[movieActor], "
                    + "[movieDuration], "
                    + "[releaseDate], "
                    + "[rate])\n"
                    + "VALUES (\n"
                    + "?,\n"
                    + "?,\n"
                    + "?,\n"
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
            pstm.setString(1, productName);
            pstm.setDouble(2, price);
            pstm.setString(3, image);
            pstm.setString(4, description);
            pstm.setString(5, trailer);
            pstm.setInt(6, categoryID);
            pstm.setString(7, movieGenre);
            pstm.setString(8, movieDirector);
            pstm.setString(9, movieActor);
            pstm.setInt(10, movieDuration);
//            SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");    
            pstm.setDate(11, java.sql.Date.valueOf(releaseDate));
            pstm.setDouble(12, rate);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addProduct: " + e.getMessage());
        }
    }
//    public static void main(String[] args) {
//        Product p = new Product();
//        List<Product> list = p.getListProductByCID2();
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).getProductID());
//            System.out.println(list.get(i).getProductName());
//            System.out.println(list.get(i).getPrice());
//            System.out.println(list.get(i).getImage());
//            System.out.println(list.get(i).getDescription());
//            System.out.println(list.get(i).getTrailer());
//            System.out.println(list.get(i).getMovieDirector());
//            System.out.println(list.get(i).getMovieActor());
//            System.out.println(list.get(i).getMovieDuration());
//            System.out.println(list.get(i).getReleaseDate());
//            System.out.println(list.get(i).getRate());
//            System.out.println("////////////////////////");
//        }
//
//    }
}
