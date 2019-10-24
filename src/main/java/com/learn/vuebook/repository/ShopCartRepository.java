package com.learn.vuebook.repository;

import com.learn.vuebook.entity.ShoppingCart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopCartRepository extends JpaRepository<ShoppingCart,Long> {


}
