package com.shinetech.web.controller.crm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

/**
 * 线索管理
 * **/
@Controller
@RequestMapping("/crm/clue")
public class CrmClueController {

    private String prefix ="/crm/clue";

    @GetMapping()
    public String index(){
        return prefix+"/clue";
    }

    @GetMapping("/list")
    public Map list(@RequestParam("page") Integer page, @RequestParam("limit") Integer limit){


        Map map = new HashMap();
        map.put("code",0);
        map.put("count",1000);
        map.put("msg","");
        map.put("data",""); //Object 集合

        //request /?page=1&limit=10


        return map;
    }



}
