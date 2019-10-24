package com.learn.vuebook.controller;


import com.learn.vuebook.entity.ShippingAddress;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.service.ShippingAddrService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/address")
public class ShippingAddrController {
    private final
    ShippingAddrService addrService;

    public ShippingAddrController(ShippingAddrService addrService) {
        this.addrService = addrService;
    }

    @RequestMapping("/addrList")
    public List<ShippingAddress> getAddrList(User user) {
        return addrService.getByUser(user);
    }

    @RequestMapping("/save")
    public void add(ShippingAddress address) {
        addrService.save(address);
    }


    @RequestMapping("/delete")
    public void delete(Long id) {
        addrService.deleteById(id);
    }

}
