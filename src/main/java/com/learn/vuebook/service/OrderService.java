package com.learn.vuebook.service;


import com.learn.vuebook.entity.Order;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.repository.OrderItemRepository;
import com.learn.vuebook.repository.OrderRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
@Transactional
public class OrderService {

    private final
    OrderRepository orderDao;

    //@Autowired
    public OrderService(OrderRepository orderDao, OrderItemRepository orderItemDao) {
        this.orderDao = orderDao;
    }

    private SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMddHHmmss");

    public void save(Order order) {
        int random = (int) (1 + Math.random() * 9999);
        order.setOrderNumber(dateFormat.format(new Date()) + String.format("%04d", random));
        orderDao.save(order);
    }

    public Order getByOrderNumber(String orderNumber) {
        return orderDao.findByOrderNumber(orderNumber);
    }

    public Page<Order> getByUserId(Long userId, Pageable pageable) {
        return orderDao.findByUserId(userId, pageable);
    }

    public void deleteById(Long id) {
        orderDao.deleteById(id);
    }

    public Order getById(Long id) {
        return orderDao.getOne(id);
    }
}
