package com.shinetech.web.controller.crm;

import com.shinetech.crm.domain.CrmClue;
import com.shinetech.crm.domain.CrmCustomer;
import com.shinetech.crm.mapper.CrmClueMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 线索管理
 * **/
@Controller
@RequestMapping("/crm/clue")
public class CrmClueController {

    private String prefix ="/crm/clue";

    @Autowired
    private CrmClueMapper crmClueMapper;

    @GetMapping()
    public String index(){
        return prefix+"/clue";
    }

    @GetMapping("/list2")
    @ResponseBody
    public List<CrmClue> list(){
        CrmClue crmClue = null;
        List<CrmClue> crmClueList = crmClueMapper.selectCrmClueList(crmClue);

        return crmClueList;
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
