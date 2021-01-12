package com.shinetech.crm.mapper;

import com.shinetech.crm.domain.CrmCustomer;

import java.util.List;

/*****
 * 客户管理Mapper接口
 * 2021-01-12
 * ********/
public interface CrmCustomerMapper {

    /**
     * 查询客户
     */
    CrmCustomer selectCrmCustomerById(Long customerId);

    /**
     * 查询客户
     */
    CrmCustomer selectCrmCustomerByName(String customerName);

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

    int insertCrmCustomer(CrmCustomer crmCustomer);

    int updateCrmCustomer(CrmCustomer crmCustomer);

    int deleteCrmCustomerById(Long customerId);

    int deleteCrmCustomerByIds(String[] customerIds);

    /**
     * 校验Email是否唯一
     */
    CrmCustomer checkEmailUnique(String email);

    /**
     * 校验座机是否唯一
     ***/
    CrmCustomer checkTelephoneUnique(String telephone);

    /**
     * 校验手机是否唯一
     */
    CrmCustomer checkMobileUnique(String mobile);

    /**
     * 查询超过30天未跟进的客户
     */
     List<CrmCustomer> selectCrmCustomerListFollowMoreThan30();

    /**
     * 查询未跟进过的客户
     */
    List<CrmCustomer> selectCrmCustomerListNoFollow();
}
