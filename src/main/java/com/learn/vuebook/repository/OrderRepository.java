package com.learn.vuebook.repository;


import com.learn.vuebook.entity.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {


    @Query
    Order findByOrderNumber(String orderNumber);

    @Query
    Page<Order> findByUserId(Long userId, Pageable pageable);
}
