package com.shinetech.crm.service.impl;

import com.shinetech.crm.domain.CrmClue;
import com.shinetech.crm.mapper.CrmClueMapper;
import com.shinetech.crm.service.ICrmClueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 线索管理业务层处理
 * **/
@Service
public class CrmClueServiceImpl implements ICrmClueService {

    private CrmClueMapper crmClueMapper;

    @Autowired
    public CrmClueServiceImpl(CrmClueMapper crmClueMapper){
        this.crmClueMapper = crmClueMapper;
    }


    @Override
    public List<CrmClue> selectCrmClueList(CrmClue crmClue) {
        return crmClueMapper.selectCrmClueList(crmClue);
    }

    @Override
    public CrmClue selectCrmClueById(Long id) {
        return crmClueMapper.selectCrmClueById(id);
    }

    @Override
    public List<CrmClue> selectCrmClueByMobile(String mobile) {
        return crmClueMapper.selectCrmClueByMobile(mobile);
    }

    @Override
    public int insertCrmClue(CrmClue crmClue) {
        return crmClueMapper.insertCrmClue(crmClue);
    }

    @Override
    public int updateCrmClue(CrmClue crmClue) {
        return crmClueMapper.updateCrmClue(crmClue);
    }

    @Override
    public int deleteCrmClue(Long id) {
        return crmClueMapper.deleteCrmClue(id);
    }

    @Override
    public int batchDeleteCrmClue(String[] clueIds) {
        return crmClueMapper.batchDeleteCrmClue(clueIds);
    }
}
