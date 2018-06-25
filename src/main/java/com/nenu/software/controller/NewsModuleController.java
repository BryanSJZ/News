package com.nenu.software.controller;

import com.nenu.software.common.entity.NewsModule;
import com.nenu.software.service.NewsModuleService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shanjz
 * @since 2018/6/25 11:13
 */
@Controller
@RequestMapping("/module")
public class NewsModuleController {

    @Autowired
    NewsModuleService moduleService;

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String toAdd() {
        return "module_add";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String newModule (NewsModule newsModule,Model model) {
        try {
            moduleService.newNewsModule(newsModule);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/module/list";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public JSONObject delete(@RequestParam("id") int id) {
        JSONObject jsonObject = new JSONObject();
        try {
            moduleService.delById(id);
            jsonObject.put("code",1);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("code",0);
        }
        return jsonObject;
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<NewsModule> list = new ArrayList<>();
        try {
            list = moduleService.queryAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("list",list);
        return "module_list";
    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String toUpdate(@PathVariable("id") int id, Model model) {
        try {
            NewsModule newsModule = moduleService.queryById(id);
            model.addAttribute("module",newsModule);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "module_edit";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(NewsModule newsModule,Model model) {
        try {
            moduleService.update(newsModule);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/module/list";
    }

}
