package com.module.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/base")
@Controller
public class BaseController {

    @RequestMapping("/s")
    public ModelAndView ss(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("catelog");
        return mv;
    }
}
