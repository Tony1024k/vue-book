package com.learn.vuebook.controller;


import com.learn.vuebook.entity.Order;
import com.learn.vuebook.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping("/save")
    public void save(Order order) {
        orderService.save(order);
    }

    @RequestMapping("/details")
    public Order getById(Long id) {
        return orderService.getById(id);
    }

    @RequestMapping("/search")
    public Order search(String orderNumber) {
        return orderService.getByOrderNumber(orderNumber);
    }

    @RequestMapping("/delete")
    public void delete(Long id) {
        orderService.deleteById(id);
    }

    @RequestMapping("/list")
    public Map getByUserId(Long userId, Integer page, Integer size) {
        Map<String, Object> map = new HashMap<>();
        Pageable pageable = PageRequest.of(page, size, Sort.Direction.ASC, "createTime");
        Page<Order> result = orderService.getByUserId(userId, pageable);
        map.put("orders", result.getContent());
        map.put("totalPages", result.getTotalPages());
        return map;
    }

}
