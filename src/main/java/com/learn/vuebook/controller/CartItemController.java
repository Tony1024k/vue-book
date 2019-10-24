package com.learn.vuebook.controller;


import com.learn.vuebook.entity.CartItem;
import com.learn.vuebook.service.CartItemService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/cartItem")
public class CartItemController {

    private final
    CartItemService cartItemService;

    public CartItemController(CartItemService cartItemService) {
        this.cartItemService = cartItemService;
    }

    @RequestMapping("/save")
    public void save(CartItem item) {
        cartItemService.save(item);
    }

    @RequestMapping("/delete")
    public void delete(Long id) {
        cartItemService.deleteById(id);
    }

    @RequestMapping("/saveAll")
    public void saveAll(List<CartItem> cartItems) {
        cartItemService.saveAll(cartItems);
    }


}
