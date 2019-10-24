package com.learn.vuebook.service;


import com.learn.vuebook.entity.CartItem;
import com.learn.vuebook.repository.CartItemRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CartItemService {
    private final
    CartItemRepository cartItemDao;

    public CartItemService(CartItemRepository cartItemDao) {
        this.cartItemDao = cartItemDao;
    }

    public void saveAll(List<CartItem> items) {
        cartItemDao.saveAll(items);
    }

    public void save(CartItem item) {
        cartItemDao.save(item);
    }

    public void deleteById(Long id) {
        cartItemDao.deleteById(id);
    }

    public void deleteByCartId(Long cartId) {
        cartItemDao.deleteByCartId(cartId);
    }
}
