package com.learn.vuebook.controller;


import com.learn.vuebook.entity.User;
import com.learn.vuebook.service.UserService;
import com.learn.vuebook.utils.UserTools;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    private final
    UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/update")
    public void update(User user) {
        userService.save(user);
    }

    @RequestMapping(value = "/del")
    public void del(Long id) {
        userService.deleteById(id);
    }

    @RequestMapping("/page")
    public List<User> getPage(Integer page, Integer size) {
        Page<User> result;
        result = userService.getPage(PageRequest.of(page, size, Sort.Direction.ASC, "username"));
        return result.getContent();
    }

    @RequestMapping("/users")
    public List<User> getAll() {

        return userService.getAll();
    }

    @RequestMapping("/get")
    public User getById(Long id) {
        return userService.getById(id);
    }

    @RequestMapping("/currentUser")
    public User getCurrentUser() {
        return UserTools.getCurrentUser();
    }
}
