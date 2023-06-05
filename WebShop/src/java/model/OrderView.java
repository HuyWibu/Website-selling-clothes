/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class OrderView {
    private int oid;
    private String customerName, productName, dateBuy, size;
    private int quantity;
    private double salePrice;
    private String phoneNumber, address;

    public OrderView() {
    }

    public OrderView(int oid, String customerName, String productName, String dateBuy, String size, int quantity, double salePrice, String phoneNumber, String address) {
        this.oid = oid;
        this.customerName = customerName;
        this.productName = productName;
        this.dateBuy = dateBuy;
        this.size = size;
        this.quantity = quantity;
        this.salePrice = salePrice;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDateBuy() {
        return dateBuy;
    }

    public void setDateBuy(String dateBuy) {
        this.dateBuy = dateBuy;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "OrderView{" + "oid=" + oid + ", customerName=" + customerName + ", productName=" + productName + ", dateBuy=" + dateBuy + ", size=" + size + ", quantity=" + quantity + ", salePrice=" + salePrice + ", phoneNumber=" + phoneNumber + ", address=" + address + '}';
    }
    
    
}
