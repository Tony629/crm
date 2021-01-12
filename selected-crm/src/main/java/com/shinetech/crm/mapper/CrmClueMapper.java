package com.shinetech.crm.mapper;

import com.shinetech.crm.domain.CrmClue;

import java.util.List;

/**
 * 线索管理mapper接口
 * 2021-01-10
 **/
public interface CrmClueMapper {
    List<CrmClue> selectCrmClueList(CrmClue crmClue);

    CrmClue selectCrmClueById(Long id);

    List<CrmClue> selectCrmClueByMobile(String mobile);

    int insertCrmClue(CrmClue crmClue);

    int updateCrmClue(CrmClue crmClue);

    int deleteCrmClue(Long id);

    int batchDeleteCrmClue(String[] clueIds);
}
