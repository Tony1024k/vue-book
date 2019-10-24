package com.learn.vuebook.controller;

import com.learn.vuebook.entity.RespBean;
import com.learn.vuebook.entity.User;
import com.learn.vuebook.service.UserService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class RegLoginController {
    private final
    UserService userService;

    public RegLoginController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/reg")
    public RespBean reg(@Validated User user) {

         int result = userService.userReg(user);
         if (result == -1) {
         return RespBean.error("该用户名已被注册！");
         } else if (result == 1) {
         return RespBean.ok("注册成功！");
         }
         return RespBean.error("注册失败！");
    }
}
