package com.module.navication.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.module.navication.entity.Nav;
import com.module.navication.service.NavService;
import com.module.source.DataSourceContextHolder;
import com.user.util.UUidStr;
import com.user.util.bingImg;

@RequestMapping("/nav")
@Controller
public class NavigationControlller {
    
    @Autowired
    private NavService navService;
    /**
     * 进入导航主页面
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping("/navigation")
    public ModelAndView navigation(HttpServletRequest request) throws IOException{
        ModelAndView mv=new ModelAndView();
        String  result=bingImg.bingImgStr();
        mv.addObject("bingimg",result);
        mv.setViewName("catelog/catelog");
        return mv;
    }
    @RequestMapping("/navigation2")
    public ModelAndView navigation2(HttpServletRequest request) throws IOException{
        ModelAndView mv=new ModelAndView();
        String  result=bingImg.bingImgStr();
        mv.addObject("bingimg",result);
        mv.setViewName("catelog/catelog2");
        return mv;
    }
    /**
     * 插入页面
     * @return
     */
    @RequestMapping("/insertnewnav")
    public ModelAndView insertNewNav(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("catelog/cateinsert");
        return mv;
    }
    /**
     * 插入ajax
     * @return
     */
    @RequestMapping("/insertnav")
    @ResponseBody
    public Map<String,Object> insertNav(HttpServletRequest req,@RequestBody Nav n){
        System.out.println(n);
        n.setId(UUidStr.uuid());
        int i=navService.insertNewNav(n);
        Map<String,Object> m=new HashMap<String,Object>();
        m.put("count", i);
        return m;
    }
    /**
     * 修改ajax
     * @return
     */
    @RequestMapping("/updatenav")
    @ResponseBody
    public Map<String,Object> updateNav(Nav n){
        int i=navService.updateNav(n);
        Map<String,Object> m=new HashMap<String,Object>();
        m.put("count", i);
        return m;
    }
    /**
     * 获取ajax导航列表
     * @return
     */
    @RequestMapping("/getnavlist")
    @ResponseBody
    public List<Nav> getnavList(){
        Map<String,Object> m=new HashMap<String,Object>();
        List<Nav> l=navService.queryNav(m);
        return l;
    }
//    /**
//     * 
//     */
//    @RequestMapping("/websockettest")
//    public String gey(){
//        return "catelog/websocketceshi";
//    }
}
