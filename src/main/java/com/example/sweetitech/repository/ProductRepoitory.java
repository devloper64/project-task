package com.example.sweetitech.repository;

import com.example.sweetitech.model.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.OrderBy;
import java.util.List;

@Repository
public interface ProductRepoitory extends CrudRepository<Product,Long> {

    @Query(value = "select p from Product  p order by p.profit desc")
    List <Product> getProductByProfit();
}
