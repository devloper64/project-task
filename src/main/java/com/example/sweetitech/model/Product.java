package com.example.sweetitech.model;

import javax.persistence.*;

@Entity
public class Product  {
//price, profit percentage, product
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(unique = true, nullable = false)
    private  Long id;
    @Column
    private String name;
    @Column
    private double price;
    @Column
    private double profit;
    @Column
    private String productType;

    public  Product(){

    }
    public Product(Long id, String name, double price, double profit, String productType) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.profit = profit;
        this.productType = productType;
    }

    public Product(String name, double price, double profit, String productType) {
        this.name = name;
        this.price = price;
        this.profit = profit;
        this.productType = productType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getProfit() {
        return profit;
    }

    public void setProfit(double profit) {
        this.profit = profit;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }
}
