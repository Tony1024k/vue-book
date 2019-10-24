package com.learn.vuebook.service;


import com.learn.vuebook.entity.ShoppingCart;
import com.learn.vuebook.repository.ShopCartRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ShopCartService {

    private final
    ShopCartRepository shopCartDao;

    public ShopCartService(ShopCartRepository ShopCartDao) {
        this.shopCartDao = ShopCartDao;
    }

    public ShoppingCart getById(Long id) {
        return shopCartDao.getOne(id);
    }

    public void deleteById(Long id) {
        shopCartDao.deleteById(id);
    }

    public ShoppingCart save(ShoppingCart cart) {
        return shopCartDao.save(cart);
    }


}
