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

    int insertCrmClue(CrmClue crmClue);

    int updateCrmClue(CrmClue crmClue);

    int cancelCrmClueById(Long id);

    int deleteCrmClue(Long id);

    int batchDeleteCrmClue(String[] clueIds);
}
