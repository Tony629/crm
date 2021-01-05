package com.shinetech.web.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 系统首页
 * **/
@Controller
public class SysIndexController {

    @GetMapping("/version")
    @ResponseBody
    public String version(){
        return "202101052213";
    }

    @GetMapping("/index")
    public String index(ModelMap modelMap){

        return "index";
    }
}
