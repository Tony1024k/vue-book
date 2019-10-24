package com.learn.vuebook.service;

import com.learn.vuebook.entity.ShoppingCart;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {
    private final
    UserRepository userDao;

    public UserService(UserRepository userDao) {
        this.userDao = userDao;
    }

    public User getByUsername(String username) {
        return userDao.findByUsername(username);
    }

    public int userReg(User user) {
        if (userDao.findByUsername(user.getUsername()) != null) {
            return -1;
        }
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(true);
        user.setShoppingCart(new ShoppingCart());
        if (userDao.save(user).getUsername().equals(user.getUsername())) {
            return 1;
        }
        return 0;
    }

    public void save(User user) {
        userDao.save(user);
    }

    public List<User> getAll() {
        return userDao.findAll();
    }

    public Page<User> getPage(Pageable pageable) {
        return userDao.findAll(pageable);
    }

    public User getById(Long id) {
        return userDao.getOne(id);
    }

    public void deleteById(Long id) {
        userDao.deleteById(id);
    }

}