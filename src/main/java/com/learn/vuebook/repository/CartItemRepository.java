package com.learn.vuebook.repository;


import com.learn.vuebook.entity.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    @Query(value = "delete from cartitem  where cart_id=?1", nativeQuery = true)
    @Modifying
    void deleteByCartId(Long cartId);
}
