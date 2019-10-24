package com.learn.vuebook.utils;

import com.learn.vuebook.entity.User;
import org.springframework.security.core.context.SecurityContextHolder;

public class UserTools {
    public static User getCurrentUser() {
        return (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
}
