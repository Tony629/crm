package com.shinetech.crm.domain;

import com.shinetech.common.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

/**
 *  客户数据
 * **/
@Getter
@Setter
public class CrmCustomer extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /** 客户ID */
    private Long customerId;

    /** 客户获取时间 */
    private LocalDateTime getDate;

    /** 客户类型 */
    private String customerType;

    /** 客户名称 */
    private String customerName;

    /** 客户简称 */
    private String nameShort;

    /** 公司座机 */
    private String telephone;

    /** 手机 */
    private String mobile;

    /** 邮箱 */
    private String email;

    /** 传值 */
    private String fax;

    /** 网址 */
    private String website;

    /** 邮编 */
    private String zip;

    /** 国家 */
    private String country;

    /** 省份 */
    private String province;

    /** 城市 */
    private String city;

    /** 地区 */
    private String region;

    /** 意向产品（后期应可以选择） */
    private String intrestedProdcut;

    /** 所属行业（字典型） */
    private String industry;

    /** 客户状态 */
    private String customerStatus;

    /** 客户来源 */
    private String customerSource;

    /** 客户等级 */
    private String customerDegree;

    /** 客户优先级 */
    private String customerPriority;

    /** 客户信誉度 */
    private String customerCredit;

    /** 客户成熟度 */
    private String customerMaturity;

    /** 客户类别 */
    private String customerCategory;

    /** 年收入 */
    private String annualIncome;

    /** 客户地址 */
    private String address;

    /** 原负责人 */
    private String sourceBelongTo;

    /** 负责人 */
    private String belongTo;

    /** 转交时间 */
    private LocalDateTime trasferDate;

    /** 转交人 */
    private String trasferTo;

    /** 是否共享客户 */
    private String isShare;

    /** 共享时间 */
    private LocalDateTime shareDate;

    /** 头像（保留） */
    private String avatar;

    /** qq（保留） */
    private String qq;

    /** 删除标识 */
    private String delFlag;

}
