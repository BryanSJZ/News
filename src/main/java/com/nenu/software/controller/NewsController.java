package com.nenu.software.controller;

import com.nenu.software.common.entity.News;
import com.nenu.software.common.entity.NewsModule;
import com.nenu.software.service.NewsModuleService;
import com.nenu.software.service.NewsService;
import com.sun.org.apache.xpath.internal.operations.Mod;
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
@RequestMapping("/news")
public class NewsController {

    @Autowired
    NewsService newsService;

    @Autowired
    NewsModuleService newsModuleService;

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String toNew(Model model) {
        try {
            List<NewsModule> modules = newsModuleService.queryAll();
            model.addAttribute("list",modules);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "news_add";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String newNews(News news,Model model) {
        try {
            newsService.newNews(news);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.list(model);
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<News> list = new ArrayList<>();
        try {
            list = newsService.queryAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("list",list);
        return "news_list";
    }

    @RequestMapping("list/{module}")
    public String listByModule(@PathVariable("module")int module,Model model) {
        List<News> list = new ArrayList<>();
        try {
            list = newsService.queryByModule(module);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("list",list);
        return "news_list";
    }

    @RequestMapping("/delete")
    @ResponseBody
    public JSONObject delete(@RequestParam("id") int id) {
        JSONObject jsonObject = new JSONObject();
        try {
            newsService.delById(id);
            jsonObject.put("code",1);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("code",0);
        }
        return jsonObject;
    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
    public String toUpdate(@PathVariable("id") int id,Model model) {
        try {
            News news = newsService.queryById(id);
            List<NewsModule> modules = newsModuleService.queryAll();
            model.addAttribute("news",news);
            model.addAttribute("list",modules);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "news_edit";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(News news,Model model) {
        try {
            newsService.update(news);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.detail((int) news.getId(),model);
    }

    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    public String detail(@PathVariable("id") int id,Model model) {
        try {
            News news = newsService.queryById(id);
            model.addAttribute("news",news);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "news_detail";
    }
}
