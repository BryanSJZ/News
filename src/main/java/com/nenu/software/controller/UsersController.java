package com.nenu.software.controller;

import com.nenu.software.common.entity.Users;
import com.nenu.software.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author shanjz
 * @since 2018/6/25 11:14
 */
@Controller
@RequestMapping("/user")
public class UsersController {

    @Autowired
    UsersService usersService;

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String toRegister() {
        return "register";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(Users users) {
        try {
            usersService.newUser(users);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.toLogin();
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String toLogin() {
        return "/log-in";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Users users,HttpSession session) {
        try {
            Users users1 = usersService.login(users);
            if (users1 != null) {
                session.setAttribute("user",users1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/news/list";
    }

    @RequestMapping(value = "/logout",method = RequestMethod.POST)
    public String logout(Users users,HttpSession session) {
        if (session.getAttribute("user") != null) {
            session.removeAttribute("user");
        }
        return this.toLogin();
    }
}
