package com.bjpowernode.controller;

import com.bjpowernode.entity.User;
import com.bjpowernode.model.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    IUserService userService;

    @RequestMapping("list")
    public List<User> list(){

        return userService.list();
    }

    @RequestMapping("add")
    public void add(){

    }

    @RequestMapping("save")
    public String save(User user){

        userService.save(user);

        return "redirect:list";
    }

    @RequestMapping("update")
    public User update(int userId){
        return userService.get(userId);
    }

    @RequestMapping("saveUpdate")
    public String update(User user){

        userService.update(user);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int userId){

        userService.delete(userId);
        return "redirect:list";
    }

    @RequestMapping("ajaxGetByUserName")
    @ResponseBody
    public Map<String,Integer> ajaxGetByUserName(String userName){
        User user = userService.get(userName);
        Map<String,Integer> map = new HashMap<>();
        map.put("code",user != null ? 0 : 1);
        return map;
    }

}
