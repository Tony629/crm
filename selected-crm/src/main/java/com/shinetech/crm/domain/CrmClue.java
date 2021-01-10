package com.shinetech.crm.domain;

import com.shinetech.common.core.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

/****************
 * 线索管理对象
 * 2021-01-10
 *******************/
@Getter
@Setter
public class CrmClue extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 线索ID */
    private Long clueId;

    /** 姓名 */
    private String name;

    /** 公司 */
    private String company;

    /** 地址 */
    private String address;

    /** 职务 */
    private String duty;

    /** 手机 */
    private String mobile;

    /** 用户邮箱 */
    private String email;

    /** qq */
    private String qq;

    /** 微信 */
    private String wechat;

    /** 旺旺 */
    private String wangwang;

    /** MSN */
    private String msn;

    /** 性别 */
    private String sex;

    /** 线索来源 */
    private String clueSource;

    /** 决策等级 */
    private String decisionLevel;

    /** 市场活动 */
    private String marketActivity;

    /** 原负责人(login_name) */
    private String sourceBelongTo;

    /** 负责人(login_name) */
    private String belongTo;

    /** 转交时间 */
    private LocalDateTime trasferDate;

    /** 转交人(login_name) */
    private String trasferTo;

    /** 头像（保留） */
    private String avatar;

    /** 删除标识 */
    private String delFlag;

    /** 线索状态 */
    private String clueStatus;

}
