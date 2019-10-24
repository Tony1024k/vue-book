package com.learn.vuebook.service;


import com.learn.vuebook.entity.ShippingAddress;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.repository.ShippingAddrRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ShippingAddrService {
    private final
    ShippingAddrRepository shippingAddrDao;

    public ShippingAddrService(ShippingAddrRepository shippingAddrDao) {
        this.shippingAddrDao = shippingAddrDao;
    }

    public void save(ShippingAddress address) {
        shippingAddrDao.save(address);
    }

    public ShippingAddress getById(Long id) {
        return shippingAddrDao.getOne(id);
    }

    public List<ShippingAddress> getByUser(User user) {
        return shippingAddrDao.findByUser(user);
    }


    public void deleteById(Long id) {
        shippingAddrDao.deleteById(id);
    }

}
