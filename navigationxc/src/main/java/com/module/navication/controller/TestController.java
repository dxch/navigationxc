package com.module.navication.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/session")
public class TestController {

    @RequestMapping("session")
    @ResponseBody
    public String s(HttpServletRequest request){
        request.getSession().setAttribute("idNumber", "370212197910171532");
        request.getSession().setAttribute("memberId", "3add3d877d2d4cd2bd74a8918ea9eddd");
        String idNumber2 = (String) request.getSession().getAttribute("idNumber");
        String memberid=(String) request.getSession().getAttribute("memberId");
        System.out.println("sfzh1"+idNumber2+"\n"+memberid);
        return "{\"status\":1}";
    } 
    @RequestMapping("idnumber22")
    @ResponseBody
    public String s2(String idNumber,HttpServletRequest request){
        String idNumber2 = (String) request.getSession().getAttribute("idNumber");
        System.out.println("身份证号2"+idNumber2);
        return "{\"status\":2}";
    }
}
