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

/**
 *
 * @author user
 */
public class User {

    private int id;
    private String username;
    private String password;
    private String name;
    private String dob;
    private String gender;
    private String role;
    private String address;
    private String telephone;
    private String email;

    public User() {
        connect();
    }  

    public User(int id, String password, String name, String address, String telephone, String email) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }
    
    public User(int id, String password, String address, String telephone, String email) {
        this.id = id;
        this.password = password;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
         connect();
    }
    
    public User(String username) {
        this.username = username;
        connect();
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
        connect();
    }

    public User(int id, String username, String password, String name, String gender, String address, String telephone, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(String name, String dob, String gender, String address, String telephone, String email) {
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    
    public User(String username, String password, String telephone, String email) {
        this.username = username;
        this.password = password;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(String username, String name, String dob, String gender, String address, String telephone, String email) {
        this.username = username;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }
    

    public User(int id, String username, String password, String name, String dob, String gender, String role, String address, String telephone, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.role = role;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(String username, String password, String name, String telephone, String email) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(String username, String password, String name, String dob, String gender, String address, String telephone, String email) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(String username, String password, String name, String dob, String gender, String role, String address, String telephone, String email) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.role = role;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
        connect();
    }

    public User(int id, String username, String password, String name, String dob, String gender, String address, String telephone, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.telephone = telephone;
        this.email = email;
                connect();

    }    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean checkUser() {
            try {
            String strSelect
                    = "select * from [User] "
                    + "where username=? "
                    + "and password=?";
            // nem query vao de thuc thi cau truy van
            pstm=cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            pstm.setString(2, password);
            // thuc thi cau truy van va tra ve tap ket qua (result set)
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUser" + e.getMessage());
        }
        return false;
    }
    
    public boolean checkAdmin() {
            try {
            String strSelect
                    = "select * from [User] "
                    + "where username='admin' ";
            // nem query vao de thuc thi cau truy van
            pstm=cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            // thuc thi cau truy van va tra ve tap ket qua (result set)
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkAdmin" + e.getMessage());
        }
        return false;
    }
    
    public boolean checkAccountExist() {
        try {
            String strSelect
                    = "select * from [User] "
                    + "where username=? ";
            // nem query vao de thuc thi cau truy van
            pstm=cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            // thuc thi cau truy van va tra ve tap ket qua (result set)
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("checkUser" + e.getMessage());
        }
        return false;
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
    
    public User getUser() {
        try {
            String strSelect
                    = "select * from [User] "
                    + "where username=? "
                    + "and password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                username = rs.getString(2);
                password = rs.getString(3);
                name = rs.getString(4);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                dob = "";
                if (rs.getDate(5) != null) {
                    dob = f.format(rs.getDate(5));
                }
                gender = rs.getString(6);
                role = rs.getString(7);
                address = rs.getString(8);
                telephone = rs.getString(9);
                email = rs.getString(10);
                return new User(id, username, password, name, dob, gender, role, address, telephone, email);
            }
        } catch (Exception e) {
            System.out.println("getListUser " + e.getMessage());
        }
        return null;
    }
    
    public ArrayList<User> getListUser() {
        ArrayList<User> data = new ArrayList<>();
        try {
            String strSelect = "select * from [User] ";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
                username = rs.getString(2);
                password = rs.getString(3);
                name = rs.getString(4);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                dob = "";
                if (rs.getDate(5) != null) {
                    dob = f.format(rs.getDate(5));
                }
                gender = rs.getString(6);
                role = rs.getString(7);
                address = rs.getString(8);
                telephone = rs.getString(9);
                email = rs.getString(10);
                data.add(new User(id, username, password, name, dob, gender, role, address, telephone, email));
            }
        } catch (SQLException e) {
            System.out.println("getListUser " + e.getMessage());
        }
        return data;
    }
    
    public void signUp() {
        try {
            String str = "INSERT INTO [dbo].[User]("
                    + "[username], "
                    + "[password], "
                    + "[Name], "
                    + "[Dob], "
                    + "[Gender], "
                    + "[Role], "
                    + "[Address], "
                    + "[Telephone], "
                    + "[Email])\n"
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
            pstm.setString(1, username);
            pstm.setString(2, password);
            pstm.setString(3, name);
            pstm.setString(4, dob);
            pstm.setString(5, gender);
            pstm.setString(6, role);
            pstm.setString(7, address);
            pstm.setString(8, telephone);
            pstm.setString(9, email);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("signUp: " + e.getMessage());
        }
    }
    public void addUser() {
        try {
            String str = "INSERT INTO [dbo].[User]("
                    + "[username], "
                    + "[password], "
                    + "[Name], "
                    + "[Dob], "
                    + "[Gender], "
                    + "[Role], "
                    + "[Address], "
                    + "[Telephone], "
                    + "[Email])\n"
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
            pstm.setString(1, username);
            pstm.setString(2, password);
            pstm.setString(3, name);
            pstm.setString(4, dob);
            pstm.setString(5, gender);
            pstm.setString(6, role);
            pstm.setString(7, address);
            pstm.setString(8, telephone);
            pstm.setString(9, email);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("addUser: " + e.getMessage());
        }
    }
    public void change() {
        try {
            String str = "UPDATE [USER] SET PASSWORD=? WHERE [username] = ?";
            pstm = cnn.prepareStatement(str);   
            pstm.setString(1, password);
            pstm.setString(2, username);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("change: " + e.getMessage());
        }
    }     
    
    public void updateInfo() {
        try {
            String strUpdate = ""
                    + "UPDATE [USER] set\n"
                    + "            name=?,\n"
                    + "            email=?,\n"
                    + "            telephone=?,\n"
                    + "            gender=?,\n"
                    + "            address=?,\n"
                    + "            dob=?\n"
                    + "            where username=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, telephone);
            pstm.setString(4, gender);
            pstm.setString(5, address);
            pstm.setString(6, dob);
            pstm.setString(7, username);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("updateInfo: " + e.getMessage());
        }
    }
    
    public void updateInfo1(int uid) {
        try {
            String strUpdate = ""
                    + "UPDATE [USER] set\n"
                    + "		   password=?,\n"
                    + "            name=?,\n"
                    + "            email=?,\n"
                    + "            telephone=?,\n"               
                    + "            address=?\n"
                    + "            where id=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, password);
            pstm.setString(2, name);
            pstm.setString(3, email);
            pstm.setString(4, telephone);
            pstm.setString(5, address);
            pstm.setInt(6, uid);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("updateInfo1: " + e.getMessage());
        }
    }
    

    public void delete(String id) {
        try {
            String strDelete = "delete from [dbo].[User] \n"
                    + "where id=?";
            pstm = cnn.prepareStatement(strDelete);
            pstm.setInt(1, Integer.parseInt(id));
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Delete" + e.getMessage());
        }
    }
   
    @Override
    public String toString() {
        return "User{" + "id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", dob=" + dob + ", gender=" + gender + ", role=" + role + ", address=" + address + ", telephone=" + telephone + ", email=" + email + '}';
    }
    
    public static void main(String[] args) {
        User u = new User(7, "BBB", "BBB", "BBB", "24-09-2002", "BBB", "BBB", "123", "BBB");
        u.updateInfo1(7);
    }
    

    
//    public void getUser(String acc) {
//       ArrayList<User> data = new ArrayList<>();
//        try {
//            String strSelect = "select * from Users "
//                    + "where account='" + acc + "' ";
//            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
//            rs = stm.executeQuery(strSelect);
//            while (rs.next()) {
//                username = rs.getString(1);
//                password = rs.getString(2);
//                name = rs.getString(3);
//                gender = String.valueOf(rs.getBoolean(4));
//                address = rs.getString(5);
//                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
//                dob = "";
//                if (rs.getDate(6) != null) {
//                    dob = f.format(rs.getDate(6));
//                }
//            }
//        } catch (Exception e) {
//            System.out.println("getUser " + e.getMessage());
//        }
//    }

    public User getUserByID(int uid) {
        try {
            String strSelect
                    = "select * from [User] "
                    + "where id=? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setInt(1, uid);
            rs = pstm.executeQuery();
            while (rs.next()) {
                username = rs.getString(2);
                password = rs.getString(3);
                name = rs.getString(4);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                dob = "";
                if (rs.getDate(5) != null) {
                    dob = f.format(rs.getDate(5));
                }
                gender = rs.getString(6);
                role = rs.getString(7);
                address = rs.getString(8);
                telephone = rs.getString(9);
                email = rs.getString(10);
                return new User(uid,username, password, name, dob, gender, role, address, telephone, email);
            }
        } catch (Exception e) {
            System.out.println("getListUser " + e.getMessage());
        }
        return null;
    }


}
