/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {
    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    
    public Item getItemById(int id){
        for(Item i : items){
            if(i.getProduct().getPid() == id){
                return i;
            }
        }
        return null;
    }
    
    public int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    
    // them vao cart
    public void addItem(Item t){
        // co o cart roi
        // neu item da co va size cung trung thi moi k them vao cart
        Item i = getItemById(t.getProduct().getPid());
        if(i != null && i.getSize().equals(t.getSize())){
//            Item i = getItemById(t.getProduct().getPid());
            
            i.setQuantity(i.getQuantity() + t.getQuantity());
        }
        // chua co o cart
        else{
            items.add(t);
        }
    }
    
    public void removeItem(int id){
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    
    public double getTotalMoney(){
        double res = 0;
        for(Item i : items){
            res += i.getQuantity() * i.getPrice();
        }
        return res;
    }

    @Override
    public String toString() {
        return "Cart{" + "items=" + items + '}';
    }
    
    
}
