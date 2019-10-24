package com.learn.vuebook.repository;


import com.learn.vuebook.entity.ShippingAddress;
import com.learn.vuebook.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShippingAddrRepository extends JpaRepository<ShippingAddress, Long> {
    @Query
    List<ShippingAddress> findByUser(User user);
}
