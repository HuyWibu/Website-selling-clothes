/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class OrderLine {
    private int oid, pid;
    private int quantity;
    // gia sp = gia sp - discount
    private double salePrice;
    
    private String size;
    
    private String name, address, phoneNumber;

    public OrderLine() {
    }

    public OrderLine(int oid, int pid, int quantity, double salePrice, 
            String size, String name, String address, String phoneNumber) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.salePrice = salePrice;
        this.size = size;
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    
    
    
}
