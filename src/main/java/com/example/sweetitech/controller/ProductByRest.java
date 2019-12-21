package com.example.sweetitech.controller;


import com.example.sweetitech.model.Product;
import com.example.sweetitech.repository.ProductRepoitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductByRest {
    @Autowired
    ProductRepoitory productRepoitory;

    @GetMapping("/getAllProduct")
    public Iterable<Product> getAllData() {

        return productRepoitory.findAll();
    }


}
