SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_clue
-- ----------------------------
DROP TABLE IF EXISTS `crm_clue`;
CREATE TABLE `crm_clue`  (
  `clue_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '线索ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `wangwang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '旺旺',
  `msn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MSN',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `clue_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索状态(字典类型)',
  `clue_source` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线索来源(字典类型)',
  `decision_level` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策等级（字典 分星展示）',
  `market_activity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市场活动',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像（保留）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
PRIMARY KEY (`clue_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线索表' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_clue_follow
-- ----------------------------
DROP TABLE IF EXISTS `crm_clue_follow`;
CREATE TABLE `crm_clue_follow`  (
  `follow_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '跟进ID',
  `clue_id` bigint(20) NULL DEFAULT NULL COMMENT '线索id',
  `follow_date` datetime(0) NULL DEFAULT NULL COMMENT '跟进时间',
  `follow_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进内容',
  `follow_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进类型',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线索跟进记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_complaint
-- ----------------------------
DROP TABLE IF EXISTS `crm_complaint`;
CREATE TABLE `crm_complaint`  (
  `complaint_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投诉ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `complaint_date` datetime(0) NULL DEFAULT NULL COMMENT '投诉时间',
  `complaint_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉人姓名',
  `complaint_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉人电话',
  `complaint_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉内容',
  `complaint_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉类型（产品投诉、服务投诉、）',
  `complaint_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投诉状态（0：未解决 1：解决中 2：已解决）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`complaint_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户投诉' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_complaint
-- ----------------------------
INSERT INTO `crm_complaint` VALUES (8, NULL, '2020-03-14 18:45:00', '是的', '13222222222', '2222', '1', '0', '1', 'admin', '2020-03-14 18:49:36', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (9, NULL, '1899-12-31 12:20:00', '姗姗', '13817882828', '22', '1', '1', '1', 'admin', '2020-03-14 19:12:27', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (10, NULL, '2020-03-14 15:15:00', '是的', '13716884838', '13716884838', '1', '1', '1', 'admin', '2020-03-14 19:17:54', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (11, 9, '2026-09-26 09:45:00', '是是是', '13716884892', '13716884892', '1', '0', '1', 'admin', '2020-03-14 19:21:23', 'admin', '2020-03-14 20:58:42', NULL);
INSERT INTO `crm_complaint` VALUES (12, 9, '2024-02-20 19:50:00', '是的是', '13299992229', '23', '1', '0', '1', 'admin', '2020-03-14 19:59:15', 'admin', '2020-03-14 20:53:57', NULL);
INSERT INTO `crm_complaint` VALUES (13, 9, '2020-03-13 10:50:00', '是的', '13818181818', '12', '1', '0', '1', 'admin', '2020-03-14 20:00:00', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (14, 9, '2020-03-11 20:50:00', '是多少', '13818181818', '12', '1', '0', '1', 'admin', '2020-03-14 20:06:44', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (15, 9, '2020-03-13 10:50:00', '是的', '13818181818', '222', '1', '0', '1', 'admin', '2020-03-14 20:09:18', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (16, 9, '2020-03-13 10:50:00', '是是是', '13818181818', '2222', '1', '0', '1', 'admin', '2020-03-14 21:11:03', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (17, 9, '2020-03-13 10:50:00', '是是是', '13818181818', 'sdsd', '1', '0', '1', 'admin', '2020-03-14 21:11:28', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (18, 9, '2020-03-13 10:50:00', '是是我', '13818181818', '222', '1', '2', '1', 'admin', '2020-03-14 21:12:08', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (19, 9, '2020-03-13 10:50:00', '是是是', '13818181818', 'ww', '1', '1', '1', 'admin', '2020-03-14 21:18:12', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (20, 9, '2020-03-13 10:50:00', '是是是', '13818181818', 'sss', '1', '2', '1', 'admin', '2020-03-14 21:20:46', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (21, 9, '2020-03-13 10:50:00', '是是是', '13818181818', '1111', '1', '2', '1', 'admin', '2020-03-14 21:22:56', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (22, 9, '2020-03-13 10:50:00', '是是是', '13818181812', '2222', '0', '0', '1', 'admin', '2020-03-14 21:25:15', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (23, 9, '2020-03-13 10:50:00', '我问', '13818181818', '所得税地方', '1', '2', '1', 'admin', '2020-03-14 21:34:26', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (24, 9, '2020-03-13 10:50:00', '事实上', '13818181818', '是多少', '1', '1', '1', 'admin', '2020-03-14 21:35:42', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (25, 9, '2020-03-13 10:50:00', '是是是', '13716884828', '13716884828', '1', '0', '1', 'admin', '2020-03-14 22:06:28', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (26, 9, '2020-03-13 10:50:00', '我我我', '13818181818', '111', '1', '0', '1', 'admin', '2020-03-15 17:04:00', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (27, 9, '2020-03-13 10:50:00', '实上', '13818181818', '2222', '1', '0', '1', 'admin', '2020-03-15 17:07:47', NULL, NULL, NULL);
INSERT INTO `crm_complaint` VALUES (28, 11, '2020-03-13 10:50:00', '是是是', '13818181818', '23', '1', '1', '1', 'admin', '2020-03-15 17:13:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_contract
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract`;
CREATE TABLE `crm_contract`  (
  `contract_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '成交订单id',
  `contract_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同编号（按一定规则生成）',
  `contract_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `contract_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同类型（技术开发、代理记账等）',
  `contract_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(未审核、审核中、执行中、已完成、已失效)',
  `contract_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同内容',
  `date_start` datetime(0) NULL DEFAULT NULL COMMENT '开始日期',
  `date_end` datetime(0) NULL DEFAULT NULL COMMENT '到期日期',
  `pay_method` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式 保留（阶段付款、周期付款）',
  `total_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '总金额，应收款',
  `sign_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签署人',
  `sign_by_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签署人姓名',
  `sign_date` datetime(0) NULL DEFAULT NULL COMMENT '合同签署日期',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `source_belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人姓名',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `trasfer_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人姓名',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`contract_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同记录' ROW_FORMAT = Dynamic;



-- ----------------------------
-- Table structure for crm_contract_apply
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract_apply`;
CREATE TABLE `crm_contract_apply`  (
  `contract_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '成交订单id',
  `contract_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同编号（按一定规则生成）',
  `contract_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `contract_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同类型（技术开发、代理记账等）',
  `contract_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(未审核、审核中、执行中、已完成、已失效)',
  `contract_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '合同内容',
  `date_start` datetime(0) NULL DEFAULT NULL COMMENT '开始日期',
  `date_end` datetime(0) NULL DEFAULT NULL COMMENT '到期日期',
  `pay_method` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式 保留（阶段付款、周期付款）',
  `total_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '总金额，应收款',
  `sign_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签署人',
  `sign_by_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同签署人姓名',
  `sign_date` datetime(0) NULL DEFAULT NULL COMMENT '合同签署日期',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `source_belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人姓名',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `trasfer_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人姓名',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`contract_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同申请' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_contract_invoice
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract_invoice`;
CREATE TABLE `crm_contract_invoice`  (
  `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '发票ID',
  `contract_id` bigint(20) NULL DEFAULT NULL COMMENT '合同ID',
  `invoice_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `invoice_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '发票金额',
  `invoice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票类型（增值税普票、增值税专票）',
  `invoice_fate` int(11) NULL DEFAULT NULL COMMENT '发票税率/%',
  `invoice_date` datetime(0) NULL DEFAULT NULL COMMENT '发票日期',
  `invoice_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(已保存、已提交、已审核、已驳回、已开票等)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`invoice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同发票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_contract_invoice
-- ----------------------------
INSERT INTO `crm_contract_invoice` VALUES (3, 2, '23', 2222.00, '0', 12, '2020-10-06 00:00:00', '0', '0', 'admin', '2020-10-29 12:31:35', 'admin', '2020-10-29 12:37:41', NULL);
INSERT INTO `crm_contract_invoice` VALUES (4, 2, 'qeqweq', 2222.00, '1', 1, '2020-10-01 00:00:00', '0', '0', 'admin', '2020-10-29 12:37:51', 'admin', '2020-10-29 12:38:46', NULL);
INSERT INTO `crm_contract_invoice` VALUES (5, 2, '12', 2222.00, '0', 12, '1899-11-30 00:00:00', '0', '0', 'admin', '2020-10-29 12:40:15', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_contract_payment
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract_payment`;
CREATE TABLE `crm_contract_payment`  (
  `payment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '付款ID',
  `contract_id` bigint(20) NULL DEFAULT NULL COMMENT '关联合同id',
  `pay_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '付款日期',
  `pay_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式（支付宝、微信、支票、银行转账等）',
  `pay_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款状态(未确认、确认中、已确认)',
  `is_invoice` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否需要发票(0:不需要  1:需要)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同付款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_contract_payment
-- ----------------------------
INSERT INTO `crm_contract_payment` VALUES (18, 2, 22.00, '2020-10-14 00:00:00', '1', '0', '0', '0', 'admin', '2020-10-29 12:28:31', NULL, NULL, NULL);
INSERT INTO `crm_contract_payment` VALUES (19, 2, 23.00, '2020-10-10 00:00:00', '3', '0', '0', '0', 'admin', '2020-10-29 12:38:21', 'admin', '2020-10-29 12:38:25', NULL);

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer`  (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `name_short` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户简称',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司座机',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传值',
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址',
  `intrested_prodcut` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '意向产品（后期应可以选择）',
  `industry` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属行业（字典型）',
  `customer_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户状态（新开发、洽谈中、已成交）',
  `customer_source` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户来源(字典类型)',
  `customer_degree` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户等级（字典类型)',
  `customer_priority` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户优先级（字典类型)',
  `customer_credit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户信誉度（字典 分星展示）',
  `customer_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户类型（0  个人、1  企业）',
  `customer_maturity` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户成熟度 A+ A- B+ B-  新加',
  `customer_category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户类别(普通，vip ，代理商等)',
  `annual_income` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年收入',
  `get_date` datetime(0) NULL DEFAULT NULL COMMENT '客户获取时间',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `is_share` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否共享客户',
  `share_date` datetime(0) NULL DEFAULT NULL COMMENT '共享时间',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像（保留）',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq（保留）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户介绍',
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
INSERT INTO `crm_customer` VALUES (2, '腾讯', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '0', '2', '1', '3', '2', '3', '2', NULL, '2020-04-08 00:00:00', 'admin', '', '2020-04-19 12:11:45', 'admin', '0', '2020-04-18 20:36:23', NULL, NULL, '0', 'admin', '2020-04-02 14:44:55', 'system', '2020-09-03 16:11:36', NULL);
INSERT INTO `crm_customer` VALUES (3, '12', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '2', '0', '0', NULL, '2020-04-15 00:00:00', 'admin', '', '2020-04-19 12:11:45', 'admin', '0', '2020-04-18 20:58:30', NULL, NULL, '0', 'admin', '2020-04-06 11:28:50', 'system', '2020-09-03 16:11:36', NULL);
INSERT INTO `crm_customer` VALUES (7, '客户五一', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '2', '0', '0', NULL, '2020-04-07 00:00:00', 'admin', 'test', '2020-04-19 15:10:22', 'admin', '1', '2020-04-19 15:14:03', NULL, NULL, '0', 'admin', '2020-08-28 15:19:20', 'admin', '2020-04-19 15:16:36', NULL);
INSERT INTO `crm_customer` VALUES (8, 'test', 'test', '23332222', '13716884859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '1', '0', '0', NULL, '2020-04-13 00:00:00', 'admin', '', '2020-04-23 15:05:30', 'admin', '0', '2020-04-19 15:11:49', NULL, NULL, '0', 'admin', '2020-04-11 20:17:59', 'admin', '2020-04-24 13:24:50', NULL);
INSERT INTO `crm_customer` VALUES (9, '线索3', NULL, NULL, NULL, 'selectedvip@163.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '线索3', NULL, '0', '0', '0', '0', '0', '0', '1', '0', '0', NULL, '2020-04-19 00:00:00', '', '', '2020-07-04 13:41:12', 'admin', '0', '2020-04-20 15:56:32', NULL, NULL, '0', 'admin', '2020-04-19 15:24:45', 'admin', '2020-07-09 17:24:26', NULL);
INSERT INTO `crm_customer` VALUES (10, '鑫龙电器', '鑫龙电器', '63055538', '13808196199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '6', '4', '1', '3', '1', '2', '3', '100', NULL, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2020-07-27 16:16:32', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_daily
-- ----------------------------
DROP TABLE IF EXISTS `crm_daily`;
CREATE TABLE `crm_daily`  (
  `daily_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `daily_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类别(日报、周报、月报...)',
  `daily_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `daily_file` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志附件（备用）',
  `daily_to` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志抄送人（备用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`daily_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_follow
-- ----------------------------
DROP TABLE IF EXISTS `crm_follow`;
CREATE TABLE `crm_follow`  (
  `follow_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '跟进ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `follow_date` datetime(0) NULL DEFAULT NULL COMMENT '跟进时间',
  `follow_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进内容',
  `follow_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进类型',
  `follow_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进状态',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户跟进记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_follow
-- ----------------------------
INSERT INTO `crm_follow` VALUES (8, 9, '2020-03-13 10:50:00', '222', '1', '2', '1', 'admin', '2020-03-14 19:22:40', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (9, 9, '2020-03-13 11:50:00', '3', '1', '1', '1', 'admin', '2020-03-14 19:57:59', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (10, 9, '2020-03-20 14:50:00', 'tfffx', '1', '2', '1', 'admin', '2020-03-14 20:41:20', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (11, 9, '2020-03-14 11:35:00', '是多少', '1', '1', '1', 'admin', '2020-03-14 20:45:25', 'admin', '2020-03-14 20:54:11', NULL);
INSERT INTO `crm_follow` VALUES (12, 9, '2020-03-12 06:50:00', '是', '1', '2', '1', 'admin', '2020-03-14 20:47:44', 'admin', '2020-03-14 20:54:05', NULL);
INSERT INTO `crm_follow` VALUES (13, 9, '2020-03-14 07:30:00', '222', '1', '2', '1', 'admin', '2020-03-14 21:23:06', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (14, 9, '2020-03-14 11:55:00', 's', '1', '2', '1', 'admin', '2020-03-14 21:25:00', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (15, 9, '2020-03-05 06:30:00', '少时诵诗书', '1', '1', '1', 'admin', '2020-03-14 21:35:06', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (16, 9, '2020-03-04 09:50:00', '13716884828', '1', '1', '1', 'admin', '2020-03-14 22:05:59', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (17, 10, '2020-03-04 17:50:00', '是的', '1', '1', '1', 'admin', '2020-03-15 17:47:33', NULL, NULL, NULL);
INSERT INTO `crm_follow` VALUES (20, 10, '2020-09-01 10:50:00', '23234', '2', NULL, '0', 'admin', '2020-09-02 18:11:32', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_order
-- ----------------------------
DROP TABLE IF EXISTS `crm_order`;
CREATE TABLE `crm_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编码',
  `contract_id` bigint(20) NULL DEFAULT NULL COMMENT '合同id（可以关联合同，也可以不关联）',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单名称，主题',
  `total_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '成交总额',
  `cost_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '总成本',
  `order_date` datetime(0) NULL DEFAULT NULL COMMENT '成交/签约时间',
  `pay_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `valid_start` datetime(0) NULL DEFAULT NULL COMMENT '有效期开始时间',
  `valid_end` datetime(0) NULL DEFAULT NULL COMMENT '有效期结束时间',
  `order_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单详情',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户订单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_order_price
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_price`;
CREATE TABLE `crm_order_price`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编码',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单名称/主题',
  `total_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '报价单总额',
  `cost_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '总成本',
  `prcie_date` datetime(0) NULL DEFAULT NULL COMMENT '报价时间',
  `prcie_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报价人',
  `prcie_end_date` datetime(0) NULL DEFAULT NULL COMMENT '报价j截止时间',
  `order_date` datetime(0) NULL DEFAULT NULL COMMENT '订单时间，报价单转订单时使用',
  `order_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报价单状态',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户报价单' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for crm_order_price_product
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_price_product`;
CREATE TABLE `crm_order_price_product`  (
  `order_product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单产品ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品id',
  `product_count` int(11) NULL DEFAULT NULL COMMENT '订购数量',
  `sell_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售单价',
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `real_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际报价',
  `order_product_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '订单产品状态（0：暂存  1：已存）',
  `ship_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货状态（未发货、已发货、已接收）)(备用)',
  `ship_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单号(已发货产品使用)(备用)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`order_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报价单关联产品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_order_price_product
-- ----------------------------
INSERT INTO `crm_order_price_product` VALUES (1, 1, 4, 1, 1099.00, 10.00, 1099.00, '1', NULL, NULL, '0', 'admin', '2020-04-18 20:17:59', NULL, NULL, NULL);
INSERT INTO `crm_order_price_product` VALUES (2, 1, 3, 1, 69.00, 10.00, 69.00, '1', NULL, NULL, '0', 'admin', '2020-04-18 20:17:59', NULL, NULL, NULL);
INSERT INTO `crm_order_price_product` VALUES (3, 2, 4, 1, 1099.00, 10.00, 1099.00, '1', NULL, NULL, '0', 'admin', '2020-04-19 15:26:06', NULL, NULL, NULL);
INSERT INTO `crm_order_price_product` VALUES (4, 2, 3, 1, 69.00, 10.00, 69.00, '1', NULL, NULL, '0', 'admin', '2020-04-19 15:26:06', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_order_product
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_product`;
CREATE TABLE `crm_order_product`  (
  `order_product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单产品ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品id',
  `product_count` int(11) NULL DEFAULT NULL COMMENT '订购数量',
  `sell_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售单价',
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `real_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际报价',
  `order_product_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '订单产品状态（0：暂存  1：已存）',
  `ship_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货状态（未发货、已发货、已接收）)(备用)',
  `ship_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单号(已发货产品使用)(备用)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`order_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户订单、报价单关联产品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_order_product
-- ----------------------------
INSERT INTO `crm_order_product` VALUES (1, 1, 3, 1, 69.00, 10.00, 69.00, '1', NULL, NULL, '0', 'admin', '2020-04-19 15:25:41', NULL, NULL, NULL);
INSERT INTO `crm_order_product` VALUES (2, 1, 4, 1, 1099.00, 10.00, 1099.00, '1', NULL, NULL, '0', 'admin', '2020-04-19 15:25:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_person
-- ----------------------------
DROP TABLE IF EXISTS `crm_person`;
CREATE TABLE `crm_person`  (
  `person_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '联系人ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '所属客户',
  `person_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人名称',
  `english_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人英文名',
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `wangwang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '旺旺',
  `msn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MSN',
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `marriage` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚否   字典',
  `birthday` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '出生日期',
  `person_decision_level` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策等级（字典 分星展示）',
  `id_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件类型',
  `id_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `home_mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭电话',
  `home_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像（保留）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`person_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户联系人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_person
-- ----------------------------
INSERT INTO `crm_person` VALUES (1, 2, '是单独', NULL, NULL, NULL, '13716884859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '2020-04-06 13:08:51', '0', '1', NULL, NULL, NULL, NULL, '0', 'admin', '2020-04-06 10:11:39', NULL, NULL, NULL);
INSERT INTO `crm_person` VALUES (2, 3, '水电费', NULL, '1', NULL, '13716884859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '2020-04-06 13:08:52', '0', '1', NULL, NULL, NULL, NULL, '0', 'admin', '2020-04-06 13:08:30', NULL, NULL, NULL);
INSERT INTO `crm_person` VALUES (6, 7, '测试', NULL, NULL, NULL, '13716884222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2020-04-07 15:19:19', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2020-04-07 15:19:20', NULL, NULL, NULL);
INSERT INTO `crm_person` VALUES (7, 7, 'sd ', NULL, NULL, NULL, '13716884859', '398005446@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '2020-04-10 00:00:00', '0', '1', NULL, NULL, NULL, NULL, '0', 'admin', '2020-04-10 09:40:27', 'admin', '2020-04-10 09:46:54', NULL);
INSERT INTO `crm_person` VALUES (8, 8, 'test', NULL, 'test', NULL, '13888888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 20:17:58', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `crm_person` VALUES (9, 9, '线索3', NULL, NULL, NULL, '1381799922', 'ewew@a.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2020-04-19 15:24:44', NULL, NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2020-04-19 15:24:45', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_phonenumber
-- ----------------------------
DROP TABLE IF EXISTS `crm_phonenumber`;
CREATE TABLE `crm_phonenumber`  (
  `phonenumber_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '电话本ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `englsh_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传值',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `msn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MSN',
  `hobby` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  `marriage` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚否   字典',
  `birthday` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '出生日期',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像（保留）',
  `phonenumber_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据字典（个人、公有）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`phonenumber_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电话本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_phonenumber
-- ----------------------------
INSERT INTO `crm_phonenumber` VALUES (1, '程思语', NULL, '1', '123', NULL, '13716884859', '23@s.com', '123', '123', '123', '123', '0', '2020-03-15 00:00:00', NULL, '0', '0', 'admin', '2020-03-15 10:02:20', 'admin', '2020-07-04 13:07:17', '2222');
INSERT INTO `crm_phonenumber` VALUES (2, '程思语', '', '1', '123', '', '13716884859', '23@s.com', '123', '123', '123', '123', '0', '2020-03-15 10:20:46', '', '1', '0', 'test', '2020-03-15 10:02:20', 'admin', '2020-03-15 10:10:09', '2222');

-- ----------------------------
-- Table structure for crm_transfer
-- ----------------------------
DROP TABLE IF EXISTS `crm_transfer`;
CREATE TABLE `crm_transfer`  (
  `transfer_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '拜访ID',
  `business_id` bigint(20) NULL DEFAULT NULL COMMENT '业务ID，客户，订单、回款等的ID',
  `business_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型，客户，订单、回款等',
  `transfer_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交类型（0 公客  1 转交人）',
  `transfer_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人',
  `belong_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转给谁，负责人',
  `reason` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交原因',
  `public_id` bigint(20) NULL DEFAULT NULL COMMENT '转为公客时使用，表示公客分组id',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`transfer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转交记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_transfer
-- ----------------------------
INSERT INTO `crm_transfer` VALUES (4, 8, 'Customer', '0', 'admin', NULL, 'sdadas', NULL, '0', 'admin', '2020-04-19 14:45:52', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (5, 7, 'Customer', '1', 'admin', 'test', 'ewe ', NULL, '0', 'admin', '2020-04-19 14:56:48', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (6, 7, 'Customer', '1', 'admin', 'test', '333', NULL, '0', 'admin', '2020-04-19 14:57:06', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (7, 7, 'Customer', '1', 'admin', '00017162', 'vvvv', NULL, '0', 'admin', '2020-04-19 14:57:27', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (8, 8, 'Customer', '1', 'admin', 'test', NULL, NULL, '0', 'admin', '2020-04-19 15:10:22', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (9, 7, 'Customer', '1', 'admin', 'test', NULL, NULL, '0', 'admin', '2020-04-19 15:10:22', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (10, 8, 'Customer', '0', 'admin', NULL, 'wwwww', NULL, '0', 'admin', '2020-04-19 15:11:56', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (11, 9, 'Customer', '1', 'admin', '00017162', '胜多负少发是', NULL, '0', 'admin', '2020-04-20 16:34:30', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (12, 9, 'Customer', '0', 'admin', NULL, NULL, NULL, '0', 'admin', '2020-04-22 08:35:50', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (13, 9, 'Customer', '2', 'admin', 'admin', '我要领取', NULL, '0', 'admin', '2020-04-22 12:33:12', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (14, 9, 'Customer', '0', 'admin', NULL, '事实上', NULL, '0', 'admin', '2020-04-22 12:33:30', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (15, 9, 'Customer', '2', 'admin', 'admin', 'wwww', NULL, '0', 'admin', '2020-04-23 15:05:00', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (16, 8, 'Customer', '2', 'admin', 'admin', 'qqqqq', NULL, '0', 'admin', '2020-04-23 15:05:16', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (17, 9, 'Customer', '0', 'admin', NULL, 'wwwww', NULL, '0', 'admin', '2020-04-23 15:05:30', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (18, 8, 'Customer', '0', 'admin', NULL, 'wwwww', NULL, '0', 'admin', '2020-04-23 15:05:30', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (19, 9, 'Customer', '1', 'admin', '00017162', 'vvvvvv', NULL, '0', 'admin', '2020-04-23 17:58:49', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (20, 3, 'Clue', '1', 'admin', '00017162', 'dddddddddd', NULL, '0', 'admin', '2020-04-24 13:13:09', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (21, 3, 'Clue', '0', 'admin', NULL, 'ssd', NULL, '0', 'admin', '2020-04-24 13:13:38', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (22, 3, 'Clue', '1', 'admin', '00017162,test', 'mm', NULL, '0', 'admin', '2020-04-24 13:14:37', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (23, 3, 'Clue', '1', 'admin', 'admin', 'dddddd', NULL, '0', 'admin', '2020-04-24 13:16:45', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (24, 1, 'Clue', '2', 'admin', 'admin', 'dddddddd', NULL, '0', 'admin', '2020-04-24 13:19:44', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (25, 3, 'Clue', '0', 'admin', NULL, '转到线索池', NULL, '0', 'admin', '2020-04-24 13:20:17', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (26, 8, NULL, '2', 'admin', 'admin', '我要领取', NULL, '0', 'admin', '2020-04-24 13:23:32', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (27, 8, NULL, '2', 'admin', 'admin', '额度', NULL, '0', 'admin', '2020-04-24 13:23:52', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (28, 8, 'Customer', '2', 'admin', 'admin', '反复付', NULL, '0', 'admin', '2020-04-24 13:24:50', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (29, 9, 'Customer', '0', 'admin', NULL, NULL, NULL, '0', 'admin', '2020-04-24 13:25:24', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (30, 3, 'Clue', '1', 'admin', 'admin', NULL, NULL, '0', 'admin', '2020-04-24 13:26:01', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (31, 1, 'Clue', '0', 'admin', NULL, 'eternal', NULL, '0', 'admin', '2020-04-24 13:30:12', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (32, 1, 'Clue', '1', 'admin', 'admin', NULL, NULL, '0', 'admin', '2020-04-24 13:30:31', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (33, 1, 'Clue', '0', 'admin', NULL, NULL, NULL, '0', 'admin', '2020-04-27 12:16:44', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (34, 9, 'Customer', '1', 'admin', '00017162', 'ssssssssss', NULL, '0', 'admin', '2020-04-27 17:44:56', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (35, 2, 'OrderPrice', '1', 'admin', 'admin', 'sss', NULL, '0', 'admin', '2020-04-29 12:31:44', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (36, 1, 'Order', '1', 'admin', '00017162', 'ffff', NULL, '0', 'admin', '2020-04-29 12:34:52', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (37, 2, 'OrderPrice', '1', 'admin', 'jt', NULL, NULL, '0', 'admin', '2020-04-29 12:35:06', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (38, 2, 'OrderPrice', '1', 'admin', 'admin', 'rdddddd', NULL, '0', 'admin', '2020-04-29 12:37:52', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (39, 1, 'Pay', '1', 'admin', 'test', 'bbb', NULL, '0', 'admin', '2020-04-29 13:08:25', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (40, 9, 'Customer', '0', 'admin', NULL, NULL, NULL, '0', 'admin', '2020-07-04 13:41:12', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (41, 3, 'Clue', '1', 'admin', 'test', NULL, NULL, '0', 'admin', '2020-07-04 13:52:39', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (42, 2, 'Clue', '1', 'admin', 'test', NULL, NULL, '0', 'admin', '2020-07-04 13:52:39', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (43, 1, 'Clue', '2', 'admin', 'admin', '饿肚肚', NULL, '0', 'admin', '2020-09-03 16:34:38', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (44, 3, 'Clue', '1', 'admin', '00017162', 'ee', NULL, '0', 'admin', '2020-10-29 12:21:42', NULL, NULL, NULL);
INSERT INTO `crm_transfer` VALUES (45, 2, 'Clue', '1', 'admin', '00017162', 'ee', NULL, '0', 'admin', '2020-10-29 12:21:42', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_visit
-- ----------------------------
DROP TABLE IF EXISTS `crm_visit`;
CREATE TABLE `crm_visit`  (
  `visit_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '拜访ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `visit_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访人姓名',
  `visit_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访人电话',
  `visit_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访内容',
  `visit_date` datetime(0) NULL DEFAULT NULL COMMENT '拜访时间',
  `next_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下次拜访时间（保留）',
  `visit_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访类型（保留）',
  `visit_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拜访状态（保留）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`visit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户拜访' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_visit
-- ----------------------------
INSERT INTO `crm_visit` VALUES (3, 9, '是是', '13716884859', '2', '2024-07-14 11:55:00', NULL, NULL, '1', '1', 'admin', '2020-03-14 21:43:52', 'admin', '2020-03-14 21:44:02', NULL);
INSERT INTO `crm_visit` VALUES (4, NULL, '是的', '13716884893', '12', '2020-03-14 07:50:00', NULL, NULL, '1', '1', 'admin', '2020-03-14 21:53:41', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (5, NULL, '是的是', '13716888493', '二维', '2020-03-05 10:50:00', NULL, NULL, '2', '1', 'admin', '2020-03-14 21:54:38', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (6, NULL, '是的', '13716888222', '12', '2020-02-26 09:45:00', NULL, NULL, '2', '1', 'admin', '2020-03-14 22:00:16', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (7, NULL, '所得税地方', '13988288882', '13988288882', '2020-03-14 11:55:00', NULL, NULL, '1', '1', 'admin', '2020-03-14 22:02:17', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (8, 9, '水电费', '13716884828', '13716884828', '2020-03-14 10:50:00', NULL, NULL, '1', '1', 'admin', '2020-03-14 22:05:33', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (9, 9, '人饿', '13716884828', '13716884828', '2020-03-12 10:30:00', NULL, NULL, '2', '1', 'admin', '2020-03-14 22:06:15', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (10, 9, '是的', '13872828382', '是滴是滴', '2020-03-04 22:15:00', NULL, NULL, '1', '1', 'admin', '2020-03-14 22:08:49', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (11, 9, '姗姗', '13717881818', '23323', '2020-03-04 10:50:00', NULL, NULL, '1', '1', 'admin', '2020-03-15 17:08:03', NULL, NULL, NULL);
INSERT INTO `crm_visit` VALUES (12, 10, '水电费', '13828288288', '是滴是滴', '2020-02-25 10:30:00', NULL, NULL, '2', '1', 'admin', '2020-03-15 17:47:51', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for finance_fee
-- ----------------------------
DROP TABLE IF EXISTS `finance_fee`;
CREATE TABLE `finance_fee`  (
  `fee_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '费用收支ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '关联客户ID',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '关联订单ID，保留',
  `fee_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用收支名称',
  `fee_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '收支金额',
  `fee_date` datetime(0) NULL DEFAULT NULL COMMENT '收支日期',
  `fee_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收入、支出，字典',
  `fee_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收支状态(已保存，已审核，已驳回)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`fee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '费用收支' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for finance_pay
-- ----------------------------
DROP TABLE IF EXISTS `finance_pay`;
CREATE TABLE `finance_pay`  (
  `pay_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回款ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '关联订单ID',
  `pay_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '回款金额',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '回款日期',
  `pay_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款方式（支付宝、微信、支票、银行转账等）',
  `pay_times` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款期次(首期款，第二期，第三期，第四期)',
  `pay_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款状态(未确认、确认中、已确认)',
  `is_invoice` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否需要发票(0:不需要  1:需要)',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `source_belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人姓名',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `trasfer_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人姓名',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`pay_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '回款管理' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for finance_pay_plan
-- ----------------------------
DROP TABLE IF EXISTS `finance_pay_plan`;
CREATE TABLE `finance_pay_plan`  (
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回款ID',
  `customer_id` bigint(20) NULL DEFAULT NULL COMMENT '客户id',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '关联订单ID',
  `plan_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款主题',
  `plan_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '计划回款金额',
  `plan_date` datetime(0) NULL DEFAULT NULL COMMENT '计划回款日期',
  `plan_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计划回款方式（现金、支票等）',
  `plan_times` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款期次(首期款，第二期，第三期，第四期)',
  `plan_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回款状态(待收款、已收款、已逾期)',
  `payed_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '已回款',
  `need_money` decimal(10, 0) NULL DEFAULT NULL COMMENT '待回款',
  `over_days` smallint(6) NULL DEFAULT NULL COMMENT '逾期天数，逾期时使用',
  `source_belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人(login_name)',
  `source_belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原负责人姓名',
  `belong_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `belong_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `trasfer_date` datetime(0) NULL DEFAULT NULL COMMENT '转交时间',
  `trasfer_to` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人(login_name)',
  `trasfer_to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转交人姓名',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '回款计划' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'crm_complaint', '客户投诉', NULL, NULL, 'CrmComplaint', 'crud', 'com.selected.crm', 'crm', 'complaint', '客户投诉', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-09 15:25:43', '', '2020-03-09 15:54:59', '');
INSERT INTO `gen_table` VALUES (5, 'crm_visit', '客户拜访', NULL, NULL, 'CrmVisit', 'crud', 'com.selected.crm', 'crm', 'visit', '客户拜访', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-10 17:30:59', '', '2020-03-10 17:37:17', '');
INSERT INTO `gen_table` VALUES (6, 'crm_follow', '客户跟进记录', NULL, NULL, 'CrmFollow', 'crud', 'com.selected.crm', 'crm', 'follow', '客户跟进记录', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-10 18:19:22', '', '2020-03-10 18:23:14', '');
INSERT INTO `gen_table` VALUES (8, 'wms_product', '产品', NULL, NULL, 'WmsProduct', 'crud', 'com.selected.crm', 'crm', 'product', '产品', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-12 19:12:55', '', '2020-03-13 10:02:43', '');
INSERT INTO `gen_table` VALUES (9, 'wms_supplier', '产品供应商', NULL, NULL, 'WmsSupplier', 'crud', 'com.selected.crm', 'crm', 'supplier', '产品供应商', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-12 20:19:31', '', '2020-03-12 20:28:11', '');
INSERT INTO `gen_table` VALUES (12, 'crm_phonenumber', '电话本', NULL, NULL, 'CrmPhonenumber', 'crud', 'com.selected.crm', 'crm', 'phonenumber', '电话本', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-15 09:46:20', '', '2020-03-15 09:59:14', '');
INSERT INTO `gen_table` VALUES (14, 'crm_daily', '日志管理', NULL, NULL, 'CrmDaily', 'crud', 'com.selected.crm', 'crm', 'daily', '日志管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-15 10:39:15', '', '2020-03-15 10:40:46', '');
INSERT INTO `gen_table` VALUES (15, 'wms_stock', '库存管理', NULL, NULL, 'WmsStock', 'crud', 'com.selected.crm', 'crm', 'stock', '库存管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-15 12:08:37', '', '2020-03-15 12:14:41', '');
INSERT INTO `gen_table` VALUES (19, 'crm_contract_payment', '合同付款', NULL, NULL, 'CrmContractPayment', 'crud', 'com.selected.crm', 'crm', 'contractPayment', '合同付款管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-22 16:38:18', '', '2020-03-22 17:06:52', '');
INSERT INTO `gen_table` VALUES (20, 'crm_contract_invoice', '合同发票', NULL, NULL, 'CrmContractInvoice', 'crud', 'com.selected.crm', 'crm', 'contractInvoice', '合同发票管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-25 13:43:47', '', '2020-03-25 13:59:34', '');
INSERT INTO `gen_table` VALUES (22, 'crm_customer', '客户表', NULL, NULL, 'CrmCustomer', 'crud', 'com.selected.crm', 'crm', 'customer', '客户管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-02 12:27:57', '', '2020-04-02 14:55:18', '');
INSERT INTO `gen_table` VALUES (23, 'crm_person', '客户联系人', NULL, NULL, 'CrmPerson', 'crud', 'com.selected.crm', 'crm', 'person', '客户联系人', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-02 15:22:45', '', '2020-04-02 15:28:36', '');
INSERT INTO `gen_table` VALUES (26, 'crm_order', '客户订单', NULL, NULL, 'CrmOrder', 'crud', 'com.selected.crm', 'crm', 'order', '客户订单', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-03 16:54:15', '', '2020-04-05 18:38:39', '');
INSERT INTO `gen_table` VALUES (28, 'crm_order_product', '客户订单、报价单关联产品信息', NULL, NULL, 'CrmOrderProduct', 'crud', 'com.selected.crm', 'crm', 'product', '客户订单、报价单关联产品信息', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-03 18:34:36', '', '2020-04-03 18:34:48', '');
INSERT INTO `gen_table` VALUES (30, 'crm_clue', '线索表', NULL, NULL, 'CrmClue', 'crud', 'com.selected.crm', 'crm', 'clue', '线索管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-06 13:31:45', '', '2020-04-06 14:09:09', '');
INSERT INTO `gen_table` VALUES (31, 'crm_order_price', '客户报价单', NULL, NULL, 'CrmOrderPrice', 'crud', 'com.selected.crm', 'crm', 'price', '客户报价单', 'selected', '0', '/', NULL, 'admin', '2020-04-08 18:47:44', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (32, 'crm_contract', '合同记录', NULL, NULL, 'CrmContract', 'crud', 'com.selected.crm', 'crm', 'contract', '合同记录', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-10 10:54:26', '', '2020-04-10 10:55:10', '');
INSERT INTO `gen_table` VALUES (34, 'crm_contract_apply', '合同申请', NULL, NULL, 'CrmContractApply', 'crud', 'com.selected.crm', 'crm', 'contractApply', '合同申请', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-10 12:00:06', '', '2020-04-10 12:00:16', '');
INSERT INTO `gen_table` VALUES (35, 'finance_pay', '回款管理', NULL, NULL, 'FinancePay', 'crud', 'com.selected.crm', 'crm', 'pay', '回款管理', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-12 19:37:52', '', '2020-04-12 19:44:19', '');
INSERT INTO `gen_table` VALUES (37, 'finance_pay_plan', '回款计划', NULL, NULL, 'FinancePayPlan', 'crud', 'com.selected.crm', 'crm', 'plan', '回款计划', 'selected', '0', '/', NULL, 'admin', '2020-04-13 18:10:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (38, 'finance_fee', '费用收支', NULL, NULL, 'FinanceFee', 'crud', 'com.selected.crm', 'crm', 'fee', '费用收支', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-15 12:30:26', '', '2020-04-15 12:37:12', '');
INSERT INTO `gen_table` VALUES (39, 'crm_order_price_product', '报价单关联产品信息', NULL, NULL, 'CrmOrderPriceProduct', 'crud', 'com.selected.crm', 'crm', 'product', '报价单关联产品信息', 'selected', '0', '/', NULL, 'admin', '2020-04-19 13:21:21', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (41, 'crm_transfer', '转交记录', NULL, NULL, 'CrmTransfer', 'crud', 'com.selected.crm', 'crm', 'transfer', '转交记录', 'selected', '0', '/', NULL, 'admin', '2020-04-22 11:39:49', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (42, 'wms_product_catogory', '产品分类管理', NULL, NULL, 'WmsProductCatogory', 'tree', 'com.selected.crm', 'crm', 'productCatogory', '产品分类管理', 'selected', '0', '/', '{\"treeName\":\"catogory_name\",\"treeParentCode\":\"parent_id\",\"treeCode\":\"product_catogory_id\"}', 'admin', '2020-04-30 17:10:33', '', '2020-04-30 17:11:46', '');
INSERT INTO `gen_table` VALUES (44, 'wms_stock_allocation', '调拨单', NULL, NULL, 'WmsStockAllocation', 'crud', 'com.selected.crm', 'crm', 'stockAllocation', '调拨单', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-12 14:38:31', '', '2020-08-12 14:49:05', '');
INSERT INTO `gen_table` VALUES (45, 'wms_stock_history', '库存记录', NULL, NULL, 'WmsStockHistory', 'crud', 'com.selected.crm', 'crm', 'stockHistory', '库存记录', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-13 18:42:50', '', '2020-08-13 18:46:47', '');
INSERT INTO `gen_table` VALUES (46, 'wms_stock_check', '库存盘点', NULL, NULL, 'WmsStockCheck', 'crud', 'com.selected.crm', 'crm', 'stockCheck', '库存盘点', 'selected', '0', '/', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-14 12:23:00', '', '2020-08-14 12:28:27', '');
INSERT INTO `gen_table` VALUES (48, 'wms_stock_product', '库存操作和产品对应表', NULL, NULL, 'WmsStockProduct', 'crud', 'com.selected.crm', 'crm', 'product', '库存操作和产品对应', 'selected', '0', '/', NULL, 'admin', '2020-08-21 13:57:17', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (49, 'wms_stock_enter', '产品 入库', NULL, NULL, 'WmsStockEnter', 'crud', 'com.selected.crm', 'crm', 'enter', '产品 入库', 'selected', '0', '/', NULL, 'admin', '2020-08-21 15:50:16', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (50, 'wms_stock_out', '产品 出库', NULL, NULL, 'WmsStockOut', 'crud', 'com.selected.crm', 'crm', 'out', '产品 出库', 'selected', '0', '/', NULL, 'admin', '2020-08-22 09:34:22', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (51, 'crm_clue_follow', '线索跟进记录', NULL, NULL, 'CrmClueFollow', 'crud', 'com.selected.crm', 'crm', 'follow', '线索跟进记录', 'selected', '0', '/', NULL, 'admin', '2020-09-02 15:37:09', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1220 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (96, '4', 'complaint_id', '投诉ID', 'bigint(20)', 'Long', 'complaintId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (97, '4', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (98, '4', 'complaint_date', '投诉时间', 'datetime', 'Date', 'complaintDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (99, '4', 'complaint_name', '投诉人', 'varchar(50)', 'String', 'complaintName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (100, '4', 'complaint_content', '投诉内容', 'varchar(500)', 'String', 'complaintContent', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 5, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (101, '4', 'complaint_type', '投诉类型', 'char(1)', 'String', 'complaintType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'complaint_type', 6, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (102, '4', 'complaint_status', '投诉状态', 'char(1)', 'String', 'complaintStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'complaint_status', 7, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (103, '4', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (104, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 9, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (105, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (106, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (107, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (108, '4', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 13, 'admin', '2020-03-09 15:25:43', NULL, '2020-03-09 15:54:59');
INSERT INTO `gen_table_column` VALUES (109, '5', 'visit_id', '拜访ID', 'bigint(20)', 'Long', 'visitId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (110, '5', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (111, '5', 'visit_name', '拜访人姓名', 'varchar(50)', 'String', 'visitName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (112, '5', 'visit_phone', '拜访人电话', 'varchar(50)', 'String', 'visitPhone', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (113, '5', 'visit_content', '拜访内容', 'varchar(500)', 'String', 'visitContent', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'textarea', '', 5, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (114, '5', 'visit_date', '拜访时间', 'datetime', 'Date', 'visitDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (115, '5', 'next_time', '下次拜访时间（保留）', 'varchar(20)', 'String', 'nextTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (116, '5', 'visit_type', '拜访类型（保留）', 'char(1)', 'String', 'visitType', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (117, '5', 'visit_status', '拜访状态', 'char(1)', 'String', 'visitStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'visit_Status', 9, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (118, '5', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (119, '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (120, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (121, '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (122, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (123, '5', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 15, 'admin', '2020-03-10 17:30:59', NULL, '2020-03-10 17:37:17');
INSERT INTO `gen_table_column` VALUES (124, '6', 'follow_id', '跟进ID', 'bigint(20)', 'Long', 'followId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (125, '6', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (126, '6', 'follow_date', '跟进时间', 'datetime', 'Date', 'followDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (127, '6', 'follow_content', '跟进内容', 'varchar(500)', 'String', 'followContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (128, '6', 'follow_type', '跟进类型', 'char(1)', 'String', 'followType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'follow_type', 5, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (129, '6', 'follow_status', '跟进状态', 'char(1)', 'String', 'followStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'follow_status', 6, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (130, '6', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (131, '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (132, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (133, '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (134, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (135, '6', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 12, 'admin', '2020-03-10 18:19:22', NULL, '2020-03-10 18:23:14');
INSERT INTO `gen_table_column` VALUES (155, '8', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (156, '8', 'supplier_id', '供货商', 'bigint(20)', 'Long', 'supplierId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (157, '8', 'product_name', '产品名称', 'varchar(50)', 'String', 'productName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (158, '8', 'income_price', '进价', 'decimal(10,0)', 'Long', 'incomePrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (159, '8', 'sale_price', '售价', 'decimal(10,0)', 'Long', 'salePrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (160, '8', 'product_category', '产品类别', 'char(1)', 'String', 'productCategory', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'product_category', 6, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (161, '8', 'product_no', '货号', 'varchar(50)', 'String', 'productNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (162, '8', 'product_unit', '产品计量单位', 'char(1)', 'String', 'productUnit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'product_unit', 8, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (163, '8', 'product_spec', '产品规格(保留，暂不使用多规格)', 'varchar(50)', 'String', 'productSpec', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (164, '8', 'prodcut_status', '产品状态', 'char(1)', 'String', 'prodcutStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'product_status', 10, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (165, '8', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (166, '8', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (167, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (168, '8', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (169, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (170, '8', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 16, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (171, '9', 'supplier_Iid', '供应商ID', 'bigint(20)', 'Long', 'supplierIid', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (172, '9', 'supplier_name', '供应商名称', 'varchar(100)', 'String', 'supplierName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (173, '9', 'name_short', '供应商简称', 'varchar(50)', 'String', 'nameShort', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (174, '9', 'leader', '负责人', 'varchar(50)', 'String', 'leader', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (175, '9', 'duty', '职务', 'varchar(50)', 'String', 'duty', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (176, '9', 'address', '地址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (177, '9', 'telephone', '固定电话', 'varchar(20)', 'String', 'telephone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (178, '9', 'mobile', '手机', 'varchar(20)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (179, '9', 'email', '用户邮箱', 'varchar(100)', 'String', 'email', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (180, '9', 'fax', '传值', 'varchar(20)', 'String', 'fax', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (181, '9', 'website', '网址', 'varchar(50)', 'String', 'website', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (182, '9', 'zip', '邮编', 'varchar(10)', 'String', 'zip', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (183, '9', 'country', '国家', 'varchar(50)', 'String', 'country', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (184, '9', 'province', '省份', 'varchar(50)', 'String', 'province', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (185, '9', 'city', '城市', 'varchar(50)', 'String', 'city', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (186, '9', 'region', '地区', 'varchar(100)', 'String', 'region', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (187, '9', 'industry', '所属行业', 'char(1)', 'String', 'industry', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'industry', 17, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (188, '9', 'supplier_status', '供应商I状态（未供货、已供货）', 'char(1)', 'String', 'supplierStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'supplier_status', 18, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (189, '9', 'supplier_degree', '供应商等级（优质、中等、一般、、、)', 'char(1)', 'String', 'supplierDegree', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'supplier_degree', 19, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (190, '9', 'supplier_credit', '供应商信誉度（字典 分星展示）', 'char(1)', 'String', 'supplierCredit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'supplier_credit', 20, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (191, '9', 'sex', '性别（保留）', 'char(1)', 'String', 'sex', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'select', '', 21, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (192, '9', 'avatar', '头像（保留）', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 22, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (193, '9', 'qq', 'qq（保留）', 'varchar(20)', 'String', 'qq', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 23, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (194, '9', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 24, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (195, '9', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 25, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (196, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 26, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (197, '9', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 27, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (198, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 28, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (199, '9', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 29, 'admin', '2020-03-12 20:19:31', NULL, '2020-03-12 20:28:11');
INSERT INTO `gen_table_column` VALUES (200, '8', 'product_image', '产品图片', 'varchar(200)', 'String', 'productImage', '0', '0', NULL, '1', '1', NULL, NULL, 'LIKE', 'input', '', 3, 'admin', '2020-03-12 19:12:55', NULL, '2020-03-13 10:02:43');
INSERT INTO `gen_table_column` VALUES (228, '12', 'phonenumber_id', '电话本ID', 'bigint(20)', 'Long', 'phonenumberId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (229, '12', 'name', '姓名', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (230, '12', 'englsh_name', '英文名', 'varchar(50)', 'String', 'englshName', '0', '0', NULL, '1', '1', NULL, NULL, 'LIKE', 'input', '', 3, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (231, '12', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 4, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (232, '12', 'duty', '职务', 'varchar(50)', 'String', 'duty', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (233, '12', 'telephone', '固定电话', 'varchar(20)', 'String', 'telephone', '0', '0', NULL, '1', '1', NULL, '1', 'LIKE', 'input', '', 6, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (234, '12', 'mobile', '手机', 'varchar(20)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (235, '12', 'email', '用户邮箱', 'varchar(100)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (236, '12', 'fax', '传值', 'varchar(20)', 'String', 'fax', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (237, '12', 'qq', 'qq', 'varchar(20)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 10, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (238, '12', 'msn', 'MSN', 'varchar(50)', 'String', 'msn', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (239, '12', 'hobby', '爱好', 'varchar(100)', 'String', 'hobby', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (240, '12', 'marriage', '婚否', 'char(1)', 'String', 'marriage', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', 'marriage', 13, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (241, '12', 'birthday', '出生日期', 'timestamp', 'Date', 'birthday', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (242, '12', 'avatar', '头像（保留）', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (243, '12', 'phonenumber_type', '所属', 'char(1)', 'String', 'phonenumberType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'phonenumber_type', 16, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (244, '12', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (245, '12', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 18, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (246, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 19, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (247, '12', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 20, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (248, '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (249, '12', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 22, 'admin', '2020-03-15 09:46:20', NULL, '2020-03-15 09:59:14');
INSERT INTO `gen_table_column` VALUES (261, '14', 'daily_id', '日志ID', 'bigint(20)', 'Long', 'dailyId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (262, '14', 'daily_type', '类别', 'char(1)', 'String', 'dailyType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'daily_type', 2, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (263, '14', 'daily_content', '内容', 'varchar(500)', 'String', 'dailyContent', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 3, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (264, '14', 'daily_file', '日志附件（备用）', 'varchar(200)', 'String', 'dailyFile', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (265, '14', 'daily_to', '日志抄送人（备用）', 'varchar(200)', 'String', 'dailyTo', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (266, '14', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (267, '14', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 7, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (268, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (269, '14', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 9, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (270, '14', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (271, '14', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 11, 'admin', '2020-03-15 10:39:15', NULL, '2020-03-15 10:40:46');
INSERT INTO `gen_table_column` VALUES (272, '15', 'stock_id', '库存ID', 'bigint(20)', 'Long', 'stockId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (273, '15', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (274, '15', 'stcok_num', '库存数量', 'int(11)', 'Long', 'stcokNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (275, '15', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (276, '15', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 5, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (277, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (278, '15', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'input', '', 7, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (279, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (280, '15', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 9, 'admin', '2020-03-15 12:08:37', NULL, '2020-03-15 12:14:41');
INSERT INTO `gen_table_column` VALUES (331, '19', 'payment_id', '付款ID', 'bigint(20)', 'Long', 'paymentId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (332, '19', 'contract_id', '关联合同id', 'bigint(20)', 'Long', 'contractId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (333, '19', 'pay_money', '金额', 'decimal(10,0)', 'Long', 'payMoney', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (334, '19', 'pay_date', '付款日期', 'datetime', 'Date', 'payDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (335, '19', 'pay_type', '付款方式', 'char(1)', 'String', 'payType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'pay_type', 5, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (336, '19', 'pay_status', '付款状态', 'char(1)', 'String', 'payStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'pay_status', 6, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (337, '19', 'is_invoice', '是否需要发票', 'char(1)', 'String', 'isInvoice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'is_invoice', 7, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (338, '19', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (339, '19', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (340, '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (341, '19', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (342, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (343, '19', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 13, 'admin', '2020-03-22 16:38:18', NULL, '2020-03-22 17:06:52');
INSERT INTO `gen_table_column` VALUES (344, '20', 'invoice_id', '发票ID', 'bigint(20)', 'Long', 'invoiceId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (345, '20', 'contract_id', '合同ID', 'bigint(20)', 'Long', 'contractId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (346, '20', 'invoice_no', '发票号码', 'varchar(100)', 'String', 'invoiceNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (347, '20', 'invoice_money', '发票金额', 'decimal(10,0)', 'Long', 'invoiceMoney', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (348, '20', 'invoice_type', '发票类型', 'char(1)', 'String', 'invoiceType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'invoice_type', 5, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (349, '20', 'invoice_fate', '发票税率/%', 'int(11)', 'Long', 'invoiceFate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (350, '20', 'invoice_date', '发票日期', 'datetime', 'Date', 'invoiceDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (351, '20', 'invoice_status', '发票状态', 'char(1)', 'String', 'invoiceStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'invoice_status', 8, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (352, '20', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (353, '20', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (354, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (355, '20', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (356, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (357, '20', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 14, 'admin', '2020-03-25 13:43:47', NULL, '2020-03-25 13:59:34');
INSERT INTO `gen_table_column` VALUES (378, '22', 'customer_id', '客户ID', 'bigint(20)', 'Long', 'customerId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (379, '22', 'customer_name', '客户名称', 'varchar(100)', 'String', 'customerName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (380, '22', 'name_short', '客户简称', 'varchar(50)', 'String', 'nameShort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (383, '22', 'telephone', '公司座机', 'varchar(20)', 'String', 'telephone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (384, '22', 'mobile', '手机', 'varchar(20)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (385, '22', 'email', '邮箱', 'varchar(100)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (386, '22', 'fax', '传值', 'varchar(20)', 'String', 'fax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (387, '22', 'website', '网址', 'varchar(50)', 'String', 'website', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (388, '22', 'zip', '邮编', 'varchar(10)', 'String', 'zip', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (389, '22', 'country', '国家', 'varchar(50)', 'String', 'country', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (390, '22', 'province', '省份', 'varchar(50)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (391, '22', 'city', '城市', 'varchar(50)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (392, '22', 'region', '地区', 'varchar(100)', 'String', 'region', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (393, '22', 'address', '客户地址', 'varchar(200)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (394, '22', 'intrested_prodcut', '意向产品（后期应可以选择）', 'varchar(50)', 'String', 'intrestedProdcut', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (395, '22', 'industry', '所属行业（字典型）', 'char(1)', 'String', 'industry', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (396, '22', 'customer_status', '客户状态', 'char(1)', 'String', 'customerStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_status', 19, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (397, '22', 'customer_source', '客户来源', 'char(1)', 'String', 'customerSource', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_source', 20, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (398, '22', 'customer_degree', '客户等级', 'char(1)', 'String', 'customerDegree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_degree', 21, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (399, '22', 'customer_priority', '客户优先级', 'char(1)', 'String', 'customerPriority', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_priority', 22, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (400, '22', 'customer_credit', '客户信誉度', 'char(1)', 'String', 'customerCredit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_credit', 23, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (401, '22', 'customer_type', '客户类型', 'char(1)', 'String', 'customerType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'crm_customer_type', 24, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (402, '22', 'customer_maturity', '客户成熟度', 'char(1)', 'String', 'customerMaturity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_maturity', 25, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (403, '22', 'annual_income', '年收入', 'varchar(50)', 'String', 'annualIncome', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (404, '22', 'get_date', '客户获取时间', 'datetime', 'Date', 'getDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 27, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (405, '22', 'source_belong_to', '原负责人', 'varchar(20)', 'String', 'sourceBelongTo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 28, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (406, '22', 'source_belong_to_name', '原负责人姓名', 'varchar(50)', 'String', 'sourceBelongToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 29, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (407, '22', 'belong_to', '负责人', 'varchar(20)', 'String', 'belongTo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 30, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (408, '22', 'belong_to_name', '负责人姓名', 'varchar(50)', 'String', 'belongToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 31, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (409, '22', 'trasfer_date', '转交时间', 'datetime', 'Date', 'trasferDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 32, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (410, '22', 'trasfer_to', '转交人', 'varchar(20)', 'String', 'trasferTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (411, '22', 'trasfer_to_name', '转交人姓名', 'varchar(50)', 'String', 'trasferToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 34, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (412, '22', 'is_share', '是否共享客户', 'char(1)', 'String', 'isShare', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 35, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (413, '22', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', 'sys_user_sex', 36, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (414, '22', 'avatar', '头像（保留）', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 37, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (415, '22', 'qq', 'qq（保留）', 'varchar(20)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 38, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (416, '22', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 39, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (417, '22', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 40, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (418, '22', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 41, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (419, '22', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 42, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (420, '22', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 43, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (421, '22', 'remark', '客户介绍', 'varchar(200)', 'String', 'remark', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 44, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (422, '22', 'customer_category', '客户类别', 'char(1)', 'String', 'customerCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_categroy', 25, 'admin', '2020-04-02 12:27:57', NULL, '2020-04-02 14:55:18');
INSERT INTO `gen_table_column` VALUES (466, '23', 'person_id', '联系人ID', 'bigint(20)', 'Long', 'personId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (467, '23', 'customer_id', '所属客户', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (468, '23', 'person_name', '联系人名称', 'varchar(100)', 'String', 'personName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (469, '23', 'english_name', '联系人英文名', 'varchar(50)', 'String', 'englishName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (470, '23', 'duty', '职务', 'varchar(50)', 'String', 'duty', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (471, '23', 'telephone', '固定电话', 'varchar(20)', 'String', 'telephone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (472, '23', 'mobile', '手机', 'varchar(20)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (473, '23', 'email', '用户邮箱', 'varchar(100)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (474, '23', 'fax', '传真', 'varchar(20)', 'String', 'fax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (475, '23', 'qq', 'qq', 'varchar(20)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (476, '23', 'wechat', '微信', 'varchar(50)', 'String', 'wechat', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (477, '23', 'wangwang', '旺旺', 'varchar(50)', 'String', 'wangwang', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (478, '23', 'msn', 'MSN', 'varchar(50)', 'String', 'msn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (479, '23', 'hobby', '爱好', 'varchar(100)', 'String', 'hobby', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (480, '23', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 15, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (481, '23', 'marriage', '婚否   字典', 'char(1)', 'String', 'marriage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (482, '23', 'birthday', '出生日期', 'timestamp', 'Date', 'birthday', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 17, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (483, '23', 'person_decision_level', '决策等级（字典 分星展示）', 'char(1)', 'String', 'personDecisionLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (484, '23', 'id_type', '证件类型', 'char(1)', 'String', 'idType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'id_type', 19, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (485, '23', 'id_num', '证件号码', 'varchar(50)', 'String', 'idNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (486, '23', 'home_mobile', '家庭电话', 'varchar(20)', 'String', 'homeMobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (487, '23', 'home_address', '家庭住址', 'varchar(50)', 'String', 'homeAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (488, '23', 'avatar', '头像（保留）', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (489, '23', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 24, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (490, '23', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (491, '23', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 26, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (492, '23', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 27, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (493, '23', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 28, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (494, '23', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 29, 'admin', '2020-04-02 15:22:45', NULL, '2020-04-02 15:28:36');
INSERT INTO `gen_table_column` VALUES (552, '26', 'order_id', '订单ID', 'bigint(20)', 'Long', 'orderId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-03 16:54:15', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (553, '26', 'order_code', '订单编码', 'varchar(50)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (554, '26', 'contract_id', '合同id（可以关联合同，也可以不关联）', 'bigint(20)', 'Long', 'contractId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (555, '26', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (556, '26', 'order_name', '订单名称，主题', 'varchar(50)', 'String', 'orderName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (557, '26', 'total_price', '成交总额', 'decimal(10,0)', 'Long', 'totalPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (558, '26', 'cost_price', '总成本', 'decimal(10,0)', 'Long', 'costPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (559, '26', 'order_date', '成交/签约时间', 'datetime', 'Date', 'orderDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (560, '26', 'pay_type', '付款方式', 'char(1)', 'String', 'payType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pay_type', 9, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (561, '26', 'valid_start', '有效期开始时间', 'datetime', 'Date', 'validStart', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:39');
INSERT INTO `gen_table_column` VALUES (562, '26', 'valid_end', '有效期结束时间', 'datetime', 'Date', 'validEnd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (563, '26', 'order_status', '订单状态', 'char(1)', 'String', 'orderStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'order_status', 12, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (564, '26', 'picture', '图片', 'varchar(100)', 'String', 'picture', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (565, '26', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (566, '26', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (567, '26', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (568, '26', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (569, '26', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (570, '26', 'remark', '订单详情', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2020-04-03 16:54:16', NULL, '2020-04-05 18:38:40');
INSERT INTO `gen_table_column` VALUES (611, '28', 'order_product_id', '订单产品ID', 'bigint(20)', 'Long', 'orderProductId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (612, '28', 'order_id', '订单id', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (613, '28', 'order_type', '订单类型（0 报价单  1 订单）', 'char(1)', 'String', 'orderType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'order_type', 3, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (614, '28', 'product_id', '产品id', 'bigint(20)', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (615, '28', 'product_count', '订购数量', 'int(11)', 'Long', 'productCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (616, '28', 'sale_price', '销售单价', 'decimal(10,2)', 'Double', 'salePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (617, '28', 'discount', '折扣', 'decimal(10,2)', 'Double', 'discount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (618, '28', 'real_price', '实际报价', 'decimal(10,2)', 'Double', 'realPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (619, '28', 'order_product_status', '订单产品状态（0：暂存  1：已存）', 'char(1)', 'String', 'orderProductStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (620, '28', 'ship_status', '发货状态（未发货、已发货、已接收）)(备用)', 'char(1)', 'String', 'shipStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 10, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (621, '28', 'ship_no', '发货单号(已发货产品使用)(备用)', 'varchar(50)', 'String', 'shipNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (622, '28', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (623, '28', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (624, '28', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (625, '28', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (626, '28', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (627, '28', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 17, 'admin', '2020-04-03 18:34:36', NULL, '2020-04-03 18:34:48');
INSERT INTO `gen_table_column` VALUES (678, '30', 'clue_id', '线索ID', 'bigint(20)', 'Long', 'clueId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (679, '30', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (680, '30', 'company', '公司', 'varchar(50)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (681, '30', 'address', '地址', 'varchar(50)', 'String', 'address', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 4, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (682, '30', 'duty', '职务', 'varchar(50)', 'String', 'duty', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (683, '30', 'mobile', '手机', 'varchar(20)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (684, '30', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (685, '30', 'qq', 'qq', 'varchar(20)', 'String', 'qq', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (686, '30', 'wechat', '微信', 'varchar(50)', 'String', 'wechat', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (687, '30', 'wangwang', '旺旺', 'varchar(50)', 'String', 'wangwang', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (688, '30', 'msn', 'MSN', 'varchar(50)', 'String', 'msn', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (689, '30', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 12, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (690, '30', 'clue_source', '线索来源', 'char(1)', 'String', 'clueSource', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'crm_customer_source', 14, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (691, '30', 'decision_level', '决策等级', 'char(1)', 'String', 'decisionLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'person_decision_level', 15, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (692, '30', 'market_activity', '市场活动', 'varchar(50)', 'String', 'marketActivity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (693, '30', 'source_belong_to', '原负责人(login_name)', 'varchar(20)', 'String', 'sourceBelongTo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (694, '30', 'source_belong_to_name', '原负责人姓名', 'varchar(50)', 'String', 'sourceBelongToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 18, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (695, '30', 'belong_to', '负责人(login_name)', 'varchar(20)', 'String', 'belongTo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 19, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (696, '30', 'belong_to_name', '负责人姓名', 'varchar(50)', 'String', 'belongToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 20, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (697, '30', 'trasfer_date', '转交时间', 'datetime', 'Date', 'trasferDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 21, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (698, '30', 'trasfer_to', '转交人(login_name)', 'varchar(20)', 'String', 'trasferTo', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 22, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (699, '30', 'trasfer_to_name', '转交人姓名', 'varchar(50)', 'String', 'trasferToName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 23, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (700, '30', 'avatar', '头像（保留）', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 24, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (701, '30', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (702, '30', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 26, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (703, '30', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 27, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (704, '30', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 28, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (705, '30', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 29, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (706, '30', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 30, 'admin', '2020-04-06 13:31:45', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (726, '30', 'clue_status', '线索状态', 'char(1)', 'String', 'clueStatus', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'clue_status', 13, 'admin', '2020-04-06 13:31:46', NULL, '2020-04-06 14:09:09');
INSERT INTO `gen_table_column` VALUES (728, '31', 'order_id', '订单ID', 'bigint(20)', 'Long', 'orderId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (729, '31', 'order_code', '订单编码', 'varchar(50)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (730, '31', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (731, '31', 'order_name', '订单名称/主题', 'varchar(50)', 'String', 'orderName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (732, '31', 'total_price', '总价(单子合计价格)', 'decimal(10,2)', 'Double', 'totalPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (733, '31', 'cost_price', '总成本', 'decimal(10,2)', 'Double', 'costPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (734, '31', 'prcie_date', '报价时间', 'datetime', 'Date', 'prcieDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (735, '31', 'prcie_by', '报价人', 'varchar(64)', 'String', 'prcieBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (736, '31', 'prcie_end_date', '报价j截止时间', 'datetime', 'Date', 'prcieEndDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (737, '31', 'order_date', '订单时间，报价单转订单时使用', 'datetime', 'Date', 'orderDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (738, '31', 'order_status', '订单状态（保留）', 'char(1)', 'String', 'orderStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (739, '31', 'picture', '图片', 'varchar(100)', 'String', 'picture', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (740, '31', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (741, '31', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (742, '31', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (743, '31', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (744, '31', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (745, '31', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 18, 'admin', '2020-04-08 18:47:44', '', NULL);
INSERT INTO `gen_table_column` VALUES (767, '32', 'contract_id', '合同ID', 'bigint(20)', 'Long', 'contractId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (768, '32', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (769, '32', 'order_id', '成交订单id', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (770, '32', 'contract_no', '合同编号（按一定规则生成）', 'varchar(64)', 'String', 'contractNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (771, '32', 'contract_name', '合同名称', 'varchar(100)', 'String', 'contractName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (772, '32', 'contract_type', '合同类型（技术开发、代理记账等）', 'char(1)', 'String', 'contractType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (773, '32', 'contract_status', '状态(未审核、审核中、执行中、已完成、已失效)', 'char(1)', 'String', 'contractStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (774, '32', 'contract_content', '合同内容', 'varchar(1000)', 'String', 'contractContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (775, '32', 'date_start', '开始日期', 'datetime', 'Date', 'dateStart', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (776, '32', 'date_end', '到期日期', 'datetime', 'Date', 'dateEnd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (777, '32', 'pay_method', '付款方式 保留（阶段付款、周期付款）', 'char(1)', 'String', 'payMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (778, '32', 'total_money', '总金额，应收款', 'decimal(10,2)', 'Double', 'totalMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (779, '32', 'sign_by', '合同签署人', 'varchar(64)', 'String', 'signBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (780, '32', 'sign_by_name', '合同签署人姓名', 'varchar(50)', 'String', 'signByName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (781, '32', 'sign_date', '合同签署日期', 'datetime', 'Date', 'signDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 15, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (782, '32', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (783, '32', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (784, '32', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (785, '32', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (786, '32', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (787, '32', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 21, 'admin', '2020-04-10 10:54:26', NULL, '2020-04-10 10:55:10');
INSERT INTO `gen_table_column` VALUES (851, '34', 'contract_id', '合同ID', 'bigint(20)', 'Long', 'contractId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (852, '34', 'customer_id', '客户id', 'bigint(20)', 'Long', 'customerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (853, '34', 'order_id', '成交订单id', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (854, '34', 'contract_no', '合同编号（按一定规则生成）', 'varchar(64)', 'String', 'contractNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (855, '34', 'contract_name', '合同名称', 'varchar(100)', 'String', 'contractName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (856, '34', 'contract_type', '合同类型（技术开发、代理记账等）', 'char(1)', 'String', 'contractType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (857, '34', 'contract_status', '状态(未审核、审核中、执行中、已完成、已失效)', 'char(1)', 'String', 'contractStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (858, '34', 'contract_content', '合同内容', 'varchar(1000)', 'String', 'contractContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (859, '34', 'date_start', '开始日期', 'datetime', 'Date', 'dateStart', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (860, '34', 'date_end', '到期日期', 'datetime', 'Date', 'dateEnd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (861, '34', 'pay_method', '付款方式 保留（阶段付款、周期付款）', 'char(1)', 'String', 'payMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (862, '34', 'total_money', '总金额，应收款', 'decimal(10,0)', 'Long', 'totalMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (863, '34', 'sign_by', '合同签署人', 'varchar(64)', 'String', 'signBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (864, '34', 'sign_by_name', '合同签署人姓名', 'varchar(50)', 'String', 'signByName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (865, '34', 'sign_date', '合同签署日期', 'datetime', 'Date', 'signDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 15, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (866, '34', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (867, '34', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (868, '34', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (869, '34', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 19, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (870, '34', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 20, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (871, '34', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 21, 'admin', '2020-04-10 12:00:06', NULL, '2020-04-10 12:00:16');
INSERT INTO `gen_table_column` VALUES (893, '35', 'pay_id', '合同付款ID', 'bigint(20)', 'Long', 'payId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (894, '35', 'order_id', '关联订单ID', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (895, '35', 'pay_money', '付款金额', 'decimal(10,0)', 'Long', 'payMoney', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (896, '35', 'pay_date', '付款日期', 'datetime', 'Date', 'payDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (897, '35', 'pay_type', '付款方式', 'char(1)', 'String', 'payType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pay_type', 5, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (898, '35', 'pay_times', '付款期次', 'char(1)', 'String', 'payTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pay_times', 6, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (899, '35', 'pay_status', '付款状态', 'char(1)', 'String', 'payStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', 'pay_status', 7, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (900, '35', 'is_invoice', '是否需要发票', 'char(1)', 'String', 'isInvoice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'is_invoice', 8, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (901, '35', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (902, '35', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (903, '35', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (904, '35', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (905, '35', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (906, '35', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 14, 'admin', '2020-04-12 19:37:52', NULL, '2020-04-12 19:44:19');
INSERT INTO `gen_table_column` VALUES (965, '37', 'plan_id', '回款ID', 'bigint(20)', 'Long', 'planId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (966, '37', 'order_id', '关联订单ID', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (967, '37', 'plan_name', '回款主题', 'varchar(50)', 'String', 'planName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (968, '37', 'plan_money', '计划回款金额', 'decimal(10,0)', 'Long', 'planMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (969, '37', 'plan_date', '计划回款日期', 'datetime', 'Date', 'planDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (970, '37', 'plan_type', '计划回款方式（现金、支票等）', 'char(1)', 'String', 'planType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (971, '37', 'plan_times', '回款期次(首期款，第二期，第三期，第四期)', 'char(1)', 'String', 'planTimes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (972, '37', 'plan_status', '回款状态(待收款、已收款、已逾期)', 'char(1)', 'String', 'planStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (973, '37', 'payed_money', '已回款', 'decimal(10,0)', 'Long', 'payedMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (974, '37', 'need_money', '待回款', 'decimal(10,0)', 'Long', 'needMoney', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (975, '37', 'over_days', '逾期天数，逾期时使用', 'smallint(6)', 'Integer', 'overDays', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (976, '37', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (977, '37', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (978, '37', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (979, '37', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (980, '37', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (981, '37', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 17, 'admin', '2020-04-13 18:10:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1003, '38', 'fee_id', '费用收支ID', 'bigint(20)', 'Long', 'feeId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1004, '38', 'customer_id', '关联客户ID', 'bigint(20)', 'Long', 'customerId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1005, '38', 'order_id', '关联订单ID，保留', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1006, '38', 'fee_name', '费用收支名称', 'varchar(50)', 'String', 'feeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1007, '38', 'fee_money', '收支金额', 'decimal(10,2)', 'Double', 'feeMoney', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1008, '38', 'fee_date', '收支日期', 'datetime', 'Date', 'feeDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1009, '38', 'fee_type', '收支类型', 'char(1)', 'String', 'feeType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'fee_type', 7, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1010, '38', 'fee_status', '收支状态', 'char(1)', 'String', 'feeStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'fee_status', 8, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1011, '38', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1012, '38', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1013, '38', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1014, '38', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1015, '38', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1016, '38', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 14, 'admin', '2020-04-15 12:30:27', NULL, '2020-04-15 12:37:12');
INSERT INTO `gen_table_column` VALUES (1038, '39', 'order_product_id', '订单产品ID', 'bigint(20)', 'Long', 'orderProductId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1039, '39', 'order_id', '订单id', 'bigint(20)', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1040, '39', 'product_id', '产品id', 'bigint(20)', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1041, '39', 'product_count', '订购数量', 'int(11)', 'Long', 'productCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1042, '39', 'sell_price', '销售单价', 'decimal(10,2)', 'Double', 'sellPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1043, '39', 'discount', '折扣', 'decimal(10,2)', 'Double', 'discount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1044, '39', 'real_price', '实际报价', 'decimal(10,2)', 'Double', 'realPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1045, '39', 'order_product_status', '订单产品状态（0：暂存  1：已存）', 'char(1)', 'String', 'orderProductStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1046, '39', 'ship_status', '发货状态（未发货、已发货、已接收）)(备用)', 'char(1)', 'String', 'shipStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1047, '39', 'ship_no', '发货单号(已发货产品使用)(备用)', 'varchar(50)', 'String', 'shipNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1048, '39', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1049, '39', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1050, '39', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1051, '39', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1052, '39', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1053, '39', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 16, 'admin', '2020-04-19 13:21:21', '', NULL);
INSERT INTO `gen_table_column` VALUES (1068, '41', 'transfer_id', '拜访ID', 'bigint(20)', 'Long', 'transferId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1069, '41', 'business_id', '业务ID，客户，订单、回款等的ID', 'bigint(20)', 'Long', 'businessId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1070, '41', 'business_type', '业务类型，客户，订单、回款等', 'varchar(20)', 'String', 'businessType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1071, '41', 'transfer_type', '转交类型（0 公客  1 转交人）', 'char(1)', 'String', 'transferType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1072, '41', 'transfer_to', '转交人', 'varchar(50)', 'String', 'transferTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1073, '41', 'belong_to', '转给谁，负责人', 'varchar(50)', 'String', 'belongTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1074, '41', 'reason', '转交原因', 'varchar(500)', 'String', 'reason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1075, '41', 'public_id', '转为公客时使用，表示公客分组id', 'bigint(20)', 'Long', 'publicId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1076, '41', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1077, '41', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1078, '41', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1079, '41', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1080, '41', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1081, '41', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 14, 'admin', '2020-04-22 11:39:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (1082, '42', 'product_catogory_id', '产品分类id', 'int(11)', 'Long', 'productCatogoryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1083, '42', 'parent_id', '父部门id', 'int(11)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1084, '42', 'ancestors', 'null', 'varchar(50)', 'String', 'ancestors', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1085, '42', 'catogory_name', '分类名称', 'varchar(30)', 'String', 'catogoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1086, '42', 'order_num', '显示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1087, '42', 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1088, '42', 'phone', '联系电话', 'varchar(20)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1089, '42', 'email', '邮箱', 'varchar(20)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1090, '42', 'status', '分类状态:0正常,1停用', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1091, '42', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1092, '42', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1093, '42', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1094, '42', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1095, '42', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-04-30 17:10:33', NULL, '2020-04-30 17:11:46');
INSERT INTO `gen_table_column` VALUES (1111, '44', 'allocation_id', '调拨ID', 'bigint(20)', 'Long', 'allocationId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1112, '44', 'out_storage_id', '调出仓库ID', 'bigint(20)', 'Long', 'outStorageId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1113, '44', 'out_storage_name', '调出仓库名称', 'varchar(50)', 'String', 'outStorageName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1114, '44', 'enter_storage_id', '调入仓库ID', 'bigint(20)', 'Long', 'enterStorageId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1115, '44', 'enter_storage_name', '调入仓库名称', 'varchar(50)', 'String', 'enterStorageName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1116, '44', 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 6, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1117, '44', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1118, '44', 'allocation_num', '调拨数量', 'int(11)', 'Long', 'allocationNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1119, '44', 'allocation_date', '调拨日期', 'datetime', 'Date', 'allocationDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1120, '44', 'allocation_status', '调拨状态（0  已保存   1:已提交   2：已审核）', 'char(1)', 'String', 'allocationStatus', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'allocation_status', 10, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1121, '44', 'allocation_by', '调拨负责人', 'varchar(50)', 'String', 'allocationBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1122, '44', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1123, '44', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1124, '44', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1125, '44', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1126, '44', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1127, '44', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 17, 'admin', '2020-08-12 14:38:31', NULL, '2020-08-12 14:49:05');
INSERT INTO `gen_table_column` VALUES (1128, '45', 'history_id', '记录ID', 'bigint(20)', 'Long', 'historyId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1129, '45', 'storage_id', '仓库ID', 'bigint(20)', 'Long', 'storageId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1130, '45', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1131, '45', 'history_type', '操作类型', 'char(1)', 'String', 'historyType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'stock_history_type', 4, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1132, '45', 'num_before', '入库/出库数量', 'int(11)', 'Long', 'numBefore', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1133, '45', 'num_after', '仓库剩余数量', 'int(11)', 'Long', 'numAfter', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1134, '45', 'history_date', '入库/出库日期', 'datetime', 'Date', 'historyDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1135, '45', 'history_by', '负责人', 'varchar(20)', 'String', 'historyBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1136, '45', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1137, '45', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1138, '45', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1139, '45', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1140, '45', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1141, '45', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 14, 'admin', '2020-08-13 18:42:50', NULL, '2020-08-13 18:46:47');
INSERT INTO `gen_table_column` VALUES (1142, '46', 'check_id', '盘点ID', 'bigint(20)', 'Long', 'checkId', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1143, '46', 'storage_id', '仓库ID', 'bigint(20)', 'Long', 'storageId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1144, '46', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1145, '46', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1146, '46', 'num_stock', '仓库当前库存数量', 'int(11)', 'Long', 'numStock', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1147, '46', 'num_stock_actual', '仓库实际库存数量', 'int(11)', 'Long', 'numStockActual', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1148, '46', 'check_date', '盘点日期', 'datetime', 'Date', 'checkDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1149, '46', 'check_by', '盘点负责人', 'varchar(20)', 'String', 'checkBy', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1150, '46', 'check_status', '盘点状态', 'char(1)', 'String', 'checkStatus', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'stock_check_status', 9, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1151, '46', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1152, '46', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1153, '46', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1154, '46', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1155, '46', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1156, '46', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'textarea', '', 15, 'admin', '2020-08-14 12:23:00', NULL, '2020-08-14 12:28:27');
INSERT INTO `gen_table_column` VALUES (1170, '48', 'stock_product_id', '主键ID', 'bigint(20)', 'Long', 'stockProductId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1171, '48', 'op_id', '操作ID  入库 出库 调拨  盘点等', 'bigint(20)', 'Long', 'opId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1172, '48', 'product_id', '产品ID', 'bigint(20)', 'Long', 'productId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1173, '48', 'product_name', '产品名称', 'varchar(50)', 'String', 'productName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1174, '48', 'product_num1', '产品数量或之前数量', 'int(11)', 'Long', 'productNum1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1175, '48', 'product_num2', '产品数量或之后数量', 'int(11)', 'Long', 'productNum2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1176, '48', 'type', '类型（ 入库 出库 调拨  盘点等）', 'char(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2020-08-21 13:57:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (1177, '48', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1178, '48', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1179, '48', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1180, '48', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1181, '48', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1182, '48', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, 'admin', '2020-08-21 13:57:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1183, '49', 'enter_id', '入库ID', 'bigint(20)', 'Long', 'enterId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1184, '49', 'storage_id', '仓库ID', 'bigint(20)', 'Long', 'storageId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1185, '49', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1186, '49', 'enter_date', '入库日期', 'datetime', 'Date', 'enterDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1187, '49', 'enter_type', '入库类型（0  采购入库   1:生产入库）', 'char(1)', 'String', 'enterType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1188, '49', 'enter_status', '入库状态（0  已保存   1:已提交   2：已审核）', 'char(1)', 'String', 'enterStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1189, '49', 'enter_by', '负责人(login_name)', 'varchar(50)', 'String', 'enterBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1190, '49', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1191, '49', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1192, '49', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1193, '49', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1194, '49', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1195, '49', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, 'admin', '2020-08-21 15:50:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (1196, '50', 'out_id', '出库ID', 'bigint(20)', 'Long', 'outId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1197, '50', 'storage_id', '仓库ID', 'bigint(20)', 'Long', 'storageId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1198, '50', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1199, '50', 'out_date', '出库日期', 'datetime', 'Date', 'outDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1200, '50', 'out_type', '出库类型（0  采购退货   1:订单送货）', 'char(1)', 'String', 'outType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1201, '50', 'out_status', '出库状态（0  已保存   1:已提交   2：已审核）', 'char(1)', 'String', 'outStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1202, '50', 'out_by', '出库申请人', 'varchar(50)', 'String', 'outBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1203, '50', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1204, '50', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1205, '50', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1206, '50', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1207, '50', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1208, '50', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, 'admin', '2020-08-22 09:34:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (1209, '51', 'follow_id', '跟进ID', 'bigint(20)', 'Long', 'followId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1210, '51', 'clue_id', '线索id', 'bigint(20)', 'Long', 'clueId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1211, '51', 'follow_date', '跟进时间', 'datetime', 'Date', 'followDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1212, '51', 'follow_content', '跟进内容', 'varchar(500)', 'String', 'followContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1213, '51', 'follow_type', '跟进类型', 'char(1)', 'String', 'followType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1214, '51', 'del_flag', '删除标识', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1215, '51', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1216, '51', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1217, '51', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1218, '51', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-09-02 15:37:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (1219, '51', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2020-09-02 15:37:09', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME6', 'DEFAULT', '/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME7', 'DEFAULT', '/10 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000171161E03B078707400AD2A20E69BB4E696B0E59088E5908CE79A84E78AB6E680810D0A20202020202020202A20322020E5B7B2E5AEA1E6A0B80D0A20202020202020202A20342020E689A7E8A18CE4B8AD20E59CA8E59088E5908CE69C9FE586850D0A20202020202020202A20352020E5B7B2E5AE8CE6889020E8BF87E69C9FE4B880E4B8AAE69C88E586850D0A20202020202020202A20362020E5B7B2E5A4B1E6958820E8BF87E69C9FE4B880E4B8AAE69C88E5A4967070707400013174000E302F3130202A202A202A202A203F74001E63726D5461736B2E757064617465436F6E7472616374537461747573282974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000004740012E69BB4E696B0E59088E5908CE78AB6E6808174000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME6', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017452E6C6D07870740026E8B685E8BF873330E5A4A9E69CAAE8B79FE8BF9BE5AEA2E688B7E8BDACE4B8BAE585ACE5AEA27070707400013174000D2F3130202A202A202A202A203F74002463726D5461736B2E636F6E7665727443726D437573746F6D6572546F5075626C6963282974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000006740026E8B685E8BF873330E5A4A9E69CAAE8B79FE8BF9BE5AEA2E688B7E8BDACE4B8BAE585ACE5AEA274000132740001317800);
INSERT INTO `qrtz_job_details` VALUES ('selectedScheduler', 'TASK_CLASS_NAME7', 'DEFAULT', NULL, 'com.selected.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720021636F6D2E6A65657468696E6B2E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002A636F6D2E6A65657468696E6B2E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001745318A85878707400007070707400013174000D2F3130202A202A202A202A203F74002063726D5461736B2E636F6E7665727443726D436C7565546F5075626C6963282974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000774002CE8B685E8BF873330E5A4A9E69CAAE8B79FE8BF9BE79A84E7BABFE7B4A2E8BDACE585A5E7BABFE7B4A2E6B1A074000132740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('selectedScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('selectedScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('selectedScheduler', 'SHYK-P-HT5TQF21603946151442', 1603946544237, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', 'TASK_CLASS_NAME4', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME6', 'DEFAULT', 'TASK_CLASS_NAME6', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 1, '');
INSERT INTO `qrtz_triggers` VALUES ('selectedScheduler', 'TASK_CLASS_NAME7', 'DEFAULT', 'TASK_CLASS_NAME7', 'DEFAULT', NULL, 1603946160000, -1, 5, 'PAUSED', 'CRON', 1603946151000, 0, NULL, 1, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-22 15:08:47', '是否开启注册用户功能');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-10-29 12:20:06', '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数组和特殊字符（密码必须包含字母，数字，特殊字符-_）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '总公司', 0, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-21 20:26:11');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '北京分公司', 1, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-21 20:26:02');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '上海分公司', 2, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-21 20:26:11');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'selected', '18810991088', 'jt@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 285 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 13:54:26', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 13:54:28', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 0, '未知', '0', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-06 13:54:43', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '机械及行业设备', '1', 'industry', '', '', 'N', '0', 'admin', '2020-03-01 17:46:55', 'admin', '2020-04-02 16:13:12', '');
INSERT INTO `sys_dict_data` VALUES (30, 2, '电子元器件', '2', 'industry', '', '', 'N', '0', 'admin', '2020-03-01 17:47:07', 'admin', '2020-04-02 16:13:21', '');
INSERT INTO `sys_dict_data` VALUES (31, 3, '礼品、工艺品、饰品', '3', 'industry', '', '', 'N', '0', 'admin', '2020-03-01 17:47:35', 'admin', '2020-04-02 16:13:29', '');
INSERT INTO `sys_dict_data` VALUES (32, 1, '潜在客户', '1', 'crm_customer_status', '', 'info', 'N', '0', 'admin', '2020-03-01 17:49:06', 'admin', '2020-04-08 11:37:00', '');
INSERT INTO `sys_dict_data` VALUES (33, 2, '意向客户', '2', 'crm_customer_status', '', 'info', 'N', '0', 'admin', '2020-03-01 17:49:20', 'admin', '2020-04-08 11:36:37', '');
INSERT INTO `sys_dict_data` VALUES (34, 3, '成交客户', '3', 'crm_customer_status', '', 'primary', 'N', '0', 'admin', '2020-03-01 17:49:36', 'admin', '2020-04-08 11:36:31', '');
INSERT INTO `sys_dict_data` VALUES (35, 1, '注册会员', '1', 'crm_customer_source', '', '', 'N', '0', 'admin', '2020-03-01 17:51:07', 'admin', '2020-04-02 16:02:23', '');
INSERT INTO `sys_dict_data` VALUES (36, 2, '朋友介绍', '2', 'crm_customer_source', '', '', 'N', '0', 'admin', '2020-03-01 17:51:15', 'admin', '2020-04-02 16:02:31', '');
INSERT INTO `sys_dict_data` VALUES (37, 3, '手工录入', '3', 'crm_customer_source', '', '', 'N', '0', 'admin', '2020-03-01 17:51:38', 'admin', '2020-04-02 16:02:37', '');
INSERT INTO `sys_dict_data` VALUES (38, 1, '★', '1', 'crm_customer_degree', '', '', 'N', '0', 'admin', '2020-03-01 18:08:43', 'admin', '2020-04-02 15:57:16', '');
INSERT INTO `sys_dict_data` VALUES (39, 2, '★★', '2', 'crm_customer_degree', '', '', 'N', '0', 'admin', '2020-03-01 18:08:54', 'admin', '2020-04-02 15:57:20', '');
INSERT INTO `sys_dict_data` VALUES (40, 1, '一级', '1', 'crm_customer_priority', '', '', 'N', '0', 'admin', '2020-03-01 18:11:35', 'admin', '2020-03-01 18:25:58', '');
INSERT INTO `sys_dict_data` VALUES (41, 2, '二级', '2', 'crm_customer_priority', NULL, NULL, 'N', '0', 'admin', '2020-03-01 18:11:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 1, '★', '1', 'crm_customer_credit', '', '', 'N', '0', 'admin', '2020-03-01 18:12:50', 'admin', '2020-04-02 16:11:38', '');
INSERT INTO `sys_dict_data` VALUES (43, 2, '★★', '2', 'crm_customer_credit', '', '', 'N', '0', 'admin', '2020-03-01 18:13:06', 'admin', '2020-04-02 16:11:41', '');
INSERT INTO `sys_dict_data` VALUES (44, 1, '已婚', '2', 'marriage', '', '', 'N', '0', 'admin', '2020-03-03 20:33:27', 'admin', '2020-03-03 20:41:31', '');
INSERT INTO `sys_dict_data` VALUES (45, 2, '未婚', '2', 'marriage', '', '', 'N', '0', 'admin', '2020-03-03 20:33:44', 'admin', '2020-03-03 20:41:41', '');
INSERT INTO `sys_dict_data` VALUES (46, 0, '未知', '0', 'marriage', '', '', 'N', '0', 'admin', '2020-03-03 20:34:29', 'admin', '2020-03-03 20:49:58', '');
INSERT INTO `sys_dict_data` VALUES (47, 1, '一级', '1', 'person_decision_level', '', '', 'N', '0', 'admin', '2020-03-03 20:35:20', 'admin', '2020-03-03 20:35:37', '');
INSERT INTO `sys_dict_data` VALUES (48, 2, '二级', '2', 'person_decision_level', NULL, NULL, 'N', '0', 'admin', '2020-03-03 20:35:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 3, '三级', '3', 'person_decision_level', NULL, NULL, 'N', '0', 'admin', '2020-03-03 20:35:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 0, '未知', '0', 'person_decision_level', '', '', 'Y', '0', 'admin', '2020-03-04 13:38:36', 'admin', '2020-03-04 13:38:53', '');
INSERT INTO `sys_dict_data` VALUES (51, 1, '产品投诉', '1', 'complaint_type', '', '', 'N', '0', 'admin', '2020-03-09 15:28:45', 'admin', '2020-03-09 17:32:22', '');
INSERT INTO `sys_dict_data` VALUES (52, 2, '服务投诉', '2', 'complaint_type', NULL, NULL, 'N', '0', 'admin', '2020-03-09 15:28:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (53, 3, '其他', '3', 'complaint_type', '', '', 'Y', '0', 'admin', '2020-03-09 15:29:07', 'admin', '2020-03-09 17:40:11', '');
INSERT INTO `sys_dict_data` VALUES (54, 0, '未解决', '0', 'complaint_status', '', 'danger', 'N', '0', 'admin', '2020-03-09 15:31:03', 'admin', '2020-03-09 17:40:36', '');
INSERT INTO `sys_dict_data` VALUES (55, 1, '解决中', '1', 'complaint_status', '', 'info', 'N', '0', 'admin', '2020-03-09 15:31:14', 'admin', '2020-03-11 18:56:10', '');
INSERT INTO `sys_dict_data` VALUES (56, 2, '已解决', '2', 'complaint_status', '', 'success', 'N', '0', 'admin', '2020-03-09 15:31:25', 'admin', '2020-03-11 18:56:02', '');
INSERT INTO `sys_dict_data` VALUES (57, 1, '已保存', '1', 'visit_Status', NULL, NULL, 'N', '0', 'admin', '2020-03-10 17:35:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 2, '已回访', '2', 'visit_Status', '', 'primary', 'N', '0', 'admin', '2020-03-10 17:35:22', 'admin', '2020-03-10 17:50:02', '');
INSERT INTO `sys_dict_data` VALUES (59, 1, '未跟进', '1', 'follow_status', NULL, NULL, 'N', '0', 'admin', '2020-03-10 18:21:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (60, 2, '已跟进', '2', 'follow_status', NULL, 'primary', 'N', '0', 'admin', '2020-03-10 18:21:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (61, 1, '电话', '1', 'follow_type', NULL, NULL, 'N', '0', 'admin', '2020-03-10 18:22:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 2, 'QQ', '2', 'follow_type', NULL, NULL, 'Y', '0', 'admin', '2020-03-10 18:22:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (63, 3, '微信', '3', 'follow_type', NULL, NULL, 'N', '0', 'admin', '2020-03-10 18:22:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (64, 4, '咖啡店', '4', 'follow_type', NULL, NULL, 'N', '0', 'admin', '2020-03-10 18:22:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (65, 3, '新闻', '3', 'sys_notice_type', '', 'primary', 'N', '0', 'admin', '2020-03-11 14:56:06', 'admin', '2020-03-11 14:56:17', '新闻');
INSERT INTO `sys_dict_data` VALUES (66, 1, '个人客户', '1', 'crm_customer_type', '', 'warning', 'N', '0', 'admin', '2020-03-11 18:35:13', 'admin', '2020-04-02 13:11:14', '');
INSERT INTO `sys_dict_data` VALUES (67, 2, '企业客户', '2', 'crm_customer_type', '', 'success', 'N', '0', 'admin', '2020-03-11 18:35:29', 'admin', '2020-04-02 13:11:09', '');
INSERT INTO `sys_dict_data` VALUES (68, 1, '已保存', '0', 'price_order_status', '', '', 'N', '0', 'admin', '2020-03-12 16:44:35', 'admin', '2020-04-04 20:16:18', '');
INSERT INTO `sys_dict_data` VALUES (69, 1, '已提交', '1', 'price_order_status', '', 'info', 'N', '0', 'admin', '2020-03-12 16:44:54', 'admin', '2020-04-04 20:18:16', '');
INSERT INTO `sys_dict_data` VALUES (70, 1, '未付款', '1', 'order_status', '', '', 'N', '0', 'admin', '2020-03-12 16:51:12', 'admin', '2020-04-05 18:43:58', '');
INSERT INTO `sys_dict_data` VALUES (71, 2, '已付款', '2', 'order_status', '', '', 'N', '0', 'admin', '2020-03-12 16:51:24', 'admin', '2020-04-05 18:44:06', '');
INSERT INTO `sys_dict_data` VALUES (72, 3, '等待发货', '3', 'order_status', '', '', 'N', '0', 'admin', '2020-03-12 16:51:33', 'admin', '2020-04-05 18:44:14', '');
INSERT INTO `sys_dict_data` VALUES (73, 1, '出售中', '1', 'product_status', '', 'primary', 'N', '0', 'admin', '2020-03-12 19:20:51', 'admin', '2020-03-12 20:07:02', '');
INSERT INTO `sys_dict_data` VALUES (74, 2, '下架中', '2', 'product_status', '', 'danger', 'N', '0', 'admin', '2020-03-12 19:21:12', 'admin', '2020-03-12 20:06:26', '');
INSERT INTO `sys_dict_data` VALUES (75, 3, '仓库中', '3', 'product_status', '', 'warning', 'N', '0', 'admin', '2020-03-12 19:21:29', 'admin', '2020-03-12 20:07:07', '');
INSERT INTO `sys_dict_data` VALUES (76, 1, '个', '1', 'product_unit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:22:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (77, 2, '件', '2', 'product_unit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:22:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (78, 3, '吨', '3', 'product_unit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:22:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (79, 4, '匹', '4', 'product_unit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:23:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (80, 1, '办公', '1', 'product_category', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:25:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (81, 2, '运动', '2', 'product_category', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:25:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (82, 3, '电器', '3', 'product_category', NULL, NULL, 'N', '0', 'admin', '2020-03-12 19:26:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (83, 5, '台', '5', 'product_unit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 20:04:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (84, 1, '已供货', '1', 'supplier_status', NULL, 'primary', 'N', '0', 'admin', '2020-03-12 20:23:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (85, 2, '审核中', '2', 'supplier_status', '', 'warning', 'N', '0', 'admin', '2020-03-12 20:23:42', 'admin', '2020-03-12 20:41:55', '');
INSERT INTO `sys_dict_data` VALUES (86, 3, '未供货', '3', 'supplier_status', NULL, 'danger', 'N', '0', 'admin', '2020-03-12 20:23:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 1, '优质', '1', 'supplier_degree', '', 'primary', 'N', '0', 'admin', '2020-03-12 20:24:54', 'admin', '2020-03-12 20:26:07', '');
INSERT INTO `sys_dict_data` VALUES (88, 2, '中等', '2', 'supplier_degree', '', '', 'N', '0', 'admin', '2020-03-12 20:25:02', 'admin', '2020-03-12 20:25:30', '');
INSERT INTO `sys_dict_data` VALUES (89, 3, '普通', '3', 'supplier_degree', '', '', 'N', '0', 'admin', '2020-03-12 20:25:10', 'admin', '2020-03-12 20:25:36', '');
INSERT INTO `sys_dict_data` VALUES (90, 4, '较差', '4', 'supplier_degree', NULL, 'danger', 'N', '0', 'admin', '2020-03-12 20:25:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (91, 3, '★', '1', 'supplier_credit', '', '', 'N', '0', 'admin', '2020-03-12 20:27:00', 'admin', '2020-03-12 20:37:11', '');
INSERT INTO `sys_dict_data` VALUES (92, 2, '★★', '2', 'supplier_credit', NULL, NULL, 'N', '0', 'admin', '2020-03-12 20:27:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (93, 1, '★★★', '3', 'supplier_credit', '', '', 'N', '0', 'admin', '2020-03-12 20:27:16', 'admin', '2020-03-12 20:37:08', '');
INSERT INTO `sys_dict_data` VALUES (94, 1, '暂存', '0', 'order_product_status', '', 'danger', 'N', '0', 'admin', '2020-03-13 20:47:50', 'admin', '2020-03-13 21:20:35', '');
INSERT INTO `sys_dict_data` VALUES (95, 2, '已保存', '1', 'order_product_status', '', 'success', 'N', '0', 'admin', '2020-03-13 20:48:02', 'admin', '2020-03-13 21:33:56', '');
INSERT INTO `sys_dict_data` VALUES (96, 1, '个人', '0', 'phonenumber_type', NULL, NULL, 'N', '0', 'admin', '2020-03-15 09:45:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (97, 2, '公司', '1', 'phonenumber_type', '', '', 'N', '0', 'admin', '2020-03-15 09:45:53', 'admin', '2020-03-15 09:46:09', '');
INSERT INTO `sys_dict_data` VALUES (98, 1, '日报', '1', 'daily_type', NULL, NULL, 'N', '0', 'admin', '2020-03-15 10:34:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (99, 2, '周报', '2', 'daily_type', NULL, NULL, 'N', '0', 'admin', '2020-03-15 10:34:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (100, 3, '月报', '3', 'daily_type', NULL, NULL, 'N', '0', 'admin', '2020-03-15 10:34:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 4, '例会', '4', 'daily_type', NULL, NULL, 'N', '0', 'admin', '2020-03-15 10:34:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '直接入库', '0', 'stock_enter_type', '', 'primary', 'N', '0', 'admin', '2020-03-16 09:15:08', 'admin', '2020-08-21 15:11:51', '');
INSERT INTO `sys_dict_data` VALUES (103, 1, '生产入库', '1', 'stock_enter_type', '', 'success', 'N', '0', 'admin', '2020-03-16 09:15:22', 'admin', '2020-08-22 09:52:47', '');
INSERT INTO `sys_dict_data` VALUES (104, 1, '已保存', '0', 'stock_enter_status', '', 'default', 'N', '0', 'admin', '2020-03-16 09:16:22', 'admin', '2020-03-18 20:45:02', '');
INSERT INTO `sys_dict_data` VALUES (105, 2, '已提交', '1', 'stock_enter_status', '', 'info', 'N', '0', 'admin', '2020-03-16 09:16:30', 'admin', '2020-03-16 10:03:42', '');
INSERT INTO `sys_dict_data` VALUES (106, 3, '已审核', '2', 'stock_enter_status', '', 'success', 'N', '0', 'admin', '2020-03-16 09:16:47', 'admin', '2020-03-26 08:38:36', '');
INSERT INTO `sys_dict_data` VALUES (107, 1, '已保存', '0', 'stock_out_status', '', 'default', 'N', '0', 'admin', '2020-03-16 14:15:18', 'admin', '2020-03-18 20:45:13', '');
INSERT INTO `sys_dict_data` VALUES (108, 2, '已提交', '1', 'stock_out_status', NULL, 'info', 'N', '0', 'admin', '2020-03-16 14:15:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 3, '已审核', '2', 'stock_out_status', '', 'success', 'Y', '0', 'admin', '2020-03-16 14:15:53', 'admin', '2020-03-26 08:38:27', '');
INSERT INTO `sys_dict_data` VALUES (110, 0, '直接出库', '0', 'stock_out_type', '', 'primary', 'N', '0', 'admin', '2020-03-16 14:16:35', 'admin', '2020-08-22 08:57:15', '');
INSERT INTO `sys_dict_data` VALUES (111, 1, '订单送货', '1', 'stock_out_type', '', 'info', 'N', '0', 'admin', '2020-03-16 14:16:58', 'admin', '2020-08-14 11:04:48', '');
INSERT INTO `sys_dict_data` VALUES (112, 2, '采购入库', '2', 'stock_enter_type', '', 'info', 'N', '0', 'admin', '2020-03-16 15:23:25', 'admin', '2020-08-22 09:52:56', '');
INSERT INTO `sys_dict_data` VALUES (113, 1, '技术开发', '0', 'contract_type', NULL, NULL, 'N', '0', 'admin', '2020-03-18 18:28:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 2, '代理记账', '1', 'contract_type', NULL, NULL, 'N', '0', 'admin', '2020-03-18 18:28:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 1, '已保存', '0', 'contract_status', NULL, NULL, 'N', '0', 'admin', '2020-03-18 18:29:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 2, '已提交', '1', 'contract_status', '', 'info', 'N', '0', 'admin', '2020-03-18 18:29:45', 'admin', '2020-03-18 20:45:36', '');
INSERT INTO `sys_dict_data` VALUES (117, 3, '已审核', '2', 'contract_status', '', 'success', 'N', '0', 'admin', '2020-03-18 18:30:23', 'admin', '2020-03-18 20:46:01', '');
INSERT INTO `sys_dict_data` VALUES (118, 4, '已驳回', '3', 'contract_status', '', 'danger', 'N', '0', 'admin', '2020-03-18 18:30:37', 'admin', '2020-03-18 20:46:09', '');
INSERT INTO `sys_dict_data` VALUES (119, 5, '执行中', '4', 'contract_status', '', 'primary', 'N', '0', 'admin', '2020-03-18 18:30:47', 'admin', '2020-03-18 20:47:12', '');
INSERT INTO `sys_dict_data` VALUES (120, 6, '已完成', '5', 'contract_status', '', 'success', 'N', '0', 'admin', '2020-03-18 18:31:10', 'admin', '2020-03-26 17:33:28', '合同结束后，一个月内');
INSERT INTO `sys_dict_data` VALUES (121, 1, '阶段付款', '0', 'contract_pay_method', NULL, NULL, 'N', '0', 'admin', '2020-03-18 18:33:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 2, '周期付款', '1', 'contract_pay_method', NULL, NULL, 'N', '0', 'admin', '2020-03-18 18:33:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 7, '已失效', '6', 'contract_status', '', 'danger', 'N', '0', 'admin', '2020-03-18 20:43:12', 'admin', '2020-03-26 17:33:34', '合同结束后，一个月外');
INSERT INTO `sys_dict_data` VALUES (124, 4, '已驳回', '3', 'stock_enter_status', '', 'danger', 'N', '0', 'admin', '2020-03-18 20:44:01', 'admin', '2020-03-18 20:44:51', '');
INSERT INTO `sys_dict_data` VALUES (125, 4, '已驳回', '3', 'stock_out_status', '', 'danger', 'N', '0', 'admin', '2020-03-18 20:44:19', 'admin', '2020-03-18 20:44:39', '');
INSERT INTO `sys_dict_data` VALUES (126, 1, '现金', '1', 'pay_type', '', '', 'N', '0', 'admin', '2020-03-22 16:44:33', 'admin', '2020-04-05 19:09:13', '');
INSERT INTO `sys_dict_data` VALUES (127, 2, '支票', '2', 'pay_type', '', '', 'N', '0', 'admin', '2020-03-22 16:44:43', 'admin', '2020-04-05 19:09:19', '');
INSERT INTO `sys_dict_data` VALUES (128, 3, '网上银行', '3', 'pay_type', '', '', 'N', '0', 'admin', '2020-03-22 16:44:52', 'admin', '2020-04-05 19:09:30', '');
INSERT INTO `sys_dict_data` VALUES (129, 4, '电汇', '4', 'pay_type', '', '', 'N', '0', 'admin', '2020-03-22 16:45:11', 'admin', '2020-04-05 19:09:39', '');
INSERT INTO `sys_dict_data` VALUES (130, 1, '已保存', '0', 'pay_status', NULL, 'warning', 'N', '0', 'admin', '2020-03-22 16:47:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (131, 2, '已提交', '1', 'pay_status', NULL, 'info', 'Y', '0', 'admin', '2020-03-22 16:47:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (132, 3, '已审核', '2', 'pay_status', '', 'success', 'Y', '0', 'admin', '2020-03-22 16:47:29', 'admin', '2020-03-25 13:00:21', '');
INSERT INTO `sys_dict_data` VALUES (133, 4, '已驳回', '3', 'pay_status', NULL, 'danger', 'N', '0', 'admin', '2020-03-22 16:48:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (134, 1, '不需要', '0', 'is_invoice', NULL, NULL, 'N', '0', 'admin', '2020-03-22 17:02:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (135, 2, '需要', '1', 'is_invoice', NULL, NULL, 'N', '0', 'admin', '2020-03-22 17:02:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (136, 1, '增值税普票', '0', 'invoice_type', NULL, NULL, 'N', '0', 'admin', '2020-03-25 13:51:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (137, 2, '增值税专票', '1', 'invoice_type', NULL, NULL, 'N', '0', 'admin', '2020-03-25 13:51:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (138, 1, '已保存', '0', 'invoice_status', NULL, NULL, 'N', '0', 'admin', '2020-03-25 13:53:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (139, 2, '已提交', '1', 'invoice_status', '', 'info', 'N', '0', 'admin', '2020-03-25 13:54:08', 'admin', '2020-03-25 13:55:06', '');
INSERT INTO `sys_dict_data` VALUES (140, 3, '已审核', '2', 'invoice_status', '', 'success', 'N', '0', 'admin', '2020-03-25 13:54:19', 'admin', '2020-03-25 13:55:31', '');
INSERT INTO `sys_dict_data` VALUES (141, 4, '已驳回', '3', 'invoice_status', '', 'danger', 'N', '0', 'admin', '2020-03-25 13:54:31', 'admin', '2020-03-25 13:55:37', '');
INSERT INTO `sys_dict_data` VALUES (142, 5, '已开票', '4', 'invoice_status', '', 'primary', 'N', '0', 'admin', '2020-03-25 13:54:46', 'admin', '2020-03-25 13:55:46', '');
INSERT INTO `sys_dict_data` VALUES (143, 1, 'A+：明确成交意向', '1', 'crm_customer_maturity', '', '', 'N', '0', 'admin', '2020-04-02 12:30:40', 'admin', '2020-04-02 16:07:04', '');
INSERT INTO `sys_dict_data` VALUES (144, 2, 'A-：有初步成交意向', '2', 'crm_customer_maturity', '', '', 'N', '0', 'admin', '2020-04-02 12:30:50', 'admin', '2020-04-02 16:07:12', '');
INSERT INTO `sys_dict_data` VALUES (145, 1, '普通客户', '1', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:03:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (146, 2, 'VIP客户', '2', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:03:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (147, 3, '老客户', '3', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:03:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (148, 4, '代理商', '4', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:04:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (149, 5, '供货商', '5', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:04:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (150, 6, '合作伙伴', '6', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:04:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (151, 7, '其他', '7', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 14:04:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (152, 1, '身份证', '1', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:26:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (153, 2, '军官证', '2', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:26:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (154, 3, '护照', '3', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:26:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (155, 4, '同胞证', '4', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:26:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (156, 5, '回乡证', '5', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:27:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (157, 6, '其他证件', '6', 'id_type', NULL, NULL, 'N', '0', 'admin', '2020-04-02 15:27:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (158, 3, '★★★', '3', 'crm_customer_degree', NULL, NULL, 'Y', '0', 'admin', '2020-04-02 15:57:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (159, 4, '★★★★', '4', 'crm_customer_degree', NULL, NULL, 'Y', '0', 'admin', '2020-04-02 15:57:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (160, 5, '★★★★★', '5', 'crm_customer_degree', NULL, NULL, 'Y', '0', 'admin', '2020-04-02 15:57:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (161, 0, '未知', '0', 'crm_customer_degree', NULL, NULL, 'Y', '0', 'admin', '2020-04-02 15:58:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (162, 4, '失败客户', '4', 'crm_customer_status', '', 'warning', 'N', '0', 'admin', '2020-04-02 16:00:03', 'admin', '2020-04-08 11:36:46', '');
INSERT INTO `sys_dict_data` VALUES (163, 5, '已流失客户', '5', 'crm_customer_status', '', 'danger', 'Y', '0', 'admin', '2020-04-02 16:00:11', 'admin', '2020-04-08 11:36:50', '');
INSERT INTO `sys_dict_data` VALUES (164, 0, '未知', '0', 'crm_customer_status', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:00:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (165, 4, '失败客户', '4', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:02:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (166, 5, '行业展会', '5', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (167, 6, '客户介绍', '6', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (168, 7, '电子商务', '7', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (169, 8, '合作伙伴', '8', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (170, 9, '广告', '9', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (171, 10, '职员引介', '10', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:03:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (172, 11, '市场活动', '11', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (173, 12, '公共关系', '12', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (174, 13, '口头传达', '13', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (175, 14, '研讨会', '14', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (176, 15, '其它', '15', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (177, 0, '未知', '0', 'crm_customer_source', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:04:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (178, 0, '未知', '0', 'crm_customer_category', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:06:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (179, 3, 'B+：关键人有成交意向', '3', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:07:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (180, 4, 'B-：关键人成交意向不确定', '4', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:07:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (181, 5, 'C+：初步联系，有意向', '5', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:07:43', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (182, 6, 'C-：初步联系，意向不确定', '6', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:07:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (183, 7, 'D：新建客户', '7', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:08:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (184, 8, 'E：明显拒绝', '8', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:08:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (185, 9, 'F：无效客户', '9', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:08:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (186, 0, '未知', '0', 'crm_customer_maturity', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:08:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (187, 0, '未知', '0', 'crm_customer_priority', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:11:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (188, 3, '★★★', '3', 'crm_customer_credit', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:11:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (189, 4, '★★★★', '4', 'crm_customer_credit', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:11:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (190, 5, '★★★★★', '5', 'crm_customer_credit', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:12:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (191, 0, '未知', '0', 'crm_customer_credit', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:12:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (192, 4, '家居用品', '4', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:13:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (193, 5, '电工电气', '5', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:14:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (194, 6, '建筑、建材', '6', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:14:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (195, 7, '五金、工具', '7', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:14:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (196, 8, '纺织、皮革', '8', 'industry', NULL, NULL, 'Y', '0', 'admin', '2020-04-02 16:32:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (197, 0, '未知', '0', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 16:32:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (198, 9, '包装', '9', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:34:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (199, 10, '橡塑', '10', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:34:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (200, 11, '化工', '11', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:34:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (201, 12, '服装', '12', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:34:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (202, 13, '办公、文教', '13', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:35:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (203, 14, '冶金矿产', '14', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:35:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (204, 15, '数码、电脑', '15', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:35:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (205, 16, '服饰', '16', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:35:43', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (206, 17, '运动、休闲', '17', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:35:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (207, 18, '传媒、广电', '18', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (208, 19, '精细化学品', '19', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (209, 20, '安全、防护', '20', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (210, 21, '照明工业', '21', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (211, 22, '仪器仪表', '22', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (212, 23, '农业', '23', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (213, 24, '汽摩及配件', '24', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:36:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (214, 25, '通信产品', '25', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (215, 26, '环保', '26', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (216, 27, '食品、饮料', '27', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (217, 28, '加工', '28', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (218, 29, '玩具', '29', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (219, 30, '家用电器', '30', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:37:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (220, 31, '交通运输', '31', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:38:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (221, 32, '医药、保养', '32', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:38:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (222, 33, '商务服务', '33', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:38:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (223, 34, '印刷', '34', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:38:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (224, 35, '能源', '35', 'industry', '', '', 'N', '0', 'admin', '2020-04-02 18:38:37', 'admin', '2020-04-02 18:38:42', '');
INSERT INTO `sys_dict_data` VALUES (225, 36, '代理', '36', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:39:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (226, 37, '纸业', '37', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:39:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (227, 38, '其它行业', '38', 'industry', NULL, NULL, 'N', '0', 'admin', '2020-04-02 18:39:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (230, 2, '已审核', '2', 'price_order_status', '', 'success', 'N', '0', 'admin', '2020-04-04 20:17:12', 'admin', '2020-04-04 20:18:24', '');
INSERT INTO `sys_dict_data` VALUES (231, 3, '已驳回', '3', 'price_order_status', NULL, 'danger', 'N', '0', 'admin', '2020-04-04 20:17:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (232, 4, '已作废', '4', 'price_order_status', '', 'warning', 'N', '0', 'admin', '2020-04-04 20:17:50', 'admin', '2020-04-04 20:18:31', '');
INSERT INTO `sys_dict_data` VALUES (233, 5, '已报价', '5', 'price_order_status', '', 'success', 'N', '0', 'admin', '2020-04-04 20:18:02', 'admin', '2020-04-04 20:58:55', '');
INSERT INTO `sys_dict_data` VALUES (234, 6, '已转订单', '6', 'price_order_status', '', 'primary', 'N', '0', 'admin', '2020-04-04 20:58:30', 'admin', '2020-04-04 20:58:42', '');
INSERT INTO `sys_dict_data` VALUES (235, 0, '未知', '0', 'order_status', '', '', 'N', '0', 'admin', '2020-04-05 18:40:14', 'admin', '2020-04-05 18:43:51', '');
INSERT INTO `sys_dict_data` VALUES (236, 4, '已发货', '4', 'order_status', '', '', 'N', '0', 'admin', '2020-04-05 18:40:55', 'admin', '2020-04-05 18:44:22', '');
INSERT INTO `sys_dict_data` VALUES (237, 5, '调试安装', '5', 'order_status', '', '', 'N', '0', 'admin', '2020-04-05 18:41:12', 'admin', '2020-04-05 18:44:29', '');
INSERT INTO `sys_dict_data` VALUES (238, 6, '已完结', '6', 'order_status', NULL, NULL, 'N', '0', 'admin', '2020-04-05 18:44:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (239, 0, '未知', '0', 'pay_type', NULL, NULL, 'N', '0', 'admin', '2020-04-05 19:08:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (240, 5, '邮局汇款', '5', 'pay_type', NULL, NULL, 'N', '0', 'admin', '2020-04-05 19:10:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (241, 6, '支付宝', '6', 'pay_type', NULL, NULL, 'N', '0', 'admin', '2020-04-05 19:10:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (242, 7, '微信', '7', 'pay_type', NULL, NULL, 'N', '0', 'admin', '2020-04-05 19:10:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (243, 8, '其他', '8', 'pay_type', NULL, NULL, 'N', '0', 'admin', '2020-04-05 19:10:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (244, 0, '已保存', '0', 'clue_status', '', '', 'N', '0', 'admin', '2020-04-06 14:07:08', 'admin', '2020-04-06 14:16:05', '');
INSERT INTO `sys_dict_data` VALUES (245, 1, '已作废', '1', 'clue_status', '', 'danger', 'N', '0', 'admin', '2020-04-06 14:07:18', 'admin', '2020-04-06 14:16:17', '');
INSERT INTO `sys_dict_data` VALUES (246, 2, '已转客户', '2', 'clue_status', NULL, 'primary', 'N', '0', 'admin', '2020-04-06 14:16:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (247, 0, '已保存', '0', 'contract_apply_status', NULL, NULL, 'N', '0', 'admin', '2020-04-10 12:12:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (248, 1, '已提交', '1', 'contract_apply_status', '', 'info', 'N', '0', 'admin', '2020-04-10 12:12:33', 'admin', '2020-04-10 12:13:12', '');
INSERT INTO `sys_dict_data` VALUES (249, 2, '已审核', '2', 'contract_apply_status', '', 'success', 'N', '0', 'admin', '2020-04-10 12:12:49', 'admin', '2020-04-10 12:13:20', '');
INSERT INTO `sys_dict_data` VALUES (250, 3, '已驳回', '3', 'contract_apply_status', NULL, 'danger', 'N', '0', 'admin', '2020-04-10 12:13:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (251, 4, '已归档', '4', 'contract_apply_status', NULL, 'primary', 'N', '0', 'admin', '2020-04-10 12:13:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (252, 0, '未知', '0', 'pay_times', NULL, NULL, 'N', '0', 'admin', '2020-04-12 19:21:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (253, 1, '首期款', '1', 'pay_times', NULL, NULL, 'N', '0', 'admin', '2020-04-12 19:22:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (254, 2, '第二期', '2', 'pay_times', NULL, NULL, 'N', '0', 'admin', '2020-04-12 19:22:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (255, 3, '第三期', '3', 'pay_times', NULL, NULL, 'N', '0', 'admin', '2020-04-12 19:22:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (256, 4, '第四期', '4', 'pay_times', NULL, NULL, 'N', '0', 'admin', '2020-04-12 19:22:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (257, 0, '已保存', '0', 'plan_status', NULL, NULL, 'N', '0', 'admin', '2020-04-13 17:31:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (258, 1, '已回款', '1', 'plan_status', '', 'primary', 'N', '0', 'admin', '2020-04-13 17:31:59', 'admin', '2020-04-13 17:32:32', '');
INSERT INTO `sys_dict_data` VALUES (259, 2, '已过期', '2', 'plan_status', NULL, 'danger', 'N', '0', 'admin', '2020-04-13 17:32:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (260, 0, '收取', '0', 'fee_type', '', 'danger', 'N', '0', 'admin', '2020-04-15 12:32:30', 'admin', '2020-04-19 12:39:39', '');
INSERT INTO `sys_dict_data` VALUES (261, 1, '支出', '1', 'fee_type', '', 'success', 'N', '0', 'admin', '2020-04-15 12:32:38', 'admin', '2020-04-19 12:39:33', '');
INSERT INTO `sys_dict_data` VALUES (262, 0, '已保存', '0', 'fee_status', NULL, NULL, 'N', '0', 'admin', '2020-04-15 12:35:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (263, 0, '未启用', '0', 'storage_status', NULL, 'danger', 'N', '0', 'admin', '2020-07-30 11:11:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (264, 1, '启用', '1', 'storage_status', NULL, 'primary', 'Y', '0', 'admin', '2020-07-30 11:11:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (265, 0, '已保存', '0', 'allocation_status', NULL, NULL, 'N', '0', 'admin', '2020-08-12 13:53:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (266, 1, '已提交', '1', 'allocation_status', '', 'primary', 'N', '0', 'admin', '2020-08-12 13:53:54', 'admin', '2020-08-12 13:54:27', '');
INSERT INTO `sys_dict_data` VALUES (267, 2, '已审核', '2', 'allocation_status', '', 'success', 'N', '0', 'admin', '2020-08-12 13:54:03', 'admin', '2020-08-12 13:54:23', '');
INSERT INTO `sys_dict_data` VALUES (268, 3, '已驳回', '3', 'allocation_status', NULL, 'danger', 'N', '0', 'admin', '2020-08-12 13:54:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (269, 0, '直接入库', '0', 'stock_history_type', '', 'primary', 'N', '0', 'admin', '2020-08-13 18:44:06', 'admin', '2020-08-21 17:30:07', '');
INSERT INTO `sys_dict_data` VALUES (270, 1, '直接出库', '1', 'stock_history_type', '', 'success', 'N', '0', 'admin', '2020-08-13 18:44:17', 'admin', '2020-08-21 17:30:14', '');
INSERT INTO `sys_dict_data` VALUES (271, 2, '调拨入库', '2', 'stock_history_type', '', 'info', 'N', '0', 'admin', '2020-08-13 18:44:29', 'admin', '2020-08-13 19:35:11', '');
INSERT INTO `sys_dict_data` VALUES (272, 3, '调拨出库', '3', 'stock_history_type', NULL, 'warning', 'N', '0', 'admin', '2020-08-13 19:35:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (273, 2, '调拨出库', '2', 'stock_out_type', '', 'warning', 'N', '0', 'admin', '2020-08-14 11:00:35', 'admin', '2020-08-14 11:04:37', '');
INSERT INTO `sys_dict_data` VALUES (274, 3, '盘点出库', '3', 'stock_out_type', '', 'success', 'N', '0', 'admin', '2020-08-14 11:01:09', 'admin', '2020-08-14 11:05:06', '');
INSERT INTO `sys_dict_data` VALUES (275, 3, '调拨入库', '3', 'stock_enter_type', '', 'warning', 'N', '0', 'admin', '2020-08-14 11:02:21', 'admin', '2020-08-14 11:06:05', '');
INSERT INTO `sys_dict_data` VALUES (276, 4, '盘点入库', '4', 'stock_enter_type', '', 'success', 'N', '0', 'admin', '2020-08-14 11:02:31', 'admin', '2020-08-14 11:06:22', '');
INSERT INTO `sys_dict_data` VALUES (277, 0, '已保存', '0', 'stock_check_status', NULL, NULL, 'N', '0', 'admin', '2020-08-14 12:25:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (278, 1, '已提交', '1', 'stock_check_status', '', 'primary', 'N', '0', 'admin', '2020-08-14 12:25:42', 'admin', '2020-08-14 12:26:34', '');
INSERT INTO `sys_dict_data` VALUES (279, 2, '已审核', '2', 'stock_check_status', '', 'success', 'N', '0', 'admin', '2020-08-14 12:25:56', 'admin', '2020-08-14 12:26:40', '');
INSERT INTO `sys_dict_data` VALUES (280, 3, '已驳回', '3', 'stock_check_status', NULL, 'danger', 'N', '0', 'admin', '2020-08-14 12:26:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (281, 4, '盘点入库', '4', 'stock_history_type', NULL, 'primary', 'Y', '0', 'admin', '2020-08-14 12:30:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (282, 5, '盘点出库', '5', 'stock_history_type', NULL, 'success', 'N', '0', 'admin', '2020-08-14 12:31:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (283, 4, '采购退货', '4', 'stock_out_type', NULL, 'info', 'N', '0', 'admin', '2020-08-22 08:57:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (284, 5, '产品退货', '5', 'stock_enter_type', '', 'primary', 'N', '0', 'admin', '2020-08-22 09:52:10', 'admin', '2020-08-22 09:53:03', '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '行业', 'industry', '0', 'admin', '2020-03-01 17:41:05', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (12, '客户状态', 'crm_customer_status', '0', 'admin', '2020-03-01 17:48:28', 'admin', '2020-03-01 17:48:46', '');
INSERT INTO `sys_dict_type` VALUES (13, '客户来源', 'crm_customer_source', '0', 'admin', '2020-03-01 17:50:07', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '客户等级', 'crm_customer_degree', '0', 'admin', '2020-03-01 17:52:01', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (15, '客户优先级', 'crm_customer_priority', '0', 'admin', '2020-03-01 18:11:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '客户信誉度', 'crm_customer_credit', '0', 'admin', '2020-03-01 18:12:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, '婚姻情况', 'marriage', '0', 'admin', '2020-03-03 20:33:09', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '联系人决策等级', 'person_decision_level', '0', 'admin', '2020-03-03 20:35:07', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (19, '客户投诉类型', 'complaint_type', '0', 'admin', '2020-03-09 15:28:09', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (20, '客户投诉状态', 'complaint_status', '0', 'admin', '2020-03-09 15:30:45', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (21, '客户拜访状态', 'visit_Status', '0', 'admin', '2020-03-10 17:34:20', 'admin', '2020-03-10 17:34:28', '');
INSERT INTO `sys_dict_type` VALUES (22, '客户跟进状态', 'follow_status', '0', 'admin', '2020-03-10 18:20:58', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (23, '客户跟进类型', 'follow_type', '0', 'admin', '2020-03-10 18:21:52', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (24, '客户类型', 'crm_customer_type', '0', 'admin', '2020-03-11 18:34:49', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (25, '报价单状态', 'price_order_status', '0', 'admin', '2020-03-12 16:44:14', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (26, '订单状态', 'order_status', '0', 'admin', '2020-03-12 16:47:31', '', NULL, '订单状态');
INSERT INTO `sys_dict_type` VALUES (27, '产品状态', 'product_status', '0', 'admin', '2020-03-12 19:20:34', '', NULL, '产品状态');
INSERT INTO `sys_dict_type` VALUES (28, '产品计量单位', 'product_unit', '0', 'admin', '2020-03-12 19:21:59', '', NULL, '产品计量单位');
INSERT INTO `sys_dict_type` VALUES (29, '产品类别', 'product_category', '0', 'admin', '2020-03-12 19:24:09', '', NULL, '产品类别');
INSERT INTO `sys_dict_type` VALUES (30, '供应商状态', 'supplier_status', '0', 'admin', '2020-03-12 20:23:08', '', NULL, '供应商状态');
INSERT INTO `sys_dict_type` VALUES (31, '供应商等级', 'supplier_degree', '0', 'admin', '2020-03-12 20:24:42', '', NULL, '供应商等级');
INSERT INTO `sys_dict_type` VALUES (32, '供应商信誉度', 'supplier_credit', '0', 'admin', '2020-03-12 20:26:34', '', NULL, '供应商信誉度');
INSERT INTO `sys_dict_type` VALUES (33, '订单（报价单）关联产品状态', 'order_product_status', '0', 'admin', '2020-03-13 20:47:32', '', NULL, '订单（报价单）关联产品状态');
INSERT INTO `sys_dict_type` VALUES (34, '电话本电话类型', 'phonenumber_type', '0', 'admin', '2020-03-15 09:45:20', '', NULL, '电话本电话类型');
INSERT INTO `sys_dict_type` VALUES (35, '个人中心-日报类型', 'daily_type', '0', 'admin', '2020-03-15 10:33:56', '', NULL, '个人中心-日报类型');
INSERT INTO `sys_dict_type` VALUES (36, '产品入库类型', 'stock_enter_type', '0', 'admin', '2020-03-16 09:14:52', '', NULL, '产品入库类型');
INSERT INTO `sys_dict_type` VALUES (37, '产品入库状态', 'stock_enter_status', '0', 'admin', '2020-03-16 09:16:08', '', NULL, '产品入库状态');
INSERT INTO `sys_dict_type` VALUES (38, '产品出库状态', 'stock_out_status', '0', 'admin', '2020-03-16 14:14:57', 'admin', '2020-03-16 14:15:03', '产品出库状态');
INSERT INTO `sys_dict_type` VALUES (39, '产品出库类型', 'stock_out_type', '0', 'admin', '2020-03-16 14:16:19', '', NULL, '产品出库类型');
INSERT INTO `sys_dict_type` VALUES (40, '合同类型', 'contract_type', '0', 'admin', '2020-03-18 18:28:05', '', NULL, '合同类型');
INSERT INTO `sys_dict_type` VALUES (41, '合同状态', 'contract_status', '0', 'admin', '2020-03-18 18:29:02', '', NULL, '合同状态');
INSERT INTO `sys_dict_type` VALUES (42, '合同付款方式', 'contract_pay_method', '0', 'admin', '2020-03-18 18:33:17', 'admin', '2020-03-22 16:45:54', '合同付款方式');
INSERT INTO `sys_dict_type` VALUES (43, '付款方式', 'pay_type', '0', 'admin', '2020-03-22 16:42:48', 'admin', '2020-03-22 16:45:45', '付款方式');
INSERT INTO `sys_dict_type` VALUES (44, '付款状态', 'pay_status', '0', 'admin', '2020-03-22 16:46:46', '', NULL, '付款状态');
INSERT INTO `sys_dict_type` VALUES (45, '是否需要发票', 'is_invoice', '0', 'admin', '2020-03-22 17:02:15', '', NULL, '是否需要发票');
INSERT INTO `sys_dict_type` VALUES (46, '发票类型', 'invoice_type', '0', 'admin', '2020-03-25 13:50:54', '', NULL, '发票类型');
INSERT INTO `sys_dict_type` VALUES (47, '发票状态', 'invoice_status', '0', 'admin', '2020-03-25 13:52:02', '', NULL, '发票状态');
INSERT INTO `sys_dict_type` VALUES (48, '客户成熟度', 'crm_customer_maturity', '0', 'admin', '2020-04-02 12:30:22', '', NULL, '客户成熟度');
INSERT INTO `sys_dict_type` VALUES (49, '客户类别', 'crm_customer_category', '0', 'admin', '2020-04-02 14:02:22', 'admin', '2020-04-02 15:03:47', '客户类别');
INSERT INTO `sys_dict_type` VALUES (50, '身份证类型', 'id_type', '0', 'admin', '2020-04-02 15:26:00', '', NULL, '身份证类型');
INSERT INTO `sys_dict_type` VALUES (51, '线索状态', 'clue_status', '0', 'admin', '2020-04-06 14:05:42', '', NULL, '线索状态');
INSERT INTO `sys_dict_type` VALUES (52, '合同申请状态', 'contract_apply_status', '0', 'admin', '2020-04-10 11:55:44', '', NULL, '合同申请状态');
INSERT INTO `sys_dict_type` VALUES (53, '付款期次', 'pay_times', '0', 'admin', '2020-04-12 19:21:19', '', NULL, '付款期次');
INSERT INTO `sys_dict_type` VALUES (54, '计划回款状态', 'plan_status', '0', 'admin', '2020-04-13 17:18:32', '', NULL, '计划回款状态');
INSERT INTO `sys_dict_type` VALUES (55, '费用收支类型', 'fee_type', '0', 'admin', '2020-04-15 12:32:09', 'admin', '2020-04-15 12:36:00', '收支类型');
INSERT INTO `sys_dict_type` VALUES (56, '费用收支状态', 'fee_status', '0', 'admin', '2020-04-15 12:35:13', '', NULL, '费用收支状态');
INSERT INTO `sys_dict_type` VALUES (57, '仓库状态', 'storage_status', '0', 'admin', '2020-07-30 11:10:57', '', NULL, '仓库状态');
INSERT INTO `sys_dict_type` VALUES (58, '调拨状态', 'allocation_status', '0', 'admin', '2020-08-12 13:53:15', '', NULL, '调拨状态');
INSERT INTO `sys_dict_type` VALUES (59, '库存记录类型', 'stock_history_type', '0', 'admin', '2020-08-13 18:43:46', '', NULL, '库存记录类型');
INSERT INTO `sys_dict_type` VALUES (60, '库存盘点状态', 'stock_check_status', '0', 'admin', '2020-08-14 12:25:22', '', NULL, '库存盘点状态');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (4, '更新合同状态', 'DEFAULT', 'crmTask.updateContractStatus()', '0/10 * * * * ?', '3', '1', '1', 'admin', '2020-03-26 17:13:18', 'admin', '2020-09-03 14:02:15', '* 更新合同的状态\r\n        * 2  已审核\r\n        * 4  执行中 在合同期内\r\n        * 5  已完成 过期一个月内\r\n        * 6  已失效 过期一个月外');
INSERT INTO `sys_job` VALUES (6, '超过30天未跟进客户转为公客', 'DEFAULT', 'crmTask.convertCrmCustomerToPublic()', '/10 * * * * ?', '2', '1', '1', 'admin', '2020-09-03 15:38:10', 'admin', '2020-09-03 16:10:29', '超过30天未跟进客户转为公客');
INSERT INTO `sys_job` VALUES (7, '超过30天未跟进的线索转入线索池', 'DEFAULT', 'crmTask.convertCrmClueToPublic()', '/10 * * * * ?', '2', '1', '1', 'admin', '2020-09-03 16:32:39', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '超过30天未跟进客户转为公客', 'DEFAULT', 'crmtask.convertCrmCustomerToPublic()', '超过30天未跟进客户转为公客 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'crmtask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:772)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1221)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:294)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)\r\n	at com.selected.common.utils.spring.SpringUtils.getBean(SpringUtils.java:38)\r\n	at com.selected.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.selected.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at com.selected.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:44)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2020-09-03 16:09:45');
INSERT INTO `sys_job_log` VALUES (2, '超过30天未跟进客户转为公客', 'DEFAULT', 'crmTask.convertCrmCustomerToPublic()', '超过30天未跟进客户转为公客 总共耗时：6毫秒', '1', 'java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n	at java.lang.reflect.Method.invoke(Unknown Source)\r\n	at com.selected.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:62)\r\n	at com.selected.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:34)\r\n	at com.selected.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:20)\r\n	at com.selected.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:44)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: org.apache.ibatis.binding.BindingException: Invalid bound statement (not found): com.selected.crm.mapper.CrmCustomerMapper.selectCrmCustomerListNoFollow\r\n	at org.apache.ibatis.binding.MapperMethod$SqlCommand.<init>(MapperMethod.java:227)\r\n	at org.apache.ibatis.binding.MapperMethod.<init>(MapperMethod.java:49)\r\n	at org.apache.ibatis.binding.MapperProxy.cachedMapperMethod(MapperProxy.java:65)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:58)\r\n	at com.sun.proxy.$Proxy837.selectCrmCustomerListNoFollow(Unknown Source)\r\n	at com.selected.crm.service.impl.CrmCustomerServiceImpl.convertCrmCustomerToPublic(CrmCustomerServiceImpl.java:462)\r\n	at com.selected.crm.service.impl.CrmCustomerServiceImpl$$FastClassBySpringCGLIB$$f65c0e65.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:93)\r\n	a', '2020-09-03 16:10:33');
INSERT INTO `sys_job_log` VALUES (3, '超过30天未跟进客户转为公客', 'DEFAULT', 'crmTask.convertCrmCustomerToPublic()', '超过30天未跟进客户转为公客 总共耗时：42毫秒', '0', '', '2020-09-03 16:11:35');
INSERT INTO `sys_job_log` VALUES (4, '超过30天未跟进的线索转入线索池', 'DEFAULT', 'crmTask.convertCrmClueToPublic();', '超过30天未跟进的线索转入线索池 总共耗时：30毫秒', '0', '', '2020-09-03 16:41:35');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12911 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 800, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-11 19:22:17', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 900, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-11 19:22:12', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 1000, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-11 19:22:06', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '公告', 1141, 1, '/system/notice', 'menuItem', 'C', '0', 'system:notice:view', 'fa fa-address-book-o', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-12 09:58:44', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1062, '客户【功能】', 1068, 30, '/crm/customer', 'menuItem', 'F', '0', '', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:40:13', '客户菜单');
INSERT INTO `sys_menu` VALUES (1064, '客户新增', 1062, 2, '#', '', 'F', '0', 'crm:customer:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1065, '客户修改', 1062, 3, '#', '', 'F', '0', 'crm:customer:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1066, '客户删除', 1062, 4, '#', '', 'F', '0', 'crm:customer:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1067, '客户导出', 1062, 6, '#', 'menuItem', 'F', '0', 'crm:customer:export', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-11 20:25:21', '');
INSERT INTO `sys_menu` VALUES (1068, 'CRM', 0, 200, '#', 'menuItem', 'M', '0', '', 'fa fa-address-book-o', 'admin', '2020-03-01 17:16:08', 'admin', '2020-04-10 09:52:23', '');
INSERT INTO `sys_menu` VALUES (1069, '客户联系人【功能】', 1068, 32, '/crm/person', 'menuItem', 'F', '1', 'crm:person:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-18 14:12:41', '联系人菜单');
INSERT INTO `sys_menu` VALUES (1070, '客户联系人查询', 1069, 11, '#', 'menuItem', 'F', '0', 'crm:person:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-18 13:10:24', '');
INSERT INTO `sys_menu` VALUES (1071, '客户联系人新增', 1069, 12, '#', '', 'F', '0', 'crm:person:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1072, '客户联系人修改', 1069, 13, '#', 'menuItem', 'F', '0', 'crm:person:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-18 13:11:05', '');
INSERT INTO `sys_menu` VALUES (1073, '客户联系人删除', 1069, 14, '#', '', 'F', '0', 'crm:person:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1074, '客户联系人导出', 1069, 15, '#', '', 'F', '0', 'crm:person:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1075, '客户投诉', 1068, 20, '/crm/complaint', 'menuItem', 'C', '0', 'crm:complaint:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:31:29', '客户投诉菜单');
INSERT INTO `sys_menu` VALUES (1076, '客户投诉管理查询', 1075, 21, '#', '', 'F', '0', 'crm:complaint:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1077, '客户投诉管理新增', 1075, 22, '#', '', 'F', '0', 'crm:complaint:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1078, '客户投诉管理修改', 1075, 23, '#', '', 'F', '0', 'crm:complaint:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1079, '客户投诉管理删除', 1075, 24, '#', '', 'F', '0', 'crm:complaint:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1080, '客户投诉管理导出', 1075, 25, '#', '', 'F', '0', 'crm:complaint:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1081, '客户拜访【功能】', 1068, 34, '/crm/visit', 'menuItem', 'F', '1', 'crm:visit:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-18 13:18:49', '客户拜访菜单');
INSERT INTO `sys_menu` VALUES (1082, '客户拜访查询', 1081, 31, '#', '', 'F', '0', 'crm:visit:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1083, '客户拜访新增', 1081, 32, '#', '', 'F', '0', 'crm:visit:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1084, '客户拜访修改', 1081, 33, '#', '', 'F', '0', 'crm:visit:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1085, '客户拜访删除', 1081, 34, '#', '', 'F', '0', 'crm:visit:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1086, '客户拜访导出', 1081, 35, '#', '', 'F', '0', 'crm:visit:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1087, '客户跟进【功能】', 1068, 36, '/crm/follow', 'menuItem', 'F', '1', 'crm:follow:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-18 13:18:58', '客户跟进记录菜单');
INSERT INTO `sys_menu` VALUES (1088, '客户跟进记录查询', 1087, 41, '#', '', 'F', '0', 'crm:follow:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1089, '客户跟进记录新增', 1087, 42, '#', '', 'F', '0', 'crm:follow:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1090, '客户跟进记录修改', 1087, 43, '#', '', 'F', '0', 'crm:follow:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1091, '客户跟进记录删除', 1087, 44, '#', '', 'F', '0', 'crm:follow:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1092, '客户跟进记录导出', 1087, 45, '#', '', 'F', '0', 'crm:follow:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1103, '成交订单', 1068, 70, '/crm/order', 'menuItem', 'C', '0', 'crm:order:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:29:19', '客户订单（报价单）菜单');
INSERT INTO `sys_menu` VALUES (1104, '成交订单查询', 1103, 1, '#', 'menuItem', 'F', '0', 'crm:order:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:29:29', '');
INSERT INTO `sys_menu` VALUES (1105, '成交订单新增', 1103, 2, '#', 'menuItem', 'F', '0', 'crm:order:add', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:29:37', '');
INSERT INTO `sys_menu` VALUES (1106, '成交订单修改', 1103, 3, '#', 'menuItem', 'F', '0', 'crm:order:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:29:47', '');
INSERT INTO `sys_menu` VALUES (1107, '成交订单删除', 1103, 4, '#', 'menuItem', 'F', '0', 'crm:order:remove', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:29:55', '');
INSERT INTO `sys_menu` VALUES (1108, '成交订单导出', 1103, 5, '#', 'menuItem', 'F', '0', 'crm:order:export', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:30:04', '');
INSERT INTO `sys_menu` VALUES (1109, '报价单', 1068, 60, '/crm/orderPrice', 'menuItem', 'C', '0', 'crm:orderPrice:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:31:38', '客户报价单（报价单）菜单');
INSERT INTO `sys_menu` VALUES (1110, '报价单管理查询', 1109, 1, '#', '', 'F', '0', 'crm:orderPrice:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1111, '报价单管理新增', 1109, 2, '#', '', 'F', '0', 'crm:orderPrice:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1112, '报价单管理修改', 1109, 3, '#', '', 'F', '0', 'crm:orderPrice:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1113, '报价单管理删除', 1109, 4, '#', '', 'F', '0', 'crm:orderPrice:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1114, '报价单管理导出', 1109, 5, '#', '', 'F', '0', 'crm:orderPrice:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1115, '进销存', 0, 500, '#', 'menuItem', 'M', '0', '', 'fa fa-database', 'admin', '2020-03-12 18:53:52', 'admin', '2020-03-15 09:51:25', '');
INSERT INTO `sys_menu` VALUES (1116, '产品管理', 1115, 110, '/crm/product', 'menuItem', 'C', '0', 'crm:product:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:52:22', '产品菜单');
INSERT INTO `sys_menu` VALUES (1117, '产品查询', 1116, 1, '#', '', 'F', '0', 'crm:product:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1118, '产品新增', 1116, 2, '#', '', 'F', '0', 'crm:product:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1119, '产品修改', 1116, 3, '#', '', 'F', '0', 'crm:product:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1120, '产品删除', 1116, 4, '#', '', 'F', '0', 'crm:product:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1121, '产品导出', 1116, 5, '#', '', 'F', '0', 'crm:product:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1122, '供应商管理', 1115, 90, '/crm/supplier', 'menuItem', 'C', '0', 'crm:supplier:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:52:05', '产品供应商菜单');
INSERT INTO `sys_menu` VALUES (1123, '供应商管理查询', 1122, 1, '#', '', 'F', '0', 'crm:supplier:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1124, '供应商管理新增', 1122, 2, '#', '', 'F', '0', 'crm:supplier:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1125, '供应商管理修改', 1122, 3, '#', '', 'F', '0', 'crm:supplier:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1126, '供应商管理删除', 1122, 4, '#', '', 'F', '0', 'crm:supplier:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1127, '供应商管理导出', 1122, 5, '#', '', 'F', '0', 'crm:supplier:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1134, '订单关联产品', 1068, 80, '/crm/orderProduct', 'menuItem', 'C', '0', 'crm:orderProduct:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-10 09:53:06', '订单关联产品信息菜单');
INSERT INTO `sys_menu` VALUES (1135, '订单关联产品信息查询', 1134, 1, '#', '', 'F', '0', 'crm:orderProduct:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1136, '订单关联产品信息新增', 1134, 2, '#', '', 'F', '0', 'crm:orderProduct:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1137, '订单关联产品信息修改', 1134, 3, '#', '', 'F', '0', 'crm:orderProduct:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1138, '订单关联产品信息删除', 1134, 4, '#', '', 'F', '0', 'crm:orderProduct:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1139, '订单关联产品信息导出', 1134, 5, '#', '', 'F', '0', 'crm:orderProduct:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1140, '报价单转成订单', 1109, 10, '#', 'menuItem', 'F', '0', 'crm:orderPrice:convert', '#', 'admin', '2020-03-14 12:25:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1141, '办公', 0, 80, '#', 'menuItem', 'M', '0', '', 'fa fa-laptop', 'admin', '2020-03-15 09:52:25', 'admin', '2020-04-10 10:29:39', '');
INSERT INTO `sys_menu` VALUES (1142, '电话本', 1141, 10, '/crm/phonenumber', 'menuItem', 'C', '0', 'crm:phonenumber:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-15 09:53:40', '电话本菜单');
INSERT INTO `sys_menu` VALUES (1143, '电话本查询', 1142, 1, '#', '', 'F', '0', 'crm:phonenumber:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1144, '电话本新增', 1142, 2, '#', '', 'F', '0', 'crm:phonenumber:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1145, '电话本修改', 1142, 3, '#', '', 'F', '0', 'crm:phonenumber:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1146, '电话本删除', 1142, 4, '#', '', 'F', '0', 'crm:phonenumber:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1147, '电话本导出', 1142, 5, '#', '', 'F', '0', 'crm:phonenumber:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1148, '工作日志', 1141, 20, '/crm/daily', 'menuItem', 'C', '0', 'crm:daily:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-10 10:27:07', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (1149, '日志管理查询', 1148, 1, '#', '', 'F', '0', 'crm:daily:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1150, '日志管理新增', 1148, 2, '#', '', 'F', '0', 'crm:daily:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1151, '日志管理修改', 1148, 3, '#', '', 'F', '0', 'crm:daily:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1152, '日志管理删除', 1148, 4, '#', '', 'F', '0', 'crm:daily:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1153, '日志管理导出', 1148, 5, '#', '', 'F', '0', 'crm:daily:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1154, '产品库存', 1115, 60, '/crm/stock', 'menuItem', 'C', '0', 'crm:stock:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 12:30:00', '库存管理菜单');
INSERT INTO `sys_menu` VALUES (1155, '库存管理查询', 1154, 1, '#', '', 'F', '0', 'crm:stock:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1156, '库存管理新增', 1154, 2, '#', '', 'F', '0', 'crm:stock:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1157, '库存管理修改', 1154, 3, '#', '', 'F', '0', 'crm:stock:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1158, '库存管理删除', 1154, 4, '#', '', 'F', '0', 'crm:stock:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1159, '库存管理导出', 1154, 5, '#', '', 'F', '0', 'crm:stock:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1160, '入库单', 1115, 10, '/crm/stockEnter', 'menuItem', 'C', '0', 'crm:stockEnter:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:54:53', '入库管理菜单');
INSERT INTO `sys_menu` VALUES (1161, '入库管理查询', 1160, 1, '#', '', 'F', '0', 'crm:stockEnter:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1162, '入库管理新增', 1160, 2, '#', '', 'F', '0', 'crm:stockEnter:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1163, '入库管理修改', 1160, 3, '#', '', 'F', '0', 'crm:stockEnter:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1164, '入库管理删除', 1160, 4, '#', '', 'F', '0', 'crm:stockEnter:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1165, '入库管理导出', 1160, 5, '#', '', 'F', '0', 'crm:stockEnter:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1166, '入库管理审核入库', 1160, 7, '#', 'menuItem', 'F', '0', 'crm:stockEnter:audit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-16 11:35:59', '');
INSERT INTO `sys_menu` VALUES (1167, '入库管理提交', 1160, 6, '#', 'menuItem', 'F', '0', 'crm:stockEnter:submit', '#', 'admin', '2020-03-16 11:18:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1168, '出库单', 1115, 20, '/crm/stockOut', 'menuItem', 'C', '0', 'crm:stockOut:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:55:00', '出库管理菜单');
INSERT INTO `sys_menu` VALUES (1169, '出库管理查询', 1168, 1, '#', '', 'F', '0', 'crm:stockOut:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1170, '出库管理新增', 1168, 2, '#', '', 'F', '0', 'crm:stockOut:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1171, '出库管理修改', 1168, 3, '#', '', 'F', '0', 'crm:stockOut:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1172, '出库管理删除', 1168, 4, '#', '', 'F', '0', 'crm:stockOut:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1173, '出库管理导出', 1168, 5, '#', '', 'F', '0', 'crm:stockOut:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1174, '出库管理提交', 1168, 6, '#', '', 'F', '0', 'crm:stockOut:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1175, '出库管理审核', 1168, 6, '#', '', 'F', '0', 'crm:stockOut:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1176, '合同记录', 1068, 100, '/crm/contract', 'menuItem', 'C', '0', 'crm:contract:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:32:10', '合同管理菜单');
INSERT INTO `sys_menu` VALUES (1177, '合同管理查询', 1176, 1, '#', '', 'F', '0', 'crm:contract:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1178, '合同管理新增', 1176, 2, '#', '', 'F', '0', 'crm:contract:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1179, '合同管理修改', 1176, 3, '#', '', 'F', '0', 'crm:contract:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1180, '合同管理删除', 1176, 4, '#', '', 'F', '0', 'crm:contract:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1181, '合同管理导出', 1176, 5, '#', '', 'F', '0', 'crm:contract:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1182, '合同管理审核', 1176, 7, '#', 'menuItem', 'F', '0', 'crm:contract:audit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-18 20:35:08', '');
INSERT INTO `sys_menu` VALUES (1184, '合同管理提交', 1176, 6, '#', 'menuItem', 'F', '0', 'crm:contract:submit', '#', 'admin', '2020-03-18 20:35:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1185, '合同付款', 1068, 110, '/crm/contractPayment', 'menuItem', 'C', '0', 'crm:contractPayment:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-10-29 12:22:28', '合同付款管理菜单');
INSERT INTO `sys_menu` VALUES (1186, '合同付款管理查询', 1185, 1, '#', '', 'F', '0', 'crm:contractPayment:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1187, '合同付款管理新增', 1185, 2, '#', '', 'F', '0', 'crm:contractPayment:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1188, '合同付款管理修改', 1185, 3, '#', '', 'F', '0', 'crm:contractPayment:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1189, '合同付款管理删除', 1185, 4, '#', '', 'F', '0', 'crm:contractPayment:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1190, '合同付款管理导出', 1185, 5, '#', '', 'F', '0', 'crm:contractPayment:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1191, '合同付款管理提交', 1185, 5, '#', '', 'F', '0', 'crm:contractPayment:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1192, '合同付款管理审核', 1185, 5, '#', '', 'F', '0', 'crm:contractPayment:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1193, '合同发票', 1068, 120, '/crm/contractInvoice', 'menuItem', 'C', '0', 'crm:contractInvoice:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-10-29 12:22:35', '合同发票管理菜单');
INSERT INTO `sys_menu` VALUES (1194, '合同发票管理查询', 1193, 1, '#', '', 'F', '0', 'crm:contractInvoice:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1195, '合同发票管理新增', 1193, 2, '#', '', 'F', '0', 'crm:contractInvoice:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1196, '合同发票管理修改', 1193, 3, '#', '', 'F', '0', 'crm:contractInvoice:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1197, '合同发票管理删除', 1193, 4, '#', '', 'F', '0', 'crm:contractInvoice:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1198, '合同发票管理导出', 1193, 5, '#', '', 'F', '0', 'crm:contractInvoice:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1199, '合同发票管理提交', 1193, 6, '#', '', 'F', '0', 'crm:contractInvoice:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1200, '合同发票管理审核', 1193, 7, '#', '', 'F', '0', 'crm:contractInvoice:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1201, '合同发票管理审核', 1193, 8, '#', '', 'F', '0', 'crm:contractInvoice:invoice', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1202, '报价单管理提交', 1109, 6, '#', 'menuItem', 'F', '0', 'crm:orderPrice:submit', '#', 'admin', '2020-04-04 20:25:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1203, '报价单管理审核', 1109, 7, '#', 'menuItem', 'F', '0', 'crm:orderPrice:audit', '#', 'admin', '2020-04-04 20:25:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1204, '报价单管理作废', 1109, 8, '#', 'menuItem', 'F', '0', 'crm:orderPrice:cancel', '#', 'admin', '2020-04-04 20:27:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1205, '报价单管理报价', 1109, 9, '#', 'menuItem', 'F', '0', 'crm:orderPrice:price', '#', 'admin', '2020-04-04 20:27:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1206, '客户分享', 1062, 7, '#', 'menuItem', 'F', '0', 'crm:customer:share', '#', 'admin', '2020-04-06 11:58:13', 'admin', '2020-04-11 20:25:11', '');
INSERT INTO `sys_menu` VALUES (1207, '线索', 1068, 0, '/crm/clue', 'menuItem', 'C', '0', 'crm:clue:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:31:00', '线索管理菜单');
INSERT INTO `sys_menu` VALUES (1208, '线索查询', 1207, 1, '#', 'menuItem', 'F', '0', 'crm:clue:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:41:46', '');
INSERT INTO `sys_menu` VALUES (1209, '线索新增', 1264, 2, '#', 'menuItem', 'F', '0', 'crm:clue:add', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:40:36', '');
INSERT INTO `sys_menu` VALUES (1210, '线索修改', 1264, 3, '#', 'menuItem', 'F', '0', 'crm:clue:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:41:28', '');
INSERT INTO `sys_menu` VALUES (1211, '线索删除', 1264, 4, '#', 'menuItem', 'F', '0', 'crm:clue:remove', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:40:54', '');
INSERT INTO `sys_menu` VALUES (1212, '线索导出', 1264, 5, '#', 'menuItem', 'F', '0', 'crm:clue:export', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:41:05', '');
INSERT INTO `sys_menu` VALUES (1213, '线索转成客户', 1264, 6, '#', 'menuItem', 'F', '0', 'crm:clue:convert', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-23 15:41:14', '');
INSERT INTO `sys_menu` VALUES (1214, '线索作废', 1264, 7, '#', 'menuItem', 'F', '0', 'crm:clue:cancel', '#', 'admin', '2020-04-06 14:08:10', 'admin', '2020-04-23 15:41:36', '');
INSERT INTO `sys_menu` VALUES (1219, '合同申请', 1068, 90, '/crm/contractApply', 'menuItem', 'C', '0', 'crm:contractApply:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-10 11:07:31', '合同申请菜单');
INSERT INTO `sys_menu` VALUES (1220, '合同申请查询', 1219, 1, '#', '', 'F', '0', 'crm:contractApply:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1221, '合同申请新增', 1219, 2, '#', '', 'F', '0', 'crm:contractApply:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1222, '合同申请修改', 1219, 3, '#', '', 'F', '0', 'crm:contractApply:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1223, '合同申请删除', 1219, 4, '#', '', 'F', '0', 'crm:contractApply:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1224, '合同申请导出', 1219, 5, '#', '', 'F', '0', 'crm:contractApply:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1225, '合同申请提交', 1219, 6, '#', '', 'F', '0', 'crm:contractApply:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1226, '合同申请审核', 1219, 7, '#', '', 'F', '0', 'crm:contractApply:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1227, '合同申请转合同', 1219, 8, '#', '', 'F', '0', 'crm:contractApply:file', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1228, '客户导入', 1062, 5, '#', 'menuItem', 'F', '0', 'crm:customer:import', '#', 'admin', '2020-04-11 20:25:46', 'admin', '2020-04-11 20:25:55', '');
INSERT INTO `sys_menu` VALUES (1229, '合同申请打印', 1219, 9, '#', 'menuItem', 'F', '0', 'crm:contractApply:print', '#', 'admin', '2020-04-12 18:15:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1230, '财务', 0, 300, '#', 'menuItem', 'M', '0', NULL, 'fa fa-cny', 'admin', '2020-04-12 18:46:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1231, '回款管理', 1230, 10, '/crm/pay', 'menuItem', 'C', '0', 'crm:pay:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-12 19:42:29', '回款管理菜单');
INSERT INTO `sys_menu` VALUES (1232, '回款管理查询', 1231, 1, '#', '', 'F', '0', 'crm:pay:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1233, '回款管理新增', 1231, 2, '#', '', 'F', '0', 'crm:pay:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1234, '回款管理修改', 1231, 3, '#', '', 'F', '0', 'crm:pay:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1235, '回款管理删除', 1231, 4, '#', '', 'F', '0', 'crm:pay:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1236, '回款管理导出', 1231, 5, '#', '', 'F', '0', 'crm:pay:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1237, '回款管理提交', 1231, 6, '#', '', 'F', '0', 'crm:pay:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1238, '回款管理审核', 1231, 6, '#', '', 'F', '0', 'crm:pay:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1239, '回款计划', 1230, 20, '/crm/payPlan', 'menuItem', 'C', '0', 'crm:payPlan:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-13 17:34:46', '回款计划菜单');
INSERT INTO `sys_menu` VALUES (1240, '回款计划查询', 1239, 1, '#', '', 'F', '0', 'crm:payPlan:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1241, '回款计划新增', 1239, 2, '#', '', 'F', '0', 'crm:payPlan:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1242, '回款计划修改', 1239, 3, '#', '', 'F', '0', 'crm:payPlan:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1243, '回款计划删除', 1239, 4, '#', '', 'F', '0', 'crm:payPlan:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1244, '回款计划导出', 1239, 5, '#', '', 'F', '0', 'crm:payPlan:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1245, '费用收支', 1230, 40, '/crm/fee', 'menuItem', 'C', '0', 'crm:fee:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-04-15 12:48:50', '费用收支菜单');
INSERT INTO `sys_menu` VALUES (1246, '费用收支查询', 1245, 1, '#', '', 'F', '0', 'crm:fee:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1247, '费用收支新增', 1245, 2, '#', '', 'F', '0', 'crm:fee:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1248, '费用收支修改', 1245, 3, '#', '', 'F', '0', 'crm:fee:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1249, '费用收支删除', 1245, 4, '#', '', 'F', '0', 'crm:fee:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1250, '费用收支导出', 1245, 5, '#', '', 'F', '0', 'crm:fee:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1251, '费用收支提交', 1245, 6, '#', '', 'F', '0', 'crm:fee:submit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1252, '费用收支审核', 1245, 7, '#', '', 'F', '0', 'crm:fee:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1253, '客户转交', 1062, 8, '#', 'menuItem', 'F', '0', 'crm:customer:transfer', '#', 'admin', '2020-04-18 12:34:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254, '全部客户', 1068, 10, '/crm/customer', 'menuItem', 'C', '0', 'crm:customer:view', '#', 'admin', '2020-04-18 13:20:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1255, '我的客户', 1068, 12, '/crm/customer/my', 'menuItem', 'C', '0', 'crm:customer:viewMy', '#', 'admin', '2020-04-18 13:48:11', 'admin', '2020-04-18 13:48:34', '');
INSERT INTO `sys_menu` VALUES (1256, '共享客户', 1068, 14, '/crm/customer/share', 'menuItem', 'C', '0', 'crm:customer:viewShare', '#', 'admin', '2020-04-18 13:49:12', 'admin', '2020-04-18 13:49:44', '');
INSERT INTO `sys_menu` VALUES (1257, '公共客户', 1068, 16, '/crm/customer/public', 'menuItem', 'C', '0', 'crm:customer:viewPublic', '#', 'admin', '2020-04-18 13:50:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1258, '全部客户查询', 1254, 1, '#', 'menuItem', 'F', '0', 'crm:customer:list', '#', 'admin', '2020-04-18 14:10:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1259, '我的客户查询', 1255, 1, '#', 'menuItem', 'F', '0', 'crm:customer:listMy', '#', 'admin', '2020-04-18 14:11:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1260, '共享客户查询', 1256, 1, '#', 'menuItem', 'F', '0', 'crm:customer:listShare', '#', 'admin', '2020-04-18 14:11:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1261, '公共客户查询', 1257, 1, '#', 'menuItem', 'F', '0', 'crm:customer:listPublic', '#', 'admin', '2020-04-18 14:11:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1262, '客户领取', 1062, 9, '#', 'menuItem', 'F', '0', 'crm:customer:get', '#', 'admin', '2020-04-23 15:35:28', 'admin', '2020-04-23 15:35:40', '');
INSERT INTO `sys_menu` VALUES (1263, '线索池', 1068, 2, '/crm/clue/public', 'menuItem', 'C', '0', 'crm:clue:viewPublic', '#', 'admin', '2020-04-23 15:37:24', 'admin', '2020-04-23 15:46:14', '');
INSERT INTO `sys_menu` VALUES (1264, '线索【功能】', 1068, 4, '#', 'menuItem', 'F', '0', NULL, '#', 'admin', '2020-04-23 15:39:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1265, '线索池查询', 1263, 1, '#', 'menuItem', 'F', '0', 'crm:clue:listPublic', '#', 'admin', '2020-04-23 15:42:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1266, '报价单转交', 1109, 11, '#', 'menuItem', 'F', '0', 'crm:orderPrice:transfer', '#', 'admin', '2020-04-30 17:13:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1267, '成交订单转交', 1103, 11, '#', 'menuItem', 'F', '0', 'crm:order:transfer', '#', 'admin', '2020-04-30 17:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1268, '合同申请转交', 1219, 11, '#', 'menuItem', 'F', '0', 'crm:contractApply:transfer', '#', 'admin', '2020-04-30 17:15:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1269, '合同记录转交', 1176, 11, '#', 'menuItem', 'F', '0', 'crm:contract:transfer', '#', 'admin', '2020-04-30 17:16:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1270, '回款管理转交', 1231, 11, '#', 'menuItem', 'F', '0', 'crm:pay:transfer', '#', 'admin', '2020-04-30 17:16:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1271, '回款计划转交', 1239, 11, '#', 'menuItem', 'F', '0', 'crm:payPlan:transfer', '#', 'admin', '2020-04-30 17:17:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1272, '产品分类管理', 1115, 100, '/crm/productCatogory', 'menuItem', 'C', '0', 'crm:productCatogory:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:52:12', '产品分类管理菜单');
INSERT INTO `sys_menu` VALUES (1273, '产品分类管理查询', 1272, 1, '#', '', 'F', '0', 'crm:productCatogory:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1274, '产品分类管理新增', 1272, 2, '#', '', 'F', '0', 'crm:productCatogory:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1275, '产品分类管理修改', 1272, 3, '#', '', 'F', '0', 'crm:productCatogory:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1276, '产品分类管理删除', 1272, 4, '#', '', 'F', '0', 'crm:productCatogory:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1277, '产品分类管理导出', 1272, 5, '#', '', 'F', '0', 'crm:productCatogory:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1278, '线索导入', 1264, 5, '#', 'menuItem', 'F', '0', 'crm:clue:import', '#', 'admin', '2020-07-09 12:31:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1279, '仓库管理', 1115, 80, '/crm/storage', 'menuItem', 'C', '0', 'crm:storage:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:51:57', '仓库菜单');
INSERT INTO `sys_menu` VALUES (1280, '仓库查询', 1279, 1, '#', '', 'F', '0', 'crm:storage:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1281, '仓库新增', 1279, 2, '#', '', 'F', '0', 'crm:storage:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1282, '仓库修改', 1279, 3, '#', '', 'F', '0', 'crm:storage:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1283, '仓库删除', 1279, 4, '#', '', 'F', '0', 'crm:storage:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12884, '仓库导出', 1279, 5, '#', '', 'F', '0', 'crm:storage:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12885, '调拨单', 1115, 30, '/crm/stockAllocation', 'menuItem', 'C', '0', 'crm:stockAllocation:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 10:55:07', '调拨单菜单');
INSERT INTO `sys_menu` VALUES (12886, '调拨单查询', 12885, 1, '#', '', 'F', '0', 'crm:stockAllocation:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12887, '调拨单新增', 12885, 2, '#', '', 'F', '0', 'crm:stockAllocation:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12888, '调拨单修改', 12885, 3, '#', '', 'F', '0', 'crm:stockAllocation:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12889, '调拨单删除', 12885, 4, '#', '', 'F', '0', 'crm:stockAllocation:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12890, '调拨单导出', 12885, 5, '#', '', 'F', '0', 'crm:stockAllocation:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12891, '调拨单审核', 12885, 6, '#', '', 'F', '0', 'crm:stockAllocation:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12892, '库存记录', 1115, 50, '/crm/stockHistory', 'menuItem', 'C', '0', 'crm:stockHistory:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 12:30:09', '库存记录菜单');
INSERT INTO `sys_menu` VALUES (12893, '库存记录查询', 12892, 1, '#', '', 'F', '0', 'crm:stockHistory:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12894, '库存记录新增', 12892, 2, '#', '', 'F', '0', 'crm:stockHistory:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12895, '库存记录修改', 12892, 3, '#', '', 'F', '0', 'crm:stockHistory:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12896, '库存记录删除', 12892, 4, '#', '', 'F', '0', 'crm:stockHistory:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12897, '库存记录导出', 12892, 5, '#', '', 'F', '0', 'crm:stockHistory:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12898, '库存盘点', 1115, 40, '/crm/stockCheck', 'menuItem', 'C', '0', 'crm:stockCheck:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-08-14 12:29:48', '库存盘点菜单');
INSERT INTO `sys_menu` VALUES (12899, '库存盘点查询', 12898, 1, '#', '', 'F', '0', 'crm:stockCheck:list', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12900, '库存盘点新增', 12898, 2, '#', '', 'F', '0', 'crm:stockCheck:add', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12901, '库存盘点修改', 12898, 3, '#', '', 'F', '0', 'crm:stockCheck:edit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12902, '库存盘点删除', 12898, 4, '#', '', 'F', '0', 'crm:stockCheck:remove', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12903, '库存盘点导出', 12898, 5, '#', '', 'F', '0', 'crm:stockCheck:export', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12904, '库存盘点审核', 12898, 6, '#', '', 'F', '0', 'crm:stockCheck:audit', '#', 'admin', '2018-03-01 00:00:00', 'jt', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (12905, '线索跟进记录【功能】', 1068, 5, '', 'menuItem', 'F', '0', '', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:40:22', '线索跟进记录菜单');
INSERT INTO `sys_menu` VALUES (12906, '线索跟进记录查询', 12905, 1, '#', 'menuItem', 'F', '0', 'crm:clueFollow:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:40:59', '');
INSERT INTO `sys_menu` VALUES (12907, '线索跟进记录新增', 12905, 2, '#', 'menuItem', 'F', '0', 'crm:clueFollow:add', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:41:08', '');
INSERT INTO `sys_menu` VALUES (12908, '线索跟进记录修改', 12905, 3, '#', 'menuItem', 'F', '0', 'crm:clueFollow:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:41:17', '');
INSERT INTO `sys_menu` VALUES (12909, '线索跟进记录删除', 12905, 4, '#', 'menuItem', 'F', '0', 'crm:clueFollow:remove', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:41:27', '');
INSERT INTO `sys_menu` VALUES (12910, '线索跟进记录导出', 12905, 5, '#', 'menuItem', 'F', '0', 'crm:clueFollow:export', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-09-02 15:41:35', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 408 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'jt', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '5', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-10 10:27:55', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'administrator', 'Selected', '00', 'jt@qq.com', '18810991088', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-10-29 12:17:16', 'admin', '2018-03-16 11:33:00', 'jt', '2020-10-29 12:17:16', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'jt', 'selected', '00', '2jt@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-01 19:35:01', '测试员');
INSERT INTO `sys_user` VALUES (3, 103, 'test', 'test', '00', '22205446@qq.com', '13716884822', '0', '', '4d2008b333eb6717020f8c76d1b3488b', '4b6b8e', '0', '0', '127.0.0.1', '2020-04-18 14:00:17', 'admin', '2020-03-11 09:08:12', 'admin', '2020-04-18 14:00:17', '');
INSERT INTO `sys_user` VALUES (4, 105, '00017162', 'admin1', '00', '3980054462@qq.com', '13716884811', '0', '', 'e48f02acbdebd8628cb72e6328c06775', '100c3b', '0', '0', '', NULL, 'admin', '2020-03-14 20:13:59', '', '2020-10-29 12:19:34', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('090f5274-996b-4722-89da-9c81a4da792c', 'administrator', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', 'on_line', '2020-10-29 12:17:00', '2020-10-29 12:41:07', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);

-- ----------------------------
-- Table structure for wms_product
-- ----------------------------
DROP TABLE IF EXISTS `wms_product`;
CREATE TABLE `wms_product`  (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `supplier_id` bigint(20) NULL DEFAULT NULL COMMENT '供货商ID（采购产品使用）',
  `product_catogory_id` bigint(20) NULL DEFAULT NULL COMMENT '产品分类ID',
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `income_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '进价',
  `sale_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '售价',
  `product_category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类别（办公、运动）',
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货号',
  `product_unit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品计量单位',
  `product_spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品规格(保留，暂不使用多规格)',
  `prodcut_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品状态（0：停止销售  1：正常销售）',
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_product
-- ----------------------------
INSERT INTO `wms_product` VALUES (8, 5, 6, '剃须刀190系', 20, 29, '3', '11111', '1', NULL, '1', NULL, '0', 'admin', '2020-07-27 16:00:57', 'admin', '2020-07-27 16:50:31', NULL);
INSERT INTO `wms_product` VALUES (9, 5, 8, '电吹风7260', 50, 70, '3', '1112', '1', NULL, '1', NULL, '0', 'admin', '2020-07-27 16:03:19', 'admin', '2020-07-27 16:50:27', NULL);

-- ----------------------------
-- Table structure for wms_product_catogory
-- ----------------------------
DROP TABLE IF EXISTS `wms_product_catogory`;
CREATE TABLE `wms_product_catogory`  (
  `product_catogory_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品分类id',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catogory_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '分类名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '负责人',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '联系电话',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '分类状态:0正常,1停用',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`product_catogory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_product_catogory
-- ----------------------------
INSERT INTO `wms_product_catogory` VALUES (1, 0, '0', '产品分类', 0, 'selected', '', '', '0', '0', 'admin', '2020-04-30 17:58:54', 'admin', '2020-07-27 15:53:58');
INSERT INTO `wms_product_catogory` VALUES (6, 1, '0,1,1', '剃须刀', 1, 'selected', '', '', '0', '0', 'admin', '2020-07-27 15:54:44', NULL, NULL);
INSERT INTO `wms_product_catogory` VALUES (8, 1, '0,1', '电吹风', 1, '', '', '', '0', '0', 'admin', '2020-07-27 15:57:35', NULL, NULL);

-- ----------------------------
-- Table structure for wms_stock
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock`;
CREATE TABLE `wms_stock`  (
  `stock_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存ID',
  `storage_id` bigint(20) NULL DEFAULT NULL COMMENT '仓库ID',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品ID',
  `stock_num` int(11) NULL DEFAULT NULL COMMENT '库存数量',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stock_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品库存' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock
-- ----------------------------
INSERT INTO `wms_stock` VALUES (10, 1, 8, 305, '0', 'administrator', '2020-08-13 19:40:46', 'administrator', '2020-08-22 15:42:56', NULL);
INSERT INTO `wms_stock` VALUES (11, 2, 8, 10, '0', 'administrator', '2020-08-13 19:42:31', 'administrator', '2020-08-22 16:47:55', NULL);
INSERT INTO `wms_stock` VALUES (12, 1, 9, 81, '0', 'administrator', '2020-08-21 17:52:53', 'administrator', '2020-08-22 15:42:56', NULL);
INSERT INTO `wms_stock` VALUES (13, 2, 9, 90, '0', 'administrator', '2020-08-22 15:13:39', 'administrator', '2020-08-22 16:47:55', NULL);

-- ----------------------------
-- Table structure for wms_stock_allocation
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_allocation`;
CREATE TABLE `wms_stock_allocation`  (
  `allocation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '调拨ID',
  `out_storage_id` bigint(20) NULL DEFAULT NULL COMMENT '调出仓库ID',
  `out_storage_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调出仓库名称',
  `enter_storage_id` bigint(20) NULL DEFAULT NULL COMMENT '调入仓库ID',
  `enter_storage_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调入仓库名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `allocation_date` datetime(0) NULL DEFAULT NULL COMMENT '调拨日期',
  `allocation_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调拨状态（0  已保存   1:已提交   2：已审核）',
  `allocation_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调拨负责人',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`allocation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调拨单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_allocation
-- ----------------------------
INSERT INTO `wms_stock_allocation` VALUES (7, 1, '一号仓库', 2, '二号仓库', '123', '2020-08-06 00:00:00', '2', 'jt', NULL, 'admin', '2020-08-13 19:42:26', 'admin', '2020-08-13 19:42:29', NULL);
INSERT INTO `wms_stock_allocation` VALUES (8, 1, '一号仓库', 2, '二号仓库', '111', '2020-08-14 00:00:00', '2', 'test', NULL, 'admin', '2020-08-22 13:42:42', 'admin', '2020-08-22 15:13:39', NULL);
INSERT INTO `wms_stock_allocation` VALUES (9, 2, '二号仓库', 1, '一号仓库', '222', '2020-08-11 00:00:00', '2', 'admin', NULL, 'admin', '2020-08-22 15:36:11', 'admin', '2020-08-22 15:42:56', NULL);
INSERT INTO `wms_stock_allocation` VALUES (10, 2, '二号仓库', 1, '一号仓库', '777', '2020-08-11 00:00:00', '3', 'test', NULL, 'admin', '2020-08-22 17:16:09', 'admin', '2020-08-22 17:18:04', NULL);

-- ----------------------------
-- Table structure for wms_stock_check
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_check`;
CREATE TABLE `wms_stock_check`  (
  `check_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '盘点ID',
  `storage_id` bigint(20) NULL DEFAULT NULL COMMENT '仓库ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `check_date` datetime(0) NULL DEFAULT NULL COMMENT '盘点日期',
  `check_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盘点负责人',
  `check_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盘点状态',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`check_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存盘点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_check
-- ----------------------------
INSERT INTO `wms_stock_check` VALUES (1, 1, '123', '2020-08-13 00:00:00', 'jt', '2', NULL, 'admin', '2020-08-14 14:14:25', 'admin', '2020-08-14 14:21:53', NULL);
INSERT INTO `wms_stock_check` VALUES (2, 2, '2', '2020-08-12 00:00:00', 'test', '2', NULL, 'admin', '2020-08-14 14:55:03', 'admin', '2020-08-14 14:56:25', NULL);
INSERT INTO `wms_stock_check` VALUES (3, 2, '111', '2020-08-04 00:00:00', 'admin', '2', NULL, 'admin', '2020-08-22 12:02:55', 'admin', '2020-08-22 12:47:09', NULL);
INSERT INTO `wms_stock_check` VALUES (4, 2, '222', '2020-08-05 00:00:00', 'admin', '2', NULL, 'admin', '2020-08-22 12:54:51', 'admin', '2020-08-22 12:54:59', NULL);
INSERT INTO `wms_stock_check` VALUES (5, 2, '333', '2020-08-04 00:00:00', 'test', '2', NULL, 'admin', '2020-08-22 12:57:19', 'admin', '2020-08-22 12:59:20', NULL);
INSERT INTO `wms_stock_check` VALUES (6, 2, '444', '2020-08-11 00:00:00', 'test', '2', NULL, 'admin', '2020-08-22 12:59:58', 'admin', '2020-08-22 13:00:05', NULL);
INSERT INTO `wms_stock_check` VALUES (7, 2, '555', '2020-07-29 00:00:00', 'test', '0', NULL, 'admin', '2020-08-22 13:12:25', NULL, NULL, NULL);
INSERT INTO `wms_stock_check` VALUES (8, 2, '666', '2020-08-04 00:00:00', 'admin', '2', NULL, 'admin', '2020-08-22 16:46:20', 'admin', '2020-08-22 16:47:55', NULL);

-- ----------------------------
-- Table structure for wms_stock_enter
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_enter`;
CREATE TABLE `wms_stock_enter`  (
  `enter_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库ID',
  `storage_id` bigint(20) NULL DEFAULT NULL COMMENT '仓库ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `enter_date` datetime(0) NULL DEFAULT NULL COMMENT '入库日期',
  `enter_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库类型（0  采购入库   1:生产入库）',
  `enter_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库状态（0  已保存   1:已提交   2：已审核）',
  `enter_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人(login_name)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`enter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品 入库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_enter
-- ----------------------------
INSERT INTO `wms_stock_enter` VALUES (22, 1, NULL, '2020-07-31 00:00:00', '1', '2', 'test', '0', 'admin', '2020-08-13 19:40:38', 'admin', '2020-08-13 19:40:46', '0->100');
INSERT INTO `wms_stock_enter` VALUES (23, 2, NULL, '2020-08-13 19:42:31', '3', '2', 'jt', '0', 'admin', '2020-08-13 19:42:31', NULL, NULL, '0=>10');
INSERT INTO `wms_stock_enter` VALUES (24, 1, '555', '2020-08-12 00:00:00', '1', '3', 'test', '0', 'admin', '2020-08-14 12:55:32', 'admin', '2020-08-21 18:44:37', NULL);
INSERT INTO `wms_stock_enter` VALUES (25, 2, NULL, '2020-08-14 14:56:29', '4', '2', 'test', '0', 'admin', '2020-08-14 14:56:29', NULL, NULL, '10=>20');
INSERT INTO `wms_stock_enter` VALUES (41, 1, '123', '2020-08-18 00:00:00', '0', '2', 'admin', '0', 'admin', '2020-08-21 15:41:00', 'admin', '2020-08-21 17:39:54', NULL);
INSERT INTO `wms_stock_enter` VALUES (43, 1, '222', '2020-08-18 00:00:00', '0', '2', 'jt', '0', 'admin', '2020-08-21 17:44:28', 'admin', '2020-08-21 17:44:49', NULL);
INSERT INTO `wms_stock_enter` VALUES (44, 1, '333', '2020-08-04 00:00:00', '0', '2', 'admin', '0', 'admin', '2020-08-21 17:47:33', 'admin', '2020-08-21 17:52:53', NULL);
INSERT INTO `wms_stock_enter` VALUES (45, 1, '444', '2020-08-11 00:00:00', '0', '2', 'admin', '0', 'admin', '2020-08-21 17:52:40', 'admin', '2020-08-21 17:53:33', NULL);
INSERT INTO `wms_stock_enter` VALUES (46, 2, '盘点入库', '2020-08-22 12:47:09', '4', '2', 'admin', '0', 'admin', '2020-08-22 12:47:09', NULL, NULL, '20=>30');
INSERT INTO `wms_stock_enter` VALUES (47, 2, '盘点入库', '2020-08-22 12:54:59', '4', '2', 'admin', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_enter` VALUES (48, 2, '盘点入库', '2020-08-22 12:54:59', '4', '2', 'admin', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_enter` VALUES (49, 2, '盘点入库', '2020-08-22 12:59:20', '4', '2', 'test', '0', 'admin', '2020-08-22 12:59:20', NULL, NULL, NULL);
INSERT INTO `wms_stock_enter` VALUES (50, 1, '调拨入库', '2020-08-22 15:42:56', '3', '2', 'admin', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_enter` VALUES (51, 2, '盘点入库', '2020-08-22 16:47:55', '4', '2', 'admin', '0', 'admin', '2020-08-22 16:47:55', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wms_stock_history
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_history`;
CREATE TABLE `wms_stock_history`  (
  `history_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `storage_id` bigint(20) NULL DEFAULT NULL COMMENT '仓库ID',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品ID',
  `history_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录类型  0：入库  1：出库   2：调拨',
  `num_before` int(11) NULL DEFAULT NULL COMMENT '操作前数量',
  `num_after` int(11) NULL DEFAULT NULL COMMENT '操作后数量',
  `history_date` datetime(0) NULL DEFAULT NULL COMMENT '入库、出库日期',
  `history_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作负责人',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_history
-- ----------------------------
INSERT INTO `wms_stock_history` VALUES (7, 1, 8, '0', 0, 100, '2020-08-13 19:40:46', 'test', '0', 'admin', '2020-08-13 19:40:46', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (8, 1, 8, '1', 100, 90, '2020-08-13 19:41:49', 'admin', '0', 'admin', '2020-08-13 19:41:49', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (9, 2, 8, '2', 0, 10, '2020-08-13 19:42:31', 'jt', '0', 'admin', '2020-08-13 19:42:31', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (10, 1, 8, '3', 90, 80, '2020-08-13 19:42:31', 'jt', '0', 'admin', '2020-08-13 19:42:31', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (11, 1, 8, '5', 80, 75, '2020-08-14 14:46:01', 'jt', '0', 'admin', '2020-08-14 14:46:01', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (12, 2, 8, '4', 10, 20, '2020-08-14 14:56:29', 'test', '0', 'admin', '2020-08-14 14:56:29', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (13, 1, 8, '0', 75, 175, '2020-08-21 17:39:54', 'admin', '0', 'admin', '2020-08-21 17:39:54', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (14, 1, 8, '0', 175, 275, '2020-08-21 17:44:49', 'jt', '0', 'admin', '2020-08-21 17:44:49', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (16, 1, 8, '0', 275, 375, '2020-08-21 17:52:53', 'admin', '0', 'admin', '2020-08-21 17:52:53', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (17, 1, 9, '0', 0, 100, '2020-08-21 17:52:53', 'admin', '0', 'admin', '2020-08-21 17:52:53', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (18, 1, 9, '0', 100, 200, '2020-08-21 17:53:33', 'admin', '0', 'admin', '2020-08-21 17:53:33', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (19, 1, 8, '0', 375, 475, '2020-08-21 17:53:33', 'admin', '0', 'admin', '2020-08-21 17:53:33', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (20, 1, 9, '1', 200, 100, '2020-08-22 10:29:35', '00017162', '0', 'admin', '2020-08-22 10:29:35', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (21, 1, 8, '1', 475, 375, '2020-08-22 10:29:35', '00017162', '0', 'admin', '2020-08-22 10:29:35', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (23, 1, 8, '1', 375, 365, '2020-08-22 10:31:10', 'test', '0', 'admin', '2020-08-22 10:31:10', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (24, 1, 9, '1', 100, 90, '2020-08-22 10:31:10', 'test', '0', 'admin', '2020-08-22 10:31:10', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (25, 2, 8, '4', 20, 30, '2020-08-22 12:47:09', 'admin', '0', 'admin', '2020-08-22 12:47:09', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (26, 2, 8, '4', 20, 30, '2020-08-22 12:54:59', 'admin', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (27, 2, 8, '4', 30, 40, '2020-08-22 12:54:59', 'admin', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (28, 2, 8, '4', 40, 50, '2020-08-22 12:59:20', 'test', '0', 'admin', '2020-08-22 12:59:20', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (29, 2, 8, '5', 50, 40, '2020-08-22 13:00:05', 'test', '0', 'admin', '2020-08-22 13:00:05', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (30, 1, 8, '3', 365, 265, '2020-08-22 15:13:39', 'test', '0', 'admin', '2020-08-22 15:13:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (31, 2, 8, '2', 40, 140, '2020-08-22 15:13:39', 'test', '0', 'admin', '2020-08-22 15:13:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (32, 1, 9, '3', 90, 80, '2020-08-22 15:13:39', 'test', '0', 'admin', '2020-08-22 15:13:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (33, 2, 9, '2', 0, 10, '2020-08-22 15:13:39', 'test', '0', 'admin', '2020-08-22 15:13:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (34, 2, 9, '3', 10, 9, '2020-08-22 15:42:56', 'admin', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (35, 1, 9, '2', 80, 81, '2020-08-22 15:42:56', 'admin', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (36, 2, 8, '3', 140, 100, '2020-08-22 15:42:56', 'admin', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (37, 1, 8, '2', 265, 305, '2020-08-22 15:42:56', 'admin', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (38, 2, 9, '4', 9, 90, '2020-08-22 16:47:55', 'admin', '0', 'admin', '2020-08-22 16:47:55', NULL, NULL, NULL);
INSERT INTO `wms_stock_history` VALUES (39, 2, 8, '5', 100, 10, '2020-08-22 16:47:55', 'admin', '0', 'admin', '2020-08-22 16:47:55', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wms_stock_out
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out`;
CREATE TABLE `wms_stock_out`  (
  `out_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '出库ID',
  `storage_id` bigint(20) NULL DEFAULT NULL COMMENT '仓库ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `out_date` datetime(0) NULL DEFAULT NULL COMMENT '出库日期',
  `out_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库类型（0  采购退货   1:订单送货）',
  `out_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库状态（0  已保存   1:已提交   2：已审核）',
  `out_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库申请人',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`out_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品 出库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_out
-- ----------------------------
INSERT INTO `wms_stock_out` VALUES (12, 1, NULL, '2020-08-04 00:00:00', '1', '2', 'administrator', '0', 'administrator', '2020-08-13 19:41:27', 'administrator', '2020-08-13 19:41:49', '100->90');
INSERT INTO `wms_stock_out` VALUES (13, 1, NULL, '2020-08-13 19:42:31', '2', '2', 'jt', '0', 'administrator', '2020-08-13 19:42:31', NULL, NULL, '90=>80');
INSERT INTO `wms_stock_out` VALUES (14, 2, NULL, '2020-08-18 00:00:00', '0', '0', 'admin', '0', 'administrator', '2020-08-14 12:57:42', NULL, NULL, NULL);
INSERT INTO `wms_stock_out` VALUES (15, 1, NULL, '2020-08-14 14:46:01', '3', '2', 'jt', '0', 'administrator', '2020-08-14 14:46:01', NULL, NULL, '80=>75');
INSERT INTO `wms_stock_out` VALUES (16, 1, '111', '2020-07-28 00:00:00', '0', '2', '00017162', '0', 'administrator', '2020-08-22 10:26:44', 'test', '2020-08-22 10:29:35', NULL);
INSERT INTO `wms_stock_out` VALUES (17, 1, '222', '2020-08-12 00:00:00', '0', '2', 'test', '0', 'administrator', '2020-08-22 10:30:31', 'test', '2020-08-22 10:31:10', NULL);
INSERT INTO `wms_stock_out` VALUES (18, 2, '盘点出库', '2020-08-22 13:00:05', '3', '2', 'test', '0', 'administrator', '2020-08-22 13:00:05', NULL, NULL, NULL);
INSERT INTO `wms_stock_out` VALUES (19, 2, '调拨出库', '2020-08-22 15:42:56', '2', '2', 'administrator', '0', 'administrator', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_out` VALUES (20, 2, '盘点出库', '2020-08-22 16:47:55', '3', '2', 'administrator', '0', 'administrator', '2020-08-22 16:47:55', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wms_stock_product
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_product`;
CREATE TABLE `wms_stock_product`  (
  `stock_product_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `op_id` bigint(20) NULL DEFAULT NULL COMMENT '操作ID  入库 出库 调拨  盘点等',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品ID',
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `product_num1` int(11) NULL DEFAULT NULL COMMENT '产品数量或之前数量',
  `product_num2` int(11) NULL DEFAULT NULL COMMENT '产品数量或之后数量',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（ 入库 出库 调拨  盘点等）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stock_product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存操作和产品对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_stock_product
-- ----------------------------
INSERT INTO `wms_stock_product` VALUES (24, 41, 8, '剃须刀190系', 100, NULL, '0', '0', NULL, '2020-08-21 17:39:36', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (25, 41, 9, '电吹风7260', 100, NULL, '0', '0', NULL, '2020-08-21 17:39:36', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (26, 42, 9, '电吹风7260', 100, NULL, '0', '0', 'admin', '2020-08-21 17:43:05', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (27, 42, 8, '剃须刀190系', 100, NULL, '0', '0', 'admin', '2020-08-21 17:43:05', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (30, 43, 8, '剃须刀190系', 100, NULL, '0', '0', NULL, '2020-08-21 17:44:45', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (31, 43, 9, '电吹风7260', 100, NULL, '0', '0', NULL, '2020-08-21 17:44:45', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (34, 44, 8, '剃须刀190系', 100, NULL, '0', '0', NULL, '2020-08-21 17:47:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (35, 44, 9, '电吹风7260', 100, NULL, '0', '0', NULL, '2020-08-21 17:47:39', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (38, 45, 9, '电吹风7260', 100, NULL, '0', '0', NULL, '2020-08-21 17:53:30', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (39, 45, 8, '剃须刀190系', 100, NULL, '0', '0', NULL, '2020-08-21 17:53:30', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (41, 24, 8, '剃须刀190系', 1, NULL, '0', '0', NULL, '2020-08-21 18:44:20', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (46, 16, 9, '电吹风7260', 100, NULL, '1', '0', NULL, '2020-08-22 10:29:21', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (47, 16, 8, '剃须刀190系', 100, NULL, '1', '0', NULL, '2020-08-22 10:29:21', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (52, 17, 8, '剃须刀190系', 10, NULL, '1', '0', NULL, '2020-08-22 10:31:08', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (53, 17, 9, '电吹风7260', 10, NULL, '1', '0', NULL, '2020-08-22 10:31:08', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (54, 3, 8, '剃须刀190系', 20, 30, '1', '0', 'admin', '2020-08-22 12:02:55', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (57, 3, 8, '剃须刀190系', 20, 30, '3', '0', NULL, '2020-08-22 12:47:07', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (58, 46, NULL, NULL, NULL, NULL, '0', '0', 'admin', '2020-08-22 12:47:09', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (60, 4, 8, '剃须刀190系', 20, 30, '3', '0', NULL, '2020-08-22 12:54:55', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (61, 4, 8, '剃须刀190系', 30, 40, '3', '0', NULL, '2020-08-22 12:54:55', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (62, 47, 8, '剃须刀190系', 10, NULL, '0', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (63, 48, 8, '剃须刀190系', 10, NULL, '0', '0', 'admin', '2020-08-22 12:54:59', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (66, 5, 8, '剃须刀190系', 40, 50, '3', '0', NULL, '2020-08-22 12:59:17', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (67, 49, 8, '剃须刀190系', 10, NULL, '0', '0', 'admin', '2020-08-22 12:59:20', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (69, 6, 8, '剃须刀190系', 50, 40, '3', '0', NULL, '2020-08-22 13:00:02', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (70, 18, 8, '剃须刀190系', 10, NULL, '1', '0', 'admin', '2020-08-22 13:00:05', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (73, 8, 8, '剃须刀190系', 365, 100, '2', '0', NULL, '2020-08-22 15:13:27', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (74, 8, 9, '电吹风7260', 90, 10, '2', '0', NULL, '2020-08-22 15:13:27', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (81, 9, 9, '电吹风7260', 10, 1, '2', '0', NULL, '2020-08-22 15:36:17', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (82, 9, 8, '剃须刀190系', 140, 40, '2', '0', NULL, '2020-08-22 15:36:17', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (83, 19, 9, '电吹风7260', 1, NULL, '1', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (84, 50, 9, '电吹风7260', 1, NULL, '0', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (85, 19, 8, '剃须刀190系', 40, NULL, '1', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (86, 50, 8, '剃须刀190系', 40, NULL, '0', '0', 'admin', '2020-08-22 15:42:56', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (89, 8, 9, '电吹风7260', 9, 90, '3', '0', NULL, '2020-08-22 16:47:52', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (90, 8, 8, '剃须刀190系', 100, 10, '3', '0', NULL, '2020-08-22 16:47:52', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (91, 51, 9, '电吹风7260', 81, NULL, '0', '0', 'admin', '2020-08-22 16:47:55', NULL, NULL, NULL);
INSERT INTO `wms_stock_product` VALUES (92, 20, 8, '剃须刀190系', 90, NULL, '1', '0', 'admin', '2020-08-22 16:47:55', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wms_storage
-- ----------------------------
DROP TABLE IF EXISTS `wms_storage`;
CREATE TABLE `wms_storage`  (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
  `storage_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库编码',
  `storage_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `storage_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库状态（0：未启用     1：启用）',
  `storage_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `belong_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `image` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '仓库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_storage
-- ----------------------------
INSERT INTO `wms_storage` VALUES (1, '001', '一号仓库', '1', '一号仓库', '11', '11', NULL, NULL, NULL, NULL, '2020-07-29 17:35:40', NULL, NULL, '11');
INSERT INTO `wms_storage` VALUES (2, '002', '二号仓库', '1', '二号仓库', '二号仓库', '123123123123', NULL, NULL, NULL, NULL, '2020-07-30 09:05:13', NULL, NULL, '111');

-- ----------------------------
-- Table structure for wms_supplier
-- ----------------------------
DROP TABLE IF EXISTS `wms_supplier`;
CREATE TABLE `wms_supplier`  (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `supplier_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `name_short` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商简称',
  `leader` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `duty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传值',
  `website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `industry` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属行业（字典型）',
  `supplier_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商I状态（未供货、已供货）',
  `supplier_degree` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商等级（优质、中等、一般、、、)',
  `supplier_credit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商信誉度（字典 分星展示）',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别（保留）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像（保留）',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq（保留）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_supplier
-- ----------------------------
INSERT INTO `wms_supplier` VALUES (5, '索玛电机有限公司', '索玛电机', '王小姐', '销售', '浙江', '63055538', '13348967821', '641904958@qq.com', '0721-63055538', 'www.wwollfman.vip', '610000', NULL, NULL, NULL, NULL, '5', '1', '2', '2', NULL, NULL, NULL, '0', 'admin', '2020-07-27 15:50:53', 'admin', '2020-07-27 16:53:07', NULL);

SET FOREIGN_KEY_CHECKS = 1;
