package com.shinetech.crm.service;

import com.shinetech.crm.domain.CrmCustomer;

import java.util.List;

public interface ICrmCustomerService {

    CrmCustomer selectCrmCustomerById(Long customerId);

    /**
     * 查询客户列表
     */
    List<CrmCustomer> selectCrmCustomerList(CrmCustomer crmCustomer);

    /**
     * 查询客户列表 我的
     */
    List<CrmCustomer> selectCrmCustomerListMy(CrmCustomer crmCustomer);

    /**
     * 查询客户列表 共享
     */
    List<CrmCustomer> selectCrmCustomerListShare(CrmCustomer crmCustomer);

    /**
     * 查询客户列表 公共
     */
    List<CrmCustomer> selectCrmCustomerListPublic(CrmCustomer crmCustomer);


    /**
     * 新增客户
     */
    int insertCrmCustomer(CrmCustomer crmCustomer);

    /**
     * 修改客户
     */
    int updateCrmCustomer(CrmCustomer crmCustomer);

    /**
     * 批量删除客户
     */
    int deleteCrmCustomerByIds(String ids);

    /**
     * 删除客户信息
     */
    int deleteCrmCustomerById(Long customerId);

    /**
     * 批量分享客户
     */
    int shareCrmCustomerByIds(String ids, String isShare, String operName);

    /**
     * 校验客户名称是否唯一
     */
    String checkCustomerNameUnique(CrmCustomer crmCustomer);

    /**
     * 校验Email是否唯一
     */
    String checkEmailUnique(CrmCustomer crmCustomer);

    /**
     * 校验座机是否唯一
     */
    String checkTelephoneUnique(CrmCustomer crmCustomer);

    /**
     * 校验手机是否唯一
     */
    String checkMobileUnique(CrmCustomer crmCustomer);

    /**
     * 将客户转为公告客户
     */
    void convertCrmCustomerToPublic();
}
