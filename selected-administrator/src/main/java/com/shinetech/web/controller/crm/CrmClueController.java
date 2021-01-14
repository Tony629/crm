package com.shinetech.web.controller.crm;

import com.shinetech.common.core.controller.BaseController;
import com.shinetech.common.core.page.PageDataInfo;
import com.shinetech.crm.domain.CrmClue;
import com.shinetech.crm.mapper.CrmClueMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 线索管理
 **/
@Controller
@RequestMapping("/crm/clue")
public class CrmClueController extends BaseController {

    private String prefix = "/crm/clue";

    @Autowired
    private CrmClueMapper crmClueMapper;

    @GetMapping()
    public String index() {
        return prefix + "/clue";
    }

    @GetMapping("/list")
    public @ResponseBody PageDataInfo list(@RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {

        startPage(page, limit);
        CrmClue condition = null;
        List<CrmClue> crmClueList = crmClueMapper.selectCrmClueList(condition);

        return getPageDataInfo(crmClueList);
    }


}
