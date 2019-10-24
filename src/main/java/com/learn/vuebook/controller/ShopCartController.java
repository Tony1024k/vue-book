package com.learn.vuebook.controller;


import com.learn.vuebook.entity.ShoppingCart;
import com.learn.vuebook.service.CartItemService;
import com.learn.vuebook.service.ShopCartService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/cart")
public class ShopCartController {

    private final
    CartItemService cartItemService;

    private final
    ShopCartService shopCartService;

    public ShopCartController(ShopCartService shopCartService, CartItemService cartItemService) {
        this.shopCartService = shopCartService;
        this.cartItemService = cartItemService;
    }

    @RequestMapping("/get")
    public ShoppingCart get(Long id) {
        return shopCartService.getById(id);
    }

    @RequestMapping("/save")
    public ShoppingCart save(ShoppingCart cart) {
        return shopCartService.save(cart);
    }


    @RequestMapping("/clear")
    public void clear(Long cartId) {
        cartItemService.deleteByCartId(cartId);
    }

}
