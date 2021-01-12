package com.shinetech.crm.service;

import com.shinetech.crm.domain.CrmClue;

import java.util.List;

/**
 * 线索管理业务逻辑
 **/
public interface ICrmClueService {

    List<CrmClue> selectCrmClueList(CrmClue crmClue);

    CrmClue selectCrmClueById(Long id);

    List<CrmClue> selectCrmClueByMobile(String mobile);

    int insertCrmClue(CrmClue crmClue);

    int updateCrmClue(CrmClue crmClue);

    int deleteCrmClue(Long id);

    int batchDeleteCrmClue(String[] clueIds);
}
