package com.learn.vuebook.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.learn.vuebook.entity.Order;
import com.learn.vuebook.entity.RespBean;
import com.learn.vuebook.entity.ShippingAddress;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.service.*;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/test")
public class TestController {
    private final
    ShippingAddrService addrService;
    private final
    OrderService orderService;
    private final
    UserService userService;

    public TestController(ShippingAddrService addrService, OrderService orderService, CartItemService cartItemService, BookService bookService, UserService userService) {
        this.addrService = addrService;
        this.orderService = orderService;
        this.userService = userService;
    }

    @RequestMapping("/validTest")
    public RespBean test(@Validated User user, BindingResult result) {
        FieldError fieldError = result.getFieldError();
        if (fieldError != null) {
            return RespBean.error(fieldError.getDefaultMessage());
        }
        return RespBean.ok("ok");
    }

    @RequestMapping("/")
    public String test() throws JsonProcessingException {
        User user = userService.getByUsername("admin");
        System.out.println(user);
        ObjectMapper objectMapper = new ObjectMapper();
        String user2String = objectMapper.writeValueAsString(user);
        System.out.println(user2String);
        user.setGender("男");
        return "hello";
    }


    @RequestMapping("/addr")
    public List<ShippingAddress> getAddr(User user) {
        return addrService.getByUser(user);
    }

    @RequestMapping("/order")
    public String addOrder(Order order) {
        try {
            orderService.save(order);
        } catch (DataIntegrityViolationException e) {
            //e.printStackTrace();
            return "请稍后重试";
        }

        return "添加成功";
    }

    @RequestMapping("/getOrder")
    public Order getOrderById(Long id) {
        return orderService.getById(id);
    }


}
