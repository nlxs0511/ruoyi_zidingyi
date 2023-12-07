/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 01/12/2023 17:25:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 't_stock_code', '神秘代码表', NULL, NULL, 'TStockCode', 'crud', 'com.ruoyi.system', 'system', 'code', '神秘代码', 'ruoyi', '0', '/', NULL, 'admin', '2023-09-21 16:14:42', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(0) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (23, '3', 'id', '岗位ID', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-21 16:14:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '3', 'code', '编码', 'varchar(64)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-21 16:14:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '3', 'name', '名称', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-09-21 16:14:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '3', 'sort', '显示顺序', 'int', 'Long', 'sort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-09-21 16:14:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '3', 'status', '状态（0正常 1停用）', 'int', 'Long', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-09-21 16:14:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '3', 'user_id', '用户id', 'int', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-09-21 16:14:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-09-21 16:14:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-09-21 16:14:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-09-21 16:14:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-09-21 16:14:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, '3', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2023-09-21 16:14:43', '', NULL);

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(0) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(0) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(0) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018AB5CE6CD878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018AB5CE6CD878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000018AB5CE6CD878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(0) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(0) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'JYDZ2080041701396089676', 1701399905111, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  `repeat_count` bigint(0) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(0) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(0) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'QRTZ_TRIGGERS表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(0) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(0) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(0) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(0) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(0) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(0) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(0) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(0) NOT NULL COMMENT '开始时间',
  `end_time` bigint(0) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(0) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1701396090000, -1, 5, 'PAUSED', 'CRON', 1701396089000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1701396090000, -1, 5, 'PAUSED', 'CRON', 1701396090000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1701396100000, -1, 5, 'PAUSED', 'CRON', 1701396090000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2023-09-21 11:35:19', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '分时', 'http://image.sinajs.cn/newchart/min/n/', 'sys.code.url', NULL, 'default', 'Y', '0', 'admin', '2023-09-21 16:31:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '日K', 'http://image.sinajs.cn/newchart/daily/n/', 'sys.code.url', NULL, 'default', 'Y', '0', 'admin', '2023-09-21 16:32:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '周K', 'http://image.sinajs.cn/newchart/weekly/n/', 'sys.code.url', NULL, 'default', 'Y', '0', 'admin', '2023-09-21 16:32:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '月K', 'http://image.sinajs.cn/newchart/monthly/n/', 'sys.code.url', NULL, 'default', 'Y', '0', 'admin', '2023-09-21 16:33:01', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '代码', 'sys.code.url', '0', 'admin', '2023-09-21 16:29:18', '', NULL, '神秘代码类别');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-09-21 11:35:19', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 11:41:52');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 14:30:39');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-21 14:34:26');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 14:34:30');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 15:21:05');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 15:24:29');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 15:27:22');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 15:32:39');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 15:59:16');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 16:02:50');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-21 16:10:22');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 16:10:28');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 16:18:35');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 16:19:59');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-21 16:26:21');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 16:26:26');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:10:20');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:18:45');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:19:43');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:22:27');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-21 17:24:55');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:24:59');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:39:27');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:47:02');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:50:06');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 17:53:09');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-21 18:33:39');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 08:33:28');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 08:33:31');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 08:41:29');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 08:42:50');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 08:55:19');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 14:55:21');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:07:08');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:11:35');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:23:36');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:29:10');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:30:58');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:33:04');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:34:53');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:37:18');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 15:40:27');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:40:31');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 15:55:36');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:05:19');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:09:27');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:10:52');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 16:16:42');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:16:45');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:21:58');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 16:28:23');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 17:23:24');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 17:23:26');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-22 17:24:43');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 17:24:50');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 17:24:51');
INSERT INTO `sys_logininfor` VALUES (156, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-22 17:35:28');
INSERT INTO `sys_logininfor` VALUES (157, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-22 17:35:48');
INSERT INTO `sys_logininfor` VALUES (158, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-09-22 17:35:54');
INSERT INTO `sys_logininfor` VALUES (159, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-22 17:36:48');
INSERT INTO `sys_logininfor` VALUES (160, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-22 17:37:38');
INSERT INTO `sys_logininfor` VALUES (161, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-22 17:37:53');
INSERT INTO `sys_logininfor` VALUES (162, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 17:37:56');
INSERT INTO `sys_logininfor` VALUES (163, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 17:44:16');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-22 17:51:27');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 17:51:32');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-22 18:06:02');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-25 17:01:31');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-25 17:01:35');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-09-25 17:01:44');
INSERT INTO `sys_logininfor` VALUES (170, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-25 17:02:10');
INSERT INTO `sys_logininfor` VALUES (171, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-09-25 17:02:13');
INSERT INTO `sys_logininfor` VALUES (172, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-09-25 17:02:18');
INSERT INTO `sys_logininfor` VALUES (173, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-09-25 17:02:22');
INSERT INTO `sys_logininfor` VALUES (174, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-09-25 17:02:25');
INSERT INTO `sys_logininfor` VALUES (175, 'aa', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-25 17:04:03');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-30 15:39:32');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2023-09-21 11:35:19', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2023-09-21 11:35:19', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2023-09-21 11:35:19', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2023-09-21 11:35:19', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2023-09-21 11:35:19', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2023-09-21 11:35:19', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2023-09-21 11:35:19', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2023-09-21 11:35:19', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2023-09-21 11:35:19', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2023-09-21 11:35:19', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2023-09-21 11:35:19', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2023-09-21 11:35:19', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2023-09-21 11:35:19', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2023-09-21 11:35:19', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2023-09-21 11:35:19', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2023-09-21 11:35:19', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2023-09-21 11:35:19', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2023-09-21 11:35:19', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2023-09-21 11:35:19', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2023-09-21 11:35:19', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2023-09-21 11:35:19', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2023-09-21 11:35:19', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2023-09-21 11:35:19', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2023-09-21 11:35:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '神秘代码', 0, 3, '/stocker/code', 'menuItem', 'C', '0', '0', '', 'fa fa-book', 'admin', '2023-09-21 14:22:28', 'admin', '2023-09-21 17:59:23', '');
INSERT INTO `sys_menu` VALUES (2001, 'excel版', 2000, 1, '/stocker/code/getExcel', 'menuItem', 'C', '0', '1', '', 'fa fa-newspaper-o', 'admin', '2023-09-21 17:59:12', 'admin', '2023-09-21 18:04:10', '');
INSERT INTO `sys_menu` VALUES (2002, '联系人', 0, 1, '/chat/index', 'menuItem', 'C', '0', '0', NULL, 'fa fa-address-book-o', 'admin', '2023-09-22 16:34:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2023-09-21 11:35:19', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '返回参数',
  `status` int(0) DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"神秘代码\"],\"url\":[\"sys/aasa\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 14:22:28');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"神秘代码\"],\"url\":[\"stocker/index\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 14:31:06');
INSERT INTO `sys_oper_log` VALUES (102, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":[\"CREATE TABLE `t_stock_code` (\\n  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',\\n  `code` varchar(64) NOT NULL COMMENT \'编码\',\\n  `name` varchar(50) NOT NULL COMMENT \'名称\',\\n  `sort` int NOT NULL COMMENT \'显示顺序\',\\n  `status` int NOT NULL COMMENT \'用户id\',\\n  `user_id` char(1) NOT NULL COMMENT \'状态（0正常 1停用）\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'神秘代码表\';\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists\r\n### The error may exist in file [E:\\krystal\\kaiyuan\\RuoYi\\ruoyi-generator\\target\\classes\\mapper\\generator\\GenTableMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: CREATE TABLE `t_stock_code` (  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',  `code` varchar(64) NOT NULL COMMENT \'编码\',  `name` varchar(50) NOT NULL COMMENT \'名称\',  `sort` int NOT NULL COMMENT \'显示顺序\',  `status` int NOT NULL COMMENT \'用户id\',  `user_id` char(1) NOT NULL COMMENT \'状态（0正常 1停用）\',  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',  PRIMARY KEY (`id`) ) ENGINE = InnoDB CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT \'神秘代码表\';\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists', '2023-09-21 15:52:59');
INSERT INTO `sys_oper_log` VALUES (103, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":[\"CREATE TABLE `t_stock_code` (\\n  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',\\n  `code` varchar(64) NOT NULL COMMENT \'编码\',\\n  `name` varchar(50) NOT NULL COMMENT \'名称\',\\n  `sort` int NOT NULL COMMENT \'显示顺序\',\\n  `status` int NOT NULL COMMENT \'用户id\',\\n  `user_id` char(1) NOT NULL COMMENT \'状态（0正常 1停用）\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'神秘代码表\';\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 15:53:21');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_stock_code', '127.0.0.1', '内网IP', '\"t_stock_code\"', NULL, 0, NULL, '2023-09-21 15:53:38');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"神秘代码\"],\"url\":[\"/stocker/code/code\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 15:59:38');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"神秘代码\"],\"url\":[\"/stocker/code\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:00:30');
INSERT INTO `sys_oper_log` VALUES (107, '神秘代码', 1, 'com.ruoyi.web.controller.stocker.TStockCodeController.addSave()', 'POST', 1, 'admin', '研发部门', '/stocker/code/add', '127.0.0.1', '内网IP', '{\"code\":[\"SZ300045\"],\"name\":[\"华力科技\"],\"sort\":[\"1\"],\"status\":[\"\"],\"userId\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'status\' doesn\'t have a default value\r\n### The error may exist in file [E:\\krystal\\kaiyuan\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TStockCodeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TStockCodeMapper.insertTStockCode-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_stock_code          ( code,             name,             sort,                          user_id,                          create_time,                                       remark )           values ( ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'status\' doesn\'t have a default value\n; Field \'status\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'status\' doesn\'t have a default value', '2023-09-21 16:03:55');
INSERT INTO `sys_oper_log` VALUES (108, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":[\"CREATE TABLE `t_stock_code` (\\n  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',\\n  `code` varchar(64) NOT NULL COMMENT \'编码\',\\n  `name` varchar(50) NOT NULL COMMENT \'名称\',\\n  `sort` int NOT NULL COMMENT \'显示顺序\',\\n  `status` int NOT NULL COMMENT \'状态（0正常 1停用）\',\\n  `user_id` int  NOT NULL COMMENT \'用户id\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'神秘代码表\';\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:06:20');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_stock_code', '127.0.0.1', '内网IP', '\"t_stock_code\"', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2023-09-21 16:06:25');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:06:44');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_stock_code', '127.0.0.1', '内网IP', '\"t_stock_code\"', NULL, 0, NULL, '2023-09-21 16:06:47');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:14:26');
INSERT INTO `sys_oper_log` VALUES (113, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":[\"CREATE TABLE `t_stock_code` (\\n  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',\\n  `code` varchar(64) NOT NULL COMMENT \'编码\',\\n  `name` varchar(50) NOT NULL COMMENT \'名称\',\\n  `sort` int NOT NULL COMMENT \'显示顺序\',\\n  `status` int NOT NULL COMMENT \'状态（0正常 1停用）\',\\n  `user_id` int NOT NULL COMMENT \'用户id\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'神秘代码表\';\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists\r\n### The error may exist in file [E:\\krystal\\kaiyuan\\RuoYi\\ruoyi-generator\\target\\classes\\mapper\\generator\\GenTableMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: CREATE TABLE `t_stock_code` (  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',  `code` varchar(64) NOT NULL COMMENT \'编码\',  `name` varchar(50) NOT NULL COMMENT \'名称\',  `sort` int NOT NULL COMMENT \'显示顺序\',  `status` int NOT NULL COMMENT \'状态（0正常 1停用）\',  `user_id` int NOT NULL COMMENT \'用户id\',  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',  PRIMARY KEY (`id`) ) ENGINE = InnoDB CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT \'神秘代码表\';\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'t_stock_code\' already exists', '2023-09-21 16:14:29');
INSERT INTO `sys_oper_log` VALUES (114, '创建表', 0, 'com.ruoyi.generator.controller.GenController.create()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":[\"CREATE TABLE `t_stock_code` (\\n  `id` bigint NOT NULL AUTO_INCREMENT COMMENT \'岗位ID\',\\n  `code` varchar(64) NOT NULL COMMENT \'编码\',\\n  `name` varchar(50) NOT NULL COMMENT \'名称\',\\n  `sort` int NOT NULL COMMENT \'显示顺序\',\\n  `status` int NOT NULL COMMENT \'状态（0正常 1停用）\',\\n  `user_id` int NOT NULL COMMENT \'用户id\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'神秘代码表\';\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:14:43');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/t_stock_code', '127.0.0.1', '内网IP', '\"t_stock_code\"', NULL, 0, NULL, '2023-09-21 16:15:09');
INSERT INTO `sys_oper_log` VALUES (116, '神秘代码', 1, 'com.ruoyi.web.controller.stocker.TStockCodeController.addSave()', 'POST', 1, 'admin', '研发部门', '/stocker/code/add', '127.0.0.1', '内网IP', '{\"code\":[\"SZ300045\"],\"name\":[\"华力科技\"],\"sort\":[\"1\"],\"status\":[\"\"],\"userId\":[\"1\"],\"remark\":[\"\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'status\' doesn\'t have a default value\r\n### The error may exist in file [E:\\krystal\\kaiyuan\\RuoYi\\ruoyi-system\\target\\classes\\mapper\\system\\TStockCodeMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.TStockCodeMapper.insertTStockCode-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_stock_code          ( code,             name,             sort,                          user_id,                          create_time,                                       remark )           values ( ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'status\' doesn\'t have a default value\n; Field \'status\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'status\' doesn\'t have a default value', '2023-09-21 16:20:19');
INSERT INTO `sys_oper_log` VALUES (117, '神秘代码', 1, 'com.ruoyi.web.controller.stocker.TStockCodeController.addSave()', 'POST', 1, 'admin', '研发部门', '/stocker/code/add', '127.0.0.1', '内网IP', '{\"code\":[\"SZ300045\"],\"name\":[\"华力科技\"],\"sort\":[\"1\"],\"status\":[\"0\"],\"userId\":[\"1\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:26:35');
INSERT INTO `sys_oper_log` VALUES (118, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"代码\"],\"dictType\":[\"sys.code.url\"],\"status\":[\"0\"],\"remark\":[\"神秘代码类别\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:29:18');
INSERT INTO `sys_oper_log` VALUES (119, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"分时\"],\"dictValue\":[\"http://image.sinajs.cn/newchart/min/n/\"],\"dictType\":[\"sys.code.url\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:31:52');
INSERT INTO `sys_oper_log` VALUES (120, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"日K\"],\"dictValue\":[\"http://image.sinajs.cn/newchart/daily/n/\"],\"dictType\":[\"sys.code.url\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:32:14');
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"周K\"],\"dictValue\":[\"http://image.sinajs.cn/newchart/weekly/n/\"],\"dictType\":[\"sys.code.url\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:32:39');
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"月K\"],\"dictValue\":[\"http://image.sinajs.cn/newchart/monthly/n/\"],\"dictType\":[\"sys.code.url\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 16:33:01');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"excel版\"],\"url\":[\"/stocker/getExcel\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-newspaper-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 17:59:12');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"神秘代码\"],\"url\":[\"/stocker/code\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 17:59:23');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"excel版\"],\"url\":[\"/stocker/code/getExcel\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-newspaper-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-21 18:04:10');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"联系人\"],\"url\":[\"/chat/index\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-22 16:34:20');
INSERT INTO `sys_oper_log` VALUES (127, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"aa\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-22 17:36:35');
INSERT INTO `sys_oper_log` VALUES (128, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"aa\"],\"dept.deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-09-22 17:46:20');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-09-21 11:35:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-09-21 11:35:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-09-21 11:35:18', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-09-21 11:35:18', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2023-09-21 11:35:18', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2023-11-30 15:39:32', '2023-09-21 11:35:18', 'admin', '2023-09-21 11:35:18', '', '2023-11-30 15:39:32', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2023-09-21 11:35:18', '2023-09-21 11:35:18', 'admin', '2023-09-21 11:35:18', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'aa', 'aa', '00', '', '', '0', '', 'd648e9d79eef28c5539de6adf95f85ef', '81cbd1', '0', '0', '127.0.0.1', '2023-09-25 17:04:03', NULL, 'admin', '2023-09-22 17:36:35', 'admin', '2023-09-25 17:04:03', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(0) DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for t_stock_code
-- ----------------------------
DROP TABLE IF EXISTS `t_stock_code`;
CREATE TABLE `t_stock_code`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` int(0) NOT NULL COMMENT '状态（0正常 1停用）',
  `user_id` int(0) DEFAULT NULL COMMENT '用户id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5086 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '神秘代码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_stock_code
-- ----------------------------
INSERT INTO `t_stock_code` VALUES (1, 'sz300045', '华力科技', 1, 0, 1, '', '2023-09-21 16:26:36', '', '2023-09-21 17:26:26', '');
INSERT INTO `t_stock_code` VALUES (2, '000001.SZ', '平安银行', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (3, '000002.SZ', '万科A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (4, '000004.SZ', 'ST国华', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (5, '000005.SZ', 'ST星源', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (6, '000006.SZ', '深振业A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (7, '000007.SZ', '*ST全新', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (8, '000008.SZ', '神州高铁', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (9, '000009.SZ', '中国宝安', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (10, '000010.SZ', '美丽生态', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (11, '000011.SZ', '深物业A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (12, '000012.SZ', '南玻A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (13, '000014.SZ', '沙河股份', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (14, '000016.SZ', '深康佳A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (15, '000017.SZ', '深中华A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (16, '000019.SZ', '深粮控股', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (17, '000020.SZ', '深华发A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (18, '000021.SZ', '深科技', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (19, '000023.SZ', 'ST深天', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (20, '000025.SZ', '特力A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (21, '000026.SZ', '飞亚达', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (22, '000027.SZ', '深圳能源', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (23, '000028.SZ', '国药一致', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (24, '000029.SZ', '深深房A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (25, '000030.SZ', '富奥股份', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (26, '000031.SZ', '大悦城', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (27, '000032.SZ', '深桑达A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (28, '000034.SZ', '神州数码', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (29, '000035.SZ', '中国天楹', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (30, '000036.SZ', '华联控股', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (31, '000037.SZ', '深南电A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (32, '000038.SZ', '*ST大通', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (33, '000039.SZ', '中集集团', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (34, '000040.SZ', '东旭蓝天', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (35, '000042.SZ', '中洲控股', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (36, '000045.SZ', '深纺织A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (37, '000046.SZ', '*ST泛海', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (38, '000048.SZ', '京基智农', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (39, '000049.SZ', '德赛电池', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (40, '000050.SZ', '深天马A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (41, '000055.SZ', '方大集团', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (42, '000056.SZ', '皇庭国际', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (43, '000058.SZ', '深赛格', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (44, '000059.SZ', '华锦股份', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (45, '000060.SZ', '中金岭南', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (46, '000061.SZ', '农产品', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (47, '000062.SZ', '深圳华强', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (48, '000063.SZ', '中兴通讯', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (49, '000065.SZ', '北方国际', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (50, '000066.SZ', '中国长城', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (51, '000068.SZ', '华控赛格', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (52, '000069.SZ', '华侨城A', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (53, '000070.SZ', '特发信息', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (54, '000078.SZ', '海王生物', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (55, '000088.SZ', '盐田港', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (56, '000089.SZ', '深圳机场', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (57, '000090.SZ', '天健集团', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (58, '000096.SZ', '广聚能源', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (59, '000099.SZ', '中信海直', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (60, '000100.SZ', 'TCL科技', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (61, '000150.SZ', '*ST宜康', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (62, '000151.SZ', '中成股份', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (63, '000153.SZ', '丰原药业', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (64, '000155.SZ', '川能动力', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (65, '000156.SZ', '华数传媒', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (66, '000157.SZ', '中联重科', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (67, '000158.SZ', '常山北明', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (68, '000159.SZ', '国际实业', 1, 0, NULL, '', '2023-09-22 17:22:31', '', '2023-09-22 17:22:31', NULL);
INSERT INTO `t_stock_code` VALUES (69, '000166.SZ', '申万宏源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (70, '000301.SZ', '东方盛虹', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (71, '000333.SZ', '美的集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (72, '000338.SZ', '潍柴动力', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (73, '000400.SZ', '许继电气', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (74, '000401.SZ', '冀东水泥', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (75, '000402.SZ', '金融街', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (76, '000403.SZ', '派林生物', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (77, '000404.SZ', '长虹华意', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (78, '000407.SZ', '胜利股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (79, '000408.SZ', '藏格矿业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (80, '000409.SZ', '云鼎科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (81, '000410.SZ', '*ST沈机', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (82, '000411.SZ', '英特集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (83, '000413.SZ', '东旭光电', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (84, '000415.SZ', '渤海租赁', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (85, '000416.SZ', '*ST民控', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (86, '000417.SZ', '合肥百货', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (87, '000419.SZ', '通程控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (88, '000420.SZ', '吉林化纤', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (89, '000421.SZ', '南京公用', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (90, '000422.SZ', '湖北宜化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (91, '000423.SZ', '东阿阿胶', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (92, '000425.SZ', '徐工机械', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (93, '000426.SZ', '兴业矿业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (94, '000428.SZ', '华天酒店', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (95, '000429.SZ', '粤高速A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (96, '000430.SZ', '张家界', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (97, '000488.SZ', '晨鸣纸业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (98, '000498.SZ', '山东路桥', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (99, '000501.SZ', '武商集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (100, '000503.SZ', '国新健康', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (101, '000504.SZ', '南华生物', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (102, '000505.SZ', '京粮控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (103, '000506.SZ', '中润资源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (104, '000507.SZ', '珠海港', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (105, '000509.SZ', '华塑控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (106, '000510.SZ', '新金路', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (107, '000513.SZ', '丽珠集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (108, '000514.SZ', '渝开发', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (109, '000516.SZ', '国际医学', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (110, '000517.SZ', '荣安地产', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (111, '000518.SZ', '四环生物', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (112, '000519.SZ', '中兵红箭', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (113, '000520.SZ', '长航凤凰', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (114, '000521.SZ', '长虹美菱', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (115, '000523.SZ', '广州浪奇', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (116, '000524.SZ', '岭南控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (117, '000525.SZ', 'ST红太阳', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (118, '000526.SZ', '学大教育', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (119, '000528.SZ', '柳工', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (120, '000529.SZ', '广弘控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (121, '000530.SZ', '冰山冷热', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (122, '000531.SZ', '穗恒运A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (123, '000532.SZ', '华金资本', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (124, '000533.SZ', '顺钠股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (125, '000534.SZ', '万泽股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (126, '000536.SZ', '华映科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (127, '000537.SZ', '广宇发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (128, '000538.SZ', '云南白药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (129, '000539.SZ', '粤电力A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (130, '000540.SZ', '*ST中天', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (131, '000541.SZ', '佛山照明', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (132, '000543.SZ', '皖能电力', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (133, '000544.SZ', '中原环保', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (134, '000545.SZ', '金浦钛业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (135, '000546.SZ', '金圆股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (136, '000547.SZ', '航天发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (137, '000548.SZ', '湖南投资', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (138, '000550.SZ', '江铃汽车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (139, '000551.SZ', '创元科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (140, '000552.SZ', '甘肃能化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (141, '000553.SZ', '安道麦A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (142, '000554.SZ', '泰山石油', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (143, '000555.SZ', '神州信息', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (144, '000557.SZ', '西部创业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (145, '000558.SZ', '莱茵体育', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (146, '000559.SZ', '万向钱潮', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (147, '000560.SZ', '我爱我家', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (148, '000561.SZ', '烽火电子', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (149, '000563.SZ', '陕国投A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (150, '000564.SZ', 'ST大集', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (151, '000565.SZ', '渝三峡A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (152, '000566.SZ', '海南海药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (153, '000567.SZ', '海德股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (154, '000568.SZ', '泸州老窖', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (155, '000570.SZ', '苏常柴A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (156, '000571.SZ', 'ST大洲', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (157, '000572.SZ', '海马汽车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (158, '000573.SZ', '粤宏远A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (159, '000576.SZ', '甘化科工', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (160, '000581.SZ', '威孚高科', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (161, '000582.SZ', '北部湾港', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (162, '000584.SZ', 'ST工智', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (163, '000586.SZ', '汇源通信', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (164, '000589.SZ', '贵州轮胎', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (165, '000590.SZ', '启迪药业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (166, '000591.SZ', '太阳能', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (167, '000592.SZ', '平潭发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (168, '000593.SZ', '德龙汇能', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (169, '000595.SZ', '宝塔实业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (170, '000596.SZ', '古井贡酒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (171, '000597.SZ', '东北制药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (172, '000598.SZ', '兴蓉环境', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (173, '000599.SZ', '青岛双星', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (174, '000600.SZ', '建投能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (175, '000601.SZ', '韶能股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (176, '000603.SZ', '盛达资源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (177, '000605.SZ', '渤海股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (178, '000606.SZ', '*ST顺利', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (179, '000607.SZ', '华媒控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (180, '000608.SZ', '阳光股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (181, '000609.SZ', '中迪投资', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (182, '000610.SZ', '西安旅游', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (183, '000612.SZ', '焦作万方', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (184, '000615.SZ', '*ST美谷', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (185, '000616.SZ', '*ST海投', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (186, '000617.SZ', '中油资本', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (187, '000619.SZ', '海螺新材', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (188, '000620.SZ', '*ST新联', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (189, '000622.SZ', '恒立实业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (190, '000623.SZ', '吉林敖东', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (191, '000625.SZ', '长安汽车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (192, '000626.SZ', '远大控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (193, '000627.SZ', '天茂集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (194, '000628.SZ', '高新发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (195, '000629.SZ', '钒钛股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (196, '000630.SZ', '铜陵有色', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (197, '000631.SZ', '顺发恒业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (198, '000632.SZ', '三木集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (199, '000633.SZ', '合金投资', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (200, '000635.SZ', '英力特', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (201, '000636.SZ', '风华高科', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (202, '000637.SZ', 'ST实华', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (203, '000638.SZ', '万方发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (204, '000639.SZ', '西王食品', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (205, '000650.SZ', '仁和药业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (206, '000651.SZ', '格力电器', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (207, '000652.SZ', '泰达股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (208, '000655.SZ', '金岭矿业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (209, '000656.SZ', '金科股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (210, '000657.SZ', '中钨高新', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (211, '000659.SZ', '珠海中富', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (212, '000661.SZ', '长春高新', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (213, '000663.SZ', '永安林业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (214, '000665.SZ', '湖北广电', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (215, '000666.SZ', '经纬纺机', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (216, '000667.SZ', 'ST美置', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (217, '000668.SZ', '荣丰控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (218, '000669.SZ', 'ST金鸿', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (219, '000670.SZ', '盈方微', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (220, '000671.SZ', 'ST阳光城', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (221, '000672.SZ', '上峰水泥', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (222, '000676.SZ', '智度股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (223, '000677.SZ', '恒天海龙', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (224, '000678.SZ', '襄阳轴承', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (225, '000679.SZ', '大连友谊', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (226, '000680.SZ', '山推股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (227, '000681.SZ', '视觉中国', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (228, '000682.SZ', '东方电子', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (229, '000683.SZ', '远兴能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (230, '000685.SZ', '中山公用', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (231, '000686.SZ', '东北证券', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (232, '000688.SZ', '国城矿业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (233, '000690.SZ', '宝新能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (234, '000691.SZ', '亚太实业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (235, '000692.SZ', '*ST惠天', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (236, '000695.SZ', '滨海能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (237, '000697.SZ', '*ST炼石', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (238, '000698.SZ', '沈阳化工', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (239, '000700.SZ', '模塑科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (240, '000701.SZ', '厦门信达', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (241, '000702.SZ', '正虹科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (242, '000703.SZ', '恒逸石化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (243, '000705.SZ', '浙江震元', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (244, '000707.SZ', '双环科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (245, '000708.SZ', '中信特钢', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (246, '000709.SZ', '河钢股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (247, '000710.SZ', '贝瑞基因', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (248, '000711.SZ', '*ST京蓝', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (249, '000712.SZ', '锦龙股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (250, '000713.SZ', '丰乐种业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (251, '000715.SZ', '中兴商业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (252, '000716.SZ', '黑芝麻', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (253, '000717.SZ', '中南股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (254, '000718.SZ', '苏宁环球', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (255, '000719.SZ', '中原传媒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (256, '000720.SZ', '新能泰山', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (257, '000721.SZ', '西安饮食', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (258, '000722.SZ', '湖南发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (259, '000723.SZ', '美锦能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (260, '000725.SZ', '京东方A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (261, '000726.SZ', '鲁泰A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (262, '000727.SZ', '冠捷科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (263, '000728.SZ', '国元证券', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (264, '000729.SZ', '燕京啤酒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (265, '000731.SZ', '四川美丰', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (266, '000732.SZ', 'ST泰禾', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (267, '000733.SZ', '振华科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (268, '000735.SZ', '罗牛山', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (269, '000736.SZ', '中交地产', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (270, '000737.SZ', '北方铜业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (271, '000738.SZ', '航发控制', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (272, '000739.SZ', '普洛药业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (273, '000750.SZ', '国海证券', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (274, '000751.SZ', '锌业股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (275, '000752.SZ', '*ST西发', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (276, '000753.SZ', '漳州发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (277, '000755.SZ', '山西路桥', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (278, '000756.SZ', '新华制药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (279, '000757.SZ', '浩物股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (280, '000758.SZ', '中色股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (281, '000759.SZ', '中百集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (282, '000761.SZ', '本钢板材', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (283, '000762.SZ', '西藏矿业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (284, '000766.SZ', '通化金马', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (285, '000767.SZ', '晋控电力', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (286, '000768.SZ', '中航西飞', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (287, '000776.SZ', '广发证券', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (288, '000777.SZ', '中核科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (289, '000778.SZ', '新兴铸管', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (290, '000779.SZ', '甘咨询', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (291, '000782.SZ', '美达股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (292, '000783.SZ', '长江证券', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (293, '000785.SZ', '居然之家', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (294, '000786.SZ', '北新建材', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (295, '000788.SZ', '北大医药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (296, '000789.SZ', '万年青', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (297, '000790.SZ', '华神科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (298, '000791.SZ', '甘肃能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (299, '000792.SZ', '盐湖股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (300, '000793.SZ', '华闻集团', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (301, '000795.SZ', '英洛华', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (302, '000796.SZ', '*ST凯撒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (303, '000797.SZ', '中国武夷', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (304, '000798.SZ', '中水渔业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (305, '000799.SZ', '酒鬼酒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (306, '000800.SZ', '一汽解放', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (307, '000801.SZ', '四川九洲', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (308, '000802.SZ', '北京文化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (309, '000803.SZ', '山高环能', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (310, '000806.SZ', '*ST银河', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (311, '000807.SZ', '云铝股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (312, '000809.SZ', 'ST新城', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (313, '000810.SZ', '创维数字', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (314, '000811.SZ', '冰轮环境', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (315, '000812.SZ', '陕西金叶', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (316, '000813.SZ', '德展健康', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (317, '000815.SZ', '美利云', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (318, '000816.SZ', '智慧农业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (319, '000818.SZ', '航锦科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (320, '000819.SZ', '岳阳兴长', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (321, '000820.SZ', '神雾节能', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (322, '000821.SZ', '京山轻机', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (323, '000822.SZ', '山东海化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (324, '000823.SZ', '超声电子', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (325, '000825.SZ', '太钢不锈', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (326, '000826.SZ', '启迪环境', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (327, '000828.SZ', '东莞控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (328, '000829.SZ', '天音控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (329, '000830.SZ', '鲁西化工', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (330, '000831.SZ', '中国稀土', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (331, '000833.SZ', '粤桂股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (332, '000836.SZ', '富通信息', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (333, '000837.SZ', '秦川机床', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (334, '000838.SZ', '财信发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (335, '000839.SZ', 'ST国安', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (336, '000848.SZ', '承德露露', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (337, '000850.SZ', '华茂股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (338, '000851.SZ', '高鸿股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (339, '000852.SZ', '石化机械', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (340, '000856.SZ', '冀东装备', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (341, '000858.SZ', '五粮液', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (342, '000859.SZ', '国风新材', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (343, '000860.SZ', '顺鑫农业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (344, '000861.SZ', '海印股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (345, '000862.SZ', '银星能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (346, '000863.SZ', '三湘印象', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (347, '000868.SZ', '安凯客车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (348, '000869.SZ', '张裕A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (349, '000875.SZ', '吉电股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (350, '000876.SZ', '新希望', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (351, '000877.SZ', '天山股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (352, '000878.SZ', '云南铜业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (353, '000880.SZ', '潍柴重机', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (354, '000881.SZ', '中广核技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (355, '000882.SZ', '华联股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (356, '000883.SZ', '湖北能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (357, '000885.SZ', '城发环境', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (358, '000886.SZ', '海南高速', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (359, '000887.SZ', '中鼎股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (360, '000888.SZ', '峨眉山A', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (361, '000889.SZ', 'ST中嘉', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (362, '000890.SZ', '法尔胜', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (363, '000892.SZ', '欢瑞世纪', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (364, '000893.SZ', '亚钾国际', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (365, '000895.SZ', '双汇发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (366, '000897.SZ', '津滨发展', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (367, '000898.SZ', '鞍钢股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (368, '000899.SZ', '赣能股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (369, '000900.SZ', '现代投资', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (370, '000901.SZ', '航天科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (371, '000902.SZ', '新洋丰', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (372, '000903.SZ', '云内动力', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (373, '000905.SZ', '厦门港务', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (374, '000906.SZ', '浙商中拓', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (375, '000908.SZ', '景峰医药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (376, '000909.SZ', 'ST数源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (377, '000910.SZ', '大亚圣象', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (378, '000911.SZ', '南宁糖业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (379, '000912.SZ', '泸天化', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (380, '000913.SZ', '钱江摩托', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (381, '000915.SZ', '华特达因', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (382, '000917.SZ', '电广传媒', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (383, '000918.SZ', '*ST嘉凯', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (384, '000919.SZ', '金陵药业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (385, '000920.SZ', '沃顿科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (386, '000921.SZ', '海信家电', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (387, '000922.SZ', '佳电股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (388, '000923.SZ', '河钢资源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (389, '000925.SZ', '众合科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (390, '000926.SZ', '福星股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (391, '000927.SZ', '中国铁物', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (392, '000928.SZ', '中钢国际', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (393, '000929.SZ', '兰州黄河', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (394, '000930.SZ', '中粮科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (395, '000931.SZ', '中关村', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (396, '000932.SZ', '华菱钢铁', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (397, '000933.SZ', '神火股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (398, '000935.SZ', '四川双马', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (399, '000936.SZ', '华西股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (400, '000937.SZ', '冀中能源', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (401, '000938.SZ', '紫光股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (402, '000948.SZ', '南天信息', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (403, '000949.SZ', '新乡化纤', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (404, '000950.SZ', '重药控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (405, '000951.SZ', '中国重汽', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (406, '000952.SZ', '广济药业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (407, '000953.SZ', '河化股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (408, '000955.SZ', '欣龙控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (409, '000957.SZ', '中通客车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (410, '000958.SZ', '电投产融', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (411, '000959.SZ', '首钢股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (412, '000960.SZ', '锡业股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (413, '000961.SZ', '中南建设', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (414, '000962.SZ', '东方钽业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (415, '000963.SZ', '华东医药', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (416, '000965.SZ', '天保基建', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (417, '000966.SZ', '长源电力', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (418, '000967.SZ', '盈峰环境', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (419, '000968.SZ', '蓝焰控股', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (420, '000969.SZ', '安泰科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (421, '000970.SZ', '中科三环', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (422, '000971.SZ', 'ST高升', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (423, '000972.SZ', '中基健康', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (424, '000973.SZ', '佛塑科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (425, '000975.SZ', '银泰黄金', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (426, '000976.SZ', 'ST华铁', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (427, '000977.SZ', '浪潮信息', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (428, '000978.SZ', '桂林旅游', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (429, '000980.SZ', '众泰汽车', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (430, '000981.SZ', '山子股份', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (431, '000982.SZ', '中银绒业', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (432, '000983.SZ', '山西焦煤', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (433, '000985.SZ', '大庆华科', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (434, '000987.SZ', '越秀资本', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (435, '000988.SZ', '华工科技', 1, 0, NULL, '', '2023-09-22 17:22:32', '', '2023-09-22 17:22:32', NULL);
INSERT INTO `t_stock_code` VALUES (436, '000989.SZ', '九芝堂', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (437, '000990.SZ', '诚志股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (438, '000993.SZ', '闽东电力', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (439, '000995.SZ', '*ST皇台', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (440, '000996.SZ', '*ST中期', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (441, '000997.SZ', '新大陆', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (442, '000998.SZ', '隆平高科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (443, '000999.SZ', '华润三九', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (444, '001201.SZ', '东瑞股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (445, '001202.SZ', '炬申股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (446, '001203.SZ', '大中矿业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (447, '001205.SZ', '盛航股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (448, '001206.SZ', '依依股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (449, '001207.SZ', '联科科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (450, '001208.SZ', '华菱线缆', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (451, '001209.SZ', '洪兴股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (452, '001210.SZ', '金房能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (453, '001211.SZ', '双枪科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (454, '001212.SZ', '中旗新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (455, '001213.SZ', '中铁特货', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (456, '001215.SZ', '千味央厨', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (457, '001216.SZ', '华瓷股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (458, '001217.SZ', '华尔泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (459, '001218.SZ', '丽臣实业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (460, '001219.SZ', '青岛食品', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (461, '001222.SZ', '源飞宠物', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (462, '001223.SZ', '欧克科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (463, '001225.SZ', '和泰机电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (464, '001226.SZ', '拓山重工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (465, '001227.SZ', '兰州银行', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (466, '001228.SZ', '永泰运', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (467, '001229.SZ', '魅视科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (468, '001230.SZ', '劲旅环境', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (469, '001231.SZ', '农心科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (470, '001234.SZ', '泰慕士', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (471, '001236.SZ', '弘业期货', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (472, '001238.SZ', '浙江正特', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (473, '001255.SZ', '博菲电气', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (474, '001256.SZ', '炜冈科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (475, '001258.SZ', '立新能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (476, '001259.SZ', '利仁科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (477, '001260.SZ', '坤泰股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (478, '001266.SZ', '宏英智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (479, '001267.SZ', '汇绿生态', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (480, '001268.SZ', '联合精密', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (481, '001269.SZ', '欧晶科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (482, '001270.SZ', '铖昌科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (483, '001278.SZ', '一彬科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (484, '001283.SZ', '豪鹏科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (485, '001286.SZ', '陕西能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (486, '001287.SZ', '中电港', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (487, '001288.SZ', '运机集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (488, '001289.SZ', '龙源电力', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (489, '001296.SZ', '长江材料', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (490, '001298.SZ', '好上好', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (491, '001299.SZ', '美能能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (492, '001300.SZ', '三柏硕', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (493, '001301.SZ', '尚太科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (494, '001308.SZ', '康冠科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (495, '001309.SZ', '德明利', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (496, '001311.SZ', '多利科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (497, '001313.SZ', '粤海饲料', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (498, '001314.SZ', '亿道信息', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (499, '001316.SZ', '润贝航科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (500, '001317.SZ', '三羊马', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (501, '001318.SZ', '阳光乳业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (502, '001319.SZ', '铭科精技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (503, '001322.SZ', '箭牌家居', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (504, '001323.SZ', '慕思股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (505, '001328.SZ', '登康口腔', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (506, '001330.SZ', '博纳影业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (507, '001331.SZ', '胜通能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (508, '001332.SZ', '锡装股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (509, '001333.SZ', '光华股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (510, '001336.SZ', '楚环科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (511, '001337.SZ', '四川黄金', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (512, '001338.SZ', '永顺泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (513, '001339.SZ', '智微智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (514, '001360.SZ', '南矿集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (515, '001366.SZ', '播恩集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (516, '001367.SZ', '海森药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (517, '001368.SZ', '通达创智', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (518, '001696.SZ', '宗申动力', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (519, '001872.SZ', '招商港口', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (520, '001896.SZ', '豫能控股', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (521, '001914.SZ', '招商积余', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (522, '001965.SZ', '招商公路', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (523, '001979.SZ', '招商蛇口', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (524, '002001.SZ', '新和成', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (525, '002002.SZ', '鸿达兴业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (526, '002003.SZ', '伟星股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (527, '002004.SZ', '华邦健康', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (528, '002005.SZ', 'ST德豪', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (529, '002006.SZ', '精工科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (530, '002007.SZ', '华兰生物', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (531, '002008.SZ', '大族激光', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (532, '002009.SZ', '天奇股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (533, '002010.SZ', '传化智联', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (534, '002011.SZ', '盾安环境', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (535, '002012.SZ', '凯恩股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (536, '002014.SZ', '永新股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (537, '002015.SZ', '协鑫能科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (538, '002016.SZ', '世荣兆业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (539, '002017.SZ', '东信和平', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (540, '002019.SZ', '亿帆医药', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (541, '002020.SZ', '京新药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (542, '002021.SZ', '*ST中捷', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (543, '002022.SZ', '科华生物', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (544, '002023.SZ', '海特高新', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (545, '002024.SZ', 'ST易购', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (546, '002025.SZ', '航天电器', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (547, '002026.SZ', '山东威达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (548, '002027.SZ', '分众传媒', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (549, '002028.SZ', '思源电气', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (550, '002029.SZ', '七匹狼', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (551, '002030.SZ', '达安基因', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (552, '002031.SZ', '巨轮智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (553, '002032.SZ', '苏泊尔', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (554, '002033.SZ', '丽江股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (555, '002034.SZ', '旺能环境', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (556, '002035.SZ', '华帝股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (557, '002036.SZ', '联创电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (558, '002037.SZ', '保利联合', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (559, '002038.SZ', '双鹭药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (560, '002039.SZ', '黔源电力', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (561, '002040.SZ', '南京港', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (562, '002041.SZ', '登海种业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (563, '002042.SZ', '华孚时尚', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (564, '002043.SZ', '兔宝宝', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (565, '002044.SZ', '美年健康', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (566, '002045.SZ', '国光电器', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (567, '002046.SZ', '国机精工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (568, '002047.SZ', '宝鹰股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (569, '002048.SZ', '宁波华翔', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (570, '002049.SZ', '紫光国微', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (571, '002050.SZ', '三花智控', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (572, '002051.SZ', '中工国际', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (573, '002052.SZ', 'ST同洲', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (574, '002053.SZ', '云南能投', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (575, '002054.SZ', '德美化工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (576, '002055.SZ', '得润电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (577, '002056.SZ', '横店东磁', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (578, '002057.SZ', '中钢天源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (579, '002058.SZ', '威尔泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (580, '002059.SZ', '云南旅游', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (581, '002060.SZ', '粤水电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (582, '002061.SZ', '浙江交科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (583, '002062.SZ', '宏润建设', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (584, '002063.SZ', '远光软件', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (585, '002064.SZ', '华峰化学', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (586, '002065.SZ', '东华软件', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (587, '002066.SZ', '瑞泰科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (588, '002067.SZ', '景兴纸业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (589, '002068.SZ', '黑猫股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (590, '002069.SZ', '獐子岛', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (591, '002072.SZ', '凯瑞德', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (592, '002073.SZ', '软控股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (593, '002074.SZ', '国轩高科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (594, '002075.SZ', '沙钢股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (595, '002076.SZ', '雪莱特', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (596, '002077.SZ', '大港股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (597, '002078.SZ', '太阳纸业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (598, '002079.SZ', '苏州固锝', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (599, '002080.SZ', '中材科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (600, '002081.SZ', '金螳螂', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (601, '002082.SZ', '万邦德', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (602, '002083.SZ', '孚日股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (603, '002084.SZ', '海鸥住工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (604, '002085.SZ', '万丰奥威', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (605, '002086.SZ', '*ST东洋', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (606, '002087.SZ', '*ST新纺', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (607, '002088.SZ', '鲁阳节能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (608, '002089.SZ', '*ST新海', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (609, '002090.SZ', '金智科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (610, '002091.SZ', '江苏国泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (611, '002092.SZ', '中泰化学', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (612, '002093.SZ', '国脉科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (613, '002094.SZ', '青岛金王', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (614, '002095.SZ', '生意宝', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (615, '002096.SZ', '南岭民爆', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (616, '002097.SZ', '山河智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (617, '002098.SZ', '浔兴股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (618, '002099.SZ', '海翔药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (619, '002100.SZ', '天康生物', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (620, '002101.SZ', '广东鸿图', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (621, '002102.SZ', 'ST冠福', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (622, '002103.SZ', '广博股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (623, '002104.SZ', '恒宝股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (624, '002105.SZ', '信隆健康', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (625, '002106.SZ', '莱宝高科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (626, '002107.SZ', '沃华医药', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (627, '002108.SZ', '沧州明珠', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (628, '002109.SZ', '兴化股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (629, '002110.SZ', '三钢闽光', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (630, '002111.SZ', '威海广泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (631, '002112.SZ', '三变科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (632, '002113.SZ', '*ST天润', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (633, '002114.SZ', '罗平锌电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (634, '002115.SZ', '三维通信', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (635, '002116.SZ', '中国海诚', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (636, '002117.SZ', '东港股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (637, '002118.SZ', '*ST紫鑫', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (638, '002119.SZ', '康强电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (639, '002120.SZ', '韵达股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (640, '002121.SZ', '科陆电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (641, '002122.SZ', '汇洲智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (642, '002123.SZ', '梦网科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (643, '002124.SZ', '天邦食品', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (644, '002125.SZ', '湘潭电化', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (645, '002126.SZ', '银轮股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (646, '002127.SZ', '南极电商', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (647, '002128.SZ', '电投能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (648, '002129.SZ', 'TCL中环', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (649, '002130.SZ', '沃尔核材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (650, '002131.SZ', '利欧股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (651, '002132.SZ', '恒星科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (652, '002133.SZ', '广宇集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (653, '002134.SZ', '天津普林', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (654, '002135.SZ', '东南网架', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (655, '002136.SZ', '安纳达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (656, '002137.SZ', '实益达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (657, '002138.SZ', '顺络电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (658, '002139.SZ', '拓邦股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (659, '002140.SZ', '东华科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (660, '002141.SZ', '贤丰控股', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (661, '002142.SZ', '宁波银行', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (662, '002144.SZ', '宏达高科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (663, '002145.SZ', '中核钛白', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (664, '002146.SZ', '荣盛发展', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (665, '002148.SZ', '北纬科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (666, '002149.SZ', '西部材料', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (667, '002150.SZ', '通润装备', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (668, '002151.SZ', '北斗星通', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (669, '002152.SZ', '广电运通', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (670, '002153.SZ', '石基信息', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (671, '002154.SZ', '报喜鸟', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (672, '002155.SZ', '湖南黄金', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (673, '002156.SZ', '通富微电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (674, '002157.SZ', '*ST正邦', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (675, '002158.SZ', '汉钟精机', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (676, '002159.SZ', '三特索道', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (677, '002160.SZ', '常铝股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (678, '002161.SZ', '远望谷', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (679, '002162.SZ', '悦心健康', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (680, '002163.SZ', '海南发展', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (681, '002164.SZ', '宁波东力', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (682, '002165.SZ', '红宝丽', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (683, '002166.SZ', '莱茵生物', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (684, '002167.SZ', '东方锆业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (685, '002168.SZ', '惠程科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (686, '002169.SZ', '智光电气', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (687, '002170.SZ', '芭田股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (688, '002171.SZ', '楚江新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (689, '002172.SZ', '澳洋健康', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (690, '002173.SZ', '创新医疗', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (691, '002174.SZ', '游族网络', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (692, '002175.SZ', '东方智造', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (693, '002176.SZ', '江特电机', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (694, '002177.SZ', '*ST御银', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (695, '002178.SZ', '延华智能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (696, '002179.SZ', '中航光电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (697, '002180.SZ', '纳思达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (698, '002181.SZ', '粤传媒', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (699, '002182.SZ', '云海金属', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (700, '002183.SZ', '怡亚通', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (701, '002184.SZ', '海得控制', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (702, '002185.SZ', '华天科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (703, '002186.SZ', '全聚德', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (704, '002187.SZ', '广百股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (705, '002188.SZ', '中天服务', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (706, '002189.SZ', '中光学', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (707, '002190.SZ', '成飞集成', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (708, '002191.SZ', '劲嘉股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (709, '002192.SZ', '融捷股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (710, '002193.SZ', '如意集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (711, '002194.SZ', '武汉凡谷', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (712, '002195.SZ', '二三四五', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (713, '002196.SZ', '方正电机', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (714, '002197.SZ', '证通电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (715, '002198.SZ', '嘉应制药', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (716, '002199.SZ', '东晶电子', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (717, '002200.SZ', 'ST交投', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (718, '002201.SZ', '正威新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (719, '002202.SZ', '金风科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (720, '002203.SZ', '海亮股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (721, '002204.SZ', '大连重工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (722, '002205.SZ', '国统股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (723, '002206.SZ', '海利得', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (724, '002207.SZ', '准油股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (725, '002208.SZ', '合肥城建', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (726, '002209.SZ', '达意隆', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (727, '002210.SZ', '飞马国际', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (728, '002211.SZ', 'ST宏达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (729, '002212.SZ', '天融信', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (730, '002213.SZ', '大为股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (731, '002214.SZ', '大立科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (732, '002215.SZ', '诺普信', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (733, '002216.SZ', '三全食品', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (734, '002217.SZ', '合力泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (735, '002218.SZ', '拓日新能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (736, '002219.SZ', '新里程', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (737, '002221.SZ', '东华能源', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (738, '002222.SZ', '福晶科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (739, '002223.SZ', '鱼跃医疗', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (740, '002224.SZ', '三力士', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (741, '002225.SZ', '濮耐股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (742, '002226.SZ', '江南化工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (743, '002227.SZ', '奥特迅', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (744, '002228.SZ', '合兴包装', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (745, '002229.SZ', '鸿博股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (746, '002230.SZ', '科大讯飞', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (747, '002231.SZ', '奥维通信', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (748, '002232.SZ', '启明信息', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (749, '002233.SZ', '塔牌集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (750, '002234.SZ', '民和股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (751, '002235.SZ', '安妮股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (752, '002236.SZ', '大华股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (753, '002237.SZ', '恒邦股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (754, '002238.SZ', '天威视讯', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (755, '002239.SZ', '奥特佳', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (756, '002240.SZ', '盛新锂能', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (757, '002241.SZ', '歌尔股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (758, '002242.SZ', '九阳股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (759, '002243.SZ', '力合科创', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (760, '002244.SZ', '滨江集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (761, '002245.SZ', '蔚蓝锂芯', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (762, '002246.SZ', '北化股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (763, '002247.SZ', '聚力文化', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (764, '002248.SZ', '华东数控', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (765, '002249.SZ', '大洋电机', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (766, '002250.SZ', '联化科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (767, '002251.SZ', '步步高', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (768, '002252.SZ', '上海莱士', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (769, '002253.SZ', '川大智胜', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (770, '002254.SZ', '泰和新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (771, '002255.SZ', '海陆重工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (772, '002256.SZ', '兆新股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (773, '002258.SZ', '利尔化学', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (774, '002259.SZ', 'ST升达', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (775, '002261.SZ', '拓维信息', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (776, '002262.SZ', '恩华药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (777, '002263.SZ', '大东南', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (778, '002264.SZ', '新华都', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (779, '002265.SZ', '西仪股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (780, '002266.SZ', '浙富控股', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (781, '002267.SZ', '陕天然气', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (782, '002268.SZ', '电科网安', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (783, '002269.SZ', '美邦服饰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (784, '002270.SZ', '华明装备', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (785, '002271.SZ', '东方雨虹', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (786, '002272.SZ', '川润股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (787, '002273.SZ', '水晶光电', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (788, '002274.SZ', '华昌化工', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (789, '002275.SZ', '桂林三金', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (790, '002276.SZ', '万马股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (791, '002277.SZ', '友阿股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (792, '002278.SZ', '神开股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (793, '002279.SZ', '久其软件', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (794, '002280.SZ', '联络互动', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (795, '002281.SZ', '光迅科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (796, '002282.SZ', '博深股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (797, '002283.SZ', '天润工业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (798, '002284.SZ', '亚太股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (799, '002285.SZ', '世联行', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (800, '002286.SZ', '保龄宝', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (801, '002287.SZ', '奇正藏药', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (802, '002288.SZ', '超华科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (803, '002289.SZ', 'ST宇顺', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (804, '002290.SZ', '禾盛新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (805, '002291.SZ', '遥望科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (806, '002292.SZ', '奥飞娱乐', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (807, '002293.SZ', '罗莱生活', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (808, '002294.SZ', '信立泰', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (809, '002295.SZ', '精艺股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (810, '002296.SZ', '辉煌科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (811, '002297.SZ', '博云新材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (812, '002298.SZ', '中电兴发', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (813, '002299.SZ', '圣农发展', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (814, '002300.SZ', '太阳电缆', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (815, '002301.SZ', '齐心集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (816, '002302.SZ', '西部建设', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (817, '002303.SZ', '美盈森', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (818, '002304.SZ', '洋河股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (819, '002305.SZ', '南国置业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (820, '002306.SZ', '中科云网', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (821, '002307.SZ', '北新路桥', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (822, '002308.SZ', '威创股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (823, '002309.SZ', 'ST中利', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (824, '002310.SZ', '东方园林', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (825, '002311.SZ', '海大集团', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (826, '002312.SZ', '川发龙蟒', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (827, '002313.SZ', '*ST日海', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (828, '002314.SZ', '南山控股', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (829, '002315.SZ', '焦点科技', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (830, '002316.SZ', '亚联发展', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (831, '002317.SZ', '众生药业', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (832, '002318.SZ', '久立特材', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (833, '002319.SZ', '乐通股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (834, '002320.SZ', '海峡股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (835, '002321.SZ', 'ST华英', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (836, '002322.SZ', '理工能科', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (837, '002323.SZ', '雅博股份', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (838, '002324.SZ', '普利特', 1, 0, NULL, '', '2023-09-22 17:22:33', '', '2023-09-22 17:22:33', NULL);
INSERT INTO `t_stock_code` VALUES (839, '002325.SZ', '洪涛股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (840, '002326.SZ', '永太科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (841, '002327.SZ', '富安娜', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (842, '002328.SZ', '新朋股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (843, '002329.SZ', '皇氏集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (844, '002330.SZ', '得利斯', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (845, '002331.SZ', '皖通科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (846, '002332.SZ', '仙琚制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (847, '002333.SZ', '罗普斯金', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (848, '002334.SZ', '英威腾', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (849, '002335.SZ', '科华数据', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (850, '002336.SZ', '人人乐', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (851, '002337.SZ', '赛象科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (852, '002338.SZ', '奥普光电', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (853, '002339.SZ', '积成电子', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (854, '002340.SZ', '格林美', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (855, '002341.SZ', '新纶新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (856, '002342.SZ', '巨力索具', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (857, '002343.SZ', '慈文传媒', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (858, '002344.SZ', '海宁皮城', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (859, '002345.SZ', '潮宏基', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (860, '002346.SZ', '柘中股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (861, '002347.SZ', '泰尔股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (862, '002348.SZ', '高乐股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (863, '002349.SZ', '精华制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (864, '002350.SZ', '北京科锐', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (865, '002351.SZ', '漫步者', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (866, '002352.SZ', '顺丰控股', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (867, '002353.SZ', '杰瑞股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (868, '002354.SZ', '天娱数科', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (869, '002355.SZ', '兴民智通', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (870, '002356.SZ', '赫美集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (871, '002357.SZ', '富临运业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (872, '002358.SZ', '森源电气', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (873, '002360.SZ', '同德化工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (874, '002361.SZ', '神剑股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (875, '002362.SZ', '汉王科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (876, '002363.SZ', '隆基机械', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (877, '002364.SZ', '中恒电气', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (878, '002365.SZ', '永安药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (879, '002366.SZ', '*ST海核', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (880, '002367.SZ', '康力电梯', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (881, '002368.SZ', '太极股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (882, '002369.SZ', '卓翼科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (883, '002370.SZ', '亚太药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (884, '002371.SZ', '北方华创', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (885, '002372.SZ', '伟星新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (886, '002373.SZ', '千方科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (887, '002374.SZ', '中锐股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (888, '002375.SZ', '亚厦股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (889, '002376.SZ', '新北洋', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (890, '002377.SZ', '国创高新', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (891, '002378.SZ', '章源钨业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (892, '002379.SZ', '宏创控股', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (893, '002380.SZ', '科远智慧', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (894, '002381.SZ', '双箭股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (895, '002382.SZ', '蓝帆医疗', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (896, '002383.SZ', '合众思壮', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (897, '002384.SZ', '东山精密', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (898, '002385.SZ', '大北农', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (899, '002386.SZ', '天原股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (900, '002387.SZ', '维信诺', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (901, '002388.SZ', '新亚制程', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (902, '002389.SZ', '航天彩虹', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (903, '002390.SZ', '信邦制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (904, '002391.SZ', '长青股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (905, '002392.SZ', '北京利尔', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (906, '002393.SZ', '力生制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (907, '002394.SZ', '联发股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (908, '002395.SZ', '双象股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (909, '002396.SZ', '星网锐捷', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (910, '002397.SZ', '梦洁股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (911, '002398.SZ', '垒知集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (912, '002399.SZ', '海普瑞', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (913, '002400.SZ', '省广集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (914, '002401.SZ', '中远海科', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (915, '002402.SZ', '和而泰', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (916, '002403.SZ', '爱仕达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (917, '002404.SZ', '嘉欣丝绸', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (918, '002405.SZ', '四维图新', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (919, '002406.SZ', '远东传动', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (920, '002407.SZ', '多氟多', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (921, '002408.SZ', '齐翔腾达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (922, '002409.SZ', '雅克科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (923, '002410.SZ', '广联达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (924, '002411.SZ', '*ST必康', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (925, '002412.SZ', '汉森制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (926, '002413.SZ', '雷科防务', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (927, '002414.SZ', '高德红外', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (928, '002415.SZ', '海康威视', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (929, '002416.SZ', '爱施德', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (930, '002417.SZ', '*ST深南', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (931, '002418.SZ', '康盛股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (932, '002419.SZ', '天虹股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (933, '002420.SZ', '毅昌科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (934, '002421.SZ', '达实智能', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (935, '002422.SZ', '科伦药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (936, '002423.SZ', '中粮资本', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (937, '002424.SZ', '贵州百灵', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (938, '002425.SZ', '凯撒文化', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (939, '002426.SZ', '胜利精密', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (940, '002427.SZ', '*ST尤夫', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (941, '002428.SZ', '云南锗业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (942, '002429.SZ', '兆驰股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (943, '002430.SZ', '杭氧股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (944, '002431.SZ', '棕榈股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (945, '002432.SZ', '九安医疗', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (946, '002433.SZ', '*ST太安', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (947, '002434.SZ', '万里扬', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (948, '002435.SZ', '长江健康', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (949, '002436.SZ', '兴森科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (950, '002437.SZ', '誉衡药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (951, '002438.SZ', '江苏神通', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (952, '002439.SZ', '启明星辰', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (953, '002440.SZ', '闰土股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (954, '002441.SZ', '众业达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (955, '002442.SZ', '龙星化工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (956, '002443.SZ', '金洲管道', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (957, '002444.SZ', '巨星科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (958, '002445.SZ', '中南文化', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (959, '002446.SZ', '盛路通信', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (960, '002448.SZ', '中原内配', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (961, '002449.SZ', '国星光电', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (962, '002451.SZ', '摩恩电气', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (963, '002452.SZ', '长高电新', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (964, '002453.SZ', '华软科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (965, '002454.SZ', '松芝股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (966, '002455.SZ', '百川股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (967, '002456.SZ', '欧菲光', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (968, '002457.SZ', '青龙管业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (969, '002458.SZ', '益生股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (970, '002459.SZ', '晶澳科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (971, '002460.SZ', '赣锋锂业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (972, '002461.SZ', '珠江啤酒', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (973, '002462.SZ', '嘉事堂', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (974, '002463.SZ', '沪电股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (975, '002465.SZ', '海格通信', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (976, '002466.SZ', '天齐锂业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (977, '002467.SZ', '二六三', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (978, '002468.SZ', '申通快递', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (979, '002469.SZ', '三维化学', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (980, '002470.SZ', 'ST金正', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (981, '002471.SZ', '中超控股', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (982, '002472.SZ', '双环传动', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (983, '002474.SZ', '榕基软件', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (984, '002475.SZ', '立讯精密', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (985, '002476.SZ', '宝莫股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (986, '002478.SZ', '常宝股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (987, '002479.SZ', '富春环保', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (988, '002480.SZ', '新筑股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (989, '002481.SZ', '双塔食品', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (990, '002482.SZ', '*ST广田', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (991, '002483.SZ', '润邦股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (992, '002484.SZ', '江海股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (993, '002485.SZ', '*ST雪发', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (994, '002486.SZ', '嘉麟杰', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (995, '002487.SZ', '大金重工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (996, '002488.SZ', '金固股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (997, '002489.SZ', '浙江永强', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (998, '002490.SZ', '山东墨龙', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (999, '002491.SZ', '通鼎互联', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1000, '002492.SZ', '恒基达鑫', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1001, '002493.SZ', '荣盛石化', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1002, '002494.SZ', '华斯股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1003, '002495.SZ', '佳隆股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1004, '002496.SZ', '辉丰股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1005, '002497.SZ', '雅化集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1006, '002498.SZ', '汉缆股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1007, '002500.SZ', '山西证券', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1008, '002501.SZ', '利源精制', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1009, '002502.SZ', 'ST鼎龙', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1010, '002503.SZ', '*ST搜特', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1011, '002504.SZ', '*ST弘高', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1012, '002505.SZ', '鹏都农牧', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1013, '002506.SZ', '协鑫集成', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1014, '002507.SZ', '涪陵榨菜', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1015, '002508.SZ', '老板电器', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1016, '002510.SZ', '天汽模', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1017, '002511.SZ', '中顺洁柔', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1018, '002512.SZ', '达华智能', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1019, '002513.SZ', '蓝丰生化', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1020, '002514.SZ', '宝馨科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1021, '002515.SZ', '金字火腿', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1022, '002516.SZ', '旷达科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1023, '002517.SZ', '恺英网络', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1024, '002518.SZ', '科士达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1025, '002519.SZ', '银河电子', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1026, '002520.SZ', '日发精机', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1027, '002521.SZ', '齐峰新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1028, '002522.SZ', '浙江众成', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1029, '002523.SZ', '天桥起重', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1030, '002524.SZ', '光正眼科', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1031, '002526.SZ', '山东矿机', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1032, '002527.SZ', '新时达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1033, '002528.SZ', '英飞拓', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1034, '002529.SZ', '海源复材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1035, '002530.SZ', '金财互联', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1036, '002531.SZ', '天顺风能', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1037, '002532.SZ', '天山铝业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1038, '002533.SZ', '金杯电工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1039, '002534.SZ', '西子洁能', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1040, '002535.SZ', 'ST林重', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1041, '002536.SZ', '飞龙股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1042, '002537.SZ', '海联金汇', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1043, '002538.SZ', '司尔特', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1044, '002539.SZ', '云图控股', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1045, '002540.SZ', '亚太科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1046, '002541.SZ', '鸿路钢构', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1047, '002542.SZ', '中化岩土', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1048, '002543.SZ', '万和电气', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1049, '002544.SZ', '普天科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1050, '002545.SZ', '东方铁塔', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1051, '002546.SZ', '新联电子', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1052, '002547.SZ', '春兴精工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1053, '002548.SZ', '金新农', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1054, '002549.SZ', '凯美特气', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1055, '002550.SZ', '千红制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1056, '002551.SZ', '尚荣医疗', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1057, '002552.SZ', '宝鼎科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1058, '002553.SZ', '南方精工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1059, '002554.SZ', '惠博普', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1060, '002555.SZ', '三七互娱', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1061, '002556.SZ', '辉隆股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1062, '002557.SZ', '洽洽食品', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1063, '002558.SZ', '巨人网络', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1064, '002559.SZ', '亚威股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1065, '002560.SZ', '通达股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1066, '002561.SZ', '徐家汇', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1067, '002562.SZ', '兄弟科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1068, '002563.SZ', '森马服饰', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1069, '002564.SZ', '天沃科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1070, '002565.SZ', '顺灏股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1071, '002566.SZ', '益盛药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1072, '002567.SZ', '唐人神', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1073, '002568.SZ', '百润股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1074, '002569.SZ', 'ST步森', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1075, '002570.SZ', '贝因美', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1076, '002571.SZ', '德力股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1077, '002572.SZ', '索菲亚', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1078, '002573.SZ', '清新环境', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1079, '002574.SZ', '明牌珠宝', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1080, '002575.SZ', '群兴玩具', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1081, '002576.SZ', '通达动力', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1082, '002577.SZ', '雷柏科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1083, '002578.SZ', '闽发铝业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1084, '002579.SZ', '中京电子', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1085, '002580.SZ', '圣阳股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1086, '002581.SZ', '未名医药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1087, '002582.SZ', '好想你', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1088, '002583.SZ', '海能达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1089, '002584.SZ', '西陇科学', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1090, '002585.SZ', '双星新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1091, '002586.SZ', '*ST围海', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1092, '002587.SZ', '奥拓电子', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1093, '002588.SZ', '史丹利', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1094, '002589.SZ', '瑞康医药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1095, '002590.SZ', '万安科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1096, '002591.SZ', '恒大高新', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1097, '002592.SZ', 'ST八菱', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1098, '002593.SZ', '日上集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1099, '002594.SZ', '比亚迪', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1100, '002595.SZ', '豪迈科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1101, '002596.SZ', '海南瑞泽', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1102, '002597.SZ', '金禾实业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1103, '002598.SZ', '山东章鼓', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1104, '002599.SZ', '盛通股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1105, '002600.SZ', '领益智造', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1106, '002601.SZ', '龙佰集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1107, '002602.SZ', '世纪华通', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1108, '002603.SZ', '以岭药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1109, '002605.SZ', '姚记科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1110, '002606.SZ', '大连电瓷', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1111, '002607.SZ', '中公教育', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1112, '002608.SZ', '江苏国信', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1113, '002609.SZ', '捷顺科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1114, '002610.SZ', '爱康科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1115, '002611.SZ', '东方精工', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1116, '002612.SZ', '朗姿股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1117, '002613.SZ', '北玻股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1118, '002614.SZ', '奥佳华', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1119, '002615.SZ', '哈尔斯', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1120, '002616.SZ', '长青集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1121, '002617.SZ', '露笑科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1122, '002620.SZ', '瑞和股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1123, '002621.SZ', '美吉姆', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1124, '002622.SZ', '皓宸医疗', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1125, '002623.SZ', '亚玛顿', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1126, '002624.SZ', '完美世界', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1127, '002625.SZ', '光启技术', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1128, '002626.SZ', '金达威', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1129, '002627.SZ', '三峡旅游', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1130, '002628.SZ', '成都路桥', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1131, '002629.SZ', '仁智股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1132, '002630.SZ', '华西能源', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1133, '002631.SZ', '德尔未来', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1134, '002632.SZ', '道明光学', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1135, '002633.SZ', '申科股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1136, '002634.SZ', '棒杰股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1137, '002635.SZ', '安洁科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1138, '002636.SZ', '金安国纪', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1139, '002637.SZ', '赞宇科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1140, '002638.SZ', '勤上股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1141, '002639.SZ', '雪人股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1142, '002640.SZ', '跨境通', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1143, '002641.SZ', '公元股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1144, '002642.SZ', '荣联科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1145, '002643.SZ', '万润股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1146, '002644.SZ', '佛慈制药', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1147, '002645.SZ', '华宏科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1148, '002646.SZ', '天佑德酒', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1149, '002647.SZ', '仁东控股', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1150, '002648.SZ', '卫星化学', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1151, '002649.SZ', '博彦科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1152, '002650.SZ', '加加食品', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1153, '002651.SZ', '利君股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1154, '002652.SZ', '扬子新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1155, '002653.SZ', '海思科', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1156, '002654.SZ', '万润科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1157, '002655.SZ', '共达电声', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1158, '002656.SZ', 'ST摩登', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1159, '002657.SZ', '中科金财', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1160, '002658.SZ', '雪迪龙', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1161, '002659.SZ', '凯文教育', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1162, '002660.SZ', '茂硕电源', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1163, '002661.SZ', '克明食品', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1164, '002662.SZ', '京威股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1165, '002663.SZ', '普邦股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1166, '002664.SZ', '信质集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1167, '002665.SZ', '首航高科', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1168, '002666.SZ', '德联集团', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1169, '002667.SZ', '鞍重股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1170, '002668.SZ', '奥马电器', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1171, '002669.SZ', '康达新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1172, '002670.SZ', '国盛金控', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1173, '002671.SZ', '龙泉股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1174, '002672.SZ', '东江环保', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1175, '002673.SZ', '西部证券', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1176, '002674.SZ', '兴业科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1177, '002675.SZ', '东诚药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1178, '002676.SZ', '顺威股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1179, '002677.SZ', '浙江美大', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1180, '002678.SZ', '珠江钢琴', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1181, '002679.SZ', '福建金森', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1182, '002681.SZ', '奋达科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1183, '002682.SZ', '龙洲股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1184, '002683.SZ', '广东宏大', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1185, '002685.SZ', '华东重机', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1186, '002686.SZ', '亿利达', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1187, '002687.SZ', '乔治白', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1188, '002688.SZ', '金河生物', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1189, '002689.SZ', '远大智能', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1190, '002690.SZ', '美亚光电', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1191, '002691.SZ', '冀凯股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1192, '002692.SZ', 'ST远程', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1193, '002693.SZ', '双成药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1194, '002694.SZ', '顾地科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1195, '002695.SZ', '煌上煌', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1196, '002696.SZ', '百洋股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1197, '002697.SZ', '红旗连锁', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1198, '002698.SZ', '博实股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1199, '002699.SZ', '*ST美盛', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1200, '002700.SZ', 'ST浩源', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1201, '002701.SZ', '奥瑞金', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1202, '002702.SZ', '海欣食品', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1203, '002703.SZ', '浙江世宝', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1204, '002705.SZ', '新宝股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1205, '002706.SZ', '良信股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1206, '002707.SZ', '众信旅游', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1207, '002708.SZ', '光洋股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1208, '002709.SZ', '天赐材料', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1209, '002712.SZ', '思美传媒', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1210, '002713.SZ', '东易日盛', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1211, '002714.SZ', '牧原股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1212, '002715.SZ', '登云股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1213, '002716.SZ', '金贵银业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1214, '002717.SZ', '岭南股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1215, '002718.SZ', '友邦吊顶', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1216, '002719.SZ', '麦趣尔', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1217, '002721.SZ', '*ST金一', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1218, '002722.SZ', '物产金轮', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1219, '002723.SZ', '小崧股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1220, '002724.SZ', '海洋王', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1221, '002725.SZ', '跃岭股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1222, '002726.SZ', '龙大美食', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1223, '002727.SZ', '一心堂', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1224, '002728.SZ', '特一药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1225, '002729.SZ', '好利科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1226, '002730.SZ', '电光科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1227, '002731.SZ', '萃华珠宝', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1228, '002732.SZ', '燕塘乳业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1229, '002733.SZ', '雄韬股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1230, '002734.SZ', '利民股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1231, '002735.SZ', '王子新材', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1232, '002736.SZ', '国信证券', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1233, '002737.SZ', '葵花药业', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1234, '002738.SZ', '中矿资源', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1235, '002739.SZ', '万达电影', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1236, '002740.SZ', '*ST爱迪', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1237, '002741.SZ', '光华科技', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1238, '002742.SZ', 'ST三圣', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1239, '002743.SZ', '富煌钢构', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1240, '002745.SZ', '木林森', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1241, '002746.SZ', '仙坛股份', 1, 0, NULL, '', '2023-09-22 17:22:34', '', '2023-09-22 17:22:34', NULL);
INSERT INTO `t_stock_code` VALUES (1242, '002747.SZ', '埃斯顿', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1243, '002748.SZ', '世龙实业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1244, '002749.SZ', '国光股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1245, '002750.SZ', '龙津药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1246, '002751.SZ', '*ST易尚', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1247, '002752.SZ', '昇兴股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1248, '002753.SZ', '永东股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1249, '002755.SZ', '奥赛康', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1250, '002756.SZ', '永兴材料', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1251, '002757.SZ', '南兴股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1252, '002758.SZ', '浙农股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1253, '002759.SZ', '天际股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1254, '002760.SZ', '凤形股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1255, '002761.SZ', '浙江建投', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1256, '002762.SZ', '金发拉比', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1257, '002763.SZ', '汇洁股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1258, '002765.SZ', '蓝黛科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1259, '002766.SZ', '索菱股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1260, '002767.SZ', '先锋电子', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1261, '002768.SZ', '国恩股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1262, '002769.SZ', '普路通', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1263, '002771.SZ', '真视通', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1264, '002772.SZ', '众兴菌业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1265, '002773.SZ', '康弘药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1266, '002774.SZ', '快意电梯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1267, '002775.SZ', '文科园林', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1268, '002776.SZ', '*ST柏龙', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1269, '002777.SZ', '久远银海', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1270, '002778.SZ', '中晟高科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1271, '002779.SZ', '中坚科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1272, '002780.SZ', '三夫户外', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1273, '002781.SZ', '*ST奇信', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1274, '002782.SZ', '可立克', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1275, '002783.SZ', '凯龙股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1276, '002785.SZ', '万里石', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1277, '002786.SZ', '银宝山新', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1278, '002787.SZ', '华源控股', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1279, '002788.SZ', '鹭燕医药', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1280, '002789.SZ', '建艺集团', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1281, '002790.SZ', '瑞尔特', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1282, '002791.SZ', '坚朗五金', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1283, '002792.SZ', '通宇通讯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1284, '002793.SZ', '罗欣药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1285, '002795.SZ', '永和智控', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1286, '002796.SZ', '世嘉科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1287, '002797.SZ', '第一创业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1288, '002798.SZ', '帝欧家居', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1289, '002799.SZ', '环球印务', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1290, '002800.SZ', 'ST天顺', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1291, '002801.SZ', '微光股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1292, '002802.SZ', '洪汇新材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1293, '002803.SZ', '吉宏股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1294, '002805.SZ', '丰元股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1295, '002806.SZ', '华锋股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1296, '002807.SZ', '江阴银行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1297, '002808.SZ', 'ST恒久', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1298, '002809.SZ', '红墙股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1299, '002810.SZ', '山东赫达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1300, '002811.SZ', '郑中设计', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1301, '002812.SZ', '恩捷股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1302, '002813.SZ', '路畅科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1303, '002815.SZ', '崇达技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1304, '002816.SZ', '*ST和科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1305, '002817.SZ', '黄山胶囊', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1306, '002818.SZ', '富森美', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1307, '002819.SZ', '东方中科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1308, '002820.SZ', '桂发祥', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1309, '002821.SZ', '凯莱英', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1310, '002822.SZ', '中装建设', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1311, '002823.SZ', '凯中精密', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1312, '002824.SZ', '和胜股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1313, '002825.SZ', '纳尔股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1314, '002826.SZ', '易明医药', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1315, '002827.SZ', '高争民爆', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1316, '002828.SZ', '贝肯能源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1317, '002829.SZ', '星网宇达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1318, '002830.SZ', '名雕股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1319, '002831.SZ', '裕同科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1320, '002832.SZ', '比音勒芬', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1321, '002833.SZ', '弘亚数控', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1322, '002835.SZ', '同为股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1323, '002836.SZ', '新宏泽', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1324, '002837.SZ', '英维克', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1325, '002838.SZ', '道恩股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1326, '002839.SZ', '张家港行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1327, '002840.SZ', '华统股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1328, '002841.SZ', '视源股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1329, '002842.SZ', '翔鹭钨业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1330, '002843.SZ', '泰嘉股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1331, '002845.SZ', '同兴达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1332, '002846.SZ', '英联股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1333, '002847.SZ', '盐津铺子', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1334, '002848.SZ', '高斯贝尔', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1335, '002849.SZ', '威星智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1336, '002850.SZ', '科达利', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1337, '002851.SZ', '麦格米特', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1338, '002852.SZ', '道道全', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1339, '002853.SZ', '皮阿诺', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1340, '002855.SZ', '捷荣技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1341, '002856.SZ', '美芝股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1342, '002857.SZ', '三晖电气', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1343, '002858.SZ', '力盛体育', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1344, '002859.SZ', '洁美科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1345, '002860.SZ', '星帅尔', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1346, '002861.SZ', '瀛通通讯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1347, '002862.SZ', '实丰文化', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1348, '002863.SZ', '今飞凯达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1349, '002864.SZ', '盘龙药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1350, '002865.SZ', '钧达股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1351, '002866.SZ', '传艺科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1352, '002867.SZ', '周大生', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1353, '002868.SZ', '绿康生化', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1354, '002869.SZ', '金溢科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1355, '002870.SZ', '香山股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1356, '002871.SZ', '伟隆股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1357, '002872.SZ', 'ST天圣', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1358, '002873.SZ', '新天药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1359, '002875.SZ', '安奈儿', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1360, '002876.SZ', '三利谱', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1361, '002877.SZ', '智能自控', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1362, '002878.SZ', '元隆雅图', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1363, '002879.SZ', '长缆科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1364, '002880.SZ', '卫光生物', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1365, '002881.SZ', '美格智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1366, '002882.SZ', '金龙羽', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1367, '002883.SZ', '中设股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1368, '002884.SZ', '凌霄泵业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1369, '002885.SZ', '京泉华', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1370, '002886.SZ', '沃特股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1371, '002887.SZ', '绿茵生态', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1372, '002888.SZ', '惠威科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1373, '002889.SZ', '东方嘉盛', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1374, '002890.SZ', '弘宇股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1375, '002891.SZ', '中宠股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1376, '002892.SZ', '科力尔', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1377, '002893.SZ', '京能热力', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1378, '002895.SZ', '川恒股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1379, '002896.SZ', '中大力德', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1380, '002897.SZ', '意华股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1381, '002898.SZ', '赛隆药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1382, '002899.SZ', '英派斯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1383, '002900.SZ', '哈三联', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1384, '002901.SZ', '大博医疗', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1385, '002902.SZ', '铭普光磁', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1386, '002903.SZ', '宇环数控', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1387, '002905.SZ', '金逸影视', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1388, '002906.SZ', '华阳集团', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1389, '002907.SZ', '华森制药', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1390, '002908.SZ', '德生科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1391, '002909.SZ', '集泰股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1392, '002910.SZ', '庄园牧场', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1393, '002911.SZ', '佛燃能源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1394, '002912.SZ', '中新赛克', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1395, '002913.SZ', '奥士康', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1396, '002915.SZ', '中欣氟材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1397, '002916.SZ', '深南电路', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1398, '002917.SZ', '金奥博', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1399, '002918.SZ', '蒙娜丽莎', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1400, '002919.SZ', '名臣健康', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1401, '002920.SZ', '德赛西威', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1402, '002921.SZ', '联诚精密', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1403, '002922.SZ', '伊戈尔', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1404, '002923.SZ', '润都股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1405, '002925.SZ', '盈趣科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1406, '002926.SZ', '华西证券', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1407, '002927.SZ', '泰永长征', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1408, '002928.SZ', '华夏航空', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1409, '002929.SZ', '润建股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1410, '002930.SZ', '宏川智慧', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1411, '002931.SZ', '锋龙股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1412, '002932.SZ', '明德生物', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1413, '002933.SZ', '新兴装备', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1414, '002935.SZ', '天奥电子', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1415, '002936.SZ', '郑州银行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1416, '002937.SZ', '兴瑞科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1417, '002938.SZ', '鹏鼎控股', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1418, '002939.SZ', '长城证券', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1419, '002940.SZ', '昂利康', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1420, '002941.SZ', '新疆交建', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1421, '002942.SZ', '新农股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1422, '002943.SZ', '宇晶股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1423, '002945.SZ', '华林证券', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1424, '002946.SZ', '新乳业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1425, '002947.SZ', '恒铭达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1426, '002948.SZ', '青岛银行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1427, '002949.SZ', '华阳国际', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1428, '002950.SZ', '奥美医疗', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1429, '002951.SZ', '金时科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1430, '002952.SZ', '亚世光电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1431, '002953.SZ', '日丰股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1432, '002955.SZ', '鸿合科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1433, '002956.SZ', '西麦食品', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1434, '002957.SZ', '科瑞技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1435, '002958.SZ', '青农商行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1436, '002959.SZ', '小熊电器', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1437, '002960.SZ', '青鸟消防', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1438, '002961.SZ', '瑞达期货', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1439, '002962.SZ', '五方光电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1440, '002963.SZ', '豪尔赛', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1441, '002965.SZ', '祥鑫科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1442, '002966.SZ', '苏州银行', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1443, '002967.SZ', '广电计量', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1444, '002968.SZ', '新大正', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1445, '002969.SZ', '嘉美包装', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1446, '002970.SZ', '锐明技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1447, '002971.SZ', '和远气体', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1448, '002972.SZ', '科安达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1449, '002973.SZ', '侨银股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1450, '002975.SZ', '博杰股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1451, '002976.SZ', '瑞玛精密', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1452, '002977.SZ', '天箭科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1453, '002978.SZ', '安宁股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1454, '002979.SZ', '雷赛智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1455, '002980.SZ', '华盛昌', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1456, '002981.SZ', '朝阳科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1457, '002982.SZ', '湘佳股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1458, '002983.SZ', '芯瑞达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1459, '002984.SZ', '森麒麟', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1460, '002985.SZ', '北摩高科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1461, '002986.SZ', '宇新股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1462, '002987.SZ', '京北方', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1463, '002988.SZ', '豪美新材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1464, '002989.SZ', '中天精装', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1465, '002990.SZ', '盛视科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1466, '002991.SZ', '甘源食品', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1467, '002992.SZ', '宝明科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1468, '002993.SZ', '奥海科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1469, '002995.SZ', '天地在线', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1470, '002996.SZ', '顺博合金', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1471, '002997.SZ', '瑞鹄模具', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1472, '002998.SZ', '优彩资源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1473, '002999.SZ', '天禾股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1474, '003000.SZ', '劲仔食品', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1475, '003001.SZ', '中岩大地', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1476, '003002.SZ', '壶化股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1477, '003003.SZ', '天元股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1478, '003004.SZ', '声迅股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1479, '003005.SZ', '竞业达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1480, '003006.SZ', '百亚股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1481, '003007.SZ', '直真科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1482, '003008.SZ', '开普检测', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1483, '003009.SZ', '中天火箭', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1484, '003010.SZ', '若羽臣', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1485, '003011.SZ', '海象新材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1486, '003012.SZ', '东鹏控股', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1487, '003013.SZ', '地铁设计', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1488, '003015.SZ', '日久光电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1489, '003016.SZ', '欣贺股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1490, '003017.SZ', '大洋生物', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1491, '003018.SZ', '金富科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1492, '003019.SZ', '宸展光电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1493, '003020.SZ', '立方制药', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1494, '003021.SZ', '兆威机电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1495, '003022.SZ', '联泓新科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1496, '003023.SZ', '彩虹集团', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1497, '003025.SZ', '思进智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1498, '003026.SZ', '中晶科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1499, '003027.SZ', '同兴环保', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1500, '003028.SZ', '振邦智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1501, '003029.SZ', '吉大正元', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1502, '003030.SZ', '祖名股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1503, '003031.SZ', '中瓷电子', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1504, '003032.SZ', '传智教育', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1505, '003033.SZ', '征和工业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1506, '003035.SZ', '南网能源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1507, '003036.SZ', '泰坦股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1508, '003037.SZ', '三和管桩', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1509, '003038.SZ', '鑫铂股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1510, '003039.SZ', '顺控发展', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1511, '003040.SZ', '楚天龙', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1512, '003041.SZ', '真爱美家', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1513, '003042.SZ', '中农联合', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1514, '003043.SZ', '华亚智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1515, '003816.SZ', '中国广核', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1516, '300001.SZ', '特锐德', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1517, '300002.SZ', '神州泰岳', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1518, '300003.SZ', '乐普医疗', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1519, '300004.SZ', '南风股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1520, '300005.SZ', '探路者', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1521, '300006.SZ', '莱美药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1522, '300007.SZ', '汉威科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1523, '300008.SZ', '天海防务', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1524, '300009.SZ', '安科生物', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1525, '300010.SZ', '*ST豆神', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1526, '300011.SZ', '鼎汉技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1527, '300012.SZ', '华测检测', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1528, '300013.SZ', '新宁物流', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1529, '300014.SZ', '亿纬锂能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1530, '300015.SZ', '爱尔眼科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1531, '300016.SZ', '北陆药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1532, '300017.SZ', '网宿科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1533, '300018.SZ', '中元股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1534, '300019.SZ', '硅宝科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1535, '300020.SZ', '银江技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1536, '300021.SZ', '大禹节水', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1537, '300022.SZ', '吉峰科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1538, '300024.SZ', '机器人', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1539, '300025.SZ', '华星创业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1540, '300026.SZ', '红日药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1541, '300027.SZ', '华谊兄弟', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1542, '300029.SZ', 'ST天龙', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1543, '300030.SZ', '阳普医疗', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1544, '300031.SZ', '宝通科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1545, '300032.SZ', '金龙机电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1546, '300033.SZ', '同花顺', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1547, '300034.SZ', '钢研高纳', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1548, '300035.SZ', '中科电气', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1549, '300036.SZ', '超图软件', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1550, '300037.SZ', '新宙邦', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1551, '300039.SZ', '上海凯宝', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1552, '300040.SZ', '九洲集团', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1553, '300041.SZ', '回天新材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1554, '300042.SZ', '朗科科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1555, '300043.SZ', '星辉娱乐', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1556, '300044.SZ', '赛为智能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1557, '300045.SZ', '华力创通', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1558, '300046.SZ', '台基股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1559, '300047.SZ', '天源迪科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1560, '300048.SZ', '合康新能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1561, '300049.SZ', '福瑞股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1562, '300050.SZ', '世纪鼎利', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1563, '300051.SZ', '三五互联', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1564, '300052.SZ', '中青宝', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1565, '300053.SZ', '欧比特', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1566, '300054.SZ', '鼎龙股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1567, '300055.SZ', '万邦达', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1568, '300056.SZ', '中创环保', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1569, '300057.SZ', '万顺新材', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1570, '300058.SZ', '蓝色光标', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1571, '300059.SZ', '东方财富', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1572, '300061.SZ', '旗天科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1573, '300062.SZ', '中能电气', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1574, '300063.SZ', '天龙集团', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1575, '300065.SZ', '海兰信', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1576, '300066.SZ', '三川智慧', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1577, '300067.SZ', '安诺其', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1578, '300068.SZ', '南都电源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1579, '300069.SZ', '金利华电', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1580, '300070.SZ', '碧水源', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1581, '300071.SZ', '福石控股', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1582, '300072.SZ', '海新能科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1583, '300073.SZ', '当升科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1584, '300074.SZ', '华平股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1585, '300075.SZ', '数字政通', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1586, '300076.SZ', 'GQY视讯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1587, '300077.SZ', '国民技术', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1588, '300078.SZ', '思创医惠', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1589, '300079.SZ', '数码视讯', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1590, '300080.SZ', '易成新能', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1591, '300081.SZ', '恒信东方', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1592, '300082.SZ', '奥克股份', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1593, '300083.SZ', '创世纪', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1594, '300084.SZ', '海默科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1595, '300085.SZ', '银之杰', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1596, '300086.SZ', '康芝药业', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1597, '300087.SZ', '荃银高科', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1598, '300088.SZ', '长信科技', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1599, '300089.SZ', '*ST文化', 1, 0, NULL, '', '2023-09-22 17:22:35', '', '2023-09-22 17:22:35', NULL);
INSERT INTO `t_stock_code` VALUES (1600, '300091.SZ', '金通灵', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1601, '300092.SZ', '科新机电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1602, '300093.SZ', '金刚光伏', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1603, '300094.SZ', '国联水产', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1604, '300095.SZ', '华伍股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1605, '300096.SZ', '易联众', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1606, '300097.SZ', '智云股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1607, '300098.SZ', '高新兴', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1608, '300099.SZ', '精准信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1609, '300100.SZ', '双林股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1610, '300101.SZ', '振芯科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1611, '300102.SZ', '乾照光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1612, '300103.SZ', '达刚控股', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1613, '300105.SZ', '龙源技术', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1614, '300106.SZ', '西部牧业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1615, '300107.SZ', '建新股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1616, '300108.SZ', '*ST吉药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1617, '300109.SZ', '新开源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1618, '300110.SZ', '华仁药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1619, '300111.SZ', '向日葵', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1620, '300112.SZ', '万讯自控', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1621, '300113.SZ', '顺网科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1622, '300114.SZ', '中航电测', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1623, '300115.SZ', '长盈精密', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1624, '300116.SZ', '保力新', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1625, '300117.SZ', '嘉寓股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1626, '300118.SZ', '东方日升', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1627, '300119.SZ', '瑞普生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1628, '300120.SZ', '经纬辉开', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1629, '300121.SZ', '阳谷华泰', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1630, '300122.SZ', '智飞生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1631, '300123.SZ', '亚光科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1632, '300124.SZ', '汇川技术', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1633, '300125.SZ', '聆达股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1634, '300126.SZ', '锐奇股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1635, '300127.SZ', '银河磁体', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1636, '300128.SZ', '锦富技术', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1637, '300129.SZ', '泰胜风能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1638, '300130.SZ', '新国都', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1639, '300131.SZ', '英唐智控', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1640, '300132.SZ', '青松股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1641, '300133.SZ', '华策影视', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1642, '300134.SZ', '大富科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1643, '300135.SZ', '宝利国际', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1644, '300136.SZ', '信维通信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1645, '300137.SZ', '先河环保', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1646, '300138.SZ', '晨光生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1647, '300139.SZ', '晓程科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1648, '300140.SZ', '中环装备', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1649, '300141.SZ', '和顺电气', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1650, '300142.SZ', '沃森生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1651, '300143.SZ', '盈康生命', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1652, '300144.SZ', '宋城演艺', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1653, '300145.SZ', '中金环境', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1654, '300146.SZ', '汤臣倍健', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1655, '300147.SZ', '香雪制药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1656, '300148.SZ', '天舟文化', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1657, '300149.SZ', '睿智医药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1658, '300150.SZ', '世纪瑞尔', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1659, '300151.SZ', '昌红科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1660, '300152.SZ', '新动力', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1661, '300153.SZ', '科泰电源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1662, '300154.SZ', '瑞凌股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1663, '300155.SZ', '安居宝', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1664, '300157.SZ', '恒泰艾普', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1665, '300158.SZ', '振东制药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1666, '300159.SZ', 'ST新研', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1667, '300160.SZ', '秀强股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1668, '300161.SZ', '华中数控', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1669, '300162.SZ', '雷曼光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1670, '300163.SZ', '先锋新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1671, '300164.SZ', '通源石油', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1672, '300165.SZ', '天瑞仪器', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1673, '300166.SZ', '东方国信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1674, '300167.SZ', 'ST迪威迅', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1675, '300168.SZ', '万达信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1676, '300169.SZ', '天晟新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1677, '300170.SZ', '汉得信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1678, '300171.SZ', '东富龙', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1679, '300172.SZ', '中电环保', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1680, '300173.SZ', '福能东方', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1681, '300174.SZ', '元力股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1682, '300175.SZ', '朗源股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1683, '300176.SZ', '派生科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1684, '300177.SZ', '中海达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1685, '300179.SZ', '四方达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1686, '300180.SZ', '华峰超纤', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1687, '300181.SZ', '佐力药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1688, '300182.SZ', '捷成股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1689, '300183.SZ', '东软载波', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1690, '300184.SZ', '力源信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1691, '300185.SZ', '通裕重工', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1692, '300187.SZ', '永清环保', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1693, '300188.SZ', '美亚柏科', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1694, '300189.SZ', '神农科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1695, '300190.SZ', '维尔利', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1696, '300191.SZ', '潜能恒信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1697, '300192.SZ', '科德教育', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1698, '300193.SZ', '佳士科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1699, '300194.SZ', '福安药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1700, '300195.SZ', '长荣股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1701, '300196.SZ', '长海股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1702, '300197.SZ', '节能铁汉', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1703, '300198.SZ', '纳川股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1704, '300199.SZ', '翰宇药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1705, '300200.SZ', '高盟新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1706, '300201.SZ', '海伦哲', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1707, '300203.SZ', '聚光科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1708, '300204.SZ', '舒泰神', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1709, '300205.SZ', '天喻信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1710, '300206.SZ', '理邦仪器', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1711, '300207.SZ', '欣旺达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1712, '300208.SZ', '青岛中程', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1713, '300209.SZ', 'ST有棵树', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1714, '300210.SZ', '森远股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1715, '300211.SZ', '亿通科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1716, '300212.SZ', '易华录', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1717, '300213.SZ', '佳讯飞鸿', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1718, '300214.SZ', '日科化学', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1719, '300215.SZ', '电科院', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1720, '300217.SZ', '东方电热', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1721, '300218.SZ', '安利股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1722, '300219.SZ', '鸿利智汇', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1723, '300220.SZ', 'ST金运', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1724, '300221.SZ', '银禧科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1725, '300222.SZ', '科大智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1726, '300223.SZ', '北京君正', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1727, '300224.SZ', '正海磁材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1728, '300225.SZ', '金力泰', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1729, '300226.SZ', '上海钢联', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1730, '300227.SZ', '光韵达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1731, '300228.SZ', '富瑞特装', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1732, '300229.SZ', '拓尔思', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1733, '300230.SZ', '永利股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1734, '300231.SZ', '银信科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1735, '300232.SZ', '洲明科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1736, '300233.SZ', '金城医药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1737, '300234.SZ', '开尔新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1738, '300235.SZ', '方直科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1739, '300236.SZ', '上海新阳', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1740, '300237.SZ', '美晨生态', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1741, '300238.SZ', '冠昊生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1742, '300239.SZ', '东宝生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1743, '300240.SZ', '飞力达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1744, '300241.SZ', '瑞丰光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1745, '300242.SZ', '佳云科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1746, '300243.SZ', '瑞丰高材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1747, '300244.SZ', '迪安诊断', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1748, '300245.SZ', '天玑科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1749, '300246.SZ', '宝莱特', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1750, '300247.SZ', '融捷健康', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1751, '300248.SZ', '新开普', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1752, '300249.SZ', '依米康', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1753, '300250.SZ', '初灵信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1754, '300251.SZ', '光线传媒', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1755, '300252.SZ', '金信诺', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1756, '300253.SZ', '卫宁健康', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1757, '300254.SZ', '仟源医药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1758, '300255.SZ', '常山药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1759, '300256.SZ', 'ST星星', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1760, '300257.SZ', '开山股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1761, '300258.SZ', '精锻科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1762, '300259.SZ', '新天科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1763, '300260.SZ', '新莱应材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1764, '300261.SZ', '雅本化学', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1765, '300262.SZ', '巴安水务', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1766, '300263.SZ', '隆华科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1767, '300264.SZ', '佳创视讯', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1768, '300265.SZ', '通光线缆', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1769, '300266.SZ', '兴源环境', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1770, '300267.SZ', '尔康制药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1771, '300268.SZ', '*ST佳沃', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1772, '300269.SZ', '联建光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1773, '300270.SZ', '中威电子', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1774, '300271.SZ', '华宇软件', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1775, '300272.SZ', '开能健康', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1776, '300273.SZ', '*ST和佳', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1777, '300274.SZ', '阳光电源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1778, '300275.SZ', '梅安森', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1779, '300276.SZ', '三丰智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1780, '300277.SZ', '海联讯', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1781, '300278.SZ', '华昌达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1782, '300279.SZ', '和晶科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1783, '300280.SZ', '紫天科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1784, '300281.SZ', '金明精机', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1785, '300282.SZ', '*ST三盛', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1786, '300283.SZ', '温州宏丰', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1787, '300284.SZ', '苏交科', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1788, '300285.SZ', '国瓷材料', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1789, '300286.SZ', '安科瑞', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1790, '300287.SZ', '飞利信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1791, '300288.SZ', '朗玛信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1792, '300289.SZ', '利德曼', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1793, '300290.SZ', '荣科科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1794, '300291.SZ', '百纳千成', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1795, '300292.SZ', '吴通控股', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1796, '300293.SZ', '蓝英装备', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1797, '300294.SZ', '博雅生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1798, '300295.SZ', '三六五网', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1799, '300296.SZ', '利亚德', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1800, '300297.SZ', '*ST蓝盾', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1801, '300298.SZ', '三诺生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1802, '300299.SZ', '富春股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1803, '300300.SZ', '海峡创新', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1804, '300301.SZ', '*ST长方', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1805, '300302.SZ', '同有科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1806, '300303.SZ', '聚飞光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1807, '300304.SZ', '云意电气', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1808, '300305.SZ', '裕兴股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1809, '300306.SZ', '远方信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1810, '300307.SZ', '慈星股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1811, '300308.SZ', '中际旭创', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1812, '300309.SZ', '*ST吉艾', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1813, '300310.SZ', '宜通世纪', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1814, '300311.SZ', '任子行', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1815, '300313.SZ', '*ST天山', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1816, '300314.SZ', '戴维医疗', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1817, '300315.SZ', '掌趣科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1818, '300316.SZ', '晶盛机电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1819, '300317.SZ', '珈伟新能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1820, '300318.SZ', '博晖创新', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1821, '300319.SZ', '麦捷科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1822, '300320.SZ', '海达股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1823, '300321.SZ', '同大股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1824, '300322.SZ', '硕贝德', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1825, '300323.SZ', '华灿光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1826, '300324.SZ', '旋极信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1827, '300326.SZ', '凯利泰', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1828, '300327.SZ', '中颖电子', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1829, '300328.SZ', '宜安科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1830, '300329.SZ', '海伦钢琴', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1831, '300330.SZ', '计通退', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1832, '300331.SZ', '苏大维格', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1833, '300332.SZ', '天壕环境', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1834, '300333.SZ', '兆日科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1835, '300334.SZ', '津膜科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1836, '300335.SZ', '迪森股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1837, '300336.SZ', '*ST新文', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1838, '300337.SZ', '银邦股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1839, '300338.SZ', 'ST开元', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1840, '300339.SZ', '润和软件', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1841, '300340.SZ', '科恒股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1842, '300341.SZ', '麦克奥迪', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1843, '300342.SZ', '天银机电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1844, '300343.SZ', '联创股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1845, '300344.SZ', '立方数科', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1846, '300345.SZ', '华民股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1847, '300346.SZ', '南大光电', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1848, '300347.SZ', '泰格医药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1849, '300348.SZ', '长亮科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1850, '300349.SZ', '金卡智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1851, '300350.SZ', '华鹏飞', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1852, '300351.SZ', '永贵电器', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1853, '300352.SZ', '北信源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1854, '300353.SZ', '东土科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1855, '300354.SZ', '东华测试', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1856, '300355.SZ', '蒙草生态', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1857, '300356.SZ', '*ST光一', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1858, '300357.SZ', '我武生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1859, '300358.SZ', '楚天科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1860, '300359.SZ', '全通教育', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1861, '300360.SZ', '炬华科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1862, '300363.SZ', '博腾股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1863, '300364.SZ', '中文在线', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1864, '300365.SZ', '恒华科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1865, '300366.SZ', '创意信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1866, '300368.SZ', '汇金股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1867, '300369.SZ', '绿盟科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1868, '300370.SZ', '*ST安控', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1869, '300371.SZ', '汇中股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1870, '300373.SZ', '扬杰科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1871, '300374.SZ', '中铁装配', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1872, '300375.SZ', '鹏翎股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1873, '300376.SZ', '易事特', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1874, '300377.SZ', '赢时胜', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1875, '300378.SZ', '鼎捷软件', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1876, '300379.SZ', '东方通', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1877, '300380.SZ', '安硕信息', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1878, '300381.SZ', '溢多利', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1879, '300382.SZ', '斯莱克', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1880, '300383.SZ', '光环新网', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1881, '300384.SZ', '三联虹普', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1882, '300385.SZ', '雪浪环境', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1883, '300386.SZ', '飞天诚信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1884, '300387.SZ', '富邦股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1885, '300388.SZ', '节能国祯', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1886, '300389.SZ', '艾比森', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1887, '300390.SZ', '天华新能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1888, '300391.SZ', '长药控股', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1889, '300392.SZ', '*ST腾信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1890, '300393.SZ', '中来股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1891, '300394.SZ', '天孚通信', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1892, '300395.SZ', '菲利华', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1893, '300396.SZ', '迪瑞医疗', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1894, '300397.SZ', '天和防务', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1895, '300398.SZ', '飞凯材料', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1896, '300399.SZ', '天利科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1897, '300400.SZ', '劲拓股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1898, '300401.SZ', '花园生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1899, '300402.SZ', '宝色股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1900, '300403.SZ', '汉宇集团', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1901, '300404.SZ', '博济医药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1902, '300405.SZ', '科隆股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1903, '300406.SZ', '九强生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1904, '300407.SZ', '凯发电气', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1905, '300408.SZ', '三环集团', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1906, '300409.SZ', '道氏技术', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1907, '300410.SZ', '正业科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1908, '300411.SZ', '金盾股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1909, '300412.SZ', '迦南科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1910, '300413.SZ', '芒果超媒', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1911, '300414.SZ', '中光防雷', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1912, '300415.SZ', '伊之密', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1913, '300416.SZ', '苏试试验', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1914, '300417.SZ', '南华仪器', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1915, '300418.SZ', '昆仑万维', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1916, '300419.SZ', '浩丰科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1917, '300420.SZ', '五洋停车', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1918, '300421.SZ', '力星股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1919, '300422.SZ', '博世科', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1920, '300423.SZ', '昇辉科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1921, '300424.SZ', '航新科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1922, '300425.SZ', '中建环能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1923, '300426.SZ', '唐德影视', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1924, '300427.SZ', '*ST红相', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1925, '300428.SZ', '立中集团', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1926, '300429.SZ', '强力新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1927, '300430.SZ', '诚益通', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1928, '300432.SZ', '富临精工', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1929, '300433.SZ', '蓝思科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1930, '300434.SZ', '金石亚药', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1931, '300435.SZ', '中泰股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1932, '300436.SZ', '广生堂', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1933, '300437.SZ', '清水源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1934, '300438.SZ', '鹏辉能源', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1935, '300439.SZ', '美康生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1936, '300440.SZ', '运达科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1937, '300441.SZ', '鲍斯股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1938, '300442.SZ', '润泽科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1939, '300443.SZ', '金雷股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1940, '300444.SZ', '双杰电气', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1941, '300445.SZ', '康斯特', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1942, '300446.SZ', '乐凯新材', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1943, '300447.SZ', '全信股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1944, '300448.SZ', '浩云科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1945, '300449.SZ', '汉邦高科', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1946, '300450.SZ', '先导智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1947, '300451.SZ', '创业慧康', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1948, '300452.SZ', '山河药辅', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1949, '300453.SZ', '三鑫医疗', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1950, '300454.SZ', '深信服', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1951, '300455.SZ', '康拓红外', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1952, '300456.SZ', '赛微电子', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1953, '300457.SZ', '赢合科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1954, '300458.SZ', '全志科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1955, '300459.SZ', '汤姆猫', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1956, '300460.SZ', '惠伦晶体', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1957, '300461.SZ', '田中精机', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1958, '300462.SZ', '华铭智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1959, '300463.SZ', '迈克生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1960, '300464.SZ', '星徽股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1961, '300465.SZ', '高伟达', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1962, '300466.SZ', '赛摩智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1963, '300467.SZ', '迅游科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1964, '300468.SZ', '四方精创', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1965, '300469.SZ', '信息发展', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1966, '300470.SZ', '中密控股', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1967, '300471.SZ', '厚普股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1968, '300472.SZ', '新元科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1969, '300473.SZ', '德尔股份', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1970, '300474.SZ', '景嘉微', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1971, '300475.SZ', '香农芯创', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1972, '300476.SZ', '胜宏科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1973, '300477.SZ', '合纵科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1974, '300478.SZ', '杭州高新', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1975, '300479.SZ', '神思电子', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1976, '300480.SZ', '光力科技', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1977, '300481.SZ', '濮阳惠成', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1978, '300482.SZ', '万孚生物', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1979, '300483.SZ', '首华燃气', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1980, '300484.SZ', '蓝海华腾', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1981, '300485.SZ', '赛升药业', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1982, '300486.SZ', '东杰智能', 1, 0, NULL, '', '2023-09-22 17:22:36', '', '2023-09-22 17:22:36', NULL);
INSERT INTO `t_stock_code` VALUES (1983, '300487.SZ', '蓝晓科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1984, '300488.SZ', '恒锋工具', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1985, '300489.SZ', '光智科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1986, '300490.SZ', '华自科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1987, '300491.SZ', '通合科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1988, '300492.SZ', '华图山鼎', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1989, '300493.SZ', '润欣科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1990, '300494.SZ', '盛天网络', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1991, '300495.SZ', '*ST美尚', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1992, '300496.SZ', '中科创达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1993, '300497.SZ', '富祥药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1994, '300498.SZ', '温氏股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1995, '300499.SZ', '高澜股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1996, '300500.SZ', '启迪设计', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1997, '300501.SZ', '海顺新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1998, '300502.SZ', '新易盛', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (1999, '300503.SZ', '昊志机电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2000, '300504.SZ', '天邑股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2001, '300505.SZ', '川金诺', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2002, '300506.SZ', '名家汇', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2003, '300507.SZ', '苏奥传感', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2004, '300508.SZ', '维宏股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2005, '300509.SZ', '新美星', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2006, '300510.SZ', '金冠股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2007, '300511.SZ', '雪榕生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2008, '300512.SZ', '中亚股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2009, '300513.SZ', '恒实科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2010, '300514.SZ', '友讯达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2011, '300515.SZ', '三德科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2012, '300516.SZ', '久之洋', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2013, '300517.SZ', '海波重科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2014, '300518.SZ', '盛讯达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2015, '300519.SZ', '新光药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2016, '300520.SZ', '科大国创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2017, '300521.SZ', '爱司凯', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2018, '300522.SZ', '世名科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2019, '300523.SZ', '辰安科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2020, '300525.SZ', '博思软件', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2021, '300526.SZ', '*ST中潜', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2022, '300527.SZ', '中船应急', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2023, '300528.SZ', '幸福蓝海', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2024, '300529.SZ', '健帆生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2025, '300530.SZ', '达志科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2026, '300531.SZ', '优博讯', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2027, '300532.SZ', '今天国际', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2028, '300533.SZ', '冰川网络', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2029, '300534.SZ', '陇神戎发', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2030, '300535.SZ', '达威股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2031, '300536.SZ', '农尚环境', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2032, '300537.SZ', '广信材料', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2033, '300538.SZ', '同益股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2034, '300539.SZ', '横河精密', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2035, '300540.SZ', '蜀道装备', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2036, '300541.SZ', '先进数通', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2037, '300542.SZ', '新晨科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2038, '300543.SZ', '朗科智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2039, '300545.SZ', '联得装备', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2040, '300546.SZ', '雄帝科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2041, '300547.SZ', '川环科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2042, '300548.SZ', '博创科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2043, '300549.SZ', '优德精密', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2044, '300550.SZ', '和仁科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2045, '300551.SZ', '古鳌科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2046, '300552.SZ', '万集科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2047, '300553.SZ', '集智股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2048, '300554.SZ', '三超新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2049, '300555.SZ', 'ST路通', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2050, '300556.SZ', '丝路视觉', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2051, '300557.SZ', '理工光科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2052, '300558.SZ', '贝达药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2053, '300559.SZ', '佳发教育', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2054, '300560.SZ', '中富通', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2055, '300561.SZ', '汇金科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2056, '300562.SZ', '乐心医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2057, '300563.SZ', '神宇股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2058, '300564.SZ', '筑博设计', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2059, '300565.SZ', '科信技术', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2060, '300566.SZ', '激智科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2061, '300567.SZ', '精测电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2062, '300568.SZ', '星源材质', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2063, '300569.SZ', '天能重工', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2064, '300570.SZ', '太辰光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2065, '300571.SZ', '平治信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2066, '300572.SZ', '安车检测', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2067, '300573.SZ', '兴齐眼药', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2068, '300575.SZ', '中旗股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2069, '300576.SZ', '容大感光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2070, '300577.SZ', '开润股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2071, '300578.SZ', '会畅通讯', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2072, '300579.SZ', '数字认证', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2073, '300580.SZ', '贝斯特', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2074, '300581.SZ', '晨曦航空', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2075, '300582.SZ', '英飞特', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2076, '300583.SZ', '赛托生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2077, '300584.SZ', '海辰药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2078, '300585.SZ', '奥联电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2079, '300586.SZ', '美联新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2080, '300587.SZ', '天铁股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2081, '300588.SZ', '熙菱信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2082, '300589.SZ', '江龙船艇', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2083, '300590.SZ', '移为通信', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2084, '300591.SZ', '万里马', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2085, '300592.SZ', '华凯易佰', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2086, '300593.SZ', '新雷能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2087, '300594.SZ', '朗进科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2088, '300595.SZ', '欧普康视', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2089, '300596.SZ', '利安隆', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2090, '300597.SZ', '吉大通信', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2091, '300598.SZ', '诚迈科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2092, '300599.SZ', '雄塑科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2093, '300600.SZ', '国瑞科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2094, '300601.SZ', '康泰生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2095, '300602.SZ', '飞荣达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2096, '300603.SZ', '立昂技术', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2097, '300604.SZ', '长川科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2098, '300605.SZ', '恒锋信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2099, '300606.SZ', '金太阳', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2100, '300607.SZ', '拓斯达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2101, '300608.SZ', '思特奇', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2102, '300609.SZ', '汇纳科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2103, '300610.SZ', '晨化股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2104, '300611.SZ', '美力科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2105, '300612.SZ', '宣亚国际', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2106, '300613.SZ', '富瀚微', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2107, '300614.SZ', '百川畅银', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2108, '300615.SZ', '欣天科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2109, '300616.SZ', '尚品宅配', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2110, '300617.SZ', '安靠智电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2111, '300618.SZ', '寒锐钴业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2112, '300619.SZ', '金银河', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2113, '300620.SZ', '光库科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2114, '300621.SZ', '维业股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2115, '300622.SZ', '博士眼镜', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2116, '300623.SZ', '捷捷微电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2117, '300624.SZ', '万兴科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2118, '300625.SZ', '三雄极光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2119, '300626.SZ', '华瑞股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2120, '300627.SZ', '华测导航', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2121, '300628.SZ', '亿联网络', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2122, '300629.SZ', '新劲刚', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2123, '300630.SZ', '普利制药', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2124, '300631.SZ', '久吾高科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2125, '300632.SZ', '光莆股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2126, '300633.SZ', '开立医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2127, '300634.SZ', '彩讯股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2128, '300635.SZ', '中达安', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2129, '300636.SZ', '同和药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2130, '300637.SZ', '扬帆新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2131, '300638.SZ', '广和通', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2132, '300639.SZ', '凯普生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2133, '300640.SZ', '德艺文创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2134, '300641.SZ', '正丹股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2135, '300642.SZ', '透景生命', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2136, '300643.SZ', '万通智控', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2137, '300644.SZ', '南京聚隆', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2138, '300645.SZ', '正元智慧', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2139, '300647.SZ', '超频三', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2140, '300648.SZ', '星云股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2141, '300649.SZ', '杭州园林', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2142, '300650.SZ', '太龙股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2143, '300651.SZ', '金陵体育', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2144, '300652.SZ', '雷迪克', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2145, '300653.SZ', '正海生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2146, '300654.SZ', '世纪天鸿', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2147, '300655.SZ', '晶瑞电材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2148, '300656.SZ', '民德电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2149, '300657.SZ', '弘信电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2150, '300658.SZ', '延江股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2151, '300659.SZ', '中孚信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2152, '300660.SZ', '江苏雷利', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2153, '300661.SZ', '圣邦股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2154, '300662.SZ', '科锐国际', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2155, '300663.SZ', '科蓝软件', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2156, '300664.SZ', '鹏鹞环保', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2157, '300665.SZ', '飞鹿股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2158, '300666.SZ', '江丰电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2159, '300667.SZ', '必创科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2160, '300668.SZ', '杰恩设计', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2161, '300669.SZ', '沪宁股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2162, '300670.SZ', '大烨智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2163, '300671.SZ', '富满微', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2164, '300672.SZ', '国科微', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2165, '300673.SZ', '佩蒂股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2166, '300674.SZ', '宇信科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2167, '300675.SZ', '建科院', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2168, '300676.SZ', '华大基因', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2169, '300677.SZ', '英科医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2170, '300678.SZ', '中科信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2171, '300679.SZ', '电连技术', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2172, '300680.SZ', '隆盛科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2173, '300681.SZ', '英搏尔', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2174, '300682.SZ', '朗新科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2175, '300683.SZ', '海特生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2176, '300684.SZ', '中石科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2177, '300685.SZ', '艾德生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2178, '300686.SZ', '智动力', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2179, '300687.SZ', '赛意信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2180, '300688.SZ', '创业黑马', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2181, '300689.SZ', '澄天伟业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2182, '300690.SZ', '双一科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2183, '300691.SZ', '联合光电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2184, '300692.SZ', '中环环保', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2185, '300693.SZ', '盛弘股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2186, '300694.SZ', '蠡湖股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2187, '300695.SZ', '兆丰股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2188, '300696.SZ', '爱乐达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2189, '300697.SZ', '电工合金', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2190, '300698.SZ', '万马科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2191, '300699.SZ', '光威复材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2192, '300700.SZ', '岱勒新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2193, '300701.SZ', '森霸传感', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2194, '300702.SZ', '天宇股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2195, '300703.SZ', '创源股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2196, '300705.SZ', '九典制药', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2197, '300706.SZ', '阿石创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2198, '300707.SZ', '威唐工业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2199, '300708.SZ', '聚灿光电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2200, '300709.SZ', '精研科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2201, '300710.SZ', '万隆光电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2202, '300711.SZ', '广哈通信', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2203, '300712.SZ', '永福股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2204, '300713.SZ', '英可瑞', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2205, '300715.SZ', '凯伦股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2206, '300716.SZ', '泉为科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2207, '300717.SZ', '华信新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2208, '300718.SZ', '长盛轴承', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2209, '300719.SZ', '安达维尔', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2210, '300720.SZ', '海川智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2211, '300721.SZ', '怡达股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2212, '300722.SZ', '新余国科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2213, '300723.SZ', '一品红', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2214, '300724.SZ', '捷佳伟创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2215, '300725.SZ', '药石科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2216, '300726.SZ', '宏达电子', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2217, '300727.SZ', '润禾材料', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2218, '300729.SZ', '乐歌股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2219, '300730.SZ', '科创信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2220, '300731.SZ', '科创新源', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2221, '300732.SZ', '设研院', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2222, '300733.SZ', '西菱动力', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2223, '300735.SZ', '光弘科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2224, '300736.SZ', '百邦科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2225, '300737.SZ', '科顺股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2226, '300738.SZ', '奥飞数据', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2227, '300739.SZ', '明阳电路', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2228, '300740.SZ', '水羊股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2229, '300741.SZ', '华宝股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2230, '300742.SZ', '*ST越博', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2231, '300743.SZ', '天地数码', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2232, '300745.SZ', '欣锐科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2233, '300746.SZ', '汉嘉设计', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2234, '300747.SZ', '锐科激光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2235, '300748.SZ', '金力永磁', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2236, '300749.SZ', '顶固集创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2237, '300750.SZ', '宁德时代', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2238, '300751.SZ', '迈为股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2239, '300752.SZ', '隆利科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2240, '300753.SZ', '爱朋医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2241, '300755.SZ', '华致酒行', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2242, '300756.SZ', '金马游乐', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2243, '300757.SZ', '罗博特科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2244, '300758.SZ', '七彩化学', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2245, '300759.SZ', '康龙化成', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2246, '300760.SZ', '迈瑞医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2247, '300761.SZ', '立华股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2248, '300762.SZ', '上海瀚讯', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2249, '300763.SZ', '锦浪科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2250, '300765.SZ', '新诺威', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2251, '300766.SZ', '每日互动', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2252, '300767.SZ', '震安科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2253, '300768.SZ', '迪普科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2254, '300769.SZ', '德方纳米', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2255, '300770.SZ', '新媒股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2256, '300771.SZ', '智莱科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2257, '300772.SZ', '运达股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2258, '300773.SZ', '拉卡拉', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2259, '300774.SZ', '倍杰特', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2260, '300775.SZ', '三角防务', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2261, '300776.SZ', '帝尔激光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2262, '300777.SZ', '中简科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2263, '300778.SZ', '新城市', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2264, '300779.SZ', '惠城环保', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2265, '300780.SZ', '德恩精工', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2266, '300781.SZ', '因赛集团', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2267, '300782.SZ', '卓胜微', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2268, '300783.SZ', '三只松鼠', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2269, '300785.SZ', '值得买', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2270, '300786.SZ', '国林科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2271, '300787.SZ', '海能实业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2272, '300788.SZ', '中信出版', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2273, '300789.SZ', '唐源电气', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2274, '300790.SZ', '宇瞳光学', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2275, '300791.SZ', '仙乐健康', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2276, '300792.SZ', '壹网壹创', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2277, '300793.SZ', '佳禾智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2278, '300795.SZ', '米奥会展', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2279, '300796.SZ', '贝斯美', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2280, '300797.SZ', '钢研纳克', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2281, '300798.SZ', '锦鸡股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2282, '300799.SZ', '*ST左江', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2283, '300800.SZ', '力合科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2284, '300801.SZ', '泰和科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2285, '300802.SZ', '矩子科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2286, '300803.SZ', '指南针', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2287, '300805.SZ', '电声股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2288, '300806.SZ', '斯迪克', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2289, '300807.SZ', '天迈科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2290, '300808.SZ', '久量股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2291, '300809.SZ', '华辰装备', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2292, '300810.SZ', '中科海讯', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2293, '300811.SZ', '铂科新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2294, '300812.SZ', '易天股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2295, '300813.SZ', '泰林生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2296, '300814.SZ', '中富电路', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2297, '300815.SZ', '玉禾田', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2298, '300816.SZ', '艾可蓝', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2299, '300817.SZ', '双飞股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2300, '300818.SZ', '耐普矿机', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2301, '300819.SZ', '聚杰微纤', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2302, '300820.SZ', '英杰电气', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2303, '300821.SZ', '东岳硅材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2304, '300822.SZ', '贝仕达克', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2305, '300823.SZ', '建科机械', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2306, '300824.SZ', '北鼎股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2307, '300825.SZ', '阿尔特', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2308, '300826.SZ', '测绘股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2309, '300827.SZ', '上能电气', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2310, '300828.SZ', '锐新科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2311, '300829.SZ', '金丹科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2312, '300830.SZ', '金现代', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2313, '300831.SZ', '派瑞股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2314, '300832.SZ', '新产业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2315, '300833.SZ', '浩洋股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2316, '300834.SZ', '星辉环材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2317, '300835.SZ', '龙磁科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2318, '300836.SZ', '佰奥智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2319, '300837.SZ', '浙矿股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2320, '300838.SZ', '浙江力诺', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2321, '300839.SZ', '博汇股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2322, '300840.SZ', '酷特智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2323, '300841.SZ', '康华生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2324, '300842.SZ', '帝科股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2325, '300843.SZ', '胜蓝股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2326, '300844.SZ', '山水比德', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2327, '300845.SZ', '捷安高科', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2328, '300846.SZ', '首都在线', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2329, '300847.SZ', '中船汉光', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2330, '300848.SZ', '美瑞新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2331, '300849.SZ', '锦盛新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2332, '300850.SZ', '新强联', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2333, '300851.SZ', '交大思诺', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2334, '300852.SZ', '四会富仕', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2335, '300853.SZ', '申昊科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2336, '300854.SZ', '中兰环保', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2337, '300855.SZ', '图南股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2338, '300856.SZ', '科思股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2339, '300857.SZ', '协创数据', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2340, '300858.SZ', '科拓生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2341, '300859.SZ', '*ST西域', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2342, '300860.SZ', '锋尚文化', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2343, '300861.SZ', '美畅股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2344, '300862.SZ', '蓝盾光电', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2345, '300863.SZ', '卡倍亿', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2346, '300864.SZ', '南大环境', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2347, '300865.SZ', '大宏立', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2348, '300866.SZ', '安克创新', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2349, '300867.SZ', '圣元环保', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2350, '300868.SZ', '杰美特', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2351, '300869.SZ', '康泰医学', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2352, '300870.SZ', '欧陆通', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2353, '300871.SZ', '回盛生物', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2354, '300872.SZ', '天阳科技', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2355, '300873.SZ', '海晨股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2356, '300875.SZ', '捷强装备', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2357, '300876.SZ', '蒙泰高新', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2358, '300877.SZ', '金春股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2359, '300878.SZ', '维康药业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2360, '300879.SZ', '大叶股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2361, '300880.SZ', '迦南智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2362, '300881.SZ', '盛德鑫泰', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2363, '300882.SZ', '万胜智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2364, '300883.SZ', '龙利得', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2365, '300884.SZ', '狄耐克', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2366, '300885.SZ', '海昌新材', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2367, '300886.SZ', '华业香料', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2368, '300887.SZ', '谱尼测试', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2369, '300888.SZ', '稳健医疗', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2370, '300889.SZ', '爱克股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2371, '300890.SZ', '翔丰华', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2372, '300891.SZ', '惠云钛业', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2373, '300892.SZ', '品渥食品', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2374, '300893.SZ', '松原股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2375, '300894.SZ', '火星人', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2376, '300895.SZ', '铜牛信息', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2377, '300896.SZ', '爱美客', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2378, '300897.SZ', '山科智能', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2379, '300898.SZ', '熊猫乳品', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2380, '300899.SZ', '上海凯鑫', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2381, '300900.SZ', '广联航空', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2382, '300901.SZ', '中胤时尚', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2383, '300902.SZ', '国安达', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2384, '300903.SZ', '科翔股份', 1, 0, NULL, '', '2023-09-22 17:22:37', '', '2023-09-22 17:22:37', NULL);
INSERT INTO `t_stock_code` VALUES (2385, '300905.SZ', '宝丽迪', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2386, '300906.SZ', '日月明', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2387, '300907.SZ', '康平科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2388, '300908.SZ', '仲景食品', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2389, '300909.SZ', '汇创达', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2390, '300910.SZ', '瑞丰新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2391, '300911.SZ', '亿田智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2392, '300912.SZ', '凯龙高科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2393, '300913.SZ', '兆龙互连', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2394, '300915.SZ', '海融科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2395, '300916.SZ', '朗特智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2396, '300917.SZ', '特发服务', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2397, '300918.SZ', '南山智尚', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2398, '300919.SZ', '中伟股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2399, '300920.SZ', '润阳科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2400, '300921.SZ', '南凌科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2401, '300922.SZ', '天秦装备', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2402, '300923.SZ', '研奥股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2403, '300925.SZ', '法本信息', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2404, '300926.SZ', '博俊科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2405, '300927.SZ', '江天化学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2406, '300928.SZ', '华安鑫创', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2407, '300929.SZ', '华骐环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2408, '300930.SZ', '屹通新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2409, '300931.SZ', '通用电梯', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2410, '300932.SZ', '三友联众', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2411, '300933.SZ', '中辰股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2412, '300935.SZ', '盈建科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2413, '300936.SZ', '中英科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2414, '300937.SZ', '药易购', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2415, '300938.SZ', '信测标准', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2416, '300939.SZ', '秋田微', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2417, '300940.SZ', '南极光', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2418, '300941.SZ', '创识科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2419, '300942.SZ', '易瑞生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2420, '300943.SZ', '春晖智控', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2421, '300945.SZ', '曼卡龙', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2422, '300946.SZ', '恒而达', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2423, '300947.SZ', '德必集团', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2424, '300948.SZ', '冠中生态', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2425, '300949.SZ', '奥雅股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2426, '300950.SZ', '德固特', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2427, '300951.SZ', '博硕科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2428, '300952.SZ', '恒辉安防', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2429, '300953.SZ', '震裕科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2430, '300955.SZ', '嘉亨家化', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2431, '300956.SZ', '英力股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2432, '300957.SZ', '贝泰妮', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2433, '300958.SZ', '建工修复', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2434, '300959.SZ', '线上线下', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2435, '300960.SZ', '通业科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2436, '300961.SZ', '深水海纳', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2437, '300962.SZ', '中金辐照', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2438, '300963.SZ', '中洲特材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2439, '300964.SZ', '本川智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2440, '300965.SZ', '恒宇信通', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2441, '300966.SZ', '共同药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2442, '300967.SZ', '晓鸣股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2443, '300968.SZ', '格林精密', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2444, '300969.SZ', '恒帅股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2445, '300970.SZ', '华绿生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2446, '300971.SZ', '博亚精工', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2447, '300972.SZ', '万辰生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2448, '300973.SZ', '立高食品', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2449, '300975.SZ', '商络电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2450, '300976.SZ', '达瑞电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2451, '300977.SZ', '深圳瑞捷', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2452, '300978.SZ', '东箭科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2453, '300979.SZ', '华利集团', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2454, '300980.SZ', '祥源新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2455, '300981.SZ', '中红医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2456, '300982.SZ', '苏文电能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2457, '300983.SZ', '尤安设计', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2458, '300984.SZ', '金沃股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2459, '300985.SZ', '致远新能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2460, '300986.SZ', '志特新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2461, '300987.SZ', '川网传媒', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2462, '300988.SZ', '津荣天宇', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2463, '300989.SZ', '蕾奥规划', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2464, '300990.SZ', '同飞股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2465, '300991.SZ', '创益通', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2466, '300992.SZ', '泰福泵业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2467, '300993.SZ', '玉马遮阳', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2468, '300994.SZ', '久祺股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2469, '300995.SZ', '奇德新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2470, '300996.SZ', '普联软件', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2471, '300997.SZ', '欢乐家', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2472, '300998.SZ', '宁波方正', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2473, '300999.SZ', '金龙鱼', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2474, '301000.SZ', '肇民科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2475, '301001.SZ', '凯淳股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2476, '301002.SZ', '崧盛股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2477, '301003.SZ', '江苏博云', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2478, '301004.SZ', '嘉益股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2479, '301005.SZ', '超捷股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2480, '301006.SZ', '迈拓股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2481, '301007.SZ', '德迈仕', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2482, '301008.SZ', '宏昌科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2483, '301009.SZ', '可靠股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2484, '301010.SZ', '晶雪节能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2485, '301011.SZ', '华立科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2486, '301012.SZ', '扬电科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2487, '301013.SZ', '利和兴', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2488, '301015.SZ', '百洋医药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2489, '301016.SZ', '雷尔伟', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2490, '301017.SZ', '漱玉平民', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2491, '301018.SZ', '申菱环境', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2492, '301019.SZ', '宁波色母', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2493, '301020.SZ', '密封科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2494, '301021.SZ', '英诺激光', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2495, '301022.SZ', '海泰科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2496, '301023.SZ', '江南奕帆', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2497, '301024.SZ', '霍普股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2498, '301025.SZ', '读客文化', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2499, '301026.SZ', '浩通科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2500, '301027.SZ', '华蓝集团', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2501, '301028.SZ', '东亚机械', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2502, '301029.SZ', '怡合达', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2503, '301030.SZ', '仕净科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2504, '301031.SZ', '中熔电气', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2505, '301032.SZ', '新柴股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2506, '301033.SZ', '迈普医学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2507, '301035.SZ', '润丰股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2508, '301036.SZ', '双乐股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2509, '301037.SZ', '保立佳', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2510, '301038.SZ', '深水规院', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2511, '301039.SZ', '中集车辆', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2512, '301040.SZ', '中环海陆', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2513, '301041.SZ', '金百泽', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2514, '301042.SZ', '安联锐视', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2515, '301043.SZ', '绿岛风', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2516, '301045.SZ', '天禄科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2517, '301046.SZ', '能辉科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2518, '301047.SZ', '义翘神州', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2519, '301048.SZ', '金鹰重工', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2520, '301049.SZ', '超越科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2521, '301050.SZ', '雷电微力', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2522, '301051.SZ', '信濠光电', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2523, '301052.SZ', '果麦文化', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2524, '301053.SZ', '远信工业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2525, '301055.SZ', '张小泉', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2526, '301056.SZ', '森赫股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2527, '301057.SZ', '汇隆新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2528, '301058.SZ', '中粮科工', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2529, '301059.SZ', '金三江', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2530, '301060.SZ', '兰卫医学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2531, '301061.SZ', '匠心家居', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2532, '301062.SZ', '上海艾录', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2533, '301063.SZ', '海锅股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2534, '301065.SZ', '本立科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2535, '301066.SZ', '万事利', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2536, '301067.SZ', '显盈科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2537, '301068.SZ', '大地海洋', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2538, '301069.SZ', '凯盛新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2539, '301070.SZ', '开勒股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2540, '301071.SZ', '力量钻石', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2541, '301072.SZ', '中捷精工', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2542, '301073.SZ', '君亭酒店', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2543, '301075.SZ', '多瑞医药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2544, '301076.SZ', '新瀚新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2545, '301077.SZ', '星华新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2546, '301078.SZ', '孩子王', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2547, '301079.SZ', '邵阳液压', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2548, '301080.SZ', '百普赛斯', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2549, '301081.SZ', '严牌股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2550, '301082.SZ', '久盛电气', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2551, '301083.SZ', '百胜智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2552, '301085.SZ', '亚康股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2553, '301086.SZ', '鸿富瀚', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2554, '301087.SZ', '可孚医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2555, '301088.SZ', '戎美股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2556, '301089.SZ', '拓新药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2557, '301090.SZ', '华润材料', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2558, '301091.SZ', '深城交', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2559, '301092.SZ', '争光股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2560, '301093.SZ', '华兰股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2561, '301095.SZ', '广立微', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2562, '301096.SZ', '百诚医药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2563, '301097.SZ', '天益医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2564, '301098.SZ', '金埔园林', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2565, '301099.SZ', '雅创电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2566, '301100.SZ', '风光股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2567, '301101.SZ', '明月镜片', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2568, '301102.SZ', '兆讯传媒', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2569, '301103.SZ', '何氏眼科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2570, '301105.SZ', '鸿铭股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2571, '301106.SZ', '骏成科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2572, '301107.SZ', '瑜欣电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2573, '301108.SZ', '洁雅股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2574, '301109.SZ', '军信股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2575, '301110.SZ', '青木股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2576, '301111.SZ', '粤万年青', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2577, '301112.SZ', '信邦智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2578, '301113.SZ', '雅艺科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2579, '301115.SZ', '建科股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2580, '301116.SZ', '益客食品', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2581, '301117.SZ', '佳缘科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2582, '301118.SZ', '恒光股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2583, '301119.SZ', '正强股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2584, '301120.SZ', '新特电气', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2585, '301121.SZ', '紫建电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2586, '301122.SZ', '采纳股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2587, '301123.SZ', '奕东电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2588, '301125.SZ', '腾亚精工', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2589, '301126.SZ', '达嘉维康', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2590, '301127.SZ', '天源环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2591, '301128.SZ', '强瑞技术', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2592, '301129.SZ', '瑞纳智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2593, '301130.SZ', '西点药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2594, '301131.SZ', '聚赛龙', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2595, '301132.SZ', '满坤科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2596, '301133.SZ', '金钟股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2597, '301135.SZ', '瑞德智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2598, '301136.SZ', '招标股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2599, '301137.SZ', '哈焊华通', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2600, '301138.SZ', '华研精机', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2601, '301139.SZ', '元道通信', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2602, '301141.SZ', '中科磁业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2603, '301148.SZ', '嘉戎技术', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2604, '301149.SZ', '隆华新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2605, '301150.SZ', '中一科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2606, '301151.SZ', '冠龙节能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2607, '301152.SZ', '天力锂能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2608, '301153.SZ', '中科江南', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2609, '301155.SZ', '海力风电', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2610, '301156.SZ', '美农生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2611, '301157.SZ', '华塑科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2612, '301158.SZ', '德石股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2613, '301159.SZ', '三维天地', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2614, '301160.SZ', '翔楼新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2615, '301161.SZ', '唯万密封', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2616, '301162.SZ', '国能日新', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2617, '301163.SZ', '宏德股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2618, '301165.SZ', '锐捷网络', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2619, '301166.SZ', '优宁维', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2620, '301167.SZ', '建研设计', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2621, '301168.SZ', '通灵股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2622, '301169.SZ', '零点有数', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2623, '301171.SZ', '易点天下', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2624, '301175.SZ', '中科环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2625, '301176.SZ', '逸豪新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2626, '301177.SZ', '迪阿股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2627, '301178.SZ', '天亿马', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2628, '301179.SZ', '泽宇智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2629, '301180.SZ', '万祥科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2630, '301181.SZ', '标榜股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2631, '301182.SZ', '凯旺科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2632, '301183.SZ', '东田微', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2633, '301185.SZ', '鸥玛软件', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2634, '301186.SZ', '超达装备', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2635, '301187.SZ', '欧圣电气', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2636, '301188.SZ', '力诺特玻', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2637, '301189.SZ', '奥尼电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2638, '301190.SZ', '善水科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2639, '301191.SZ', '菲菱科思', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2640, '301192.SZ', '泰祥股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2641, '301193.SZ', '家联科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2642, '301195.SZ', '北路智控', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2643, '301196.SZ', '唯科科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2644, '301197.SZ', '工大科雅', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2645, '301198.SZ', '喜悦智行', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2646, '301199.SZ', '迈赫股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2647, '301200.SZ', '大族数控', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2648, '301201.SZ', '诚达药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2649, '301203.SZ', '国泰环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2650, '301205.SZ', '联特科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2651, '301206.SZ', '三元生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2652, '301207.SZ', '华兰疫苗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2653, '301208.SZ', '中亦科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2654, '301209.SZ', '联合化学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2655, '301211.SZ', '亨迪药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2656, '301212.SZ', '联盛化学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2657, '301213.SZ', '观想科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2658, '301215.SZ', '中汽股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2659, '301216.SZ', '万凯新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2660, '301217.SZ', '铜冠铜箔', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2661, '301218.SZ', '华是科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2662, '301219.SZ', '腾远钴业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2663, '301220.SZ', '亚香股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2664, '301221.SZ', '光庭信息', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2665, '301222.SZ', '浙江恒威', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2666, '301223.SZ', '中荣股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2667, '301226.SZ', '祥明智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2668, '301227.SZ', '森鹰窗业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2669, '301228.SZ', '实朴检测', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2670, '301229.SZ', '纽泰格', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2671, '301230.SZ', '泓博医药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2672, '301231.SZ', '荣信文化', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2673, '301233.SZ', '盛帮股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2674, '301234.SZ', '五洲医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2675, '301235.SZ', '华康医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2676, '301236.SZ', '软通动力', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2677, '301237.SZ', '和顺科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2678, '301238.SZ', '瑞泰新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2679, '301239.SZ', '普瑞眼科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2680, '301246.SZ', '宏源药业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2681, '301248.SZ', '杰创智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2682, '301255.SZ', '通力科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2683, '301256.SZ', '华融化学', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2684, '301257.SZ', '普蕊斯', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2685, '301258.SZ', '富士莱', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2686, '301259.SZ', '艾布鲁', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2687, '301260.SZ', '格力博', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2688, '301263.SZ', '泰恩康', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2689, '301265.SZ', '华新环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2690, '301266.SZ', '宇邦新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2691, '301267.SZ', '华厦眼科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2692, '301268.SZ', '铭利达', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2693, '301269.SZ', '华大九天', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2694, '301270.SZ', '汉仪股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2695, '301273.SZ', '瑞晨环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2696, '301276.SZ', '嘉曼服饰', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2697, '301277.SZ', '新天地', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2698, '301278.SZ', '快可电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2699, '301279.SZ', '金道科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2700, '301280.SZ', '珠城科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2701, '301281.SZ', '科源制药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2702, '301282.SZ', '金禄电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2703, '301283.SZ', '聚胶股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2704, '301285.SZ', '鸿日达', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2705, '301286.SZ', '侨源股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2706, '301288.SZ', '清研环境', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2707, '301289.SZ', '国缆检测', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2708, '301290.SZ', '东星医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2709, '301293.SZ', '三博脑科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2710, '301296.SZ', '新巨丰', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2711, '301297.SZ', '富乐德', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2712, '301298.SZ', '东利机械', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2713, '301299.SZ', '卓创资讯', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2714, '301300.SZ', '远翔新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2715, '301301.SZ', '川宁生物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2716, '301302.SZ', '华如科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2717, '301303.SZ', '真兰仪表', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2718, '301306.SZ', '西测测试', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2719, '301307.SZ', '美利信', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2720, '301308.SZ', '江波龙', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2721, '301309.SZ', '万得凯', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2722, '301311.SZ', '昆船智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2723, '301312.SZ', '智立方', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2724, '301313.SZ', '凡拓数创', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2725, '301314.SZ', '科瑞思', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2726, '301316.SZ', '慧博云通', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2727, '301317.SZ', '鑫磊股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2728, '301318.SZ', '维海德', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2729, '301319.SZ', '唯特偶', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2730, '301321.SZ', '翰博高新', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2731, '301322.SZ', '绿通科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2732, '301326.SZ', '捷邦科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2733, '301327.SZ', '华宝新能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2734, '301328.SZ', '维峰电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2735, '301330.SZ', '熵基科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2736, '301331.SZ', '恩威医药', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2737, '301333.SZ', '诺思格', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2738, '301335.SZ', '天元宠物', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2739, '301336.SZ', '趣睡科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2740, '301338.SZ', '凯格精机', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2741, '301339.SZ', '通行宝', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2742, '301345.SZ', '涛涛车业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2743, '301349.SZ', '信德新材', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2744, '301356.SZ', '天振股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2745, '301357.SZ', '北方长龙', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2746, '301358.SZ', '湖南裕能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2747, '301359.SZ', '东南电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2748, '301360.SZ', '荣旗科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2749, '301361.SZ', '众智科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2750, '301363.SZ', '美好医疗', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2751, '301365.SZ', '矩阵股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2752, '301366.SZ', '一博科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2753, '301367.SZ', '怡和嘉业', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2754, '301368.SZ', '丰立智能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2755, '301369.SZ', '联动科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2756, '301373.SZ', '凌玮科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2757, '301377.SZ', '鼎泰高科', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2758, '301378.SZ', '通达海', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2759, '301379.SZ', '天山电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2760, '301380.SZ', '挖金客', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2761, '301386.SZ', '未来电器', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2762, '301387.SZ', '光大同创', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2763, '301388.SZ', '欣灵电气', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2764, '301389.SZ', '隆扬电子', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2765, '301391.SZ', '卡莱特', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2766, '301396.SZ', '宏景科技', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2767, '301398.SZ', '星源卓镁', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2768, '301408.SZ', '华人健康', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2769, '301419.SZ', '阿莱德', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2770, '301429.SZ', '森泰股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2771, '301439.SZ', '泓淋电力', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2772, '600000.SH', '浦发银行', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2773, '600004.SH', '白云机场', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2774, '600006.SH', '东风汽车', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2775, '600007.SH', '中国国贸', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2776, '600008.SH', '首创环保', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2777, '600009.SH', '上海机场', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2778, '600010.SH', '包钢股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2779, '600011.SH', '华能国际', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2780, '600012.SH', '皖通高速', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2781, '600015.SH', '华夏银行', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2782, '600016.SH', '民生银行', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2783, '600017.SH', '日照港', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2784, '600018.SH', '上港集团', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2785, '600019.SH', '宝钢股份', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2786, '600020.SH', '中原高速', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2787, '600021.SH', '上海电力', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2788, '600022.SH', '山东钢铁', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2789, '600023.SH', '浙能电力', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2790, '600025.SH', '华能水电', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2791, '600026.SH', '中远海能', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2792, '600027.SH', '华电国际', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2793, '600028.SH', '中国石化', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2794, '600029.SH', '南方航空', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2795, '600030.SH', '中信证券', 1, 0, NULL, '', '2023-09-22 17:22:38', '', '2023-09-22 17:22:38', NULL);
INSERT INTO `t_stock_code` VALUES (2796, '600031.SH', '三一重工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2797, '600032.SH', '浙江新能', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2798, '600033.SH', '福建高速', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2799, '600035.SH', '楚天高速', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2800, '600036.SH', '招商银行', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2801, '600037.SH', '歌华有线', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2802, '600038.SH', '中直股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2803, '600039.SH', '四川路桥', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2804, '600048.SH', '保利发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2805, '600050.SH', '中国联通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2806, '600051.SH', '宁波联合', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2807, '600052.SH', '东望时代', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2808, '600053.SH', '九鼎投资', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2809, '600054.SH', '黄山旅游', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2810, '600055.SH', '万东医疗', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2811, '600056.SH', '中国医药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2812, '600057.SH', '厦门象屿', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2813, '600058.SH', '五矿发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2814, '600059.SH', '古越龙山', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2815, '600060.SH', '海信视像', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2816, '600061.SH', '国投资本', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2817, '600062.SH', '华润双鹤', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2818, '600063.SH', '皖维高新', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2819, '600064.SH', '南京高科', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2820, '600066.SH', '宇通客车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2821, '600067.SH', '冠城大通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2822, '600070.SH', 'ST富润', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2823, '600071.SH', '凤凰光学', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2824, '600072.SH', '中船科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2825, '600073.SH', '上海梅林', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2826, '600075.SH', '新疆天业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2827, '600076.SH', '康欣新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2828, '600077.SH', '*ST宋都', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2829, '600078.SH', 'ST澄星', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2830, '600079.SH', '人福医药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2831, '600080.SH', '金花股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2832, '600081.SH', '东风科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2833, '600082.SH', '海泰发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2834, '600083.SH', '博信股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2835, '600084.SH', '中葡股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2836, '600085.SH', '同仁堂', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2837, '600088.SH', '中视传媒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2838, '600089.SH', '特变电工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2839, '600094.SH', '大名城', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2840, '600095.SH', '湘财股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2841, '600096.SH', '云天化', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2842, '600097.SH', '开创国际', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2843, '600098.SH', '广州发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2844, '600099.SH', '林海股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2845, '600100.SH', '同方股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2846, '600101.SH', '明星电力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2847, '600103.SH', '青山纸业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2848, '600104.SH', '上汽集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2849, '600105.SH', '永鼎股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2850, '600106.SH', '重庆路桥', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2851, '600107.SH', '美尔雅', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2852, '600108.SH', '亚盛集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2853, '600109.SH', '国金证券', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2854, '600110.SH', '诺德股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2855, '600111.SH', '北方稀土', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2856, '600112.SH', 'ST天成', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2857, '600113.SH', '浙江东日', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2858, '600114.SH', '东睦股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2859, '600115.SH', '中国东航', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2860, '600116.SH', '三峡水利', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2861, '600117.SH', '*ST西钢', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2862, '600118.SH', '中国卫星', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2863, '600119.SH', '长江投资', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2864, '600120.SH', '浙江东方', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2865, '600121.SH', '郑州煤电', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2866, '600122.SH', '*ST宏图', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2867, '600123.SH', '兰花科创', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2868, '600125.SH', '铁龙物流', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2869, '600126.SH', '杭钢股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2870, '600127.SH', '金健米业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2871, '600128.SH', '弘业股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2872, '600129.SH', '太极集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2873, '600130.SH', '波导股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2874, '600131.SH', '国网信通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2875, '600132.SH', '重庆啤酒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2876, '600133.SH', '东湖高新', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2877, '600135.SH', '乐凯胶片', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2878, '600136.SH', '*ST明诚', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2879, '600137.SH', '浪莎股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2880, '600138.SH', '中青旅', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2881, '600141.SH', '兴发集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2882, '600143.SH', '金发科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2883, '600148.SH', '长春一东', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2884, '600149.SH', '廊坊发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2885, '600150.SH', '中国船舶', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2886, '600151.SH', '航天机电', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2887, '600152.SH', '维科技术', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2888, '600153.SH', '建发股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2889, '600155.SH', '华创云信', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2890, '600156.SH', '华升股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2891, '600157.SH', '永泰能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2892, '600158.SH', '中体产业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2893, '600159.SH', '大龙地产', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2894, '600160.SH', '巨化股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2895, '600161.SH', '天坛生物', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2896, '600162.SH', '香江控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2897, '600163.SH', '中闽能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2898, '600165.SH', '宁科生物', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2899, '600166.SH', '福田汽车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2900, '600167.SH', '联美控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2901, '600168.SH', '武汉控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2902, '600169.SH', '太原重工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2903, '600170.SH', '上海建工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2904, '600171.SH', '上海贝岭', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2905, '600172.SH', '黄河旋风', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2906, '600173.SH', '卧龙地产', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2907, '600176.SH', '中国巨石', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2908, '600177.SH', '雅戈尔', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2909, '600178.SH', '东安动力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2910, '600179.SH', '安通控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2911, '600180.SH', '瑞茂通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2912, '600182.SH', 'S*ST佳通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2913, '600183.SH', '生益科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2914, '600184.SH', '光电股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2915, '600185.SH', '格力地产', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2916, '600186.SH', '莲花健康', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2917, '600187.SH', '国中水务', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2918, '600188.SH', '兖矿能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2919, '600189.SH', '泉阳泉', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2920, '600190.SH', '锦州港', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2921, '600191.SH', '华资实业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2922, '600192.SH', '长城电工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2923, '600193.SH', '创兴资源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2924, '600195.SH', '中牧股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2925, '600196.SH', '复星医药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2926, '600197.SH', '伊力特', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2927, '600198.SH', '大唐电信', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2928, '600199.SH', '金种子酒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2929, '600200.SH', '江苏吴中', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2930, '600201.SH', '生物股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2931, '600202.SH', '哈空调', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2932, '600203.SH', '福日电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2933, '600206.SH', '有研新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2934, '600207.SH', '安彩高科', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2935, '600208.SH', '新湖中宝', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2936, '600210.SH', '紫江企业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2937, '600211.SH', '西藏药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2938, '600212.SH', '绿能慧充', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2939, '600213.SH', '亚星客车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2940, '600215.SH', '派斯林', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2941, '600216.SH', '浙江医药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2942, '600217.SH', '中再资环', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2943, '600218.SH', '全柴动力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2944, '600219.SH', '南山铝业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2945, '600220.SH', '江苏阳光', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2946, '600221.SH', '海航控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2947, '600222.SH', '太龙药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2948, '600223.SH', '鲁商发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2949, '600225.SH', '卓朗科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2950, '600226.SH', 'ST瀚叶', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2951, '600227.SH', '圣济堂', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2952, '600228.SH', '返利科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2953, '600229.SH', '城市传媒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2954, '600230.SH', '沧州大化', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2955, '600231.SH', '凌钢股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2956, '600232.SH', '金鹰股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2957, '600233.SH', '圆通速递', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2958, '600234.SH', '科新发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2959, '600235.SH', '民丰特纸', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2960, '600236.SH', '桂冠电力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2961, '600237.SH', '铜峰电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2962, '600238.SH', '海南椰岛', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2963, '600239.SH', 'ST云城', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2964, '600241.SH', 'ST时万', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2965, '600242.SH', '*ST中昌', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2966, '600243.SH', '青海华鼎', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2967, '600246.SH', '万通发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2968, '600248.SH', '陕西建工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2969, '600249.SH', '两面针', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2970, '600250.SH', '南纺股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2971, '600251.SH', '冠农股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2972, '600252.SH', '中恒集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2973, '600255.SH', '鑫科材料', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2974, '600256.SH', '广汇能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2975, '600257.SH', '大湖股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2976, '600258.SH', '首旅酒店', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2977, '600259.SH', '广晟有色', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2978, '600261.SH', '阳光照明', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2979, '600262.SH', '北方股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2980, '600265.SH', 'ST景谷', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2981, '600266.SH', '城建发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2982, '600267.SH', '海正药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2983, '600268.SH', '国电南自', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2984, '600269.SH', '赣粤高速', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2985, '600271.SH', '航天信息', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2986, '600272.SH', '开开实业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2987, '600273.SH', '嘉化能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2988, '600276.SH', '恒瑞医药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2989, '600277.SH', '亿利洁能', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2990, '600278.SH', '东方创业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2991, '600279.SH', '重庆港', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2992, '600280.SH', '中央商场', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2993, '600281.SH', '华阳新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2994, '600282.SH', '南钢股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2995, '600283.SH', '钱江水利', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2996, '600284.SH', '浦东建设', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2997, '600285.SH', '羚锐制药', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2998, '600287.SH', '江苏舜天', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (2999, '600288.SH', '大恒科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3000, '600289.SH', 'ST信通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3001, '600290.SH', '*ST华仪', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3002, '600292.SH', '远达环保', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3003, '600293.SH', '三峡新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3004, '600295.SH', '鄂尔多斯', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3005, '600297.SH', '广汇汽车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3006, '600298.SH', '安琪酵母', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3007, '600299.SH', '安迪苏', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3008, '600300.SH', '维维股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3009, '600301.SH', '南化股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3010, '600302.SH', '标准股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3011, '600303.SH', 'ST曙光', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3012, '600305.SH', '恒顺醋业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3013, '600306.SH', '*ST商城', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3014, '600307.SH', '酒钢宏兴', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3015, '600308.SH', '华泰股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3016, '600309.SH', '万华化学', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3017, '600310.SH', '广西能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3018, '600312.SH', '平高电气', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3019, '600313.SH', '农发种业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3020, '600315.SH', '上海家化', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3021, '600316.SH', '洪都航空', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3022, '600318.SH', '新力金融', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3023, '600319.SH', '亚星化学', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3024, '600320.SH', '振华重工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3025, '600321.SH', '正源股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3026, '600322.SH', '天房发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3027, '600323.SH', '瀚蓝环境', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3028, '600325.SH', '华发股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3029, '600326.SH', '西藏天路', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3030, '600327.SH', '大东方', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3031, '600328.SH', '中盐化工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3032, '600329.SH', '达仁堂', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3033, '600330.SH', '天通股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3034, '600331.SH', '宏达股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3035, '600332.SH', '白云山', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3036, '600333.SH', '长春燃气', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3037, '600335.SH', '国机汽车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3038, '600336.SH', '澳柯玛', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3039, '600337.SH', '美克家居', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3040, '600338.SH', '西藏珠峰', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3041, '600339.SH', '中油工程', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3042, '600340.SH', '华夏幸福', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3043, '600343.SH', '航天动力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3044, '600345.SH', '长江通信', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3045, '600346.SH', '恒力石化', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3046, '600348.SH', '华阳股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3047, '600350.SH', '山东高速', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3048, '600351.SH', '亚宝药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3049, '600352.SH', '浙江龙盛', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3050, '600353.SH', '旭光电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3051, '600354.SH', '敦煌种业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3052, '600355.SH', '精伦电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3053, '600356.SH', '恒丰纸业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3054, '600358.SH', '国旅联合', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3055, '600359.SH', '新农开发', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3056, '600360.SH', '华微电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3057, '600361.SH', '创新新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3058, '600362.SH', '江西铜业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3059, '600363.SH', '联创光电', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3060, '600365.SH', 'ST通葡', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3061, '600366.SH', '宁波韵升', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3062, '600367.SH', '红星发展', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3063, '600368.SH', '五洲交通', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3064, '600369.SH', '西南证券', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3065, '600370.SH', '三房巷', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3066, '600371.SH', '万向德农', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3067, '600372.SH', '中航电子', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3068, '600373.SH', '中文传媒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3069, '600375.SH', '汉马科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3070, '600376.SH', '首开股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3071, '600377.SH', '宁沪高速', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3072, '600378.SH', '昊华科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3073, '600379.SH', '宝光股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3074, '600380.SH', '健康元', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3075, '600381.SH', '青海春天', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3076, '600382.SH', 'ST广珠', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3077, '600383.SH', '金地集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3078, '600386.SH', '北巴传媒', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3079, '600387.SH', 'ST海越', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3080, '600388.SH', 'ST龙净', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3081, '600389.SH', '江山股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3082, '600390.SH', '五矿资本', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3083, '600391.SH', '航发科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3084, '600392.SH', '盛和资源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3085, '600393.SH', 'ST粤泰', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3086, '600395.SH', '盘江股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3087, '600396.SH', '*ST金山', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3088, '600397.SH', '安源煤业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3089, '600398.SH', '海澜之家', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3090, '600399.SH', '抚顺特钢', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3091, '600400.SH', '红豆股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3092, '600403.SH', '大有能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3093, '600405.SH', '动力源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3094, '600406.SH', '国电南瑞', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3095, '600408.SH', '安泰集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3096, '600409.SH', '三友化工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3097, '600410.SH', '华胜天成', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3098, '600415.SH', '小商品城', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3099, '600416.SH', '湘电股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3100, '600418.SH', '江淮汽车', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3101, '600419.SH', '天润乳业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3102, '600420.SH', '国药现代', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3103, '600421.SH', '华嵘控股', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3104, '600422.SH', '昆药集团', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3105, '600423.SH', '柳化股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3106, '600425.SH', '青松建化', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3107, '600426.SH', '华鲁恒升', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3108, '600428.SH', '中远海特', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3109, '600429.SH', '三元股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3110, '600433.SH', '冠豪高新', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3111, '600435.SH', '北方导航', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3112, '600436.SH', '片仔癀', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3113, '600438.SH', '通威股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3114, '600439.SH', '瑞贝卡', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3115, '600444.SH', '国机通用', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3116, '600446.SH', '金证股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3117, '600448.SH', '华纺股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3118, '600449.SH', '宁夏建材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3119, '600452.SH', '涪陵电力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3120, '600455.SH', '博通股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3121, '600456.SH', '宝钛股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3122, '600458.SH', '时代新材', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3123, '600459.SH', '贵研铂业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3124, '600460.SH', '士兰微', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3125, '600461.SH', '洪城环境', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3126, '600462.SH', 'ST九有', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3127, '600463.SH', '空港股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3128, '600466.SH', '*ST蓝光', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3129, '600467.SH', '好当家', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3130, '600468.SH', '百利电气', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3131, '600469.SH', '风神股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3132, '600470.SH', '六国化工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3133, '600475.SH', '华光环能', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3134, '600476.SH', '湘邮科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3135, '600477.SH', '杭萧钢构', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3136, '600478.SH', '科力远', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3137, '600479.SH', '千金药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3138, '600480.SH', '凌云股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3139, '600481.SH', '双良节能', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3140, '600482.SH', '中国动力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3141, '600483.SH', '福能股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3142, '600486.SH', '扬农化工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3143, '600487.SH', '亨通光电', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3144, '600488.SH', '津药药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3145, '600489.SH', '中金黄金', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3146, '600490.SH', '鹏欣资源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3147, '600491.SH', '龙元建设', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3148, '600493.SH', '凤竹纺织', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3149, '600495.SH', '晋西车轴', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3150, '600496.SH', '精工钢构', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3151, '600497.SH', '驰宏锌锗', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3152, '600498.SH', '烽火通信', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3153, '600499.SH', '科达制造', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3154, '600500.SH', '中化国际', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3155, '600501.SH', '航天晨光', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3156, '600502.SH', '安徽建工', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3157, '600503.SH', '华丽家族', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3158, '600505.SH', '西昌电力', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3159, '600506.SH', '统一股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3160, '600507.SH', '方大特钢', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3161, '600508.SH', '上海能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3162, '600509.SH', '天富能源', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3163, '600510.SH', '黑牡丹', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3164, '600511.SH', '国药股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3165, '600512.SH', '腾达建设', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3166, '600513.SH', '联环药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3167, '600515.SH', '海南机场', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3168, '600516.SH', '方大炭素', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3169, '600517.SH', '国网英大', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3170, '600518.SH', 'ST康美', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3171, '600519.SH', '贵州茅台', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3172, '600520.SH', '文一科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3173, '600521.SH', '华海药业', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3174, '600522.SH', '中天科技', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3175, '600523.SH', '贵航股份', 1, 0, NULL, '', '2023-09-22 17:22:39', '', '2023-09-22 17:22:39', NULL);
INSERT INTO `t_stock_code` VALUES (3176, '600525.SH', '长园集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3177, '600526.SH', '菲达环保', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3178, '600527.SH', '江南高纤', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3179, '600528.SH', '中铁工业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3180, '600529.SH', '山东药玻', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3181, '600530.SH', '交大昂立', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3182, '600531.SH', '豫光金铅', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3183, '600532.SH', '*ST未来', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3184, '600533.SH', '栖霞建设', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3185, '600535.SH', '天士力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3186, '600536.SH', '中国软件', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3187, '600537.SH', '亿晶光电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3188, '600538.SH', '国发股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3189, '600539.SH', '狮头股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3190, '600540.SH', '新赛股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3191, '600543.SH', '*ST莫高', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3192, '600545.SH', '卓郎智能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3193, '600546.SH', '山煤国际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3194, '600547.SH', '山东黄金', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3195, '600548.SH', '深高速', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3196, '600549.SH', '厦门钨业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3197, '600550.SH', '保变电气', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3198, '600551.SH', '时代出版', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3199, '600552.SH', '凯盛科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3200, '600556.SH', '天下秀', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3201, '600557.SH', '康缘药业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3202, '600558.SH', '大西洋', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3203, '600559.SH', '老白干酒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3204, '600560.SH', '金自天正', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3205, '600561.SH', '江西长运', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3206, '600562.SH', '国睿科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3207, '600563.SH', '法拉电子', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3208, '600565.SH', '迪马股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3209, '600566.SH', '济川药业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3210, '600567.SH', '山鹰国际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3211, '600568.SH', 'ST中珠', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3212, '600569.SH', '安阳钢铁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3213, '600570.SH', '恒生电子', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3214, '600571.SH', '信雅达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3215, '600572.SH', '康恩贝', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3216, '600573.SH', '惠泉啤酒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3217, '600575.SH', '淮河能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3218, '600576.SH', '祥源文旅', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3219, '600577.SH', '精达股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3220, '600578.SH', '京能电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3221, '600579.SH', '克劳斯', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3222, '600580.SH', '卧龙电驱', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3223, '600581.SH', '八一钢铁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3224, '600582.SH', '天地科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3225, '600583.SH', '海油工程', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3226, '600584.SH', '长电科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3227, '600585.SH', '海螺水泥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3228, '600586.SH', '金晶科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3229, '600587.SH', '新华医疗', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3230, '600588.SH', '用友网络', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3231, '600589.SH', '*ST榕泰', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3232, '600590.SH', '泰豪科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3233, '600592.SH', '龙溪股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3234, '600593.SH', '大连圣亚', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3235, '600594.SH', '益佰制药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3236, '600595.SH', '中孚实业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3237, '600596.SH', '新安股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3238, '600597.SH', '光明乳业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3239, '600598.SH', '北大荒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3240, '600599.SH', 'ST熊猫', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3241, '600600.SH', '青岛啤酒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3242, '600601.SH', '*ST方科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3243, '600602.SH', '云赛智联', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3244, '600603.SH', '广汇物流', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3245, '600604.SH', '市北高新', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3246, '600605.SH', '汇通能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3247, '600606.SH', '绿地控股', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3248, '600608.SH', 'ST沪科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3249, '600609.SH', '金杯汽车', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3250, '600610.SH', '中毅达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3251, '600611.SH', '大众交通', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3252, '600612.SH', '老凤祥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3253, '600613.SH', '神奇制药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3254, '600615.SH', '丰华股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3255, '600616.SH', '金枫酒业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3256, '600617.SH', '国新能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3257, '600618.SH', '氯碱化工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3258, '600619.SH', '海立股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3259, '600620.SH', '天宸股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3260, '600621.SH', '华鑫股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3261, '600622.SH', '光大嘉宝', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3262, '600623.SH', '华谊集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3263, '600624.SH', '复旦复华', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3264, '600626.SH', '申达股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3265, '600628.SH', '新世界', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3266, '600629.SH', '华建集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3267, '600630.SH', '龙头股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3268, '600633.SH', '浙数文化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3269, '600635.SH', '大众公用', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3270, '600636.SH', '国新文化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3271, '600637.SH', '东方明珠', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3272, '600638.SH', '新黄浦', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3273, '600639.SH', '浦东金桥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3274, '600640.SH', '国脉文化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3275, '600641.SH', '万业企业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3276, '600642.SH', '申能股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3277, '600643.SH', '爱建集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3278, '600644.SH', '乐山电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3279, '600645.SH', '中源协和', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3280, '600647.SH', '*ST同达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3281, '600648.SH', '外高桥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3282, '600649.SH', '城投控股', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3283, '600650.SH', '锦江在线', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3284, '600651.SH', '飞乐音响', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3285, '600653.SH', '申华控股', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3286, '600654.SH', '*ST中安', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3287, '600655.SH', '豫园股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3288, '600657.SH', '信达地产', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3289, '600658.SH', '电子城', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3290, '600660.SH', '福耀玻璃', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3291, '600661.SH', '昂立教育', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3292, '600662.SH', '外服控股', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3293, '600663.SH', '陆家嘴', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3294, '600664.SH', '哈药股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3295, '600665.SH', '天地源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3296, '600666.SH', '*ST瑞德', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3297, '600667.SH', '太极实业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3298, '600668.SH', '尖峰集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3299, '600671.SH', '*ST目药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3300, '600673.SH', '东阳光', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3301, '600674.SH', '川投能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3302, '600675.SH', '中华企业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3303, '600676.SH', '交运股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3304, '600678.SH', '四川金顶', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3305, '600679.SH', '上海凤凰', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3306, '600681.SH', '百川能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3307, '600682.SH', '南京新百', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3308, '600683.SH', '京投发展', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3309, '600684.SH', '珠江股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3310, '600685.SH', '中船防务', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3311, '600686.SH', '金龙汽车', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3312, '600688.SH', '上海石化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3313, '600689.SH', '上海三毛', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3314, '600690.SH', '海尔智家', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3315, '600691.SH', '阳煤化工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3316, '600692.SH', '亚通股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3317, '600693.SH', '东百集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3318, '600694.SH', '大商股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3319, '600696.SH', '岩石股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3320, '600697.SH', '欧亚集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3321, '600698.SH', '湖南天雁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3322, '600699.SH', '均胜电子', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3323, '600702.SH', '舍得酒业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3324, '600703.SH', '三安光电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3325, '600704.SH', '物产中大', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3326, '600705.SH', '中航产融', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3327, '600706.SH', '曲江文旅', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3328, '600707.SH', '彩虹股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3329, '600708.SH', '光明地产', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3330, '600710.SH', '苏美达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3331, '600711.SH', '盛屯矿业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3332, '600712.SH', '南宁百货', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3333, '600713.SH', '南京医药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3334, '600714.SH', '金瑞矿业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3335, '600715.SH', '文投控股', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3336, '600716.SH', '凤凰股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3337, '600717.SH', '天津港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3338, '600718.SH', '东软集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3339, '600719.SH', '大连热电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3340, '600720.SH', '祁连山', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3341, '600721.SH', '百花医药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3342, '600722.SH', '金牛化工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3343, '600724.SH', '宁波富达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3344, '600725.SH', '云维股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3345, '600726.SH', '*ST华源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3346, '600727.SH', '鲁北化工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3347, '600728.SH', '佳都科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3348, '600729.SH', '重庆百货', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3349, '600730.SH', '中国高科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3350, '600731.SH', '湖南海利', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3351, '600732.SH', '爱旭股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3352, '600733.SH', '北汽蓝谷', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3353, '600734.SH', 'ST实达', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3354, '600735.SH', '新华锦', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3355, '600736.SH', '苏州高新', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3356, '600737.SH', '中粮糖业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3357, '600738.SH', '丽尚国潮', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3358, '600739.SH', '辽宁成大', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3359, '600740.SH', '山西焦化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3360, '600741.SH', '华域汽车', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3361, '600742.SH', '一汽富维', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3362, '600743.SH', '华远地产', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3363, '600744.SH', '华银电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3364, '600745.SH', '闻泰科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3365, '600746.SH', '江苏索普', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3366, '600748.SH', '上实发展', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3367, '600749.SH', '西藏旅游', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3368, '600750.SH', '江中药业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3369, '600751.SH', '海航科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3370, '600753.SH', '庚星股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3371, '600754.SH', '锦江酒店', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3372, '600755.SH', '厦门国贸', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3373, '600756.SH', '浪潮软件', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3374, '600757.SH', '长江传媒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3375, '600758.SH', '辽宁能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3376, '600759.SH', 'ST洲际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3377, '600760.SH', '中航沈飞', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3378, '600761.SH', '安徽合力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3379, '600763.SH', '通策医疗', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3380, '600764.SH', '中国海防', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3381, '600765.SH', '中航重机', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3382, '600766.SH', '*ST园城', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3383, '600767.SH', '*ST运盛', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3384, '600768.SH', '宁波富邦', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3385, '600769.SH', '祥龙电业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3386, '600770.SH', '综艺股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3387, '600771.SH', '广誉远', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3388, '600773.SH', '西藏城投', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3389, '600774.SH', '汉商集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3390, '600775.SH', '南京熊猫', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3391, '600776.SH', '东方通信', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3392, '600777.SH', '新潮能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3393, '600778.SH', '友好集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3394, '600779.SH', '水井坊', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3395, '600780.SH', '通宝能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3396, '600781.SH', '*ST辅仁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3397, '600782.SH', '新钢股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3398, '600783.SH', '鲁信创投', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3399, '600784.SH', '鲁银投资', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3400, '600785.SH', '新华百货', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3401, '600787.SH', '中储股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3402, '600789.SH', '鲁抗医药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3403, '600790.SH', '轻纺城', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3404, '600791.SH', '京能置业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3405, '600792.SH', '云煤能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3406, '600793.SH', '宜宾纸业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3407, '600794.SH', '保税科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3408, '600795.SH', '国电电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3409, '600796.SH', '钱江生化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3410, '600797.SH', '浙大网新', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3411, '600798.SH', '宁波海运', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3412, '600800.SH', '渤海化学', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3413, '600801.SH', '华新水泥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3414, '600802.SH', '福建水泥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3415, '600803.SH', '新奥股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3416, '600804.SH', 'ST鹏博士', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3417, '600805.SH', '悦达投资', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3418, '600807.SH', '济南高新', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3419, '600808.SH', '马钢股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3420, '600809.SH', '山西汾酒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3421, '600810.SH', '神马股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3422, '600811.SH', '东方集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3423, '600812.SH', '华北制药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3424, '600814.SH', '杭州解百', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3425, '600815.SH', '厦工股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3426, '600816.SH', 'ST安信', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3427, '600817.SH', '宇通重工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3428, '600818.SH', '中路股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3429, '600819.SH', '耀皮玻璃', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3430, '600820.SH', '隧道股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3431, '600821.SH', '金开新能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3432, '600822.SH', '上海物贸', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3433, '600823.SH', 'ST世茂', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3434, '600824.SH', '益民集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3435, '600825.SH', '新华传媒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3436, '600826.SH', '兰生股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3437, '600827.SH', '百联股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3438, '600828.SH', '茂业商业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3439, '600829.SH', '人民同泰', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3440, '600830.SH', '香溢融通', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3441, '600831.SH', '广电网络', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3442, '600833.SH', '第一医药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3443, '600834.SH', '申通地铁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3444, '600835.SH', '上海机电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3445, '600836.SH', '上海易连', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3446, '600837.SH', '海通证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3447, '600838.SH', '上海九百', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3448, '600839.SH', '四川长虹', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3449, '600841.SH', '动力新科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3450, '600843.SH', '上工申贝', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3451, '600844.SH', '丹化科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3452, '600845.SH', '宝信软件', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3453, '600846.SH', '同济科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3454, '600847.SH', '万里股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3455, '600848.SH', '上海临港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3456, '600850.SH', '电科数字', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3457, '600851.SH', '海欣股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3458, '600853.SH', '龙建股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3459, '600854.SH', '春兰股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3460, '600855.SH', '航天长峰', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3461, '600857.SH', '宁波中百', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3462, '600858.SH', '银座股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3463, '600859.SH', '王府井', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3464, '600860.SH', '京城股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3465, '600861.SH', '北京城乡', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3466, '600862.SH', '中航高科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3467, '600863.SH', '内蒙华电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3468, '600864.SH', '哈投股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3469, '600865.SH', '百大集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3470, '600866.SH', '星湖科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3471, '600867.SH', '通化东宝', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3472, '600868.SH', '梅雁吉祥', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3473, '600869.SH', '远东股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3474, '600871.SH', '石化油服', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3475, '600872.SH', '中炬高新', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3476, '600873.SH', '梅花生物', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3477, '600874.SH', '创业环保', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3478, '600875.SH', '东方电气', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3479, '600876.SH', '凯盛新能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3480, '600877.SH', '电科芯片', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3481, '600879.SH', '航天电子', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3482, '600880.SH', '博瑞传播', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3483, '600881.SH', '亚泰集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3484, '600882.SH', '妙可蓝多', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3485, '600883.SH', '博闻科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3486, '600884.SH', '杉杉股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3487, '600885.SH', '宏发股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3488, '600886.SH', '国投电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3489, '600887.SH', '伊利股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3490, '600888.SH', '新疆众和', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3491, '600889.SH', '南京化纤', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3492, '600892.SH', '大晟文化', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3493, '600893.SH', '航发动力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3494, '600894.SH', '广日股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3495, '600895.SH', '张江高科', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3496, '600897.SH', '厦门空港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3497, '600898.SH', 'ST美讯', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3498, '600900.SH', '长江电力', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3499, '600901.SH', '江苏金租', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3500, '600903.SH', '贵州燃气', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3501, '600905.SH', '三峡能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3502, '600906.SH', '财达证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3503, '600908.SH', '无锡银行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3504, '600909.SH', '华安证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3505, '600916.SH', '中国黄金', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3506, '600917.SH', '重庆燃气', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3507, '600918.SH', '中泰证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3508, '600919.SH', '江苏银行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3509, '600925.SH', '苏能股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3510, '600926.SH', '杭州银行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3511, '600927.SH', '永安期货', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3512, '600928.SH', '西安银行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3513, '600929.SH', '雪天盐业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3514, '600933.SH', '爱柯迪', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3515, '600935.SH', '华塑股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3516, '600936.SH', '广西广电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3517, '600938.SH', '中国海油', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3518, '600939.SH', '重庆建工', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3519, '600941.SH', '中国移动', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3520, '600955.SH', '维远股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3521, '600956.SH', '新天绿能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3522, '600958.SH', '东方证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3523, '600959.SH', '江苏有线', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3524, '600960.SH', '渤海汽车', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3525, '600961.SH', '株冶集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3526, '600962.SH', '国投中鲁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3527, '600963.SH', '岳阳林纸', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3528, '600965.SH', '福成股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3529, '600966.SH', '博汇纸业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3530, '600967.SH', '内蒙一机', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3531, '600968.SH', '海油发展', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3532, '600969.SH', '郴电国际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3533, '600970.SH', '中材国际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3534, '600971.SH', '恒源煤电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3535, '600973.SH', '宝胜股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3536, '600975.SH', '新五丰', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3537, '600976.SH', '健民集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3538, '600977.SH', '中国电影', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3539, '600979.SH', '广安爱众', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3540, '600980.SH', '北矿科技', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3541, '600981.SH', '汇鸿集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3542, '600982.SH', '宁波能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3543, '600983.SH', '惠而浦', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3544, '600984.SH', '建设机械', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3545, '600985.SH', '淮北矿业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3546, '600986.SH', '浙文互联', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3547, '600987.SH', '航民股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3548, '600988.SH', '赤峰黄金', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3549, '600989.SH', '宝丰能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3550, '600990.SH', '四创电子', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3551, '600992.SH', '贵绳股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3552, '600993.SH', '马应龙', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3553, '600995.SH', '南网储能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3554, '600996.SH', '贵广网络', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3555, '600997.SH', '开滦股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3556, '600998.SH', '九州通', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3557, '600999.SH', '招商证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3558, '601000.SH', '唐山港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3559, '601001.SH', '晋控煤业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3560, '601002.SH', '晋亿实业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3561, '601003.SH', '柳钢股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3562, '601005.SH', '重庆钢铁', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3563, '601006.SH', '大秦铁路', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3564, '601007.SH', '金陵饭店', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3565, '601008.SH', '连云港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3566, '601009.SH', '南京银行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3567, '601010.SH', '文峰股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3568, '601011.SH', '宝泰隆', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3569, '601012.SH', '隆基绿能', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3570, '601015.SH', '陕西黑猫', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3571, '601016.SH', '节能风电', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3572, '601018.SH', '宁波港', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3573, '601019.SH', '山东出版', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3574, '601020.SH', '华钰矿业', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3575, '601021.SH', '春秋航空', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3576, '601022.SH', '宁波远洋', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3577, '601028.SH', '玉龙股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3578, '601038.SH', '一拖股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3579, '601058.SH', '赛轮轮胎', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3580, '601059.SH', '信达证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3581, '601061.SH', '中信金属', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3582, '601065.SH', '江盐集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3583, '601066.SH', '中信建投', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3584, '601068.SH', '中铝国际', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3585, '601069.SH', '西部黄金', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3586, '601077.SH', '渝农商行', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3587, '601086.SH', '国芳集团', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3588, '601088.SH', '中国神华', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3589, '601089.SH', '福元医药', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3590, '601098.SH', '中南传媒', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3591, '601099.SH', '太平洋', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3592, '601100.SH', '恒立液压', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3593, '601101.SH', '昊华能源', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3594, '601106.SH', '中国一重', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3595, '601107.SH', '四川成渝', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3596, '601108.SH', '财通证券', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3597, '601111.SH', '中国国航', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3598, '601113.SH', '华鼎股份', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3599, '601116.SH', '三江购物', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3600, '601117.SH', '中国化学', 1, 0, NULL, '', '2023-09-22 17:22:40', '', '2023-09-22 17:22:40', NULL);
INSERT INTO `t_stock_code` VALUES (3601, '601118.SH', '海南橡胶', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3602, '601121.SH', '宝地矿业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3603, '601126.SH', '四方股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3604, '601127.SH', '赛力斯', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3605, '601128.SH', '常熟银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3606, '601133.SH', '柏诚股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3607, '601136.SH', '首创证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3608, '601137.SH', '博威合金', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3609, '601138.SH', '工业富联', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3610, '601139.SH', '深圳燃气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3611, '601155.SH', '新城控股', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3612, '601156.SH', '东航物流', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3613, '601158.SH', '重庆水务', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3614, '601162.SH', '天风证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3615, '601163.SH', '三角轮胎', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3616, '601166.SH', '兴业银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3617, '601168.SH', '西部矿业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3618, '601169.SH', '北京银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3619, '601177.SH', '杭齿前进', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3620, '601179.SH', '中国西电', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3621, '601186.SH', '中国铁建', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3622, '601187.SH', '厦门银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3623, '601188.SH', '龙江交通', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3624, '601198.SH', '东兴证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3625, '601199.SH', '江南水务', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3626, '601200.SH', '上海环境', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3627, '601208.SH', '东材科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3628, '601211.SH', '国泰君安', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3629, '601212.SH', '白银有色', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3630, '601216.SH', '君正集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3631, '601218.SH', '吉鑫科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3632, '601222.SH', '林洋能源', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3633, '601225.SH', '陕西煤业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3634, '601226.SH', '华电重工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3635, '601228.SH', '广州港', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3636, '601229.SH', '上海银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3637, '601231.SH', '环旭电子', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3638, '601233.SH', '桐昆股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3639, '601236.SH', '红塔证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3640, '601238.SH', '广汽集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3641, '601258.SH', '*ST庞大', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3642, '601279.SH', '英利汽车', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3643, '601288.SH', '农业银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3644, '601298.SH', '青岛港', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3645, '601311.SH', '骆驼股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3646, '601318.SH', '中国平安', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3647, '601319.SH', '中国人保', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3648, '601326.SH', '秦港股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3649, '601328.SH', '交通银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3650, '601330.SH', '绿色动力', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3651, '601333.SH', '广深铁路', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3652, '601336.SH', '新华保险', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3653, '601339.SH', '百隆东方', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3654, '601360.SH', '三六零', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3655, '601366.SH', '利群股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3656, '601368.SH', '绿城水务', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3657, '601369.SH', '陕鼓动力', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3658, '601375.SH', '中原证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3659, '601377.SH', '兴业证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3660, '601388.SH', '怡球资源', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3661, '601390.SH', '中国中铁', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3662, '601398.SH', '工商银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3663, '601399.SH', '国机重装', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3664, '601456.SH', '国联证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3665, '601500.SH', '通用股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3666, '601512.SH', '中新集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3667, '601515.SH', '东风股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3668, '601518.SH', '吉林高速', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3669, '601519.SH', '大智慧', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3670, '601528.SH', '瑞丰银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3671, '601555.SH', '东吴证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3672, '601566.SH', '九牧王', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3673, '601567.SH', '三星医疗', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3674, '601568.SH', '北元集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3675, '601577.SH', '长沙银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3676, '601579.SH', '会稽山', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3677, '601588.SH', '北辰实业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3678, '601595.SH', '上海电影', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3679, '601598.SH', '中国外运', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3680, '601599.SH', '浙文影业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3681, '601600.SH', '中国铝业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3682, '601601.SH', '中国太保', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3683, '601606.SH', '长城军工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3684, '601607.SH', '上海医药', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3685, '601608.SH', '中信重工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3686, '601609.SH', '金田股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3687, '601611.SH', '中国核建', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3688, '601615.SH', '明阳智能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3689, '601616.SH', '广电电气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3690, '601618.SH', '中国中冶', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3691, '601619.SH', '嘉泽新能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3692, '601628.SH', '中国人寿', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3693, '601633.SH', '长城汽车', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3694, '601636.SH', '旗滨集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3695, '601658.SH', '邮储银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3696, '601665.SH', '齐鲁银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3697, '601666.SH', '平煤股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3698, '601668.SH', '中国建筑', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3699, '601669.SH', '中国电建', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3700, '601677.SH', '明泰铝业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3701, '601678.SH', '滨化股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3702, '601686.SH', '友发集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3703, '601688.SH', '华泰证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3704, '601689.SH', '拓普集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3705, '601696.SH', '中银证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3706, '601698.SH', '中国卫通', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3707, '601699.SH', '潞安环能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3708, '601700.SH', '风范股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3709, '601702.SH', '华峰铝业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3710, '601717.SH', '郑煤机', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3711, '601718.SH', '际华集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3712, '601727.SH', '上海电气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3713, '601728.SH', '中国电信', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3714, '601766.SH', '中国中车', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3715, '601777.SH', '力帆科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3716, '601778.SH', '晶科科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3717, '601788.SH', '光大证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3718, '601789.SH', '宁波建工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3719, '601798.SH', '蓝科高新', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3720, '601799.SH', '星宇股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3721, '601800.SH', '中国交建', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3722, '601801.SH', '皖新传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3723, '601808.SH', '中海油服', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3724, '601811.SH', '新华文轩', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3725, '601816.SH', '京沪高铁', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3726, '601818.SH', '光大银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3727, '601825.SH', '沪农商行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3728, '601827.SH', '三峰环境', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3729, '601828.SH', '美凯龙', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3730, '601838.SH', '成都银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3731, '601857.SH', '中国石油', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3732, '601858.SH', '中国科传', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3733, '601860.SH', '紫金银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3734, '601865.SH', '福莱特', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3735, '601866.SH', '中远海发', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3736, '601868.SH', '中国能建', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3737, '601869.SH', '长飞光纤', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3738, '601872.SH', '招商轮船', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3739, '601877.SH', '正泰电器', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3740, '601878.SH', '浙商证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3741, '601880.SH', '辽港股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3742, '601881.SH', '中国银河', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3743, '601882.SH', '海天精工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3744, '601886.SH', '江河集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3745, '601888.SH', '中国中免', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3746, '601890.SH', '亚星锚链', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3747, '601898.SH', '中煤能源', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3748, '601899.SH', '紫金矿业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3749, '601900.SH', '南方传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3750, '601901.SH', '方正证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3751, '601908.SH', '京运通', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3752, '601916.SH', '浙商银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3753, '601918.SH', '新集能源', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3754, '601919.SH', '中远海控', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3755, '601921.SH', '浙版传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3756, '601928.SH', '凤凰传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3757, '601929.SH', '吉视传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3758, '601933.SH', '永辉超市', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3759, '601939.SH', '建设银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3760, '601949.SH', '中国出版', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3761, '601952.SH', '苏垦农发', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3762, '601956.SH', '东贝集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3763, '601958.SH', '金钼股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3764, '601963.SH', '重庆银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3765, '601965.SH', '中国汽研', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3766, '601966.SH', '玲珑轮胎', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3767, '601968.SH', '宝钢包装', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3768, '601969.SH', '海南矿业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3769, '601975.SH', '招商南油', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3770, '601985.SH', '中国核电', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3771, '601988.SH', '中国银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3772, '601989.SH', '中国重工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3773, '601990.SH', '南京证券', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3774, '601991.SH', '大唐发电', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3775, '601992.SH', '金隅集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3776, '601995.SH', '中金公司', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3777, '601996.SH', '丰林集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3778, '601997.SH', '贵阳银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3779, '601998.SH', '中信银行', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3780, '601999.SH', '出版传媒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3781, '603000.SH', '人民网', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3782, '603001.SH', 'ST奥康', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3783, '603002.SH', '宏昌电子', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3784, '603003.SH', '龙宇股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3785, '603005.SH', '晶方科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3786, '603006.SH', '联明股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3787, '603007.SH', 'ST花王', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3788, '603008.SH', '喜临门', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3789, '603009.SH', '北特科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3790, '603010.SH', '万盛股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3791, '603011.SH', '合锻智能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3792, '603012.SH', '创力集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3793, '603013.SH', '亚普股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3794, '603015.SH', '弘讯科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3795, '603016.SH', '新宏泰', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3796, '603017.SH', '中衡设计', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3797, '603018.SH', '华设集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3798, '603019.SH', '中科曙光', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3799, '603020.SH', '爱普股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3800, '603021.SH', '山东华鹏', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3801, '603022.SH', '新通联', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3802, '603023.SH', '威帝股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3803, '603025.SH', '大豪科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3804, '603026.SH', '胜华新材', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3805, '603027.SH', '千禾味业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3806, '603028.SH', '赛福天', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3807, '603029.SH', '天鹅股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3808, '603030.SH', '*ST全筑', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3809, '603031.SH', '安孚科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3810, '603032.SH', '德新科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3811, '603033.SH', '三维股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3812, '603035.SH', '常熟汽饰', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3813, '603036.SH', '如通股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3814, '603037.SH', '凯众股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3815, '603038.SH', '华立股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3816, '603039.SH', '泛微网络', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3817, '603040.SH', '新坐标', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3818, '603041.SH', '美思德', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3819, '603042.SH', '华脉科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3820, '603043.SH', '广州酒家', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3821, '603045.SH', '福达合金', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3822, '603048.SH', '浙江黎明', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3823, '603050.SH', '科林电气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3824, '603051.SH', '鹿山新材', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3825, '603052.SH', '可川科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3826, '603053.SH', '成都燃气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3827, '603055.SH', '台华新材', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3828, '603056.SH', '德邦股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3829, '603057.SH', '紫燕食品', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3830, '603058.SH', '永吉股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3831, '603059.SH', '倍加洁', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3832, '603060.SH', '国检集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3833, '603061.SH', '金海通', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3834, '603063.SH', '禾望电气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3835, '603065.SH', '宿迁联盛', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3836, '603066.SH', '音飞储存', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3837, '603067.SH', '振华股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3838, '603068.SH', '博通集成', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3839, '603069.SH', '海汽集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3840, '603070.SH', '万控智造', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3841, '603071.SH', '物产环能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3842, '603073.SH', '彩蝶实业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3843, '603076.SH', '乐惠国际', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3844, '603077.SH', '和邦生物', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3845, '603078.SH', '江化微', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3846, '603079.SH', '圣达生物', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3847, '603080.SH', '新疆火炬', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3848, '603081.SH', '大丰实业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3849, '603083.SH', '剑桥科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3850, '603085.SH', '天成自控', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3851, '603086.SH', '先达股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3852, '603087.SH', '甘李药业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3853, '603088.SH', '宁波精达', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3854, '603089.SH', '正裕工业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3855, '603090.SH', '宏盛股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3856, '603093.SH', '南华期货', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3857, '603095.SH', '越剑智能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3858, '603096.SH', '新经典', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3859, '603097.SH', '江苏华辰', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3860, '603098.SH', '森特股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3861, '603099.SH', '长白山', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3862, '603100.SH', '川仪股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3863, '603101.SH', '汇嘉时代', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3864, '603102.SH', '百合股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3865, '603103.SH', '横店影视', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3866, '603105.SH', '芯能科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3867, '603106.SH', '恒银科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3868, '603108.SH', '润达医疗', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3869, '603109.SH', '神驰机电', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3870, '603110.SH', '东方材料', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3871, '603111.SH', '康尼机电', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3872, '603112.SH', '华翔股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3873, '603113.SH', '金能科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3874, '603115.SH', '海星股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3875, '603116.SH', '红蜻蜓', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3876, '603117.SH', 'ST万林', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3877, '603118.SH', '共进股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3878, '603121.SH', '华培动力', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3879, '603122.SH', '合富中国', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3880, '603123.SH', '翠微股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3881, '603125.SH', '常青科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3882, '603126.SH', '中材节能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3883, '603127.SH', '昭衍新药', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3884, '603128.SH', '华贸物流', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3885, '603129.SH', '春风动力', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3886, '603130.SH', '云中马', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3887, '603131.SH', '上海沪工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3888, '603132.SH', '金徽股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3889, '603133.SH', '*ST碳元', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3890, '603135.SH', '中重科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3891, '603136.SH', '天目湖', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3892, '603137.SH', '恒尚节能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3893, '603138.SH', '海量数据', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3894, '603139.SH', '康惠制药', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3895, '603150.SH', '万朗磁塑', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3896, '603151.SH', '邦基科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3897, '603153.SH', '上海建科', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3898, '603155.SH', '新亚强', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3899, '603156.SH', '养元饮品', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3900, '603158.SH', '腾龙股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3901, '603159.SH', '上海亚虹', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3902, '603160.SH', '汇顶科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3903, '603161.SH', '科华控股', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3904, '603162.SH', '海通发展', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3905, '603163.SH', '圣晖集成', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3906, '603165.SH', '荣晟环保', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3907, '603166.SH', '福达股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3908, '603167.SH', '渤海轮渡', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3909, '603168.SH', '莎普爱思', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3910, '603169.SH', '兰石重装', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3911, '603170.SH', '宝立食品', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3912, '603171.SH', '税友股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3913, '603173.SH', '福斯达', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3914, '603176.SH', '汇通集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3915, '603177.SH', '德创环保', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3916, '603178.SH', '圣龙股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3917, '603179.SH', '新泉股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3918, '603180.SH', '金牌厨柜', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3919, '603181.SH', '皇马科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3920, '603182.SH', '嘉华股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3921, '603183.SH', '建研院', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3922, '603185.SH', '弘元绿能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3923, '603186.SH', '华正新材', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3924, '603187.SH', '海容冷链', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3925, '603188.SH', '亚邦股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3926, '603189.SH', '网达软件', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3927, '603190.SH', '亚通精工', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3928, '603191.SH', '望变电气', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3929, '603192.SH', '汇得科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3930, '603195.SH', '公牛集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3931, '603196.SH', '日播时尚', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3932, '603197.SH', '保隆科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3933, '603198.SH', '迎驾贡酒', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3934, '603199.SH', '九华旅游', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3935, '603200.SH', '上海洗霸', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3936, '603201.SH', '常润股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3937, '603203.SH', '快克智能', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3938, '603206.SH', '嘉环科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3939, '603208.SH', '江山欧派', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3940, '603209.SH', '兴通股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3941, '603211.SH', '晋拓股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3942, '603212.SH', '赛伍技术', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3943, '603213.SH', '镇洋发展', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3944, '603214.SH', '爱婴室', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3945, '603215.SH', '比依股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3946, '603216.SH', '梦天家居', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3947, '603217.SH', '元利科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3948, '603218.SH', '日月股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3949, '603219.SH', '富佳股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3950, '603220.SH', '中贝通信', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3951, '603221.SH', '爱丽家居', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3952, '603222.SH', '济民医疗', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3953, '603223.SH', '恒通股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3954, '603225.SH', '新凤鸣', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3955, '603226.SH', '菲林格尔', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3956, '603227.SH', '雪峰科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3957, '603228.SH', '景旺电子', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3958, '603229.SH', '奥翔药业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3959, '603230.SH', '内蒙新华', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3960, '603232.SH', '格尔软件', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3961, '603233.SH', '大参林', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3962, '603235.SH', '天新药业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3963, '603236.SH', '移远通信', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3964, '603237.SH', '五芳斋', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3965, '603238.SH', '诺邦股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3966, '603239.SH', '浙江仙通', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3967, '603255.SH', '鼎际得', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3968, '603256.SH', '宏和科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3969, '603258.SH', '电魂网络', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3970, '603259.SH', '药明康德', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3971, '603260.SH', '合盛硅业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3972, '603261.SH', '立航科技', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3973, '603266.SH', '天龙股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3974, '603267.SH', '鸿远电子', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3975, '603268.SH', '松发股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3976, '603269.SH', '海鸥股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3977, '603272.SH', '联翔股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3978, '603277.SH', '银都股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3979, '603278.SH', '大业股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3980, '603279.SH', '景津装备', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3981, '603280.SH', '南方路机', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3982, '603281.SH', '江瀚新材', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3983, '603282.SH', '亚光股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3984, '603283.SH', '赛腾股份', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3985, '603286.SH', '日盈电子', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3986, '603288.SH', '海天味业', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3987, '603289.SH', '泰瑞机器', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3988, '603290.SH', '斯达半导', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3989, '603291.SH', '联合水务', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3990, '603297.SH', '永新光学', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3991, '603298.SH', '杭叉集团', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3992, '603299.SH', '苏盐井神', 1, 0, NULL, '', '2023-09-22 17:22:41', '', '2023-09-22 17:22:41', NULL);
INSERT INTO `t_stock_code` VALUES (3993, '603300.SH', '华铁应急', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3994, '603301.SH', '振德医疗', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3995, '603303.SH', '得邦照明', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3996, '603305.SH', '旭升集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3997, '603306.SH', '华懋科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3998, '603307.SH', '扬州金泉', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (3999, '603308.SH', '应流股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4000, '603309.SH', '维力医疗', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4001, '603311.SH', '金海高科', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4002, '603313.SH', '梦百合', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4003, '603315.SH', '福鞍股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4004, '603316.SH', '诚邦股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4005, '603317.SH', '天味食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4006, '603318.SH', '水发燃气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4007, '603319.SH', '湘油泵', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4008, '603320.SH', '迪贝电气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4009, '603321.SH', '梅轮电梯', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4010, '603322.SH', '超讯通信', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4011, '603323.SH', '苏农银行', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4012, '603324.SH', '盛剑环境', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4013, '603326.SH', '我乐家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4014, '603327.SH', '福蓉科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4015, '603328.SH', '依顿电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4016, '603329.SH', '上海雅仕', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4017, '603330.SH', '天洋新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4018, '603331.SH', '百达精工', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4019, '603332.SH', '苏州龙杰', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4020, '603333.SH', '尚纬股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4021, '603335.SH', '迪生力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4022, '603336.SH', '宏辉果蔬', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4023, '603337.SH', '杰克股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4024, '603338.SH', '浙江鼎力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4025, '603339.SH', '四方科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4026, '603345.SH', '安井食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4027, '603348.SH', '文灿股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4028, '603351.SH', '威尔药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4029, '603353.SH', '和顺石油', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4030, '603355.SH', '莱克电气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4031, '603356.SH', '华菱精工', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4032, '603357.SH', '设计总院', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4033, '603358.SH', '华达科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4034, '603359.SH', '东珠生态', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4035, '603360.SH', '百傲化学', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4036, '603363.SH', '傲农生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4037, '603365.SH', '水星家纺', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4038, '603366.SH', '日出东方', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4039, '603367.SH', '辰欣药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4040, '603368.SH', '柳药集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4041, '603369.SH', '今世缘', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4042, '603377.SH', '东方时尚', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4043, '603378.SH', '亚士创能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4044, '603379.SH', '三美股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4045, '603380.SH', '易德龙', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4046, '603383.SH', '顶点软件', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4047, '603385.SH', '惠达卫浴', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4048, '603386.SH', '骏亚科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4049, '603387.SH', '基蛋生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4050, '603388.SH', '元成股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4051, '603389.SH', '亚振家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4052, '603390.SH', '通达电气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4053, '603392.SH', '万泰生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4054, '603393.SH', '新天然气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4055, '603396.SH', '金辰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4056, '603398.SH', '沐邦高科', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4057, '603399.SH', '吉翔股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4058, '603408.SH', '建霖家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4059, '603416.SH', '信捷电气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4060, '603421.SH', '鼎信通讯', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4061, '603429.SH', '集友股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4062, '603439.SH', '贵州三力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4063, '603444.SH', '吉比特', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4064, '603456.SH', '九洲药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4065, '603458.SH', '勘设股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4066, '603466.SH', '风语筑', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4067, '603477.SH', '巨星农牧', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4068, '603486.SH', '科沃斯', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4069, '603488.SH', '展鹏科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4070, '603489.SH', '八方股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4071, '603496.SH', '恒为科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4072, '603499.SH', '翔港科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4073, '603500.SH', '祥和实业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4074, '603501.SH', '韦尔股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4075, '603505.SH', '金石资源', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4076, '603506.SH', '南都物业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4077, '603507.SH', '振江股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4078, '603508.SH', '思维列控', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4079, '603511.SH', '爱慕股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4080, '603515.SH', '欧普照明', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4081, '603516.SH', '淳中科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4082, '603517.SH', '绝味食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4083, '603518.SH', '锦泓集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4084, '603519.SH', '立霸股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4085, '603520.SH', '司太立', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4086, '603527.SH', '众源新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4087, '603528.SH', '多伦科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4088, '603529.SH', '爱玛科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4089, '603530.SH', '神马电力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4090, '603533.SH', '掌阅科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4091, '603535.SH', '嘉诚国际', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4092, '603536.SH', '惠发食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4093, '603538.SH', '美诺华', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4094, '603551.SH', '奥普家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4095, '603555.SH', 'ST贵人', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4096, '603556.SH', '海兴电力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4097, '603557.SH', 'ST起步', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4098, '603558.SH', '健盛集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4099, '603559.SH', 'ST通脉', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4100, '603565.SH', '中谷物流', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4101, '603566.SH', '普莱柯', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4102, '603567.SH', '珍宝岛', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4103, '603568.SH', '伟明环保', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4104, '603569.SH', '长久物流', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4105, '603577.SH', '汇金通', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4106, '603578.SH', '三星新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4107, '603579.SH', '荣泰健康', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4108, '603580.SH', '艾艾精工', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4109, '603583.SH', '捷昌驱动', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4110, '603585.SH', '苏利股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4111, '603586.SH', '金麒麟', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4112, '603587.SH', '地素时尚', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4113, '603588.SH', '高能环境', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4114, '603589.SH', '口子窖', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4115, '603590.SH', '康辰药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4116, '603595.SH', '东尼电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4117, '603596.SH', '伯特利', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4118, '603598.SH', '引力传媒', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4119, '603599.SH', '广信股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4120, '603600.SH', '永艺股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4121, '603601.SH', '再升科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4122, '603602.SH', '纵横通信', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4123, '603603.SH', '*ST博天', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4124, '603605.SH', '珀莱雅', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4125, '603606.SH', '东方电缆', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4126, '603607.SH', '京华激光', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4127, '603608.SH', '天创时尚', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4128, '603609.SH', '禾丰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4129, '603610.SH', '麒盛科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4130, '603611.SH', '诺力股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4131, '603612.SH', '索通发展', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4132, '603613.SH', '国联股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4133, '603615.SH', '茶花股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4134, '603616.SH', '韩建河山', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4135, '603617.SH', '君禾股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4136, '603618.SH', '杭电股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4137, '603619.SH', '中曼石油', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4138, '603626.SH', '科森科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4139, '603628.SH', '清源股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4140, '603629.SH', '利通电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4141, '603630.SH', '拉芳家化', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4142, '603633.SH', '徕木股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4143, '603636.SH', '南威软件', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4144, '603637.SH', '镇海股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4145, '603638.SH', '艾迪精密', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4146, '603639.SH', '海利尔', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4147, '603648.SH', '畅联股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4148, '603650.SH', '彤程新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4149, '603655.SH', '朗博科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4150, '603656.SH', '泰禾智能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4151, '603657.SH', '春光科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4152, '603658.SH', '安图生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4153, '603659.SH', '璞泰来', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4154, '603660.SH', '苏州科达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4155, '603661.SH', '恒林股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4156, '603662.SH', '柯力传感', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4157, '603663.SH', '三祥新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4158, '603665.SH', '康隆达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4159, '603666.SH', '亿嘉和', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4160, '603667.SH', '五洲新春', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4161, '603668.SH', '天马科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4162, '603669.SH', '灵康药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4163, '603676.SH', '卫信康', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4164, '603677.SH', '奇精机械', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4165, '603678.SH', '火炬电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4166, '603679.SH', '华体科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4167, '603680.SH', '今创集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4168, '603681.SH', '永冠新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4169, '603682.SH', '锦和商管', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4170, '603683.SH', '晶华新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4171, '603685.SH', '晨丰科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4172, '603686.SH', '福龙马', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4173, '603687.SH', '大胜达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4174, '603688.SH', '石英股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4175, '603689.SH', '皖天然气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4176, '603690.SH', '至纯科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4177, '603693.SH', '江苏新能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4178, '603696.SH', '安记食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4179, '603697.SH', '有友食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4180, '603698.SH', '航天工程', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4181, '603699.SH', '纽威股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4182, '603700.SH', '宁水集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4183, '603701.SH', '德宏股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4184, '603703.SH', '盛洋科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4185, '603706.SH', '东方环宇', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4186, '603707.SH', '健友股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4187, '603708.SH', '家家悦', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4188, '603709.SH', '中源家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4189, '603711.SH', '香飘飘', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4190, '603712.SH', '七一二', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4191, '603713.SH', '密尔克卫', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4192, '603716.SH', '塞力医疗', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4193, '603717.SH', '天域生态', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4194, '603718.SH', '海利生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4195, '603719.SH', '良品铺子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4196, '603721.SH', '中广天择', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4197, '603722.SH', '阿科力', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4198, '603725.SH', '天安新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4199, '603726.SH', '朗迪集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4200, '603727.SH', '博迈科', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4201, '603728.SH', '鸣志电器', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4202, '603729.SH', '龙韵股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4203, '603730.SH', '岱美股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4204, '603733.SH', '仙鹤股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4205, '603737.SH', '三棵树', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4206, '603738.SH', '泰晶科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4207, '603739.SH', '蔚蓝生物', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4208, '603755.SH', '日辰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4209, '603757.SH', '大元泵业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4210, '603758.SH', '秦安股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4211, '603759.SH', '海天股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4212, '603766.SH', '隆鑫通用', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4213, '603767.SH', '中马传动', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4214, '603768.SH', '常青股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4215, '603773.SH', '沃格光电', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4216, '603776.SH', '永安行', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4217, '603777.SH', '来伊份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4218, '603778.SH', '乾景园林', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4219, '603779.SH', '威龙股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4220, '603786.SH', '科博达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4221, '603787.SH', '新日股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4222, '603788.SH', '宁波高发', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4223, '603789.SH', '星光农机', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4224, '603790.SH', '雅运股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4225, '603797.SH', '联泰环保', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4226, '603798.SH', '康普顿', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4227, '603799.SH', '华友钴业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4228, '603800.SH', '道森股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4229, '603801.SH', '志邦家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4230, '603803.SH', '瑞斯康达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4231, '603806.SH', '福斯特', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4232, '603808.SH', '歌力思', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4233, '603809.SH', '豪能股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4234, '603810.SH', '丰山集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4235, '603811.SH', '诚意药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4236, '603813.SH', '原尚股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4237, '603815.SH', '交建股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4238, '603816.SH', '顾家家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4239, '603817.SH', '海峡环保', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4240, '603818.SH', '曲美家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4241, '603819.SH', '神力股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4242, '603822.SH', '嘉澳环保', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4243, '603823.SH', '百合花', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4244, '603825.SH', '华扬联众', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4245, '603826.SH', '坤彩科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4246, '603828.SH', '柯利达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4247, '603829.SH', '洛凯股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4248, '603833.SH', '欧派家居', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4249, '603836.SH', '海程邦达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4250, '603838.SH', '四通股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4251, '603839.SH', '安正时尚', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4252, '603843.SH', '正平股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4253, '603848.SH', '好太太', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4254, '603855.SH', '华荣股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4255, '603856.SH', '东宏股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4256, '603858.SH', '步长制药', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4257, '603859.SH', '能科科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4258, '603860.SH', '中公高科', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4259, '603861.SH', '白云电器', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4260, '603863.SH', '松炀资源', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4261, '603866.SH', '桃李面包', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4262, '603867.SH', '新化股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4263, '603868.SH', '飞科电器', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4264, '603869.SH', '新智认知', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4265, '603871.SH', '嘉友国际', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4266, '603876.SH', '鼎胜新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4267, '603877.SH', '太平鸟', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4268, '603878.SH', '武进不锈', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4269, '603879.SH', '永悦科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4270, '603880.SH', 'ST南卫', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4271, '603881.SH', '数据港', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4272, '603882.SH', '金域医学', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4273, '603883.SH', '老百姓', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4274, '603885.SH', '吉祥航空', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4275, '603886.SH', '元祖股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4276, '603887.SH', '城地香江', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4277, '603888.SH', '新华网', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4278, '603889.SH', '新澳股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4279, '603890.SH', '春秋电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4280, '603893.SH', '瑞芯微', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4281, '603895.SH', '天永智能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4282, '603896.SH', '寿仙谷', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4283, '603897.SH', '长城科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4284, '603898.SH', '好莱客', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4285, '603899.SH', '晨光股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4286, '603900.SH', '莱绅通灵', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4287, '603901.SH', '永创智能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4288, '603903.SH', '中持股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4289, '603906.SH', '龙蟠科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4290, '603908.SH', '牧高笛', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4291, '603909.SH', '建发合诚', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4292, '603912.SH', '佳力图', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4293, '603915.SH', '国茂股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4294, '603916.SH', '苏博特', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4295, '603917.SH', '合力科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4296, '603918.SH', '金桥信息', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4297, '603919.SH', '金徽酒', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4298, '603920.SH', '世运电路', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4299, '603922.SH', '金鸿顺', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4300, '603926.SH', '铁流股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4301, '603927.SH', '中科软', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4302, '603928.SH', '兴业股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4303, '603929.SH', '亚翔集成', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4304, '603931.SH', '格林达', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4305, '603933.SH', '睿能科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4306, '603936.SH', '博敏电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4307, '603937.SH', '丽岛新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4308, '603938.SH', '三孚股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4309, '603939.SH', '益丰药房', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4310, '603948.SH', '建业股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4311, '603949.SH', '雪龙集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4312, '603950.SH', '长源东谷', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4313, '603955.SH', '大千生态', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4314, '603956.SH', '威派格', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4315, '603958.SH', '哈森股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4316, '603959.SH', '百利科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4317, '603960.SH', '克来机电', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4318, '603963.SH', '大理药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4319, '603966.SH', '法兰泰克', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4320, '603967.SH', '中创物流', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4321, '603968.SH', '醋化股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4322, '603969.SH', '银龙股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4323, '603970.SH', '中农立华', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4324, '603976.SH', '正川股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4325, '603977.SH', '国泰集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4326, '603978.SH', '深圳新星', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4327, '603979.SH', '金诚信', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4328, '603980.SH', '吉华集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4329, '603982.SH', '泉峰汽车', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4330, '603983.SH', '丸美股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4331, '603985.SH', '恒润股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4332, '603986.SH', '兆易创新', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4333, '603987.SH', '康德莱', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4334, '603988.SH', '中电电机', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4335, '603989.SH', '艾华集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4336, '603990.SH', '麦迪科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4337, '603991.SH', '至正股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4338, '603992.SH', '松霖科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4339, '603993.SH', '洛阳钼业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4340, '603995.SH', '甬金股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4341, '603997.SH', '继峰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4342, '603998.SH', '方盛制药', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4343, '603999.SH', '读者传媒', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4344, '605001.SH', '威奥股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4345, '605003.SH', '众望布艺', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4346, '605005.SH', '合兴股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4347, '605006.SH', '山东玻纤', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4348, '605007.SH', '五洲特纸', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4349, '605008.SH', '长鸿高科', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4350, '605009.SH', '豪悦护理', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4351, '605011.SH', '杭州热电', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4352, '605016.SH', '百龙创园', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4353, '605018.SH', '长华集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4354, '605020.SH', '永和股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4355, '605028.SH', '世茂能源', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4356, '605033.SH', '美邦股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4357, '605050.SH', '福然德', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4358, '605055.SH', '迎丰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4359, '605056.SH', '咸亨国际', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4360, '605058.SH', '澳弘电子', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4361, '605060.SH', '联德股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4362, '605066.SH', '天正电气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4363, '605068.SH', '明新旭腾', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4364, '605069.SH', '正和生态', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4365, '605077.SH', '华康股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4366, '605080.SH', '浙江自然', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4367, '605081.SH', '太和水', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4368, '605086.SH', '龙高股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4369, '605088.SH', '冠盛股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4370, '605089.SH', '味知香', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4371, '605090.SH', '九丰能源', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4372, '605098.SH', '行动教育', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4373, '605099.SH', '共创草坪', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4374, '605100.SH', '华丰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4375, '605108.SH', '同庆楼', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4376, '605111.SH', '新洁能', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4377, '605116.SH', '奥锐特', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4378, '605117.SH', '德业股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4379, '605118.SH', '力鼎光电', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4380, '605122.SH', '四方新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4381, '605123.SH', '派克新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4382, '605128.SH', '上海沿浦', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4383, '605133.SH', '嵘泰股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4384, '605136.SH', '丽人丽妆', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4385, '605138.SH', '盛泰集团', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4386, '605151.SH', '西上海', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4387, '605155.SH', '西大门', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4388, '605158.SH', '华达新材', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4389, '605162.SH', '新中港', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4390, '605166.SH', '聚合顺', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4391, '605167.SH', '利柏特', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4392, '605168.SH', '三人行', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4393, '605169.SH', '洪通燃气', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4394, '605177.SH', '东亚药业', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4395, '605178.SH', '时空科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4396, '605179.SH', '一鸣食品', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4397, '605180.SH', '华生科技', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4398, '605183.SH', '确成股份', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4399, '605186.SH', '健麾信息', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4400, '605188.SH', '国光连锁', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4401, '605189.SH', '富春染织', 1, 0, NULL, '', '2023-09-22 17:22:42', '', '2023-09-22 17:22:42', NULL);
INSERT INTO `t_stock_code` VALUES (4402, '605196.SH', '华通线缆', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4403, '605198.SH', '安德利', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4404, '605199.SH', '葫芦娃', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4405, '605208.SH', '永茂泰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4406, '605218.SH', '伟时电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4407, '605222.SH', '起帆电缆', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4408, '605228.SH', '神通科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4409, '605255.SH', '天普股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4410, '605258.SH', '协和电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4411, '605259.SH', '绿田机械', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4412, '605266.SH', '健之佳', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4413, '605268.SH', '王力安防', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4414, '605277.SH', '新亚电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4415, '605286.SH', '同力日升', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4416, '605287.SH', '德才股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4417, '605288.SH', '凯迪股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4418, '605289.SH', '罗曼股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4419, '605296.SH', '神农集团', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4420, '605298.SH', '必得科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4421, '605299.SH', '舒华体育', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4422, '605300.SH', '佳禾食品', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4423, '605303.SH', '园林股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4424, '605305.SH', '中际联合', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4425, '605318.SH', '法狮龙', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4426, '605319.SH', '无锡振华', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4427, '605333.SH', '沪光股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4428, '605336.SH', '帅丰电器', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4429, '605337.SH', '李子园', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4430, '605338.SH', '巴比食品', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4431, '605339.SH', '南侨食品', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4432, '605358.SH', '立昂微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4433, '605365.SH', '立达信', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4434, '605366.SH', '宏柏新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4435, '605368.SH', '蓝天燃气', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4436, '605369.SH', '拱东医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4437, '605376.SH', '博迁新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4438, '605377.SH', '华旺科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4439, '605378.SH', '野马电池', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4440, '605388.SH', '均瑶健康', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4441, '605389.SH', '长龄液压', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4442, '605398.SH', '新炬网络', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4443, '605399.SH', '晨光新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4444, '605488.SH', '福莱新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4445, '605499.SH', '东鹏饮料', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4446, '605500.SH', '森林包装', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4447, '605507.SH', '国邦医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4448, '605555.SH', '德昌股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4449, '605566.SH', '福莱蒽特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4450, '605567.SH', '春雪食品', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4451, '605577.SH', '龙版传媒', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4452, '605580.SH', '恒盛能源', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4453, '605588.SH', '冠石科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4454, '605589.SH', '圣泉集团', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4455, '605598.SH', '上海港湾', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4456, '605599.SH', '菜百股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4457, '688001.SH', '华兴源创', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4458, '688002.SH', '睿创微纳', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4459, '688003.SH', '天准科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4460, '688004.SH', '博汇科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4461, '688005.SH', '容百科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4462, '688006.SH', '杭可科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4463, '688007.SH', '光峰科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4464, '688008.SH', '澜起科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4465, '688009.SH', '中国通号', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4466, '688010.SH', '福光股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4467, '688011.SH', '新光光电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4468, '688012.SH', '中微公司', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4469, '688013.SH', '天臣医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4470, '688015.SH', '交控科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4471, '688016.SH', '心脉医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4472, '688017.SH', '绿的谐波', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4473, '688018.SH', '乐鑫科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4474, '688019.SH', '安集科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4475, '688020.SH', '方邦股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4476, '688021.SH', '奥福环保', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4477, '688022.SH', '瀚川智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4478, '688023.SH', '安恒信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4479, '688025.SH', '杰普特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4480, '688026.SH', '洁特生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4481, '688027.SH', '国盾量子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4482, '688028.SH', '沃尔德', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4483, '688029.SH', '南微医学', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4484, '688030.SH', '山石网科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4485, '688031.SH', '星环科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4486, '688032.SH', '禾迈股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4487, '688033.SH', '天宜上佳', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4488, '688035.SH', '德邦科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4489, '688036.SH', '传音控股', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4490, '688037.SH', '芯源微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4491, '688038.SH', '中科通达', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4492, '688039.SH', '当虹科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4493, '688041.SH', '海光信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4494, '688045.SH', '必易微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4495, '688046.SH', '药康生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4496, '688047.SH', '龙芯中科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4497, '688048.SH', '长光华芯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4498, '688049.SH', '炬芯科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4499, '688050.SH', '爱博医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4500, '688051.SH', '佳华科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4501, '688052.SH', '纳芯微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4502, '688053.SH', '思科瑞', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4503, '688055.SH', '龙腾光电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4504, '688056.SH', '莱伯泰科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4505, '688057.SH', '金达莱', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4506, '688058.SH', '宝兰德', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4507, '688059.SH', '华锐精密', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4508, '688060.SH', '云涌科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4509, '688061.SH', '灿瑞科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4510, '688062.SH', '迈威生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4511, '688063.SH', '派能科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4512, '688065.SH', '凯赛生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4513, '688066.SH', '航天宏图', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4514, '688067.SH', '爱威科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4515, '688068.SH', '热景生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4516, '688069.SH', '德林海', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4517, '688070.SH', '纵横股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4518, '688071.SH', '华依科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4519, '688072.SH', '拓荆科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4520, '688073.SH', '毕得医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4521, '688075.SH', '安旭生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4522, '688076.SH', '诺泰生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4523, '688077.SH', '大地熊', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4524, '688078.SH', '龙软科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4525, '688079.SH', '美迪凯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4526, '688080.SH', '映翰通', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4527, '688081.SH', '兴图新科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4528, '688082.SH', '盛美上海', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4529, '688083.SH', '中望软件', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4530, '688084.SH', '晶品特装', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4531, '688085.SH', '三友医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4532, '688086.SH', '*ST紫晶', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4533, '688087.SH', '英科再生', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4534, '688088.SH', '虹软科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4535, '688089.SH', '嘉必优', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4536, '688090.SH', '瑞松科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4537, '688091.SH', '上海谊众', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4538, '688092.SH', '爱科科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4539, '688093.SH', '世华科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4540, '688095.SH', '福昕软件', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4541, '688096.SH', '京源环保', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4542, '688097.SH', '博众精工', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4543, '688098.SH', '申联生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4544, '688099.SH', '晶晨股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4545, '688100.SH', '威胜信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4546, '688101.SH', '三达膜', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4547, '688102.SH', '斯瑞新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4548, '688103.SH', '国力股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4549, '688105.SH', '诺唯赞', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4550, '688106.SH', '金宏气体', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4551, '688107.SH', '安路科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4552, '688108.SH', '赛诺医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4553, '688109.SH', '品茗科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4554, '688110.SH', '东芯股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4555, '688111.SH', '金山办公', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4556, '688112.SH', '鼎阳科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4557, '688113.SH', '联测科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4558, '688114.SH', '华大智造', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4559, '688115.SH', '思林杰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4560, '688116.SH', '天奈科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4561, '688117.SH', '圣诺生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4562, '688118.SH', '普元信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4563, '688119.SH', '中钢洛耐', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4564, '688120.SH', '华海清科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4565, '688121.SH', '卓然股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4566, '688122.SH', '西部超导', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4567, '688123.SH', '聚辰股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4568, '688125.SH', '安达智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4569, '688126.SH', '沪硅产业', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4570, '688127.SH', '蓝特光学', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4571, '688128.SH', '中国电研', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4572, '688129.SH', '东来技术', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4573, '688130.SH', '晶华微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4574, '688131.SH', '皓元医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4575, '688132.SH', '邦彦技术', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4576, '688133.SH', '泰坦科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4577, '688135.SH', '利扬芯片', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4578, '688136.SH', '科兴制药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4579, '688137.SH', '近岸蛋白', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4580, '688138.SH', '清溢光电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4581, '688139.SH', '海尔生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4582, '688141.SH', '杰华特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4583, '688143.SH', '长盈通', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4584, '688146.SH', '中船特气', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4585, '688147.SH', '微导纳米', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4586, '688148.SH', '芳源股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4587, '688150.SH', '莱特光电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4588, '688151.SH', '华强科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4589, '688152.SH', '麒麟信安', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4590, '688153.SH', '唯捷创芯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4591, '688155.SH', '先惠技术', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4592, '688156.SH', '路德环境', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4593, '688157.SH', '松井股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4594, '688158.SH', '优刻得', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4595, '688159.SH', '有方科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4596, '688160.SH', '步科股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4597, '688161.SH', '威高骨科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4598, '688162.SH', '巨一科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4599, '688163.SH', '赛伦生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4600, '688165.SH', '埃夫特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4601, '688166.SH', '博瑞医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4602, '688167.SH', '炬光科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4603, '688168.SH', '安博通', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4604, '688169.SH', '石头科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4605, '688170.SH', '德龙激光', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4606, '688171.SH', '纬德信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4607, '688172.SH', '燕东微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4608, '688173.SH', '希荻微', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4609, '688175.SH', '高凌信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4610, '688176.SH', '亚虹医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4611, '688177.SH', '百奥泰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4612, '688178.SH', '万德斯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4613, '688179.SH', '阿拉丁', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4614, '688180.SH', '君实生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4615, '688181.SH', '八亿时空', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4616, '688182.SH', '灿勤科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4617, '688183.SH', '生益电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4618, '688184.SH', '帕瓦股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4619, '688185.SH', '康希诺', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4620, '688186.SH', '广大特材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4621, '688187.SH', '时代电气', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4622, '688188.SH', '柏楚电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4623, '688189.SH', '南新制药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4624, '688190.SH', '云路股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4625, '688191.SH', '智洋创新', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4626, '688192.SH', '迪哲医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4627, '688193.SH', '仁度生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4628, '688195.SH', '腾景科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4629, '688196.SH', '卓越新能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4630, '688197.SH', '首药控股', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4631, '688198.SH', '佰仁医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4632, '688199.SH', '久日新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4633, '688200.SH', '华峰测控', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4634, '688201.SH', '信安世纪', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4635, '688202.SH', '美迪西', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4636, '688203.SH', '海正生材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4637, '688205.SH', '德科立', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4638, '688206.SH', '概伦电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4639, '688207.SH', '格灵深瞳', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4640, '688208.SH', '道通科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4641, '688209.SH', '英集芯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4642, '688210.SH', '统联精密', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4643, '688211.SH', '中科微至', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4644, '688212.SH', '澳华内镜', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4645, '688213.SH', '思特威', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4646, '688215.SH', '瑞晟智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4647, '688216.SH', '气派科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4648, '688217.SH', '睿昂基因', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4649, '688218.SH', '江苏北人', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4650, '688219.SH', '会通股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4651, '688220.SH', '翱捷科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4652, '688221.SH', '前沿生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4653, '688222.SH', '成都先导', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4654, '688223.SH', '晶科能源', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4655, '688225.SH', '亚信安全', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4656, '688226.SH', '威腾电气', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4657, '688227.SH', '品高股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4658, '688228.SH', '开普云', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4659, '688229.SH', '博睿数据', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4660, '688230.SH', '芯导科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4661, '688231.SH', '隆达股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4662, '688232.SH', '新点软件', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4663, '688233.SH', '神工股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4664, '688234.SH', '天岳先进', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4665, '688235.SH', '百济神州', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4666, '688236.SH', '春立医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4667, '688237.SH', '超卓航科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4668, '688238.SH', '和元生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4669, '688239.SH', '航宇科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4670, '688244.SH', '永信至诚', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4671, '688246.SH', '嘉和美康', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4672, '688247.SH', '宣泰医药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4673, '688248.SH', '南网科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4674, '688249.SH', '晶合集成', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4675, '688251.SH', '井松智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4676, '688252.SH', '天德钰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4677, '688253.SH', '英诺特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4678, '688255.SH', '凯尔达', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4679, '688256.SH', '寒武纪', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4680, '688257.SH', '新锐股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4681, '688258.SH', '卓易信息', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4682, '688259.SH', '创耀科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4683, '688260.SH', '昀冢科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4684, '688261.SH', '东微半导', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4685, '688262.SH', '国芯科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4686, '688265.SH', '南模生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4687, '688266.SH', '泽璟制药', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4688, '688267.SH', '中触媒', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4689, '688268.SH', '华特气体', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4690, '688269.SH', '凯立新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4691, '688270.SH', '臻镭科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4692, '688271.SH', '联影医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4693, '688272.SH', '*ST富吉', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4694, '688273.SH', '麦澜德', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4695, '688275.SH', '万润新能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4696, '688276.SH', '百克生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4697, '688277.SH', '天智航', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4698, '688278.SH', '特宝生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4699, '688279.SH', '峰岹科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4700, '688280.SH', '精进电动', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4701, '688281.SH', '华秦科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4702, '688282.SH', '理工导航', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4703, '688283.SH', '坤恒顺维', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4704, '688285.SH', '高铁电气', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4705, '688286.SH', '敏芯股份', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4706, '688287.SH', '观典防务', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4707, '688288.SH', '鸿泉物联', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4708, '688289.SH', '圣湘生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4709, '688290.SH', '景业智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4710, '688291.SH', '金橙子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4711, '688292.SH', '浩瀚深度', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4712, '688293.SH', '奥浦迈', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4713, '688295.SH', '中复神鹰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4714, '688296.SH', '和达科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4715, '688297.SH', '中无人机', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4716, '688298.SH', '东方生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4717, '688299.SH', '长阳科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4718, '688300.SH', '联瑞新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4719, '688301.SH', '奕瑞科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4720, '688302.SH', '海创药业', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4721, '688303.SH', '大全能源', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4722, '688305.SH', '科德数控', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4723, '688306.SH', '均普智能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4724, '688307.SH', '中润光学', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4725, '688308.SH', '欧科亿', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4726, '688309.SH', '*ST恒誉', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4727, '688310.SH', '迈得医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4728, '688311.SH', '盟升电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4729, '688312.SH', '燕麦科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4730, '688313.SH', '仕佳光子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4731, '688314.SH', '康拓医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4732, '688315.SH', '诺禾致源', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4733, '688316.SH', '青云科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4734, '688317.SH', '之江生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4735, '688318.SH', '财富趋势', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4736, '688319.SH', '欧林生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4737, '688320.SH', '禾川科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4738, '688321.SH', '微芯生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4739, '688322.SH', '奥比中光', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4740, '688323.SH', '瑞华泰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4741, '688325.SH', '赛微微电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4742, '688326.SH', '经纬恒润', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4743, '688327.SH', '云从科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4744, '688328.SH', '深科达', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4745, '688329.SH', '艾隆科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4746, '688330.SH', '宏力达', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4747, '688331.SH', '荣昌生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4748, '688332.SH', '中科蓝讯', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4749, '688333.SH', '铂力特', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4750, '688335.SH', '复洁环保', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4751, '688336.SH', '三生国健', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4752, '688337.SH', '普源精电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4753, '688338.SH', '赛科希德', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4754, '688339.SH', '亿华通', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4755, '688343.SH', '云天励飞', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4756, '688345.SH', '博力威', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4757, '688348.SH', '昱能科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4758, '688349.SH', '三一重能', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4759, '688350.SH', '富淼科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4760, '688351.SH', '微电生理', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4761, '688352.SH', '颀中科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4762, '688353.SH', '华盛锂电', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4763, '688355.SH', '明志科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4764, '688356.SH', '键凯科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4765, '688357.SH', '建龙微纳', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4766, '688358.SH', '祥生医疗', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4767, '688359.SH', '三孚新科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4768, '688360.SH', '德马科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4769, '688362.SH', '甬矽电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4770, '688363.SH', '华熙生物', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4771, '688365.SH', '光云科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4772, '688366.SH', '昊海生科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4773, '688367.SH', '工大高科', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4774, '688368.SH', '晶丰明源', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4775, '688369.SH', '致远互联', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4776, '688370.SH', '丛麟科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4777, '688371.SH', '菲沃泰', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4778, '688372.SH', '伟测科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4779, '688373.SH', '盟科药业', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4780, '688375.SH', '国博电子', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4781, '688376.SH', '美埃科技', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4782, '688377.SH', '迪威尔', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4783, '688378.SH', '奥来德', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4784, '688379.SH', '华光新材', 1, 0, NULL, '', '2023-09-22 17:22:43', '', '2023-09-22 17:22:43', NULL);
INSERT INTO `t_stock_code` VALUES (4785, '688380.SH', '中微半导', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4786, '688381.SH', '帝奥微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4787, '688382.SH', '益方生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4788, '688383.SH', '新益昌', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4789, '688385.SH', '复旦微电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4790, '688386.SH', '泛亚微透', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4791, '688387.SH', '信科移动', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4792, '688388.SH', '嘉元科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4793, '688389.SH', '普门科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4794, '688390.SH', '固德威', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4795, '688391.SH', '钜泉科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4796, '688392.SH', '骄成超声', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4797, '688393.SH', '安必平', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4798, '688395.SH', '正弦电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4799, '688396.SH', '华润微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4800, '688398.SH', '赛特新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4801, '688399.SH', '硕世生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4802, '688400.SH', '凌云光', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4803, '688401.SH', '路维光电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4804, '688403.SH', '汇成股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4805, '688408.SH', '中信博', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4806, '688409.SH', '富创精密', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4807, '688410.SH', '山外山', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4808, '688416.SH', '恒烁股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4809, '688418.SH', '震有科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4810, '688419.SH', '耐科装备', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4811, '688420.SH', '美腾科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4812, '688425.SH', '铁建重工', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4813, '688426.SH', '康为世纪', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4814, '688428.SH', '诺诚健华', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4815, '688432.SH', '有研硅', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4816, '688433.SH', '华曙高科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4817, '688435.SH', '英方软件', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4818, '688439.SH', '振华风光', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4819, '688448.SH', '磁谷科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4820, '688455.SH', '科捷智能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4821, '688456.SH', '有研粉材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4822, '688459.SH', '哈铁科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4823, '688466.SH', '金科环境', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4824, '688468.SH', '科美诊断', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4825, '688475.SH', '萤石网络', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4826, '688478.SH', '晶升股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4827, '688480.SH', '赛恩斯', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4828, '688484.SH', '南芯科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4829, '688485.SH', '九州一轨', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4830, '688486.SH', '龙迅股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4831, '688488.SH', '艾迪药业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4832, '688489.SH', '三未信安', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4833, '688496.SH', '清越科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4834, '688498.SH', '源杰科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4835, '688499.SH', '利元亨', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4836, '688500.SH', '*ST慧辰', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4837, '688501.SH', '青达环保', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4838, '688502.SH', '茂莱光学', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4839, '688503.SH', '聚和材料', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4840, '688505.SH', '复旦张江', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4841, '688506.SH', '百利天恒', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4842, '688507.SH', '索辰科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4843, '688508.SH', '芯朋微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4844, '688509.SH', '正元地信', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4845, '688510.SH', '航亚科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4846, '688511.SH', '天微电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4847, '688513.SH', '苑东生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4848, '688515.SH', '裕太微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4849, '688516.SH', '奥特维', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4850, '688517.SH', '金冠电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4851, '688518.SH', '联赢激光', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4852, '688519.SH', '南亚新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4853, '688520.SH', '神州细胞', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4854, '688521.SH', '芯原股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4855, '688522.SH', '纳睿雷达', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4856, '688525.SH', '佰维存储', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4857, '688526.SH', '科前生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4858, '688528.SH', '秦川物联', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4859, '688529.SH', '豪森股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4860, '688531.SH', '日联科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4861, '688533.SH', '上声电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4862, '688535.SH', '华海诚科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4863, '688536.SH', '思瑞浦', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4864, '688538.SH', '和辉光电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4865, '688539.SH', '高华科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4866, '688550.SH', '瑞联新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4867, '688551.SH', '科威尔', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4868, '688553.SH', '汇宇制药', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4869, '688555.SH', '*ST泽达', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4870, '688556.SH', '高测股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4871, '688557.SH', '兰剑智能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4872, '688558.SH', '国盛智科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4873, '688559.SH', '海目星', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4874, '688560.SH', '明冠新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4875, '688561.SH', '奇安信', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4876, '688565.SH', '力源科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4877, '688566.SH', '吉贝尔', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4878, '688567.SH', '孚能科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4879, '688568.SH', '中科星图', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4880, '688569.SH', '铁科轨道', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4881, '688571.SH', '杭华股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4882, '688575.SH', '亚辉龙', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4883, '688577.SH', '浙海德曼', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4884, '688578.SH', '艾力斯', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4885, '688579.SH', '山大地纬', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4886, '688580.SH', '伟思医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4887, '688585.SH', '上纬新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4888, '688586.SH', '江航装备', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4889, '688588.SH', '凌志软件', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4890, '688589.SH', '力合微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4891, '688590.SH', '新致软件', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4892, '688595.SH', '芯海科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4893, '688596.SH', '正帆科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4894, '688597.SH', '煜邦电力', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4895, '688598.SH', '金博股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4896, '688599.SH', '天合光能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4897, '688600.SH', '皖仪科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4898, '688601.SH', '力芯微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4899, '688606.SH', '奥泰生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4900, '688607.SH', '康众医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4901, '688608.SH', '恒玄科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4902, '688609.SH', '九联科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4903, '688611.SH', '杭州柯林', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4904, '688613.SH', '奥精医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4905, '688616.SH', '西力科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4906, '688617.SH', '惠泰医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4907, '688618.SH', '三旺通信', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4908, '688619.SH', '罗普特', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4909, '688621.SH', '阳光诺和', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4910, '688622.SH', '禾信仪器', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4911, '688625.SH', '呈和科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4912, '688626.SH', '翔宇医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4913, '688628.SH', '优利德', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4914, '688630.SH', '芯碁微装', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4915, '688633.SH', '星球石墨', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4916, '688636.SH', '智明达', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4917, '688639.SH', '华恒生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4918, '688655.SH', '迅捷兴', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4919, '688656.SH', '浩欧博', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4920, '688658.SH', '悦康药业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4921, '688659.SH', '元琛科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4922, '688660.SH', '电气风电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4923, '688661.SH', '和林微纳', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4924, '688662.SH', '富信科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4925, '688663.SH', '新风光', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4926, '688665.SH', '四方光电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4927, '688667.SH', '菱电电控', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4928, '688668.SH', '鼎通科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4929, '688669.SH', '聚石化学', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4930, '688670.SH', '金迪克', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4931, '688676.SH', '金盘科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4932, '688677.SH', '海泰新光', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4933, '688678.SH', '福立旺', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4934, '688679.SH', '通源环境', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4935, '688680.SH', '海优新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4936, '688681.SH', '科汇股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4937, '688682.SH', '霍莱沃', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4938, '688683.SH', '莱尔科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4939, '688685.SH', '迈信林', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4940, '688686.SH', '奥普特', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4941, '688687.SH', '凯因科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4942, '688689.SH', '银河微电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4943, '688690.SH', '纳微科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4944, '688696.SH', '极米科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4945, '688697.SH', '纽威数控', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4946, '688698.SH', '伟创电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4947, '688699.SH', '明微电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4948, '688700.SH', '东威科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4949, '688701.SH', '卓锦股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4950, '688707.SH', '振华新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4951, '688711.SH', '宏微科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4952, '688718.SH', '唯赛勃', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4953, '688722.SH', '同益中', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4954, '688728.SH', '格科微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4955, '688733.SH', '壹石通', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4956, '688737.SH', '中自科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4957, '688739.SH', '成大生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4958, '688766.SH', '普冉股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4959, '688767.SH', '博拓生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4960, '688768.SH', '容知日新', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4961, '688772.SH', '珠海冠宇', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4962, '688776.SH', '国光电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4963, '688777.SH', '中控技术', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4964, '688778.SH', '厦钨新能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4965, '688779.SH', '长远锂科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4966, '688786.SH', '悦安新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4967, '688787.SH', '海天瑞声', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4968, '688788.SH', '科思科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4969, '688789.SH', '宏华数科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4970, '688793.SH', '倍轻松', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4971, '688798.SH', '艾为电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4972, '688799.SH', '华纳药厂', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4973, '688800.SH', '瑞可达', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4974, '688819.SH', '天能股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4975, '688981.SH', '中芯国际', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4976, '689009.SH', '九号公司', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4977, '000001.SH', '上证指数', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4978, '002535.SZ', '林州重机', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4979, '603322.SH', '超汛通信', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4980, '002281.SZ', '光讯科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4981, '002240.SZ', '盛新锂能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4982, '000410.SZ', '沈阳机床', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4983, '000426.SZ', '兴业银锡', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4984, '301131.SZ', '聚赛龙', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4985, '000004.SZ', '国华网安', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4986, '300455.SZ', '航天智装', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4987, '600609.SH', '华晨汽车', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4988, '301390.SZ', '经纬股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4989, '002211.SZ', '宏达新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4990, '301315.SZ', '威士顿', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4991, '301252.SZ', '同星科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4992, '301353.SZ', '普莱得', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4993, '301262.SZ', '海看股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4994, '301366.SZ', '一博股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4995, '002076.SZ', '星光股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4996, '002470.SZ', '金正大', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4997, '002501.SZ', '利源股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4998, '600239.SH', '云南城投', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (4999, '000809.SZ', '铁岭新城', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5000, '002102.SZ', '冠福股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5001, '001324.SZ', '长青科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5002, '300332.SZ', '天壕能源', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5003, '600301.SH', '华锡有色', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5004, '301370.SZ', '国科恒泰', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5005, '600128.SH', '苏豪弘业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5006, '301510.SZ', '固高科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5007, '300370.SZ', '安控科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5008, '000571.SZ', '新大洲A', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5009, '301395.SZ', '仁信新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5010, '601372.SH', '万丰股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5011, '002366.SZ', '融发核电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5012, '301323.SZ', '新莱福', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5013, '002427.SZ', '尤夫股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5014, '301515.SZ', '港通医疗', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5015, '300804.SZ', '广康生化', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5016, '600226.SH', '瀚叶股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5017, '301355.SZ', '南王科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5018, '001373.SZ', '翔腾新材', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5019, '301509.SZ', '金凯生科', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5020, '600223.SH', '福瑞达', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5021, '301393.SZ', '昊帆生物', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5022, '301503.SZ', '智迪科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5023, '603296.SH', '华勤技术', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5024, '301486.SZ', '致尚科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5025, '600241.SH', '时代万恒', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5026, '300530.SZ', '领湃科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5027, '301487.SZ', '盟固利', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5028, '301210.SZ', '金杨股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5029, '002321.SZ', '华英农业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5030, '301372.SZ', '科净源', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5031, '301348.SZ', '蓝箭电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5032, '301428.SZ', '世纪恒通', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5033, '301382.SZ', '蜂助手', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5034, '301381.SZ', '赛维时代', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5035, '002177.SZ', '御银股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5036, '301172.SZ', '君逸科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5037, '301337.SZ', '亚华电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5038, '600248.SH', '陕建股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5039, '301332.SZ', '德尔玛', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5040, '600861.SH', '北京人力', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5041, '301376.SZ', '致欧科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5042, '301287.SZ', '康力源', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5043, '600388.SH', '龙净环保', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5044, '301305.SZ', '朗坤环境', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5045, '301446.SZ', '福事特', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5046, '300904.SZ', '威力传动', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5047, '301232.SZ', '飞沃科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5048, '301448.SZ', '开创电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5049, '301399.SZ', '英特科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5050, '001380.SZ', '华纬科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5051, '301202.SZ', '朗威股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5052, '301261.SZ', '恒工精密', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5053, '301518.SZ', '长华化学', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5054, '002096.SZ', '易普力', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5055, '301505.SZ', '苏州规划', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5056, '301292.SZ', '海科新源', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5057, '301499.SZ', '维科精密', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5058, '301225.SZ', '恒勃股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5059, '002265.SZ', '建设工业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5060, '001282.SZ', '三联锻造', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5061, '301397.SZ', '溯联股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5062, '301170.SZ', '锡南科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5063, '301488.SZ', '豪恩汽电', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5064, '301295.SZ', '美硕科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5065, '301291.SZ', '明阳电气', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5066, '301310.SZ', '鑫宏业', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5067, '301519.SZ', '舜禹水务', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5068, '301533.SZ', '威马农机', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5069, '002667.SZ', '威领股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5070, '301468.SZ', '博盈特焊', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5071, '301512.SZ', '智信精密', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5072, '301456.SZ', '盘古智能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5073, '301272.SZ', '英华特', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5074, '600382.SH', '广东明珠', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5075, '600726.SH', '华电能源', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5076, '301320.SZ', '豪江智能', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5077, '301511.SZ', '德福科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5078, '301418.SZ', '协昌科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5079, '301329.SZ', '信音电子', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5080, '301383.SZ', '天键股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5081, '600601.SH', '方正科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5082, '301325.SZ', '曼恩斯特', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5083, '300159.SZ', '新研股份', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5084, '300053.SZ', '航宇微', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);
INSERT INTO `t_stock_code` VALUES (5085, '300360.SZ', '矩华科技', 1, 0, NULL, '', '2023-09-22 17:22:44', '', '2023-09-22 17:22:44', NULL);

SET FOREIGN_KEY_CHECKS = 1;
