/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ProductDTO {
    private int pid;
    private String image, title;
    private double price, discount;
    private int cid, quantity;
    private String material;
    private String design;
    private String brand;
    private String fit;

    public ProductDTO() {
    }

    public ProductDTO(int pid, String image, String title, double price, double discount, int cid, int quantity, String material, String design, String brand, String fit) {
        this.pid = pid;
        this.image = image;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.cid = cid;
        this.quantity = quantity;
        this.material = material;
        this.design = design;
        this.brand = brand;
        this.fit = fit;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getDesign() {
        return design;
    }

    public void setDesign(String design) {
        this.design = design;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getFit() {
        return fit;
    }

    public void setFit(String fit) {
        this.fit = fit;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "pid=" + pid + ", image=" + image + ", title=" + title + ", price=" + price + ", discount=" + discount + ", cid=" + cid + ", quantity=" + quantity + ", material=" + material + ", design=" + design + ", brand=" + brand + ", fit=" + fit + '}';
    }
    
    
}
