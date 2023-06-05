/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class ProductDetail {
    private int pid; 
    private String material, design, brand, model, fit, image1,
            image2, image3;

    public ProductDetail() {
    }

    public ProductDetail(int pid, String material, String design, 
            String brand, String model, String fit, String image1, 
            String image2, String image3) {
        this.pid = pid;
        this.material = material;
        this.design = design;
        this.brand = brand;
        this.model = model;
        this.fit = fit;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getFit() {
        return fit;
    }

    public void setFit(String fit) {
        this.fit = fit;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    @Override
    public String toString() {
        return "ProductDetail{" + "pid=" + pid + ", material=" + material + ", design=" + design + ", brand=" + brand + ", model=" + model + ", fit=" + fit + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + '}';
    }

    
}
