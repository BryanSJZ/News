package com.nenu.software.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author shanjz
 * @since 2018/6/25 15:25
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }
}
