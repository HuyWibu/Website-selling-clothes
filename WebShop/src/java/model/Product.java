/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Product {
    private int pid;
    private String title;
    private double price, discount;
    private String image, size, color;
    private Category category;
    private int quantity;
    
    
    public Product() {
    }

    public Product(int pid, String title, double price, double discount, 
            String image, String size, String color, Category category, int quantity) {
        this.pid = pid;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.image = image;
        this.size = size;
        this.color = color;
        this.category = category;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    
    
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Product{" + "pid=" + pid + ", title=" + title + ", price=" + price + ", discount=" + discount + ", image=" + image + ", size=" + size + ", color=" + color + ", category=" + category + ", quantity=" + quantity + '}';
    }

    

}
