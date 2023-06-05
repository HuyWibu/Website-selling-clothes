/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Cart;
import model.Item;
import model.Order;
import model.OrderLine;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public void addOrder(Account a, Cart cart) {
//        for (Item i : cart.getItems()) {
//            System.out.println(i);
//        }
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            // add Order vao bang
            String sql1 = "INSERT INTO orders VALUES(?, ?, ?)";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setString(1, date);
            ps1.setInt(2, a.getUid());
            ps1.setDouble(3, cart.getTotalMoney());
            ps1.executeUpdate();

            // lay ra oid cua order vua add
            String sql2 = "SELECT TOP 1 oid from orders ORDER BY oid DESC";
            PreparedStatement ps2 = connection.prepareStatement(sql2);
            ResultSet rs2 = ps2.executeQuery();

            // add vao bang orders_line
            if (rs2.next()) {
                int oid = rs2.getInt(1);
//                System.out.println(list);
                String sql3 = "INSERT INTO orders_line VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
                for (Item i : cart.getItems()) {
                    PreparedStatement ps3 = connection.prepareStatement(sql3);
                    ps3.setInt(1, oid);
                    ps3.setInt(2, i.getProduct().getPid());
                    ps3.setInt(3, i.getQuantity());
                    ps3.setDouble(4, i.getPrice());
                    ps3.setString(5, i.getSize());
                    ps3.setString(6, i.getName());
                    System.out.println(i.getName());
                    ps3.setString(7, i.getAddress());
                    ps3.setString(8, i.getPhoneNumber());
                    ps3.executeUpdate();
//                    System.out.println("ok");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Order getOrderByOid(int oid){
        String sql = "SELECT * FROM orders "
                + "WHERE oid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, oid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Order(rs.getInt(1), 
                                 rs.getString(2), 
                                 rs.getInt(3), 
                                 rs.getDouble(4));
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public List<OrderLine> getOrderLines(){
        List<OrderLine> list = new ArrayList<>();
        String sql = "SELECT * FROM orders_line";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderLine( rs.getInt(1), 
                                        rs.getInt(2), 
                                        rs.getInt(3), 
                                        rs.getDouble(4), 
                                        rs.getString(5), 
                                        rs.getString(6), 
                                        rs.getString(7), 
                                        rs.getString(8)));
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
}
