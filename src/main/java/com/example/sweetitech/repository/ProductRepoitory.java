package com.example.sweetitech.repository;

import com.example.sweetitech.model.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepoitory extends CrudRepository<Product,Long> {

}
