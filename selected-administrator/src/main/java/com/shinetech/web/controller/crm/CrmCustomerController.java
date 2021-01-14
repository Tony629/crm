package com.shinetech.web.controller.crm;

import com.shinetech.common.core.controller.BaseController;
import com.shinetech.common.core.page.PageDataInfo;
import com.shinetech.crm.domain.CrmCustomer;
import com.shinetech.crm.mapper.CrmCustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/crm/customer")
public class CrmCustomerController extends BaseController {

    private String prefix = "/crm/customer";

    @Autowired
    private CrmCustomerMapper crmCustomerMapper;

    @GetMapping()
    public String index(){
        return prefix+"/customer";
    }

    @GetMapping("/list")
    public @ResponseBody PageDataInfo list(@RequestParam("page") int page, @RequestParam("limit") int limit){
        startPage(page,limit);
        CrmCustomer condition = null;
        List<CrmCustomer> crmCustomerList = crmCustomerMapper.selectCrmCustomerList(condition);
        return getPageDataInfo(crmCustomerList);
    }



}
