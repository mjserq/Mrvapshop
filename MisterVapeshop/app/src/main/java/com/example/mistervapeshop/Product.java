package com.example.mistervapeshop;

public class Product {
    private String product_name;
    private double price;
    private String gen_name;
    private int qty;

    public Product(String product_name, double price, String gen_name, int qty){

        this.product_name = product_name;
        this.gen_name = gen_name;
        this.price = price;
        this.qty = qty;
    }

    public String getTitle() {
        return product_name;
    }

    public void setTitle(String title) {
        this.product_name = product_name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getString() {
        return gen_name;
    }

    public void setString(String gen_name) {
        this.gen_name = gen_name;
    }

    public int getQty() {return qty;}

    public void setQty (int qty) {
        this.qty = qty;
    }
}
