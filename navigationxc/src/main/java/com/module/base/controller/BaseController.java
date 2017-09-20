package com.module.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/base")
@Controller
public class BaseController {

    @RequestMapping("/s")
    public ModelAndView ss(){
        System.out.println("asdsad");
        ModelAndView mv=new ModelAndView();
        mv.setViewName("catelog/catelog");
        return mv;
    }
}
