package com.shinetech.crm.service.impl;

import com.shinetech.crm.domain.CrmCustomer;
import com.shinetech.crm.mapper.CrmCustomerMapper;
import com.shinetech.crm.service.ICrmCustomerService;
import com.sun.tools.javac.util.Convert;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;
import java.util.List;

public class CrmCustomerServiceImpl implements ICrmCustomerService {

    CrmCustomerMapper crmCustomerMapper;

    @Autowired
    public CrmCustomerServiceImpl(CrmCustomerMapper crmCustomerMapper) {
        this.crmCustomerMapper = crmCustomerMapper;
    }

    @Override
    public CrmCustomer selectCrmCustomerById(Long customerId) {
        return crmCustomerMapper.selectCrmCustomerById(customerId);
    }

    @Override
    public List<CrmCustomer> selectCrmCustomerList(CrmCustomer crmCustomer) {
        return crmCustomerMapper.selectCrmCustomerList(crmCustomer);
    }

    @Override
    public List<CrmCustomer> selectCrmCustomerListMy(CrmCustomer crmCustomer) {
        return crmCustomerMapper.selectCrmCustomerListMy(crmCustomer);
    }

    @Override
    public List<CrmCustomer> selectCrmCustomerListShare(CrmCustomer crmCustomer) {
        return crmCustomerMapper.selectCrmCustomerListShare(crmCustomer);
    }

    @Override
    public List<CrmCustomer> selectCrmCustomerListPublic(CrmCustomer crmCustomer) {
        return crmCustomerMapper.selectCrmCustomerListPublic(crmCustomer);
    }

    @Override
    public int insertCrmCustomer(CrmCustomer crmCustomer) {
        return crmCustomerMapper.insertCrmCustomer(crmCustomer);
    }

    @Override
    public int updateCrmCustomer(CrmCustomer crmCustomer) {
        crmCustomer.setUpdateTime(LocalDateTime.now());
        return crmCustomerMapper.updateCrmCustomer(crmCustomer);
    }

    @Override
    public int deleteCrmCustomerByIds(String ids) {
        String[] strs = ids.split(",");
        return crmCustomerMapper.deleteCrmCustomerByIds(strs);
    }

    @Override
    public int deleteCrmCustomerById(Long customerId) {
        return crmCustomerMapper.deleteCrmCustomerById(customerId);
    }

    @Override
    public int shareCrmCustomerByIds(String ids, String isShare, String operName) {
        int successNum = 0;
        String[] customerIds = ids.split(",");
        for (int j = 0; j < customerIds.length; j++) {
            Long customerId = Long.parseLong(customerIds[j]);
            CrmCustomer crmCustomer = this.selectCrmCustomerById(customerId);
            //公客不能设置共享属性
            if (StringUtils.isEmpty(crmCustomer.getBelongTo()) || StringUtils.isEmpty(crmCustomer.getBelongTo())) {
                continue;
            }
            //和isShare值相同不做处理
            if (crmCustomer.getIsShare().equals(isShare)) {
                continue;
            }
            successNum++;
            crmCustomer.setIsShare(isShare);
            crmCustomer.setUpdateBy(operName);
            this.updateCrmCustomer(crmCustomer);
        }
        return successNum;
    }

    @Override
    public String checkCustomerNameUnique(CrmCustomer crmCustomer) {
        CrmCustomer info = crmCustomerMapper.selectCrmCustomerByName(crmCustomer.getCustomerName());
        if (info != null && info.getCustomerId().longValue() != crmCustomer.getCustomerId()) {
            return "1";
        }
        return "0";
    }

    @Override
    public String checkEmailUnique(CrmCustomer crmCustomer) {
        CrmCustomer info = crmCustomerMapper.checkEmailUnique(crmCustomer.getEmail());
        if (info != null && info.getCustomerId().longValue() != crmCustomer.getCustomerId()) {
            return "1";
        }
        return "0";
    }

    @Override
    public String checkTelephoneUnique(CrmCustomer crmCustomer) {
        CrmCustomer info = crmCustomerMapper.checkTelephoneUnique(crmCustomer.getEmail());
        if (info != null && info.getCustomerId().longValue() != crmCustomer.getCustomerId()) {
            return "1";
        }
        return "0";
    }

    @Override
    public String checkMobileUnique(CrmCustomer crmCustomer) {
        CrmCustomer info = crmCustomerMapper.checkMobileUnique(crmCustomer.getEmail());
        if (info != null && info.getCustomerId().longValue() != crmCustomer.getCustomerId()) {
            return "1";
        }
        return "0";
    }

    @Override
    public void convertCrmCustomerToPublic() {
        List<CrmCustomer> listCustomerNoFollow = crmCustomerMapper.selectCrmCustomerListNoFollow();

        if (listCustomerNoFollow != null && listCustomerNoFollow.size() > 0) {
            for (int i = 0; i < listCustomerNoFollow.size(); i++) {
                CrmCustomer customer = listCustomerNoFollow.get(i);
                if (customer.getBelongTo() == null || customer.getBelongTo().equals("")) {
                    break;
                }
                customer.setBelongTo("");
                customer.setUpdateBy("system");

                this.updateCrmCustomer(customer);
            }
        }

        List<CrmCustomer> listCustomerFollowMoreThan30 = crmCustomerMapper.selectCrmCustomerListFollowMoreThan30();
        if (listCustomerFollowMoreThan30 != null && listCustomerFollowMoreThan30.size() > 0) {
            for (int i = 0; i < listCustomerFollowMoreThan30.size(); i++) {
                CrmCustomer customer = listCustomerFollowMoreThan30.get(i);
                if (customer.getBelongTo() == null || customer.getBelongTo().equals("")) {
                    break;
                }
                customer.setBelongTo("");
                customer.setUpdateBy("system");
                this.updateCrmCustomer(customer);
            }
        }
    }
}
