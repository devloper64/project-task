package com.example.sweetitech.controller;


import com.example.sweetitech.model.Product;
import com.example.sweetitech.repository.ProductRepoitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.Optional;

@Controller
public class MainController {

    @Autowired
    ProductRepoitory productRepoitory;

    @RequestMapping(value="/add", method = RequestMethod.POST)
    public  String addProduct(@ModelAttribute("Product") Product product,BindingResult result){
        productRepoitory.save(product);
        return "redirect:/productlist";
    }

    @RequestMapping(value = "/productlist", method = RequestMethod.GET)
    public String productList(Map<String, Object> map) {

        map.put("listproduct", new Product());
        map.put("productlist",productRepoitory.findAll());

        return "productlist";
    }

    @RequestMapping(value = "/deleteoproduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id")Long id, Map<String, Object> map){
        productRepoitory.deleteById(id);
        return "redirect:/productlist";
    }


    @RequestMapping(value = "/updateproduct/{id}", method = RequestMethod.GET)
    public String getUpdateProduct(@PathVariable("id")Long id, Map<String, Object> map){
        Optional<Product> product=productRepoitory.findById(id);
        map.put("product",product);
        return "updateproduct";
    }




}
