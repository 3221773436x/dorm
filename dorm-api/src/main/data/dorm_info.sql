/*
Navicat MySQL Data Transfer

Source Server         : dasan_mysql
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : dorm_info

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2025-07-08 15:36:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `employee_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '职工号',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `status` int DEFAULT NULL COMMENT '状态',
  `role` int DEFAULT NULL COMMENT '角色：1为系统管理员，2为宿舍管理员，3维修师',
  `building_id` int DEFAULT NULL COMMENT '所在楼宇',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'S190231', '李雪梅', '13812093312', '女', '12345', '1', '2', '1');
INSERT INTO `admin` VALUES ('2', 'S181734', '张仁聪', '13199028764', '男', '123456', '1', '2', '2');
INSERT INTO `admin` VALUES ('4', 'S161232', '张荷', '13488974763', '女', '1234', '-1', '2', '3');
INSERT INTO `admin` VALUES ('5', '12424', '姚燕', '13760613080', '女', '123456', '1', '1', null);
INSERT INTO `admin` VALUES ('6', '190211', '刘意', '13899091234', '女', '123456', '1', '2', '3');
INSERT INTO `admin` VALUES ('7', '189021', '李小国', '18798822109', '男', '123456', '1', '3', null);
INSERT INTO `admin` VALUES ('8', '201127', '王长贵', '13312098878', '男', '12345', '1', '3', null);
INSERT INTO `admin` VALUES ('9', 'S189033', '王小红', '18936512587', '女', '123456', '1', '2', '4');
INSERT INTO `admin` VALUES ('10', '123', '凤飞飞', '15942975361', '女', '123456', '1', '2', '4');
INSERT INTO `admin` VALUES ('11', 'S190235', '黄雪花', '18654895261', '女', '123456', '1', '2', '2');

-- ----------------------------
-- Table structure for admin_modify
-- ----------------------------
DROP TABLE IF EXISTS `admin_modify`;
CREATE TABLE `admin_modify` (
  `admin_id` int DEFAULT NULL COMMENT '宿舍管理员ID',
  `modify_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `employee_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '职工号',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `status` int DEFAULT NULL COMMENT '状态',
  `role` int DEFAULT NULL COMMENT '角色：1为系统管理员，2为宿舍管理员',
  `building_id` int DEFAULT NULL COMMENT '所在楼宇',
  `app_status` int DEFAULT NULL COMMENT '审核状态：0-待审核，1-同意，2-拒绝',
  PRIMARY KEY (`modify_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_modify
-- ----------------------------
INSERT INTO `admin_modify` VALUES ('1', '7', 'S190231', '李雪梅3', '13812093312', '女', '123456', '1', '2', '1', '1');
INSERT INTO `admin_modify` VALUES ('7', '8', '189021', '李大国5', '18798822109', '', '123456', null, '3', null, '0');
INSERT INTO `admin_modify` VALUES ('6', '9', '190211', '刘意', '13899091234', '女', '123456', null, '2', '3', '0');
INSERT INTO `admin_modify` VALUES ('6', '10', '190211', '刘意', '13899091234', '女', '123456', null, '2', '3', '1');
INSERT INTO `admin_modify` VALUES ('8', '11', '201127', '王长贵', '13312098878', '男', '123456', null, '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('8', '12', '201127', '王长贵', '13312098878', '男', '123456', null, '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('2', '13', 'S181731', '张仁聪', '13199028761', '男', '123456', null, '2', '2', '2');
INSERT INTO `admin_modify` VALUES ('8', '14', '201127', '王长贵', '13312098878', '男', '123456', '1', '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('8', '15', '201127', '王长贵', '13312098878', '男', '123456', '1', '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('8', '16', '201127', '王长贵', '13312098878', '男', '123456', '1', '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('2', '17', 'S181731', '张仁聪', '13199028761', '男', '123456', '1', '2', '2', '2');
INSERT INTO `admin_modify` VALUES ('2', '20', 'S181732', '张仁聪', '13199028762', '', '123456', '1', '2', '2', '2');
INSERT INTO `admin_modify` VALUES ('2', '21', 'S181732', '张仁聪', '13199028762', '', '123456', '1', '2', '2', '2');
INSERT INTO `admin_modify` VALUES ('2', '22', 'S181734', '张仁聪', '13199028764', '男', '123456', '1', '2', '2', '1');
INSERT INTO `admin_modify` VALUES ('8', '23', '201127', '王长贵', '13312098878', '男', '123456', '1', '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('8', '24', '201127', '王长贵', '13312098878', '男', '123456', '1', '3', '3', '0');
INSERT INTO `admin_modify` VALUES ('8', '25', '201127', '王长贵', '13312098879', '男', '123456', '1', '3', '3', '2');
INSERT INTO `admin_modify` VALUES ('8', '26', '201127', '王长贵', '13312098878', '男', '12345', '1', '3', null, '1');
INSERT INTO `admin_modify` VALUES ('1', '27', 'S190231', '李雪梅1', '13812093312', '女', '12345', '1', '2', '1', '0');
INSERT INTO `admin_modify` VALUES ('1', '28', 'S190231', '李雪梅2', '13812093312', '女', '12345', '1', '2', '1', '0');
INSERT INTO `admin_modify` VALUES ('1', '29', 'S190231', '李雪梅3', '13812093312', '女', '12345', '1', '2', '1', '0');
INSERT INTO `admin_modify` VALUES ('1', '30', 'S190231', '李雪梅4', '13812093312', '女', '12345', '1', '2', '1', '0');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `building_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `building_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '楼宇名称',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '位置',
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '总楼层',
  `romms_count` int DEFAULT NULL COMMENT '总宿舍数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`building_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES ('1', '黄槐楼y2', '南生活区', '5', '150', '学生宿舍', '1');
INSERT INTO `building` VALUES ('2', '红棉楼', '南生活区', '5', '150', '学生宿舍', '1');
INSERT INTO `building` VALUES ('3', '静谧楼', '北生活区', '18', '480', '学生宿舍', '1');
INSERT INTO `building` VALUES ('4', 'A栋', '南生活区', '5', '320', '学生宿舍', '1');
INSERT INTO `building` VALUES ('5', '北18栋', '北生活区', '3', '26', '学生宿舍1', '-1');

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory` (
  `dormitory_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `building_id` int DEFAULT NULL COMMENT '楼宇ID',
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '楼层',
  `room_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '宿舍号',
  `max_capacity` int DEFAULT NULL COMMENT '最大可住人数',
  `occupied` int DEFAULT NULL COMMENT '已入住人数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`dormitory_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES ('1', '1', '1', '101', '4', '4', '', '1');
INSERT INTO `dormitory` VALUES ('2', '1', '1', '102', '6', '3', '上床下桌，1卫1浴', '1');
INSERT INTO `dormitory` VALUES ('3', '1', '1', '103', '6', '1', '研究生宿舍', '1');
INSERT INTO `dormitory` VALUES ('4', '1', '1', '104', '6', '0', '上床下桌，有阳台', '1');
INSERT INTO `dormitory` VALUES ('5', '1', '1', '105', '4', '0', '卫生间损坏，本学期不安排入住', '-1');
INSERT INTO `dormitory` VALUES ('6', '1', '1', '106', '4', '1', '', '1');
INSERT INTO `dormitory` VALUES ('7', '1', '2', '201', '4', '1', '', '1');
INSERT INTO `dormitory` VALUES ('8', '1', '2', '202', '6', '1', '', '1');
INSERT INTO `dormitory` VALUES ('9', '1', '2', '203', '6', '0', '', '1');
INSERT INTO `dormitory` VALUES ('10', '1', '2', '204', '6', '0', '', '1');
INSERT INTO `dormitory` VALUES ('11', '1', '2', '205', '4', '4', '', '1');
INSERT INTO `dormitory` VALUES ('12', '1', '2', '206', '4', '0', '', '1');
INSERT INTO `dormitory` VALUES ('13', '1', '3', '301', '4', '0', '', '1');
INSERT INTO `dormitory` VALUES ('14', '1', '3', '302', '6', '2', '', '1');
INSERT INTO `dormitory` VALUES ('15', '1', '3', '303', '4', '4', '', '1');
INSERT INTO `dormitory` VALUES ('16', '1', '3', '304', '6', '1', '', '1');
INSERT INTO `dormitory` VALUES ('17', '1', '3', '305', '6', '0', '', '1');
INSERT INTO `dormitory` VALUES ('18', '1', '3', '306', '6', '0', '', '1');
INSERT INTO `dormitory` VALUES ('19', '1', '4', '401', '6', '0', '', '1');
INSERT INTO `dormitory` VALUES ('20', '1', '4', '402', '4', '3', '', '1');
INSERT INTO `dormitory` VALUES ('21', '1', '4', '403', '6', '4', '', '1');
INSERT INTO `dormitory` VALUES ('22', '1', '4', '404', '6', '1', '', '1');
INSERT INTO `dormitory` VALUES ('23', '1', '4', '405', '4', '1', '', '1');
INSERT INTO `dormitory` VALUES ('24', '1', '4', '406', '4', '1', '', '1');
INSERT INTO `dormitory` VALUES ('25', '1', '5', '501', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('26', '1', '5', '502', '4', '1', null, '1');
INSERT INTO `dormitory` VALUES ('27', '1', '5', '503', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('28', '1', '5', '504', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('29', '1', '5', '505', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('30', '1', '5', '506', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('31', '2', '1', '101', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('32', '2', '1', '102', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('33', '2', '1', '103', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('34', '2', '1', '104', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('35', '2', '1', '105', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('36', '2', '1', '106', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('37', '2', '2', '201', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('38', '2', '2', '202', '4', '3', null, '1');
INSERT INTO `dormitory` VALUES ('39', '2', '2', '203', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('40', '2', '2', '204', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('41', '2', '2', '205', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('42', '2', '2', '206', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('43', '2', '3', '301', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('44', '2', '3', '302', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('45', '2', '3', '303', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('46', '2', '3', '304', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('47', '2', '3', '305', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('48', '2', '3', '306', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('49', '2', '4', '401', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('50', '2', '4', '402', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('51', '2', '4', '403', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('52', '2', '4', '404', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('53', '2', '4', '405', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('54', '2', '4', '406', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('55', '2', '5', '501', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('56', '2', '5', '502', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('57', '2', '5', '503', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('58', '2', '5', '504', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('59', '2', '5', '505', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('60', '2', '5', '506', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('61', '3', '1', '101  ', '6', '4', null, '1');
INSERT INTO `dormitory` VALUES ('62', '3', '1', '102  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('63', '3', '1', '103  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('64', '3', '1', '104  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('65', '3', '1', '105  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('66', '3', '1', '106  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('67', '3', '1', '107  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('68', '3', '1', '108  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('69', '3', '1', '109  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('70', '3', '1', '110  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('71', '3', '2', '201  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('72', '3', '2', '202  ', '6', '4', null, '1');
INSERT INTO `dormitory` VALUES ('73', '3', '2', '203  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('74', '3', '2', '204  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('75', '3', '2', '205  ', '6', '4', null, '1');
INSERT INTO `dormitory` VALUES ('76', '3', '2', '206  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('77', '3', '2', '207  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('78', '3', '2', '208  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('79', '3', '2', '209  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('80', '3', '2', '210  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('81', '3', '3', '301  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('82', '3', '3', '302  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('83', '3', '3', '303  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('84', '3', '3', '304  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('85', '3', '3', '305  ', '6', '5', null, '1');
INSERT INTO `dormitory` VALUES ('86', '3', '3', '306  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('87', '3', '3', '307  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('88', '3', '3', '308  ', '4', '4', null, '1');
INSERT INTO `dormitory` VALUES ('89', '3', '3', '309  ', '6', '6', null, '1');
INSERT INTO `dormitory` VALUES ('90', '3', '3', '310  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('91', '3', '4', '401  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('92', '3', '4', '402  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('93', '3', '4', '403  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('94', '3', '4', '404  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('95', '3', '4', '405  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('96', '3', '4', '406  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('97', '3', '4', '407  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('98', '3', '4', '408  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('99', '3', '4', '409  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('100', '3', '4', '410  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('101', '3', '5', '501  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('102', '3', '5', '502  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('103', '3', '5', '503  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('104', '3', '5', '504  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('105', '3', '5', '505  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('106', '3', '5', '506  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('107', '3', '5', '507  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('108', '3', '5', '508  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('109', '3', '5', '509  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('110', '3', '5', '510  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('111', '3', '6', '601  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('112', '3', '6', '602  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('113', '3', '6', '603  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('114', '3', '6', '604  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('115', '3', '6', '605  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('116', '3', '6', '606  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('117', '3', '6', '607  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('118', '3', '6', '608  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('119', '3', '6', '609  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('120', '3', '6', '610  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('121', '3', '7', '701  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('122', '3', '7', '702  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('123', '3', '7', '703  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('124', '3', '7', '704  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('125', '3', '7', '705  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('126', '3', '7', '706  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('127', '3', '7', '707  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('128', '3', '7', '708  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('129', '3', '7', '709  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('130', '3', '7', '710  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('131', '3', '8', '801  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('132', '3', '8', '802  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('133', '3', '8', '803  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('134', '3', '8', '804  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('135', '3', '8', '805  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('136', '3', '8', '806  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('137', '3', '8', '807  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('138', '3', '8', '808  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('139', '3', '8', '809  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('140', '3', '8', '810  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('141', '3', '9', '901  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('142', '3', '9', '902  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('143', '3', '9', '903  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('144', '3', '9', '904  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('145', '3', '9', '905  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('146', '3', '9', '906  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('147', '3', '9', '907  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('148', '3', '9', '908  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('149', '3', '9', '909  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('150', '3', '9', '910', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('151', '4', '1', '101  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('152', '4', '1', '102  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('153', '4', '1', '103  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('154', '4', '1', '104  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('155', '4', '1', '105  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('156', '4', '1', '106  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('157', '4', '1', '107  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('158', '4', '1', '108  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('159', '4', '1', '109  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('160', '4', '1', '110  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('161', '4', '2', '201  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('162', '4', '2', '202  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('163', '4', '2', '203  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('164', '4', '2', '204  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('165', '4', '2', '205  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('166', '4', '2', '206  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('167', '4', '2', '207  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('168', '4', '2', '208  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('169', '4', '2', '209  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('170', '4', '2', '210  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('171', '4', '3', '301  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('172', '4', '3', '302  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('173', '4', '3', '303  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('174', '4', '3', '304  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('175', '4', '3', '305  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('176', '4', '3', '306  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('177', '4', '3', '307  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('178', '4', '3', '308  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('179', '4', '3', '309  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('180', '4', '3', '310  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('181', '4', '4', '401  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('182', '4', '4', '402  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('183', '4', '4', '403  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('184', '4', '4', '404  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('185', '4', '4', '405  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('186', '4', '4', '406  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('187', '4', '4', '407  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('188', '4', '4', '408  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('189', '4', '4', '409  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('190', '4', '4', '410  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('191', '4', '5', '501  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('192', '4', '5', '502  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('193', '4', '5', '503  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('194', '4', '5', '504  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('195', '4', '5', '505  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('196', '4', '5', '506  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('197', '4', '5', '507  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('198', '4', '5', '508  ', '4', '0', null, '1');
INSERT INTO `dormitory` VALUES ('199', '4', '5', '509  ', '6', '0', null, '1');
INSERT INTO `dormitory` VALUES ('200', '4', '5', '510  ', '4', '0', null, '1');

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee` (
  `fee_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `fee_type` int DEFAULT NULL COMMENT '费用类型，1为电费，2为水费',
  `bill_year` int DEFAULT NULL COMMENT '账单所属年份',
  `bill_month` int DEFAULT NULL COMMENT '账单所属月份',
  `usages` double DEFAULT NULL COMMENT '水电用量，电费为度，水费为吨',
  `unit_price` double DEFAULT NULL COMMENT '单价',
  `amount` double DEFAULT NULL COMMENT '总费用',
  `dorm_id` int DEFAULT NULL COMMENT '宿舍ID',
  `building_id` int DEFAULT NULL COMMENT '楼宇ID',
  `status` int DEFAULT NULL COMMENT '状态：0待缴费，1已缴费',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`fee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES ('1', '1', '2024', '1', '185', '0.72', '133.2', '1', '1', '0', null);
INSERT INTO `fee` VALUES ('2', '2', '2024', '1', '18.6', '7.5', '139.5', '1', '1', '0', null);
INSERT INTO `fee` VALUES ('3', '1', '2024', '2', '288', '0.75', '216', '6', '3', '0', null);
INSERT INTO `fee` VALUES ('4', '2', '2024', '2', '12.7', '7.5', '95.25', '6', '3', '0', null);
INSERT INTO `fee` VALUES ('5', '1', '2024', '2', '286', '0.75', '214.5', '7', '3', '1', '2024-03-14 22:35:15');
INSERT INTO `fee` VALUES ('6', '2', '2024', '2', '12.5', '7.5', '93.75', '7', '3', '1', '2024-03-16 17:21:44');
INSERT INTO `fee` VALUES ('7', '1', '2024', '2', '103', '0.75', '77.25', '11', '3', '1', '2024-03-14 22:35:12');
INSERT INTO `fee` VALUES ('8', '1', '2024', '1', '122', '0.75', '91.5', '8', '3', '0', null);
INSERT INTO `fee` VALUES ('9', '1', '2024', '1', '98', '0.75', '73.5', '3', '2', '0', null);
INSERT INTO `fee` VALUES ('10', '2', '2024', '1', '3.1', '7.5', '23.25', '1', '1', '0', null);
INSERT INTO `fee` VALUES ('11', '1', '2024', '1', '28', '0.75', '21', '12', '4', '0', null);
INSERT INTO `fee` VALUES ('12', '2', '2024', '1', '1.8', '7.5', '13.5', '12', '4', '0', null);
INSERT INTO `fee` VALUES ('13', '1', '2024', '1', '178', '0.72', '128.16', '7', '3', '1', '2024-03-16 22:41:07');
INSERT INTO `fee` VALUES ('14', '2', '2024', '1', '4.9', '7.5', '36.75', '7', '3', '1', '2024-03-18 09:18:34');
INSERT INTO `fee` VALUES ('15', '1', '2023', '12', '289', '0.72', '208.08', '7', '3', '1', '2024-03-16 22:41:57');
INSERT INTO `fee` VALUES ('16', '1', '2024', '1', '201', '0.75', '150.75', '13', '3', '0', null);
INSERT INTO `fee` VALUES ('17', '2', '2024', '1', '12.5', '7.5', '93.75', '13', '3', '0', null);
INSERT INTO `fee` VALUES ('18', '1', '2023', '11', '288', '0.75', '216', '14', '3', '0', null);
INSERT INTO `fee` VALUES ('19', '2', '2023', '11', '12.5', '7.5', '93.75', '14', '3', '1', '2024-03-18 15:09:07');
INSERT INTO `fee` VALUES ('20', '1', '2023', '12', '195', '0.75', '146.25', '14', '3', '1', '2024-04-06 16:52:09');
INSERT INTO `fee` VALUES ('21', '2', '2023', '12', '10.6', '7.5', '79.5', '14', '3', '1', '2024-04-06 16:58:05');
INSERT INTO `fee` VALUES ('22', '1', '2024', '1', '187', '0.75', '140.25', '14', '3', '0', null);
INSERT INTO `fee` VALUES ('23', '2', '2024', '1', '9.8', '7.5', '73.5', '14', '3', '0', null);
INSERT INTO `fee` VALUES ('24', '1', '2024', '2', '102', '0.75', '76.5', '14', '3', '1', '2024-04-06 17:06:50');
INSERT INTO `fee` VALUES ('25', '2', '2024', '2', '5.8', '7.5', '43.5', '14', '3', '1', '2024-03-18 15:17:17');
INSERT INTO `fee` VALUES ('26', '1', '2024', '3', '275', '0.75', '206.25', '14', '3', '0', null);

-- ----------------------------
-- Table structure for fix
-- ----------------------------
DROP TABLE IF EXISTS `fix`;
CREATE TABLE `fix` (
  `fix_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `student_id` int DEFAULT NULL COMMENT '报修学生ID',
  `dorm_id` int DEFAULT NULL COMMENT '宿舍ID',
  `create_time` datetime DEFAULT NULL COMMENT '报修时间',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '详情',
  `fix_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '维修结果',
  `fixed_time` datetime DEFAULT NULL COMMENT '维修时间',
  `confirm_pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '维修图片',
  `pics` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图片',
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `building_id` int DEFAULT NULL COMMENT '楼宇ID',
  `worker_id` int DEFAULT NULL COMMENT '维修人员ID',
  PRIMARY KEY (`fix_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fix
-- ----------------------------
INSERT INTO `fix` VALUES ('1', '1', '2', '2024-03-08 22:50:31', '厕所灯坏了', '厕所灯有时不亮，有时会一闪一闪的', '更换灯泡与开关后，故障解决。', '2024-03-10 10:55:00', null, 'http://118.25.89.125:18080/images/20230410152503e4uk2.jpg', '1', '1', '7');
INSERT INTO `fix` VALUES ('3', '2', '2', '2024-03-10 15:21:27', '水龙头漏水', '阳台洗手盆的水龙头发生漏水，请尽快安排师傅维修。', '已更换新的水龙头', '2024-03-15 09:02:23', 'http://118.25.89.125:18080/images/20240315/090222c4xta.jpg', 'http://118.25.89.125:18080/images/20230410152121skdb9.jpg', '1', '1', '7');
INSERT INTO `fix` VALUES ('4', '8', '7', '2024-03-16 15:20:00', '厕所堵塞', '厕所无法下水', null, null, null, 'http://118.25.89.125:18080/images/20240316/151959b6zqm.jpg', '2', '3', '8');
INSERT INTO `fix` VALUES ('5', '8', '7', '2024-03-16 15:21:47', '晾衣杆断了', '阳台晾衣格杆断裂，无法晾晒衣服', '11', '2025-04-15 16:16:29', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/7ea8d17c-0094-4148-a2cb-7b3d070b06ed.png', '', '1', '3', '7');
INSERT INTO `fix` VALUES ('7', '0', '22', '2024-04-03 15:58:41', 'RRRRRR', 'WWWWWWWWWWWW', '', '2025-04-16 15:19:02', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/540e51c3-f9b5-4725-992b-05411b86e1d5.png', 'http://118.25.89.125:18080/images/20240403/155839m7wva.jpg', '1', '3', '8');
INSERT INTO `fix` VALUES ('8', '19', '15', '2024-04-03 23:30:14', '更换阳台灯', '阳台的灯不亮了', null, null, null, '', '0', '3', '7');
INSERT INTO `fix` VALUES ('9', '1', '2', '2025-02-14 10:39:45', '床脚断了', '咔嚓一声断了', null, null, null, '', '2', '1', '7');
INSERT INTO `fix` VALUES ('10', '1', '2', '2025-02-14 10:44:18', '床脚又断了', '又是咔嚓一声', '12345', '2025-02-19 14:51:43', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/39d49d41-8db7-467b-9d80-7e9816cc55b5.png', 'blob:http://localhost:9081/6e6d6398-c8db-4d2d-9d80-27fae931240f', '1', '1', '8');
INSERT INTO `fix` VALUES ('13', '1', '2', '2025-02-17 14:26:53', '灯管不亮了', '需要更换灯管', null, null, null, null, '2', '1', '7');
INSERT INTO `fix` VALUES ('14', '1', '2', '2025-02-17 14:30:59', '11', '', null, null, null, null, '2', '1', '8');
INSERT INTO `fix` VALUES ('17', '1', '2', '2025-02-19 15:24:17', '凳子坏了', '', '已修复', '2025-02-19 15:25:13', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/bdbdd56a-b396-4b97-96ba-accbe6d7ad36.jpg', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/49f5706a-fd8b-46c5-a328-08cdd935cc81.png', '1', '1', '7');
INSERT INTO `fix` VALUES ('18', '1', '1', '2025-03-02 15:40:38', '凳子坏了', '111', '已修复', '2025-03-02 15:42:31', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/89ef1479-f068-4f1d-aa4a-512dc0f63317.jpg', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/8649a589-8d97-4ec6-8483-8bb73b34c42a.png', '1', '1', '8');
INSERT INTO `fix` VALUES ('19', '1', '2', '2025-03-03 16:03:46', '空调不制冷', '22222', null, null, null, 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/e24b7f41-7aa9-4071-9094-72efe9fdf294.png', '2', '1', '7');
INSERT INTO `fix` VALUES ('20', '1', '2', '2025-03-03 16:04:56', '空调不制冷', '1111', '添加冰霜', '2025-03-03 16:05:54', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/3a2b6a24-aac8-4156-b67f-c6f1f7b6d01b.jpeg', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/cd0d9f3e-e5c7-44cd-9558-de93aab3a72a.png', '1', '1', '7');
INSERT INTO `fix` VALUES ('21', '1', '2', '2025-04-03 15:46:30', '123', '123', null, null, null, 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/efeb019f-189b-4e53-b3b0-cf12210ff35c.jpeg', '2', '1', '8');
INSERT INTO `fix` VALUES ('22', '1', '2', '2025-04-15 15:59:38', '11', '11', '1111', '2025-04-19 08:59:38', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/6dfa2c8a-2b57-4cb0-8fa6-4ac1db37f9d6.png', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/3c2adb65-421c-4c0d-b969-1d36f749bcd1.jpg', '1', '1', '8');

-- ----------------------------
-- Table structure for leave_info
-- ----------------------------
DROP TABLE IF EXISTS `leave_info`;
CREATE TABLE `leave_info` (
  `leave_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `student_id` int DEFAULT NULL COMMENT '学生ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `leave_type` int DEFAULT NULL COMMENT '1离校、2留校',
  `leave_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '离校、留校时间',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '原因',
  `pics` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '请假单照片',
  `dorm_id` int DEFAULT NULL COMMENT '宿舍ID',
  `building_id` int DEFAULT NULL COMMENT '楼栋ID',
  PRIMARY KEY (`leave_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of leave_info
-- ----------------------------
INSERT INTO `leave_info` VALUES ('1', '19', '2024-03-18 11:54:43', '1', '2024-03-25至2024-05-29', '去实习', '', '15', '3');
INSERT INTO `leave_info` VALUES ('2', '8', '2024-03-18 13:27:26', '1', '2024-03-27至2024-03-29', '请假回家', '', '7', '3');
INSERT INTO `leave_info` VALUES ('3', '2', '2024-03-18 13:33:09', '2', '2024-05-01至2024-05-06', '五一假期留校住宿', '', '2', '1');
INSERT INTO `leave_info` VALUES ('4', '8', '2024-03-18 13:34:04', '1', '2024-05-13至2024-05-15', '请病假', 'http://118.25.89.125:18080/images/20240318/133402cp4dk.jpg', '7', '3');
INSERT INTO `leave_info` VALUES ('5', '16', '2024-03-18 15:19:30', '1', '2024-04-15至2024-04-17', '请假回家', 'http://118.25.89.125:18080/images/20240318/151929msr1e.jpg', '14', '3');
INSERT INTO `leave_info` VALUES ('6', '43', '2024-04-04 19:47:31', '1', '2024-04-04至2024-04-06', '请假回家', '', '21', '3');
INSERT INTO `leave_info` VALUES ('7', '43', '2024-04-04 19:49:04', '1', '2024-04-24至2024-04-25', '请病假', '', '21', '3');
INSERT INTO `leave_info` VALUES ('8', '40', '2024-04-04 19:53:17', '1', '2024-04-15至2024-04-26', '到分校区上课', '', '20', '3');
INSERT INTO `leave_info` VALUES ('9', '1', '2025-02-14 10:30:28', '1', '2025-02-01至2025-02-08', '想出去散散心', '', '2', '1');
INSERT INTO `leave_info` VALUES ('10', '1', '2025-02-14 10:32:47', '2', '2025-02-04至2025-02-06', '没女朋友，申请留校', '', '2', '1');
INSERT INTO `leave_info` VALUES ('11', '1', '2025-03-02 14:43:44', '1', '2025-03-03至2025-03-14', '111', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/b3ab522e-15cb-40f8-b305-372ad521f3d4.jpg', '1', '1');
INSERT INTO `leave_info` VALUES ('12', '1', '2025-03-02 15:39:26', '1', '2025-03-03至2025-03-14', '111', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/41350416-762b-4444-bbbc-4a742c51a166.jpg', '1', '1');
INSERT INTO `leave_info` VALUES ('13', '1', '2025-04-15 15:35:49', '1', '2025-04-15至2025-04-18', '222', '', '2', '1');
INSERT INTO `leave_info` VALUES ('14', '1', '2025-04-19 08:56:35', '1', '2025-04-19至2025-04-24', '111', 'https://myupload-server.oss-cn-guangzhou.aliyuncs.com/c238c411-8c5d-4e80-ba74-650938ba5be0.jpg', '2', '1');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `msg_time` datetime DEFAULT NULL,
  `is_read` int DEFAULT NULL,
  `fee_id` int DEFAULT NULL,
  PRIMARY KEY (`msg_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('37', '12月水费催缴通知', '1', '同学您好，12月的水费账单已经生成，使用度量为10.6吨，合计79.5元，请及时缴纳！', '2024-04-06 16:57:44', '1', '21');
INSERT INTO `msg` VALUES ('38', '12月水费催缴通知', '1', '同学您好，12月的水费账单已经生成，使用度量为10.6吨，合计79.5元，请及时缴纳！', '2024-04-06 16:57:44', '1', '21');
INSERT INTO `msg` VALUES ('39', '11月电费催缴通知', '1', '同学您好，11月的电费账单已经生成，使用度量为288.0度，合计216.0元，请及时缴纳！', '2024-04-06 16:57:46', '0', '18');
INSERT INTO `msg` VALUES ('40', '11月电费催缴通知', '17', '同学您好，11月的电费账单已经生成，使用度量为288.0度，合计216.0元，请及时缴纳！', '2024-04-06 16:57:46', '0', '18');
INSERT INTO `msg` VALUES ('41', '3月电费催缴通知', '1', '同学您好，3月的电费账单已经生成，使用度量为275.0度，合计206.25元，请及时缴纳！', '2024-04-06 17:06:06', '0', '26');
INSERT INTO `msg` VALUES ('42', '3月电费催缴通知', '17', '同学您好，3月的电费账单已经生成，使用度量为275.0度，合计206.25元，请及时缴纳！', '2024-04-06 17:06:06', '0', '26');
INSERT INTO `msg` VALUES ('43', '2月电费催缴通知', '16', '同学您好，2月的电费账单已经生成，使用度量为102.0度，合计76.5元，请及时缴纳！', '2024-04-06 17:06:27', '1', '24');
INSERT INTO `msg` VALUES ('44', '2月电费催缴通知', '17', '同学您好，2月的电费账单已经生成，使用度量为102.0度，合计76.5元，请及时缴纳！', '2024-04-06 17:06:27', '1', '24');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `publish_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2', '2024-03-06 13:58:17', '4月8日南区篮球场举行创意市集活动', '活动', '<p>4月8日南区篮球场举行创意市集活动，欢迎大家前往参加！</p>');
INSERT INTO `notice` VALUES ('3', '2024-03-10 15:29:41', '饭堂营业时间变更通知', '通知', '<p>5月1日起，学校南区饭堂营业时间将变更为<span style=\"font-weight: bold; color: rgb(249, 150, 59);\">6:30~22:30</span>，请同学们知悉，做好就餐安排。</p>');
INSERT INTO `notice` VALUES ('4', '2024-03-15 09:43:02', '2024年第一次卫生检查通告', '公告', '<p>本次卫生检查，共有3个宿舍不合格：</p><p>1、南区17栋301</p><p>2、南区17楼202</p><p>3、南区8栋502</p><p>请以各位同学继续做好内务，达到学校要求的标准。</p>');
INSERT INTO `notice` VALUES ('5', '2024-03-15 09:42:30', '3月16日停水通知', '通知', '<p>各位同学：</p><p>本周六（3月16日）14:00至14:30南生活区因更换主水管阀门将会暂停供水，请各位同学提前做好储水，如有不便敬请谅解。</p>');
INSERT INTO `notice` VALUES ('6', '2024-03-15 09:42:30', '3月16日停水通知', '通知', '<p>各位同学：</p><p>本周六（3月16日）14:00至14:30南生活区因更换主水管阀门将会暂停供水，请各位同学提前做好储水，如有不便敬请谅解。</p>');
INSERT INTO `notice` VALUES ('9', '2025-03-05 14:34:42', '关于宿舍管理的通知', '通知', '<p>各位同学：</p><p>大家好！为了营造一个更加安全、舒适、整洁的宿舍环境，同时保障大家的日常生活和学习，现将近期宿舍管理的相关事项通知如下：</p><h2>一、宿舍安全</h2><ol><li><strong>用电安全</strong></li></ol><ul><li class=\"ql-indent-1\">请严格遵守宿舍用电规定，禁止使用大功率电器（如电热棒、电磁炉、电暖器等），避免因超负荷用电引发火灾。</li><li class=\"ql-indent-1\">离开宿舍时，请务必关闭所有电器设备，切断电源，确保安全。</li><li class=\"ql-indent-1\">若发现宿舍内电线老化、插座损坏等问题，请及时联系宿舍管理员报修。</li></ul><ol><li><strong>消防安全</strong></li></ol><ul><li class=\"ql-indent-1\">宿舍内严禁吸烟、使用明火，禁止存放易燃易爆物品。</li><li class=\"ql-indent-1\">每位同学应熟悉宿舍内的消防设施位置（如灭火器、消防栓等），并掌握基本的消防逃生知识。</li></ul><ol><li><strong>人员安全</strong></li></ol><ul><li class=\"ql-indent-1\">晚间宿舍门禁时间为 [具体时间]，请同学们务必按时返回宿舍。如有特殊情况需要晚归，请提前向管理员请假并说明原因。</li><li class=\"ql-indent-1\">外来人员进入宿舍需进行登记，未经允许不得随意进入其他宿舍。</li></ul><h2>二、宿舍卫生</h2><ol><li><strong>日常清洁</strong></li></ol><ul><li class=\"ql-indent-1\">每周进行一次宿舍大扫除，具体时间为 [每周几]，请同学们合理安排时间，保持宿舍整洁。</li><li class=\"ql-indent-1\">宿舍内垃圾需及时清理，不得堆积在公共区域。</li></ul><ol><li><strong>公共区域卫生</strong></li></ol><ul><li class=\"ql-indent-1\">楼道、卫生间、洗漱间等公共区域由宿管阿姨定期打扫，但同学们也需自觉维护公共区域卫生，不得乱扔垃圾。</li></ul><h2>三、宿舍设施维护</h2><ol><li><strong>设施报修</strong></li></ol><ul><li class=\"ql-indent-1\">若宿舍内设施（如床铺、桌椅、门窗、水电设备等）出现损坏，请及时联系宿舍管理员报修，我们会尽快安排维修人员上门处理。</li><li class=\"ql-indent-1\">请同学们爱护公共设施，避免人为损坏。</li></ul><ol><li><strong>维修时间</strong></li></ol><ul><li class=\"ql-indent-1\">维修人员的工作时间为 [具体时间段]，请同学们在此期间保持宿舍内通道畅通，以便维修工作顺利进行。</li></ul><h2>四、其他事项</h2><ol><li><strong>作息时间</strong></li></ol><ul><li class=\"ql-indent-1\">为了保障大家的休息，宿舍内请保持安静，晚上 [熄灯时间] 后请自觉熄灯休息，避免大声喧哗或进行其他影响他人休息的活动。</li><li class=\"ql-indent-1\">如有同学因学习等原因需要晚睡，请尽量控制音量，避免影响他人。</li></ul><ol><li><strong>物品管理</strong></li><li><br></li></ol><ul><li class=\"ql-indent-1\">宿舍内请妥善保管个人物品，贵重物品（如笔记本电脑、手机等）需随身携带，避免丢失。</li><li class=\"ql-indent-1\">公共区域（如走廊、楼梯间等）禁止堆放个人物品，以免影响通行。</li></ul><ol><li><strong>违规处理</strong></li></ol><ul><li class=\"ql-indent-1\">对于违反宿舍管理规定的行为，我们将根据情节轻重给予相应的处理，包括但不限于警告、罚款、取消住宿资格等。</li></ul><p><a href=\"www.baidu.com\" rel=\"noopener noreferrer\" target=\"_blank\">同学们</a>，宿舍是我们共同的家，希望大家都能自觉遵守相关规定，共同维护宿舍的良好秩序和环境。如有任何问题或建议，欢迎随时与宿舍管理员联系。</p>');

-- ----------------------------
-- Table structure for occupation
-- ----------------------------
DROP TABLE IF EXISTS `occupation`;
CREATE TABLE `occupation` (
  `occupation_id` int NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `student_id` int DEFAULT NULL COMMENT '学生ID',
  `operator_id` int DEFAULT NULL COMMENT '操作人ID',
  `check_in_time` datetime DEFAULT NULL COMMENT '入住时间',
  `check_out_time` datetime DEFAULT NULL COMMENT '搬离时间',
  `curr_status` int DEFAULT NULL COMMENT '当前状态',
  `dorm_id` int DEFAULT NULL COMMENT '宿舍ID',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `building_id` int DEFAULT NULL COMMENT '楼宇ID',
  PRIMARY KEY (`occupation_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of occupation
-- ----------------------------
INSERT INTO `occupation` VALUES ('1', '1', '1', '2021-09-22 16:28:30', '2025-03-03 15:40:31', '-1', '1', '即将毕业，搬离宿舍', '1');
INSERT INTO `occupation` VALUES ('2', '2', '1', '2023-04-06 18:25:33', '2024-03-14 11:25:54', '-1', '2', '新学年更新宿舍#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('3', '3', '1', '2023-03-02 18:26:15', '2023-04-06 18:32:09', '-1', '1', '学生自行申请更换宿舍', '1');
INSERT INTO `occupation` VALUES ('4', '4', '1', '2023-04-06 18:30:02', null, '1', '2', '新学年更新宿舍', '1');
INSERT INTO `occupation` VALUES ('5', '28', '1', '2022-09-01 14:42:37', '2023-02-13 10:42:54', '-1', '5', '原宿舍维修，安排更换宿舍', '3');
INSERT INTO `occupation` VALUES ('7', '35', '1', '2023-07-10 14:12:45', null, '1', '8', '', '3');
INSERT INTO `occupation` VALUES ('8', '8', '1', '2024-02-26 11:25:26', null, '1', '6', '', '3');
INSERT INTO `occupation` VALUES ('9', '5', '6', '2024-03-14 11:25:54', null, '1', '1', '', '1');
INSERT INTO `occupation` VALUES ('10', '10', '6', '2024-03-14 13:35:15', null, '1', '7', '', '3');
INSERT INTO `occupation` VALUES ('11', '11', '6', '2024-03-17 17:16:53', null, '1', '11', '', '3');
INSERT INTO `occupation` VALUES ('12', '12', '6', '2024-03-17 17:17:02', '2024-03-17 19:43:52', '-1', '13', '申请更换宿舍', '3');
INSERT INTO `occupation` VALUES ('13', '13', '6', '2024-03-17 17:17:22', null, '1', '11', '', '3');
INSERT INTO `occupation` VALUES ('14', '14', '6', '2024-03-17 17:17:32', null, '1', '11', '', '3');
INSERT INTO `occupation` VALUES ('15', '15', '6', '2024-03-17 17:17:51', null, '1', '11', '', '3');
INSERT INTO `occupation` VALUES ('16', '16', '6', '2024-03-17 17:21:34', '2024-03-17 19:31:01', '-1', '14', '申请校外住宿', '3');
INSERT INTO `occupation` VALUES ('17', '17', '6', '2024-03-17 17:22:36', null, '1', '14', '', '3');
INSERT INTO `occupation` VALUES ('18', '18', '6', '2024-03-17 17:22:50', null, '1', '14', '', '3');
INSERT INTO `occupation` VALUES ('19', '19', '6', '2024-03-17 17:22:59', null, '1', '15', '', '3');
INSERT INTO `occupation` VALUES ('20', '20', '6', '2024-03-17 17:23:10', null, '1', '15', '', '3');
INSERT INTO `occupation` VALUES ('21', '21', '6', '2024-03-17 17:23:21', null, '1', '15', '', '3');
INSERT INTO `occupation` VALUES ('22', '22', '6', '2024-03-17 17:23:34', null, '1', '15', '', '3');
INSERT INTO `occupation` VALUES ('23', '23', '6', '2024-03-17 19:39:33', null, '1', '20', '', '3');
INSERT INTO `occupation` VALUES ('24', '24', '6', '2024-03-17 19:40:03', null, '1', '20', '', '3');
INSERT INTO `occupation` VALUES ('25', '25', '6', '2024-03-17 19:40:12', null, '1', '20', '', '3');
INSERT INTO `occupation` VALUES ('26', '26', '6', '2024-03-17 19:40:21', null, '1', '21', '', '3');
INSERT INTO `occupation` VALUES ('27', '27', '6', '2024-03-17 19:40:31', null, '1', '21', '', '3');
INSERT INTO `occupation` VALUES ('28', '6', '6', '2024-03-17 19:41:01', '2024-03-17 19:41:45', '-1', '2', '#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('29', '29', '6', '2024-03-17 19:41:15', null, '1', '23', '', '3');
INSERT INTO `occupation` VALUES ('30', '30', '6', '2024-03-17 19:41:25', null, '1', '24', '', '3');
INSERT INTO `occupation` VALUES ('31', '31', '6', '2024-03-17 19:41:45', null, '1', '22', '', '3');
INSERT INTO `occupation` VALUES ('32', '32', '6', '2024-03-18 15:47:46', null, '1', '16', '', '3');
INSERT INTO `occupation` VALUES ('33', '33', '6', '2021-09-15 12:34:56', null, '1', '21', '', '3');
INSERT INTO `occupation` VALUES ('34', '34', '6', '2022-03-22 09:45:23', null, '1', '21', '', '3');
INSERT INTO `occupation` VALUES ('35', '7', '6', '2024-04-03 17:50:39', null, '1', '3', '', '2');
INSERT INTO `occupation` VALUES ('37', '36', '6', '2024-11-30 08:56:34', '2025-04-18 12:44:08', '-1', '12', '#入住新宿舍自动迁出。', '4');
INSERT INTO `occupation` VALUES ('38', '37', '6', '2021-12-05 16:23:12', '2025-04-18 12:49:12', '-1', '12', '#入住新宿舍自动迁出。', '4');
INSERT INTO `occupation` VALUES ('39', '38', '6', '2022-08-18 11:11:11', '2025-04-18 12:55:32', '-1', '26', 'null#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('40', '39', '6', '2023-01-25 13:45:56', null, '1', '26', null, '1');
INSERT INTO `occupation` VALUES ('41', '40', '6', '2024-05-20 10:10:10', null, '1', '61', null, '3');
INSERT INTO `occupation` VALUES ('42', '41', '6', '2022-06-07 15:30:45', null, '1', '61', null, '3');
INSERT INTO `occupation` VALUES ('43', '42', '6', '2023-09-14 07:22:33', null, '1', '61', null, '3');
INSERT INTO `occupation` VALUES ('44', '43', '6', '2024-02-28 12:55:44', null, '1', '61', null, '3');
INSERT INTO `occupation` VALUES ('45', '44', '6', '2021-10-10 17:08:09', null, '1', '62', null, '3');
INSERT INTO `occupation` VALUES ('46', '45', '6', '2022-04-12 14:14:14', null, '1', '62', null, '3');
INSERT INTO `occupation` VALUES ('47', '46', '6', '2023-08-08 09:09:09', null, '1', '62', null, '3');
INSERT INTO `occupation` VALUES ('48', '47', '6', '2024-12-25 06:30:15', null, '1', '62', null, '3');
INSERT INTO `occupation` VALUES ('49', '48', '6', '2022-01-01 10:50:50', null, '1', '63', null, '3');
INSERT INTO `occupation` VALUES ('50', '49', '6', '2023-05-05 16:40:30', null, '1', '63', null, '3');
INSERT INTO `occupation` VALUES ('51', '50', '6', '2024-09-09 11:20:40', null, '1', '63', null, '3');
INSERT INTO `occupation` VALUES ('52', '51', '6', '2021-11-11 13:33:33', null, '1', '63', null, '3');
INSERT INTO `occupation` VALUES ('53', '52', '6', '2022-07-07 08:45:12', null, '1', '63', null, '3');
INSERT INTO `occupation` VALUES ('54', '53', '6', '2023-12-12 15:15:15', null, '1', '71', null, '3');
INSERT INTO `occupation` VALUES ('55', '54', '6', '2024-04-04 12:25:35', null, '1', '71', null, '3');
INSERT INTO `occupation` VALUES ('56', '55', '6', '2022-02-02 14:05:25', null, '1', '71', null, '3');
INSERT INTO `occupation` VALUES ('57', '56', '6', '2023-06-06 10:55:55', null, '1', '71', null, '3');
INSERT INTO `occupation` VALUES ('58', '57', '6', '2024-10-10 09:35:45', null, '1', '72', null, '3');
INSERT INTO `occupation` VALUES ('59', '58', '6', '2021-08-30 17:12:34', null, '1', '72', null, '3');
INSERT INTO `occupation` VALUES ('60', '59', '6', '2022-09-19 11:45:23', null, '1', '72', null, '3');
INSERT INTO `occupation` VALUES ('61', '60', '6', '2023-03-03 13:22:22', null, '1', '72', null, '3');
INSERT INTO `occupation` VALUES ('62', '61', '6', '2024-07-07 07:15:45', null, '1', '73', null, '3');
INSERT INTO `occupation` VALUES ('63', '62', '6', '2022-05-15 16:10:10', null, '1', '73', null, '3');
INSERT INTO `occupation` VALUES ('64', '63', '6', '2023-10-10 12:40:50', null, '1', '73', null, '3');
INSERT INTO `occupation` VALUES ('65', '64', '6', '2024-01-01 08:20:30', null, '1', '73', null, '3');
INSERT INTO `occupation` VALUES ('66', '65', '6', '2021-12-25 14:30:45', null, '1', '74', null, '3');
INSERT INTO `occupation` VALUES ('67', '66', '6', '2022-11-11 09:25:35', null, '1', '74', null, '3');
INSERT INTO `occupation` VALUES ('68', '67', '6', '2023-04-04 15:50:50', null, '1', '74', null, '3');
INSERT INTO `occupation` VALUES ('69', '68', '6', '2024-08-08 10:05:15', null, '1', '74', null, '3');
INSERT INTO `occupation` VALUES ('70', '69', '6', '2022-03-15 12:15:45', null, '1', '75', null, '3');
INSERT INTO `occupation` VALUES ('71', '70', '6', '2023-09-09 17:05:25', null, '1', '75', null, '3');
INSERT INTO `occupation` VALUES ('72', '71', '6', '2024-06-06 11:35:55', null, '1', '75', null, '3');
INSERT INTO `occupation` VALUES ('73', '72', '6', '2021-10-20 13:45:45', null, '1', '75', null, '3');
INSERT INTO `occupation` VALUES ('74', '73', '6', '2022-08-08 08:55:55', null, '1', '81', null, '3');
INSERT INTO `occupation` VALUES ('75', '74', '6', '2023-02-14 16:20:40', null, '1', '81', null, '3');
INSERT INTO `occupation` VALUES ('76', '75', '6', '2024-12-12 07:30:15', null, '1', '81', null, '3');
INSERT INTO `occupation` VALUES ('77', '76', '6', '2022-01-20 10:40:50', null, '1', '81', null, '3');
INSERT INTO `occupation` VALUES ('78', '77', '6', '2023-07-07 14:25:35', null, '1', '82', null, '3');
INSERT INTO `occupation` VALUES ('79', '78', '6', '2024-11-11 09:15:45', null, '1', '82', null, '3');
INSERT INTO `occupation` VALUES ('80', '79', '6', '2021-09-09 12:05:25', null, '1', '82', null, '3');
INSERT INTO `occupation` VALUES ('81', '80', '6', '2022-04-22 15:35:55', null, '1', '82', null, '3');
INSERT INTO `occupation` VALUES ('82', '81', '6', '2023-08-18 11:50:50', null, '1', '83', null, '3');
INSERT INTO `occupation` VALUES ('83', '82', '6', '2024-02-14 06:45:12', null, '1', '83', null, '3');
INSERT INTO `occupation` VALUES ('84', '83', '6', '2022-06-30 13:20:40', null, '1', '83', null, '3');
INSERT INTO `occupation` VALUES ('85', '84', '6', '2023-12-25 17:10:10', null, '1', '83', null, '3');
INSERT INTO `occupation` VALUES ('86', '85', '6', '2024-05-05 08:30:45', null, '1', '84', null, '3');
INSERT INTO `occupation` VALUES ('87', '86', '6', '2021-11-30 14:55:55', null, '1', '84', null, '3');
INSERT INTO `occupation` VALUES ('88', '87', '6', '2022-10-10 10:25:35', null, '1', '84', null, '3');
INSERT INTO `occupation` VALUES ('89', '88', '6', '2023-03-25 16:15:45', null, '1', '84', null, '3');
INSERT INTO `occupation` VALUES ('90', '89', '6', '2024-09-30 12:50:50', null, '1', '85', null, '3');
INSERT INTO `occupation` VALUES ('91', '90', '6', '2022-02-14 09:35:55', null, '1', '85', null, '3');
INSERT INTO `occupation` VALUES ('92', '91', '6', '2023-06-15 15:05:25', null, '1', '85', null, '3');
INSERT INTO `occupation` VALUES ('93', '92', '6', '2024-10-20 07:45:23', null, '1', '85', null, '3');
INSERT INTO `occupation` VALUES ('94', '93', '6', '2021-12-12 11:30:45', null, '1', '85', null, '3');
INSERT INTO `occupation` VALUES ('95', '94', '6', '2022-07-25 14:40:50', null, '1', '37', null, '2');
INSERT INTO `occupation` VALUES ('96', '95', '6', '2023-01-01 08:15:45', null, '1', '37', null, '2');
INSERT INTO `occupation` VALUES ('97', '96', '6', '2024-04-15 17:25:35', null, '1', '37', null, '2');
INSERT INTO `occupation` VALUES ('98', '97', '6', '2022-03-30 10:55:55', null, '1', '37', null, '2');
INSERT INTO `occupation` VALUES ('99', '98', '6', '2023-09-25 13:35:55', null, '1', '38', null, '2');
INSERT INTO `occupation` VALUES ('100', '99', '6', '2024-06-10 09:05:25', null, '1', '38', null, '2');
INSERT INTO `occupation` VALUES ('101', '100', '6', '2021-10-05 16:45:12', null, '1', '38', null, '2');
INSERT INTO `occupation` VALUES ('102', '101', '6', '2022-11-25 12:30:45', '2025-03-04 17:36:30', '-1', null, 'null#入住新宿舍自动迁出。', null);
INSERT INTO `occupation` VALUES ('103', '102', '6', '2023-04-18 15:20:40', '2025-03-04 17:27:28', '-1', null, 'null#入住新宿舍自动迁出。', null);
INSERT INTO `occupation` VALUES ('104', '103', '6', '2024-08-22 07:50:50', '2025-03-04 15:05:44', '-1', null, 'null#入住新宿舍自动迁出。', null);
INSERT INTO `occupation` VALUES ('105', '104', '6', '2022-01-05 11:15:45', null, '1', '88', null, '3');
INSERT INTO `occupation` VALUES ('106', '105', '6', '2023-07-20 14:05:25', null, '1', '88', null, '3');
INSERT INTO `occupation` VALUES ('107', '106', '6', '2024-12-30 08:40:50', null, '1', '88', null, '3');
INSERT INTO `occupation` VALUES ('108', '107', '6', '2021-09-30 17:35:55', null, '1', '88', null, '3');
INSERT INTO `occupation` VALUES ('109', '108', '6', '2022-05-10 10:20:40', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('110', '109', '6', '2023-10-15 13:10:10', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('111', '110', '6', '2024-02-20 06:25:35', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('112', '111', '6', '2022-08-30 15:50:50', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('113', '112', '6', '2023-12-05 09:45:23', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('114', '113', '6', '2024-05-25 12:15:45', null, '1', '89', null, '3');
INSERT INTO `occupation` VALUES ('115', '1', '2', '2025-03-03 15:55:52', '2025-03-03 15:59:54', '-1', '1', '添加入住#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('116', '1', '2', '2025-03-03 15:59:54', null, '1', '2', '更换宿舍', '1');
INSERT INTO `occupation` VALUES ('117', '103', '6', '2025-03-04 15:05:44', '2025-03-04 15:16:54', '-1', '1', '新增入住#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('118', '103', '6', '2025-03-04 15:16:54', '2025-03-04 15:28:04', '-1', '1', '测试#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('119', '103', '6', '2025-03-04 15:28:04', '2025-03-04 16:01:13', '-1', '1', '11#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('120', '103', '6', '2025-03-04 16:01:13', '2025-03-04 16:03:59', '-1', '1', '22#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('121', '103', '6', '2025-03-04 16:03:59', '2025-03-04 16:06:31', '-1', '1', '33#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('122', '103', '6', '2025-03-04 16:06:31', '2025-03-04 16:07:30', '-1', '1', '55#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('123', '103', '6', '2025-03-04 16:10:47', '2025-03-04 16:11:45', '-1', '1', '55#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('124', '103', '6', '2025-03-04 16:15:45', '2025-03-04 16:17:08', '-1', '1', '55#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('125', '103', '6', '2025-03-04 16:17:09', '2025-03-04 16:33:26', '-1', '1', '55#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('126', '103', '6', '2025-03-04 16:36:01', '2025-03-04 16:42:32', '-1', '1', '33#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('127', '103', '6', '2025-03-04 16:42:32', '2025-03-04 16:49:52', '-1', '1', '33#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('128', '103', '6', '2025-03-04 16:49:52', '2025-03-04 16:52:18', '-1', '1', '123#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('129', '103', '6', '2025-03-04 16:52:18', '2025-03-04 16:57:32', '-1', '1', '11111#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('130', '103', '6', '2025-03-04 16:57:32', '2025-03-04 16:59:30', '-1', '1', '666#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('131', '103', '6', '2025-03-04 16:59:30', '2025-03-04 17:04:40', '-1', '1', '5555#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('132', '103', '6', '2025-03-04 17:04:40', '2025-03-04 17:06:43', '-1', '1', '222#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('133', '103', '6', '2025-03-04 17:06:43', '2025-03-04 17:15:42', '-1', '1', '444#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('134', '103', '6', '2025-03-04 17:16:29', '2025-03-04 17:25:13', '-1', '1', '8888#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('135', '103', '6', '2025-03-04 17:25:14', '2025-03-04 17:26:44', '-1', '1', '5555#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('136', '103', '6', '2025-03-04 17:26:44', null, '1', '1', '333', '1');
INSERT INTO `occupation` VALUES ('137', '102', '6', '2025-03-04 17:35:12', '2025-04-16 16:19:15', '-1', '1', '2222#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('138', '102', '1', '2025-04-16 16:19:15', '2025-04-16 16:20:23', '-1', '1', '1111#入住新宿舍自动迁出。', '1');
INSERT INTO `occupation` VALUES ('139', '102', '1', '2025-04-16 16:20:23', '2025-04-16 16:21:13', '-1', '2', '111122', '1');
INSERT INTO `occupation` VALUES ('140', '36', '1', '2025-04-18 12:44:08', null, '1', '1', '新增学生入住', '1');
INSERT INTO `occupation` VALUES ('141', '37', '1', '2025-04-18 12:49:12', null, '1', '1', '新增学生入住', '1');
INSERT INTO `occupation` VALUES ('142', '38', '1', '2025-04-18 12:55:32', null, '1', '2', '换宿舍', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT '物理ID',
  `student_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学号',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `gender` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '年级',
  `college` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '院系',
  `major_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '专业班级',
  `mobile` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `status` int DEFAULT NULL COMMENT '状态',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2140129216', '小宇', '男', '2021', '软件与人工智能学院', '软件工程5班', '18142818619', '1', '123');
INSERT INTO `student` VALUES ('2', '2146304116', '刘健霜', '女', '2021', '软件与人工智能学院', '软件工程5班', '18142818618', '1', '123456');
INSERT INTO `student` VALUES ('3', '2148976791', '冯苇婷', '女', '2021', '软件与人工智能学院', '软件工程5班', '18656913195', '1', '123456');
INSERT INTO `student` VALUES ('4', '2141349671', '王礼娜', '女', '2021', '软件与人工智能学院', '软件工程5班', '18167156472', '0', '123456');
INSERT INTO `student` VALUES ('5', '2142830950', '卢秀珠', '女', '2021', '软件与人工智能学院', '软件工程5班', '18274429009', '1', '123456');
INSERT INTO `student` VALUES ('6', '2141413924', '陆作虎', '男', '2021', '软件与人工智能学院', '软件工程5班', '18745755115', '0', '123456');
INSERT INTO `student` VALUES ('7', '2147869632', '崔锡嘉', '男', '2021', '软件与人工智能学院', '软件工程5班', '18070611805', '0', '123456');
INSERT INTO `student` VALUES ('8', '2149586490', '沈杨', '男', '2021', '软件与人工智能学院', '软件工程5班', '18335281962', '1', '123456');
INSERT INTO `student` VALUES ('10', '2141892253', '王一博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18535132454', '0', '123456');
INSERT INTO `student` VALUES ('11', '2142700232', '王二博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18190481967', '0', '123456');
INSERT INTO `student` VALUES ('12', '2149020331', '王三博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18465569322', '0', '123456');
INSERT INTO `student` VALUES ('13', '2143848551', '王四博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18226786121', '0', '123456');
INSERT INTO `student` VALUES ('14', '2147127139', '王五博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18429064425', '0', '123456');
INSERT INTO `student` VALUES ('15', '2141572734', '王六博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18445313989', '0', '123456');
INSERT INTO `student` VALUES ('16', '2149283961', '张英才', '男', '2021', '软件与人工智能学院', '软件工程5班', '18684574628', '1', '123456');
INSERT INTO `student` VALUES ('17', '2142036011', '王八博', '男', '2021', '软件与人工智能学院', '软件工程5班', '18373118422', '0', '123456');
INSERT INTO `student` VALUES ('18', '2145571499', '王九博', '男', '2023', '计算机学院', '计算机科学与技术4班', '18947328136', '0', '123456');
INSERT INTO `student` VALUES ('19', '2346032237', '王十博', '男', '2023', '计算机学院', '计算机科学与技术2班', '18941968407', '1', '123456');
INSERT INTO `student` VALUES ('20', '2318170397', '李一博', '男', '2023', '计算机学院', '计算机科学与技术1班', '18765199107', '0', '123456');
INSERT INTO `student` VALUES ('21', '2357644133', '李二博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18466881057', '0', '123456');
INSERT INTO `student` VALUES ('22', '2372934223', '李三博', '男', '2023', '计算机学院', '计算机科学与技术4班', '18797817660', '0', '123456');
INSERT INTO `student` VALUES ('23', '2341301861', '李四博', '男', '2023', '计算机学院', '计算机科学与技术4班', '18872120111', '0', '123456');
INSERT INTO `student` VALUES ('24', '2398086819', '李五博', '男', '2023', '计算机学院', '计算机科学与技术5班', '18266863381', '0', '123456');
INSERT INTO `student` VALUES ('25', '2333893060', '李六博', '男', '2023', '计算机学院', '计算机科学与技术2班', '18606329504', '0', '123456');
INSERT INTO `student` VALUES ('26', '2397608717', '李七博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18320567098', '0', '123456');
INSERT INTO `student` VALUES ('27', '2335578244', '李八博', '男', '2023', '计算机学院', '计算机科学与技术6班', '18683982077', '0', '123456');
INSERT INTO `student` VALUES ('28', '2382584319', '李九博', '男', '2023', '计算机学院', '计算机科学与技术5班', '18597340809', '0', '123456');
INSERT INTO `student` VALUES ('29', '2393922409', '李十博', '男', '2023', '计算机学院', '计算机科学与技术5班', '18719310850', '0', '123456');
INSERT INTO `student` VALUES ('30', '2312397051', '赵一博', '男', '2023', '计算机学院', '计算机科学与技术6班', '18089766907', '0', '123456');
INSERT INTO `student` VALUES ('31', '2318690444', '赵二博', '男', '2023', '计算机学院', '计算机科学与技术5班', '18414616837', '0', '123456');
INSERT INTO `student` VALUES ('32', '2344560485', '赵三博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18967381546', '0', '123456');
INSERT INTO `student` VALUES ('33', '2332829034', '赵四博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18452470107', '0', '123456');
INSERT INTO `student` VALUES ('34', '2363046972', '赵五博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18495285035', '0', '123456');
INSERT INTO `student` VALUES ('35', '2332422403', '赵六博', '男', '2023', '计算机学院', '计算机科学与技术3班', '18686711484', '0', '123456');
INSERT INTO `student` VALUES ('36', '2397208922', '赵七博', '男', '2023', '计算机学院', '计算机科学与技术6班', '18320606152', '0', '123456');
INSERT INTO `student` VALUES ('37', '2340632277', '赵八博', '男', '2023', '计算机学院', '计算机科学与技术5班', '18310888856', '0', '123456');
INSERT INTO `student` VALUES ('38', '2383287000', '赵九博', '男', '2023', '计算机学院', '计算机科学与技术4班', '18304305862', '0', '123456');
INSERT INTO `student` VALUES ('39', '2393791073', '赵十博', '男', '2023', '计算机学院', '计算机科学与技术4班', '18659240916', '0', '123456');
INSERT INTO `student` VALUES ('40', '2348991308', '刘一倩', '女', '2022', '艺术系', '视觉设计3班', '18750860866', '1', '123456');
INSERT INTO `student` VALUES ('41', '2370476555', '刘二倩', '女', '2022', '艺术系', '视觉设计2班', '18449713760', '0', '123456');
INSERT INTO `student` VALUES ('42', '2360733961', '刘三倩', '女', '2022', '艺术系', '视觉设计1班', '18105057098', '0', '123456');
INSERT INTO `student` VALUES ('43', '2386796355', '刘四倩', '女', '2022', '艺术系', '视觉设计1班', '18898864378', '1', '123456');
INSERT INTO `student` VALUES ('44', '2330467892', '刘五倩', '女', '2022', '艺术系', '视觉设计1班', '18920319997', '0', '123456');
INSERT INTO `student` VALUES ('45', '2356080393', '刘六倩', '女', '2022', '艺术系', '视觉设计4班', '18544338832', '0', '123456');
INSERT INTO `student` VALUES ('46', '2314054401', '刘七倩', '女', '2022', '艺术系', '视觉设计5班', '18253073222', '0', '123456');
INSERT INTO `student` VALUES ('47', '2324631423', '刘八倩', '女', '2022', '艺术系', '视觉设计4班', '18512980075', '0', '123456');
INSERT INTO `student` VALUES ('48', '2343723923', '刘九倩', '女', '2022', '艺术系', '视觉设计3班', '18643308512', '0', '123456');
INSERT INTO `student` VALUES ('49', '2302033544', '刘十倩', '女', '2022', '艺术系', '视觉设计6班', '18492005745', '0', '123456');
INSERT INTO `student` VALUES ('50', '2320069907', '李一倩', '女', '2022', '艺术系', '视觉设计5班', '18135559989', '0', '123456');
INSERT INTO `student` VALUES ('51', '2352799026', '李二倩', '女', '2022', '艺术系', '视觉设计4班', '18912499770', '0', '123456');
INSERT INTO `student` VALUES ('52', '2354826282', '李三倩', '女', '2022', '艺术系', '视觉设计1班', '18761680876', '0', '123456');
INSERT INTO `student` VALUES ('53', '2361640663', '李四倩', '女', '2022', '艺术系', '视觉设计4班', '18487429723', '0', '123456');
INSERT INTO `student` VALUES ('54', '2347153945', '李五倩', '女', '2022', '艺术系', '视觉设计6班', '18106473116', '0', '123456');
INSERT INTO `student` VALUES ('55', '2390097531', '李六倩', '女', '2022', '艺术系', '视觉设计1班', '18192749532', '0', '123456');
INSERT INTO `student` VALUES ('56', '2323072339', '李七倩', '女', '2022', '艺术系', '视觉设计6班', '18904954705', '0', '123456');
INSERT INTO `student` VALUES ('57', '2344096985', '李八倩', '女', '2022', '艺术系', '视觉设计6班', '18161269646', '0', '123456');
INSERT INTO `student` VALUES ('58', '2355307601', '李九倩', '女', '2022', '艺术系', '视觉设计6班', '18590465791', '0', '123456');
INSERT INTO `student` VALUES ('59', '2362466152', '李十倩', '女', '2022', '艺术系', '视觉设计3班', '18212569212', '0', '123456');
INSERT INTO `student` VALUES ('60', '2306678842', '赵一倩', '女', '2022', '艺术系', '视觉设计1班', '18970611879', '0', '123456');
INSERT INTO `student` VALUES ('61', '2329709019', '赵二倩', '女', '2022', '艺术系', '视觉设计4班', '18742792152', '0', '123456');
INSERT INTO `student` VALUES ('62', '2388512005', '赵三倩', '女', '2022', '艺术系', '视觉设计4班', '18658158422', '0', '123456');
INSERT INTO `student` VALUES ('63', '2362468387', '赵四倩', '女', '2022', '艺术系', '视觉设计4班', '18635176215', '0', '123456');
INSERT INTO `student` VALUES ('64', '2336349378', '赵五倩', '女', '2023', '艺术系', '视觉设计5班', '18193802301', '0', '123456');
INSERT INTO `student` VALUES ('65', '2395217320', '赵六倩', '女', '2023', '外语系', '日语1班', '18582708280', '0', '123456');
INSERT INTO `student` VALUES ('66', '2360395108', '赵七倩', '女', '2023', '外语系', '日语2班', '18431535987', '0', '123456');
INSERT INTO `student` VALUES ('67', '2395574477', '赵八倩', '女', '2023', '外语系', '日语2班', '18821544541', '0', '123456');
INSERT INTO `student` VALUES ('68', '2365910472', '赵九倩', '女', '2023', '艺术系', '视觉设计5班', '18377837011', '0', '123456');
INSERT INTO `student` VALUES ('69', '2358513322', '赵十倩', '女', '2023', '艺术系', '视觉设计5班', '18879814038', '0', '123456');
INSERT INTO `student` VALUES ('70', '2360463806', '刘一倩', '女', '2023', '园艺园林学院', '园艺3班', '18499333777', '0', '123456');
INSERT INTO `student` VALUES ('71', '2330746074', '刘二倩', '女', '2023', '园艺园林学院', '园艺3班', '18493783951', '0', '123456');
INSERT INTO `student` VALUES ('72', '2321131211', '刘三倩', '女', '2023', '园艺园林学院', '园艺3班', '18332436288', '0', '123456');
INSERT INTO `student` VALUES ('73', '2392303648', '刘四倩', '女', '2023', '园艺园林学院', '园艺1班', '18816066511', '0', '123456');
INSERT INTO `student` VALUES ('74', '2309341834', '刘五倩', '女', '2023', '园艺园林学院', '园艺3班', '18654992432', '0', '123456');
INSERT INTO `student` VALUES ('75', '2317045902', '刘六倩', '女', '2023', '园艺园林学院', '园艺1班', '18145553754', '0', '123456');
INSERT INTO `student` VALUES ('76', '2392780402', '刘七倩', '女', '2023', '园艺园林学院', '园艺1班', '18105037251', '0', '123456');
INSERT INTO `student` VALUES ('77', '2398036743', '刘八倩', '女', '2023', '园艺园林学院', '园艺2班', '18917125006', '0', '123456');
INSERT INTO `student` VALUES ('78', '2394247877', '刘九倩', '女', '2023', '园艺园林学院', '园艺1班', '18147586215', '0', '123456');
INSERT INTO `student` VALUES ('79', '2300284191', '刘十倩', '女', '2023', '园艺园林学院', '园艺3班', '18368872778', '0', '123456');
INSERT INTO `student` VALUES ('80', '2311288587', '宋一倩', '女', '2023', '园艺园林学院', '园艺3班', '18805342253', '0', '123456');
INSERT INTO `student` VALUES ('81', '2354996838', '宋二倩', '女', '2023', '园艺园林学院', '园艺3班', '18107215696', '0', '123456');
INSERT INTO `student` VALUES ('82', '2337103990', '宋三倩', '女', '2023', '园艺园林学院', '园艺3班', '18165198421', '0', '123456');
INSERT INTO `student` VALUES ('83', '2300272966', '宋四倩', '女', '2023', '园艺园林学院', '园艺3班', '18521220832', '0', '123456');
INSERT INTO `student` VALUES ('84', '2356583453', '宋五倩', '女', '2023', '园艺园林学院', '园艺2班', '18493263359', '0', '123456');
INSERT INTO `student` VALUES ('85', '2363777200', '宋六倩', '女', '2023', '园艺园林学院', '园艺1班', '18349989786', '0', '123456');
INSERT INTO `student` VALUES ('86', '2353401307', '宋七倩', '女', '2023', '园艺园林学院', '园艺1班', '18102408922', '0', '123456');
INSERT INTO `student` VALUES ('87', '2361263193', '宋八倩', '女', '2023', '园艺园林学院', '园艺3班', '18146519715', '0', '123456');
INSERT INTO `student` VALUES ('88', '2363758479', '宋九倩', '女', '2023', '园艺园林学院', '园艺1班', '18272711609', '0', '123456');
INSERT INTO `student` VALUES ('89', '2334121806', '宋十倩', '女', '2023', '园艺园林学院', '园艺2班', '18176663842', '0', '123456');
INSERT INTO `student` VALUES ('90', '2353208345', '张一倩', '女', '2023', '园艺园林学院', '园艺2班', '18085666505', '0', '123456');
INSERT INTO `student` VALUES ('91', '2311694789', '张二倩', '女', '2023', '园艺园林学院', '园艺2班', '18684920641', '0', '123456');
INSERT INTO `student` VALUES ('92', '2391876727', '张三倩', '女', '2023', '园艺园林学院', '园艺3班', '18025798020', '0', '123456');
INSERT INTO `student` VALUES ('93', '2336217647', '张四倩', '女', '2023', '园艺园林学院', '园艺2班', '18770107242', '0', '123456');
INSERT INTO `student` VALUES ('94', '2371998553', '罗一诺', '男', '2023', '信息学院', '通讯工程1班', '18214878771', '0', '123456');
INSERT INTO `student` VALUES ('95', '2304160527', '罗二诺', '男', '2023', '信息学院', '通讯工程1班', '18284698898', '0', '123456');
INSERT INTO `student` VALUES ('96', '2307136041', '罗三诺', '男', '2023', '信息学院', '通讯工程2班', '18797017264', '0', '123456');
INSERT INTO `student` VALUES ('97', '2355048181', '罗四诺', '男', '2023', '信息学院', '通讯工程2班', '18367727315', '0', '123456');
INSERT INTO `student` VALUES ('98', '2312632837', '罗五诺', '男', '2023', '信息学院', '通讯工程2班', '18361084901', '0', '123456');
INSERT INTO `student` VALUES ('99', '2326548317', '罗六诺', '男', '2023', '信息学院', '通讯工程3班', '18311707667', '0', '123456');
INSERT INTO `student` VALUES ('100', '2302884195', '罗七诺', '男', '2023', '信息学院', '通讯工程3班', '18522618870', '0', '123456');
INSERT INTO `student` VALUES ('101', '2385625624', '罗八诺', '男', '2023', '信息学院', '通讯工程4班', '18141729262', '0', '123456');
INSERT INTO `student` VALUES ('102', '2313275817', '罗九诺', '男', '2023', '信息学院', '通讯工程2班', '18099312765', '0', '123456');
INSERT INTO `student` VALUES ('103', '2347068175', '罗十诺', '男', '2023', '信息学院', '通讯工程3班', '18178468441', '0', '123456');
INSERT INTO `student` VALUES ('104', '2374378213', '张一诺', '女', '2023', '机电工程学院', '自动化1班', '18426578837', '0', '123456');
INSERT INTO `student` VALUES ('105', '2391672568', '张二诺', '女', '2023', '机电工程学院', '自动化1班', '18114742438', '0', '123456');
INSERT INTO `student` VALUES ('106', '2398709060', '张三诺', '女', '2023', '机电工程学院', '自动化1班', '18510415359', '0', '123456');
INSERT INTO `student` VALUES ('107', '2379464100', '张四诺', '女', '2023', '机电工程学院', '自动化1班', '18403210067', '0', '123456');
INSERT INTO `student` VALUES ('108', '2303994187', '张五诺', '女', '2023', '机电工程学院', '自动化1班', '18014079803', '0', '123456');
INSERT INTO `student` VALUES ('109', '2343191588', '张六诺', '女', '2023', '机电工程学院', '自动化1班', '18840188852', '0', '123456');
INSERT INTO `student` VALUES ('110', '2383407888', '张七诺', '女', '2023', '机电工程学院', '自动化1班', '18312854204', '0', '123456');
INSERT INTO `student` VALUES ('111', '2343340374', '张八诺', '女', '2023', '机电工程学院', '自动化1班', '18416593778', '0', '123456');
INSERT INTO `student` VALUES ('112', '2387587838', '张九诺', '女', '2023', '机电工程学院', '自动化1班', '18690230875', '0', '123456');
INSERT INTO `student` VALUES ('113', '2396566443', '张十诺', '女', '2023', '机电工程学院', '自动化1班', '18920816140', '0', '123456');
INSERT INTO `student` VALUES ('114', '2132238825', '黄磊', '女', '2021', '园艺园林学院', '园艺4班', '13943897623', '0', '123456');
INSERT INTO `student` VALUES ('115', '2397623911', '周伟', '女', '2023', '计算机学院', '自动化3班', '13525498676', '1', '123456');
INSERT INTO `student` VALUES ('116', '2291442784', '周丽', '男', '2022', '园艺园林学院', '日语4班', '13115912157', '0', '123456');
INSERT INTO `student` VALUES ('117', '2492773758', '李秀英', '男', '2024', '外语系', '计算机科学与技术4班', '13515236093', '0', '123456');
INSERT INTO `student` VALUES ('118', '2270728454', '黄静', '女', '2022', '机电工程学院', '计算机科学与技术5班', '13691507654', '0', '123456');
INSERT INTO `student` VALUES ('119', '2124807825', '李丽', '女', '2021', '计算机学院', '自动化5班', '13532684605', '1', '123456');
INSERT INTO `student` VALUES ('120', '2356943562', '周芳', '男', '2023', '外语系', '软件工程4班', '13786228830', '1', '123456');
INSERT INTO `student` VALUES ('121', '2469568934', '周敏', '男', '2024', '机电工程学院', '自动化4班', '13853558056', '1', '123456');
INSERT INTO `student` VALUES ('122', '2319582254', '王敏', '男', '2023', '艺术系', '日语5班', '13650719477', '1', '123456');
INSERT INTO `student` VALUES ('123', '2311663236', '杨娜', '女', '2023', '软件与人工智能学院', '计算机科学与技术2班', '13708425110', '0', '123456');
INSERT INTO `student` VALUES ('124', '2307293065', '吴敏', '男', '2023', '软件与人工智能学院', '通讯工程1班', '13313505512', '1', '123456');
INSERT INTO `student` VALUES ('125', '2129944067', '刘芳', '男', '2021', '信息学院', '日语1班', '13281050009', '0', '123456');
INSERT INTO `student` VALUES ('126', '2393028586', '王芳', '男', '2023', '机电工程学院', '园艺3班', '13562381320', '0', '123456');
INSERT INTO `student` VALUES ('127', '2390675458', '张芳', '男', '2023', '艺术系', '视觉设计2班', '13867585575', '0', '123456');
INSERT INTO `student` VALUES ('128', '2461627499', '张军', '女', '2024', '计算机学院', '计算机科学与技术5班', '13779045690', '0', '123456');
INSERT INTO `student` VALUES ('129', '2278205337', '王芳', '男', '2022', '计算机学院', '通讯工程3班', '13266848095', '0', '123456');
INSERT INTO `student` VALUES ('130', '2330077244', '王强', '女', '2023', '艺术系', '视觉设计4班', '13225457791', '1', '123456');
INSERT INTO `student` VALUES ('131', '2333081902', '吴丽', '男', '2023', '计算机学院', '日语2班', '13102898768', '1', '123456');
INSERT INTO `student` VALUES ('132', '2447707802', '陈伟', '女', '2024', '信息学院', '园艺3班', '13347172521', '1', '123456');
INSERT INTO `student` VALUES ('133', '2222825200', '周磊', '男', '2022', '计算机学院', '通讯工程5班', '13868820580', '1', '123456');
INSERT INTO `student` VALUES ('134', '2450759018', '刘军', '男', '2024', '计算机学院', '视觉设计4班', '13586643326', '0', '123456');
INSERT INTO `student` VALUES ('135', '2111585202', '陈敏', '男', '2021', '计算机学院', '软件工程3班', '13752251575', '0', '123456');
INSERT INTO `student` VALUES ('136', '2378711941', '刘静', '男', '2023', '信息学院', '软件工程1班', '13524782435', '1', '123456');
INSERT INTO `student` VALUES ('137', '2208774841', '黄娜', '男', '2022', '艺术系', '通讯工程5班', '13498584374', '1', '123456');
INSERT INTO `student` VALUES ('138', '2168147440', '陈伟', '男', '2021', '计算机学院', '通讯工程3班', '13131900571', '0', '123456');
INSERT INTO `student` VALUES ('139', '2332321145', '王秀英', '男', '2023', '艺术系', '软件工程2班', '13436228875', '0', '123456');
INSERT INTO `student` VALUES ('140', '2293245054', '张伟', '男', '2022', '软件与人工智能学院', '日语3班', '13684349897', '0', '123456');
INSERT INTO `student` VALUES ('141', '2143497610', '刘娜', '女', '2021', '软件与人工智能学院', '日语1班', '13377778275', '1', '123456');
INSERT INTO `student` VALUES ('142', '2331413722', '赵静', '男', '2023', '计算机学院', '计算机科学与技术3班', '13408931062', '0', '123456');
INSERT INTO `student` VALUES ('143', '2374046167', '黄娜', '男', '2023', '艺术系', '园艺2班', '13604330850', '0', '123456');
INSERT INTO `student` VALUES ('144', '2217769781', '李娜', '女', '2022', '园艺园林学院', '计算机科学与技术1班', '13450315442', '0', '123456');
INSERT INTO `student` VALUES ('145', '2306069761', '赵芳', '男', '2023', '软件与人工智能学院', '软件工程2班', '13745833100', '0', '123456');
INSERT INTO `student` VALUES ('146', '2319110920', '黄强', '男', '2023', '艺术系', '园艺4班', '13320176494', '0', '123456');
INSERT INTO `student` VALUES ('147', '2444511267', '周芳', '女', '2024', '软件与人工智能学院', '软件工程4班', '13499366839', '0', '123456');
INSERT INTO `student` VALUES ('148', '2471956312', '周静', '女', '2024', '计算机学院', '计算机科学与技术2班', '13179543155', '1', '123456');
INSERT INTO `student` VALUES ('149', '2386808744', '陈娜', '男', '2023', '信息学院', '自动化2班', '13642351066', '0', '123456');
INSERT INTO `student` VALUES ('150', '2115638577', '黄丽', '女', '2021', '软件与人工智能学院', '视觉设计2班', '13157572497', '0', '123456');
INSERT INTO `student` VALUES ('151', '2221328638', '刘芳', '女', '2022', '艺术系', '计算机科学与技术3班', '13039854412', '0', '123456');
INSERT INTO `student` VALUES ('152', '2229294562', '李丽', '女', '2022', '艺术系', '园艺1班', '13671883053', '1', '123456');
INSERT INTO `student` VALUES ('153', '2475448831', '赵伟', '男', '2024', '计算机学院', '园艺2班', '13283127631', '1', '123456');
INSERT INTO `student` VALUES ('154', '2210671811', '刘磊', '女', '2022', '计算机学院', '通讯工程5班', '13022461738', '0', '123456');
INSERT INTO `student` VALUES ('155', '2483451215', '黄芳', '女', '2024', '软件与人工智能学院', '通讯工程5班', '13765491835', '1', '123456');
INSERT INTO `student` VALUES ('156', '2364830685', '刘丽', '女', '2023', '园艺园林学院', '视觉设计2班', '13120803258', '0', '123456');
INSERT INTO `student` VALUES ('157', '2343872084', '刘磊', '女', '2023', '机电工程学院', '视觉设计4班', '13790822646', '0', '123456');
INSERT INTO `student` VALUES ('158', '2107797995', '杨娜', '女', '2021', '信息学院', '日语3班', '13108067942', '0', '123456');
INSERT INTO `student` VALUES ('159', '2475561790', '赵强', '男', '2024', '计算机学院', '自动化5班', '13315238095', '1', '123456');
INSERT INTO `student` VALUES ('160', '2374624506', '黄敏', '男', '2023', '艺术系', '视觉设计4班', '13845861946', '0', '123456');
INSERT INTO `student` VALUES ('161', '2359292097', '刘强', '男', '2023', '园艺园林学院', '日语3班', '13349486200', '1', '123456');
INSERT INTO `student` VALUES ('162', '2207719086', '陈磊', '男', '2022', '计算机学院', '计算机科学与技术1班', '13111130383', '1', '123456');
INSERT INTO `student` VALUES ('163', '2269244512', '陈磊', '女', '2022', '信息学院', '视觉设计3班', '13884991330', '0', '123456');
INSERT INTO `student` VALUES ('164', '2159597346', '周芳', '男', '2021', '软件与人工智能学院', '计算机科学与技术5班', '13938123761', '0', '123456');
INSERT INTO `student` VALUES ('165', '2282988551', '陈磊', '女', '2022', '园艺园林学院', '软件工程2班', '13637817110', '0', '123456');
INSERT INTO `student` VALUES ('166', '2369231969', '刘军', '女', '2023', '机电工程学院', '通讯工程2班', '13719273329', '1', '123456');
INSERT INTO `student` VALUES ('167', '2414937731', '刘伟', '女', '2024', '园艺园林学院', '园艺1班', '13116015200', '0', '123456');
INSERT INTO `student` VALUES ('168', '2140584138', '吴娜', '男', '2021', '园艺园林学院', '通讯工程2班', '13475706818', '0', '123456');
INSERT INTO `student` VALUES ('169', '2237257526', '陈丽', '男', '2022', '计算机学院', '园艺2班', '13398870938', '0', '123456');
INSERT INTO `student` VALUES ('170', '2194722858', '赵伟', '女', '2021', '外语系', '计算机科学与技术1班', '13439206733', '1', '123456');
INSERT INTO `student` VALUES ('171', '2352734903', '陈敏', '男', '2023', '艺术系', '软件工程3班', '13772758646', '1', '123456');
INSERT INTO `student` VALUES ('172', '2447532765', '杨伟', '女', '2024', '计算机学院', '软件工程1班', '13689118729', '1', '123456');
INSERT INTO `student` VALUES ('173', '2411694450', '王秀英', '男', '2024', '机电工程学院', '视觉设计1班', '13339894678', '0', '123456');
INSERT INTO `student` VALUES ('174', '2481002942', '王芳', '男', '2024', '外语系', '自动化5班', '13332074918', '1', '123456');
INSERT INTO `student` VALUES ('175', '2459012285', '陈秀英', '女', '2024', '外语系', '园艺2班', '13015705517', '0', '123456');
INSERT INTO `student` VALUES ('176', '2114794310', '吴静', '女', '2021', '艺术系', '通讯工程2班', '13466148325', '0', '123456');
INSERT INTO `student` VALUES ('177', '2156820500', '张磊', '女', '2021', '信息学院', '园艺2班', '13611732161', '1', '123456');
INSERT INTO `student` VALUES ('178', '2462296619', '王磊', '女', '2024', '艺术系', '日语4班', '13655722135', '1', '123456');
INSERT INTO `student` VALUES ('179', '2307567120', '吴芳', '男', '2023', '计算机学院', '通讯工程2班', '13108809841', '1', '123456');
INSERT INTO `student` VALUES ('180', '2341424490', '杨军', '男', '2023', '信息学院', '计算机科学与技术2班', '13083133524', '1', '123456');
INSERT INTO `student` VALUES ('181', '2317920561', '张伟', '女', '2023', '园艺园林学院', '计算机科学与技术4班', '13591643368', '0', '123456');
INSERT INTO `student` VALUES ('182', '2168099676', '吴军', '女', '2021', '信息学院', '园艺3班', '13487840251', '0', '123456');
INSERT INTO `student` VALUES ('183', '2132404229', '王秀英', '男', '2021', '机电工程学院', '日语3班', '13795591417', '0', '123456');
INSERT INTO `student` VALUES ('184', '2208020531', '吴伟', '女', '2022', '信息学院', '自动化2班', '13046660864', '1', '123456');
INSERT INTO `student` VALUES ('185', '2264031108', '吴军', '女', '2022', '机电工程学院', '计算机科学与技术5班', '13373692394', '1', '123456');
INSERT INTO `student` VALUES ('186', '2185224483', '刘芳', '女', '2021', '机电工程学院', '通讯工程1班', '13654423109', '0', '123456');
INSERT INTO `student` VALUES ('187', '2227647112', '杨强', '男', '2022', '园艺园林学院', '通讯工程3班', '13524880338', '0', '123456');
INSERT INTO `student` VALUES ('188', '2104200488', '杨静', '女', '2021', '机电工程学院', '软件工程1班', '13850471481', '1', '123456');
INSERT INTO `student` VALUES ('189', '2352620711', '黄娜', '男', '2023', '外语系', '计算机科学与技术5班', '13658858550', '1', '123456');
INSERT INTO `student` VALUES ('190', '2467123469', '黄芳', '女', '2024', '信息学院', '日语1班', '13209325247', '1', '123456');
INSERT INTO `student` VALUES ('191', '2223106717', '王伟', '男', '2022', '艺术系', '视觉设计4班', '13846275851', '0', '123456');
INSERT INTO `student` VALUES ('192', '2232255136', '杨强', '女', '2022', '软件与人工智能学院', '软件工程5班', '13011218011', '0', '123456');
INSERT INTO `student` VALUES ('193', '2163554735', '杨敏', '女', '2021', '机电工程学院', '计算机科学与技术1班', '13731278915', '1', '123456');
INSERT INTO `student` VALUES ('194', '2423875574', '周静', '女', '2024', '计算机学院', '通讯工程4班', '13895417210', '1', '123456');
INSERT INTO `student` VALUES ('195', '2341410989', '李伟', '女', '2023', '软件与人工智能学院', '日语2班', '13573364768', '1', '123456');
INSERT INTO `student` VALUES ('196', '2252021142', '刘娜', '男', '2022', '艺术系', '软件工程3班', '13722445475', '0', '123456');
INSERT INTO `student` VALUES ('197', '2370623733', '杨秀英', '女', '2023', '艺术系', '计算机科学与技术5班', '13585233685', '1', '123456');
INSERT INTO `student` VALUES ('198', '2481123138', '李伟', '女', '2024', '艺术系', '通讯工程3班', '13906919166', '0', '123456');
INSERT INTO `student` VALUES ('199', '2193889561', '刘静', '女', '2021', '外语系', '园艺5班', '13120395368', '0', '123456');
INSERT INTO `student` VALUES ('200', '2308604823', '李军', '男', '2023', '机电工程学院', '日语2班', '13364264424', '1', '123456');
INSERT INTO `student` VALUES ('201', '2252381983', '王丽', '女', '2022', '机电工程学院', '园艺4班', '13680748934', '0', '123456');
INSERT INTO `student` VALUES ('202', '2456995624', '吴娜', '男', '2024', '信息学院', '软件工程5班', '13722814092', '1', '123456');
INSERT INTO `student` VALUES ('203', '2156001792', '张强', '男', '2021', '外语系', '视觉设计5班', '13725073889', '1', '123456');
INSERT INTO `student` VALUES ('204', '2159059297', '李丽', '男', '2021', '计算机学院', '日语3班', '13932772661', '1', '123456');
INSERT INTO `student` VALUES ('205', '2312341390', '刘静', '男', '2023', '软件与人工智能学院', '通讯工程4班', '13372751785', '0', '123456');
INSERT INTO `student` VALUES ('206', '2301228372', '黄芳', '男', '2023', '外语系', '软件工程5班', '13078655128', '0', '123456');
INSERT INTO `student` VALUES ('207', '2233311715', '杨秀英', '女', '2022', '园艺园林学院', '园艺1班', '13736107611', '0', '123456');
INSERT INTO `student` VALUES ('208', '2396643979', '赵秀英', '女', '2023', '计算机学院', '软件工程2班', '13055275482', '1', '123456');
INSERT INTO `student` VALUES ('209', '2168840384', '王强', '女', '2021', '艺术系', '软件工程3班', '13129405785', '0', '123456');
INSERT INTO `student` VALUES ('210', '2376707972', '王磊', '女', '2023', '园艺园林学院', '软件工程5班', '13811515636', '1', '123456');
INSERT INTO `student` VALUES ('211', '2252145587', '刘秀英', '女', '2022', '信息学院', '日语1班', '13000044037', '0', '123456');
INSERT INTO `student` VALUES ('212', '2430476555', '周伟', '女', '2024', '软件与人工智能学院', '自动化2班', '13857808300', '1', '123456');
INSERT INTO `student` VALUES ('213', '2113053514', '王伟', '男', '2021', '外语系', '日语1班', '13332778850', '1', '123456');
INSERT INTO `student` VALUES ('214', '2281861251', '赵伟', '女', '2022', '外语系', '视觉设计2班', '13604333455', '0', '123456');
INSERT INTO `student` VALUES ('215', '2372212918', '张强', '女', '2023', '信息学院', '通讯工程2班', '13240437931', '0', '123456');
INSERT INTO `student` VALUES ('216', '2313351275', '吴伟', '女', '2023', '信息学院', '计算机科学与技术5班', '13983606327', '1', '123456');
INSERT INTO `student` VALUES ('217', '2395195086', '吴军', '男', '2023', '外语系', '计算机科学与技术5班', '13375066996', '1', '123456');
INSERT INTO `student` VALUES ('218', '2173618508', '王芳', '男', '2021', '计算机学院', '日语1班', '13423172664', '1', '123456');
INSERT INTO `student` VALUES ('219', '2448886556', '赵静', '女', '2024', '计算机学院', '软件工程3班', '13374552771', '1', '123456');
INSERT INTO `student` VALUES ('220', '2410740279', '黄敏', '男', '2024', '软件与人工智能学院', '日语5班', '13244170559', '0', '123456');
INSERT INTO `student` VALUES ('221', '2497662043', '刘芳', '女', '2024', '艺术系', '计算机科学与技术5班', '13966841862', '1', '123456');
INSERT INTO `student` VALUES ('222', '2295167718', '李敏', '男', '2022', '计算机学院', '通讯工程2班', '13847380373', '1', '123456');
INSERT INTO `student` VALUES ('223', '2208394855', '陈敏', '女', '2022', '机电工程学院', '计算机科学与技术2班', '13946407576', '0', '123456');
INSERT INTO `student` VALUES ('224', '2136709016', '周军', '女', '2021', '艺术系', '通讯工程2班', '13710456278', '1', '123456');
INSERT INTO `student` VALUES ('225', '2370420035', '张芳', '女', '2023', '外语系', '自动化4班', '13514975578', '1', '123456');
INSERT INTO `student` VALUES ('226', '2389555555', '刘敏', '女', '2023', '软件与人工智能学院', '计算机科学与技术5班', '13628726710', '0', '123456');
INSERT INTO `student` VALUES ('227', '2414100681', '陈丽', '女', '2024', '园艺园林学院', '通讯工程5班', '13653075051', '1', '123456');
INSERT INTO `student` VALUES ('228', '2206745550', '陈军', '女', '2022', '软件与人工智能学院', '自动化1班', '13626126914', '0', '123456');
INSERT INTO `student` VALUES ('229', '2324665107', '黄静', '男', '2023', '软件与人工智能学院', '自动化3班', '13600642040', '1', '123456');
INSERT INTO `student` VALUES ('230', '2104537502', '杨敏', '女', '2021', '机电工程学院', '园艺4班', '13184118942', '1', '123456');
INSERT INTO `student` VALUES ('231', '2261599727', '刘强', '女', '2022', '外语系', '园艺3班', '13065569618', '0', '123456');
INSERT INTO `student` VALUES ('232', '2160217507', '刘秀英', '女', '2021', '机电工程学院', '日语2班', '13535885469', '1', '123456');
INSERT INTO `student` VALUES ('233', '2430162378', '吴静', '男', '2024', '外语系', '日语5班', '13367166411', '0', '123456');
INSERT INTO `student` VALUES ('234', '2320405974', '杨磊', '女', '2023', '园艺园林学院', '软件工程4班', '13220594209', '1', '123456');
INSERT INTO `student` VALUES ('235', '2222488839', '王敏', '男', '2022', '计算机学院', '园艺2班', '13740203606', '0', '123456');
INSERT INTO `student` VALUES ('236', '2341726346', '刘丽', '女', '2023', '外语系', '通讯工程3班', '13405438781', '1', '123456');
INSERT INTO `student` VALUES ('237', '2489608366', '黄丽', '女', '2024', '园艺园林学院', '通讯工程5班', '13723296496', '1', '123456');
INSERT INTO `student` VALUES ('238', '2169715654', '刘伟', '男', '2021', '园艺园林学院', '软件工程4班', '13478381679', '0', '123456');
INSERT INTO `student` VALUES ('239', '2211719850', '周静', '女', '2022', '软件与人工智能学院', '自动化3班', '13356531256', '1', '123456');
INSERT INTO `student` VALUES ('240', '2398387214', '李军', '女', '2023', '机电工程学院', '园艺4班', '13447688868', '0', '123456');
INSERT INTO `student` VALUES ('241', '2328558182', '李军', '男', '2023', '信息学院', '视觉设计4班', '13682439268', '0', '123456');
INSERT INTO `student` VALUES ('242', '2488665059', '李敏', '女', '2024', '外语系', '通讯工程2班', '13149780604', '0', '123456');
INSERT INTO `student` VALUES ('243', '2139377768', '陈秀英', '女', '2021', '园艺园林学院', '日语5班', '13555920523', '1', '123456');
INSERT INTO `student` VALUES ('244', '2265740437', '陈静', '男', '2022', '园艺园林学院', '园艺3班', '13662948857', '0', '123456');
INSERT INTO `student` VALUES ('245', '2286572493', '赵娜', '男', '2022', '外语系', '视觉设计4班', '13220483081', '0', '123456');
INSERT INTO `student` VALUES ('246', '2240179032', '李秀英', '女', '2022', '艺术系', '通讯工程1班', '13772019308', '1', '123456');
INSERT INTO `student` VALUES ('247', '2258418913', '黄芳', '女', '2022', '信息学院', '自动化2班', '13894516750', '0', '123456');
INSERT INTO `student` VALUES ('248', '2449024050', '吴伟', '女', '2024', '外语系', '园艺5班', '13614139091', '1', '123456');
INSERT INTO `student` VALUES ('249', '2488091611', '杨娜', '男', '2024', '园艺园林学院', '通讯工程4班', '13515597102', '0', '123456');
INSERT INTO `student` VALUES ('250', '2105181153', '赵军', '女', '2021', '机电工程学院', '软件工程4班', '13576930197', '0', '123456');
INSERT INTO `student` VALUES ('251', '2384987995', '吴丽', '男', '2023', '软件与人工智能学院', '通讯工程3班', '13973886448', '0', '123456');
INSERT INTO `student` VALUES ('252', '2300744807', '赵强', '女', '2023', '信息学院', '日语2班', '13016152663', '1', '123456');
INSERT INTO `student` VALUES ('253', '2440724109', '陈娜', '女', '2024', '园艺园林学院', '软件工程5班', '13492530289', '0', '123456');
INSERT INTO `student` VALUES ('254', '2119974978', '刘秀英', '女', '2021', '机电工程学院', '园艺3班', '13416090622', '0', '123456');
INSERT INTO `student` VALUES ('255', '2227672553', '李磊', '女', '2022', '信息学院', '园艺4班', '13849458486', '1', '123456');
INSERT INTO `student` VALUES ('256', '2256078903', '李磊', '男', '2022', '艺术系', '软件工程1班', '13626632382', '0', '123456');
INSERT INTO `student` VALUES ('257', '2209560728', '赵磊', '女', '2022', '外语系', '日语4班', '13841477391', '1', '123456');
INSERT INTO `student` VALUES ('258', '2372404169', '赵敏', '女', '2023', '软件与人工智能学院', '通讯工程2班', '13417909343', '1', '123456');
INSERT INTO `student` VALUES ('259', '2193584245', '吴伟', '男', '2021', '信息学院', '自动化4班', '13865030695', '1', '123456');
INSERT INTO `student` VALUES ('260', '2274915148', '刘军', '男', '2022', '计算机学院', '通讯工程2班', '13611574417', '1', '123456');
INSERT INTO `student` VALUES ('261', '2196539565', '赵娜', '女', '2021', '艺术系', '计算机科学与技术4班', '13750077482', '1', '123456');
INSERT INTO `student` VALUES ('262', '2225691792', '吴丽', '男', '2022', '信息学院', '计算机科学与技术2班', '13624201573', '0', '123456');
INSERT INTO `student` VALUES ('263', '2224950533', '吴芳', '女', '2022', '软件与人工智能学院', '自动化3班', '13916922254', '1', '123456');
INSERT INTO `student` VALUES ('264', '2480355132', '王伟', '女', '2024', '外语系', '软件工程1班', '13026651627', '0', '123456');
INSERT INTO `student` VALUES ('265', '2210099809', '刘伟', '男', '2022', '信息学院', '软件工程1班', '13351792635', '0', '123456');
INSERT INTO `student` VALUES ('266', '2149211787', '陈磊', '男', '2021', '园艺园林学院', '计算机科学与技术4班', '13907135981', '1', '123456');
INSERT INTO `student` VALUES ('267', '2388461045', '刘军', '男', '2023', '艺术系', '通讯工程4班', '13563176651', '1', '123456');
INSERT INTO `student` VALUES ('268', '2424895189', '黄丽', '女', '2024', '艺术系', '计算机科学与技术2班', '13158509339', '1', '123456');
INSERT INTO `student` VALUES ('269', '2404663080', '陈军', '男', '2024', '软件与人工智能学院', '通讯工程2班', '13602114545', '0', '123456');
INSERT INTO `student` VALUES ('270', '2108454327', '王强', '男', '2021', '信息学院', '自动化4班', '13196334115', '1', '123456');
INSERT INTO `student` VALUES ('271', '2496036294', '李娜', '男', '2024', '园艺园林学院', '通讯工程5班', '13964524172', '1', '123456');
INSERT INTO `student` VALUES ('272', '2329799273', '杨芳', '女', '2023', '机电工程学院', '视觉设计1班', '13584132029', '0', '123456');
INSERT INTO `student` VALUES ('273', '2157630573', '杨强', '女', '2021', '机电工程学院', '软件工程3班', '13689199437', '0', '123456');
INSERT INTO `student` VALUES ('274', '2199369987', '李军', '男', '2021', '园艺园林学院', '日语1班', '13628198238', '0', '123456');
INSERT INTO `student` VALUES ('275', '2260932209', '黄丽', '男', '2022', '外语系', '园艺1班', '13147949245', '0', '123456');
INSERT INTO `student` VALUES ('276', '2323004968', '陈伟', '男', '2023', '软件与人工智能学院', '日语2班', '13827928719', '0', '123456');
INSERT INTO `student` VALUES ('277', '2127656910', '黄军', '男', '2021', '软件与人工智能学院', '自动化3班', '13429240346', '0', '123456');
INSERT INTO `student` VALUES ('278', '2121296078', '周强', '男', '2021', '外语系', '计算机科学与技术2班', '13644008927', '0', '123456');
INSERT INTO `student` VALUES ('279', '2273821766', '陈军', '女', '2022', '机电工程学院', '视觉设计1班', '13465329885', '0', '123456');
INSERT INTO `student` VALUES ('280', '2243494697', '张磊', '男', '2022', '园艺园林学院', '计算机科学与技术2班', '13411689841', '1', '123456');
INSERT INTO `student` VALUES ('281', '2107802267', '赵伟', '男', '2021', '信息学院', '视觉设计2班', '13840797403', '1', '123456');
INSERT INTO `student` VALUES ('282', '2218773173', '王静', '女', '2022', '艺术系', '通讯工程5班', '13450461491', '1', '123456');
INSERT INTO `student` VALUES ('283', '2230372071', '张磊', '男', '2022', '园艺园林学院', '软件工程5班', '13708750086', '1', '123456');
INSERT INTO `student` VALUES ('284', '2298141283', '赵军', '男', '2022', '外语系', '软件工程3班', '13783214252', '0', '123456');
INSERT INTO `student` VALUES ('285', '2321267992', '李强', '女', '2023', '艺术系', '日语1班', '13910407376', '1', '123456');
INSERT INTO `student` VALUES ('286', '2407772636', '王丽', '女', '2024', '外语系', '视觉设计1班', '13774187633', '1', '123456');
INSERT INTO `student` VALUES ('287', '2487142024', '张丽', '男', '2024', '艺术系', '视觉设计4班', '13991006763', '0', '123456');
INSERT INTO `student` VALUES ('288', '2119368637', '周强', '男', '2021', '园艺园林学院', '通讯工程2班', '13754888570', '1', '123456');
INSERT INTO `student` VALUES ('289', '2439113927', '刘伟', '男', '2024', '艺术系', '自动化3班', '13836927398', '0', '123456');
INSERT INTO `student` VALUES ('290', '2390965994', '赵静', '男', '2023', '机电工程学院', '日语4班', '13680130098', '0', '123456');
INSERT INTO `student` VALUES ('291', '2381488357', '周静', '女', '2023', '信息学院', '日语1班', '13689455771', '0', '123456');
INSERT INTO `student` VALUES ('292', '2430384695', '吴磊', '女', '2024', '计算机学院', '视觉设计2班', '13636698961', '1', '123456');
INSERT INTO `student` VALUES ('293', '2377525357', '李丽', '男', '2023', '园艺园林学院', '园艺5班', '13906266686', '0', '123456');
INSERT INTO `student` VALUES ('294', '2341951801', '黄军', '男', '2023', '外语系', '园艺3班', '13865054117', '1', '123456');
INSERT INTO `student` VALUES ('295', '2455929284', '杨娜', '男', '2024', '机电工程学院', '软件工程1班', '13811600800', '1', '123456');
INSERT INTO `student` VALUES ('296', '2153675850', '张秀英', '男', '2021', '软件与人工智能学院', '软件工程4班', '13477188031', '1', '123456');
INSERT INTO `student` VALUES ('297', '2263608561', '吴强', '男', '2022', '机电工程学院', '通讯工程4班', '13845263576', '1', '123456');
INSERT INTO `student` VALUES ('298', '2453578730', '吴伟', '男', '2024', '计算机学院', '日语1班', '13803547381', '0', '123456');
INSERT INTO `student` VALUES ('299', '2313990576', '张军', '女', '2023', '计算机学院', '园艺1班', '13076025303', '1', '123456');
INSERT INTO `student` VALUES ('300', '2233608173', '刘秀英', '女', '2022', '外语系', '园艺3班', '13115061664', '0', '123456');
INSERT INTO `student` VALUES ('301', '2165232727', '李磊', '男', '2021', '信息学院', '视觉设计5班', '13187874230', '1', '123456');
INSERT INTO `student` VALUES ('302', '2420991423', '李伟', '男', '2024', '艺术系', '通讯工程1班', '13443833865', '1', '123456');
INSERT INTO `student` VALUES ('303', '2382494893', '赵强', '女', '2023', '园艺园林学院', '自动化1班', '13459460798', '1', '123456');
INSERT INTO `student` VALUES ('304', '2436143100', '张磊', '女', '2024', '外语系', '日语3班', '13295619743', '1', '123456');
INSERT INTO `student` VALUES ('305', '2170937454', '李敏', '女', '2021', '机电工程学院', '园艺4班', '13323119896', '1', '123456');
INSERT INTO `student` VALUES ('306', '2408484007', '杨磊', '男', '2024', '园艺园林学院', '软件工程4班', '13058442534', '1', '123456');
INSERT INTO `student` VALUES ('307', '2420690210', '王秀英', '女', '2024', '园艺园林学院', '自动化4班', '13694323922', '0', '123456');
INSERT INTO `student` VALUES ('308', '2131543759', '赵伟', '男', '2021', '园艺园林学院', '自动化2班', '13817167936', '0', '123456');
INSERT INTO `student` VALUES ('309', '2465075498', '张芳', '男', '2024', '软件与人工智能学院', '视觉设计3班', '13332078294', '0', '123456');
INSERT INTO `student` VALUES ('310', '2494246376', '周磊', '男', '2024', '软件与人工智能学院', '日语4班', '13007592655', '1', '123456');
INSERT INTO `student` VALUES ('311', '2157436483', '吴伟', '男', '2021', '信息学院', '视觉设计3班', '13928039267', '0', '123456');
INSERT INTO `student` VALUES ('312', '2108556806', '黄军', '女', '2021', '信息学院', '日语3班', '13681224244', '0', '123456');
INSERT INTO `student` VALUES ('313', '2129416091', '刘丽', '女', '2021', '软件与人工智能学院', '自动化5班', '13049099340', '0', '123456');
INSERT INTO `student` VALUES ('314', '2470223239', '赵磊', '男', '2024', '机电工程学院', '计算机科学与技术1班', '13968968959', '0', '123456');
INSERT INTO `student` VALUES ('315', '2366123058', '陈娜', '男', '2023', '软件与人工智能学院', '园艺4班', '13843007450', '0', '123456');
INSERT INTO `student` VALUES ('316', '2292556612', '周娜', '男', '2022', '园艺园林学院', '计算机科学与技术2班', '13351338317', '1', '123456');
INSERT INTO `student` VALUES ('317', '2115362856', '刘强', '男', '2021', '外语系', '园艺2班', '13217567631', '1', '123456');
INSERT INTO `student` VALUES ('318', '2199571033', '王娜', '女', '2021', '艺术系', '软件工程3班', '13279956643', '0', '123456');
INSERT INTO `student` VALUES ('319', '2230135806', '杨磊', '男', '2022', '园艺园林学院', '软件工程2班', '13747528145', '0', '123456');
INSERT INTO `student` VALUES ('320', '2322076362', '吴秀英', '男', '2023', '机电工程学院', '日语4班', '13074007007', '0', '123456');
INSERT INTO `student` VALUES ('321', '2405673977', '赵丽', '女', '2024', '外语系', '园艺5班', '13291792505', '0', '123456');
INSERT INTO `student` VALUES ('322', '2159087320', '杨伟', '女', '2021', '艺术系', '自动化4班', '13790616195', '1', '123456');
INSERT INTO `student` VALUES ('323', '2454545129', '张强', '女', '2024', '信息学院', '园艺4班', '13867669259', '0', '123456');
INSERT INTO `student` VALUES ('324', '2424105460', '王敏', '男', '2024', '园艺园林学院', '视觉设计2班', '13812211772', '1', '123456');
INSERT INTO `student` VALUES ('325', '2193567579', '刘强', '男', '2021', '软件与人工智能学院', '通讯工程3班', '13616722994', '1', '123456');
INSERT INTO `student` VALUES ('326', '2105905463', '刘敏', '男', '2021', '艺术系', '通讯工程3班', '13922845515', '0', '123456');
INSERT INTO `student` VALUES ('327', '2250577901', '周丽', '男', '2022', '软件与人工智能学院', '通讯工程1班', '13864117815', '1', '123456');
INSERT INTO `student` VALUES ('328', '2337176819', '陈秀英', '男', '2023', '艺术系', '自动化3班', '13103017343', '0', '123456');
INSERT INTO `student` VALUES ('329', '2218820272', '杨丽', '女', '2022', '园艺园林学院', '计算机科学与技术4班', '13353596179', '1', '123456');
INSERT INTO `student` VALUES ('330', '2308333940', '王丽', '男', '2023', '机电工程学院', '通讯工程2班', '13024248285', '0', '123456');
INSERT INTO `student` VALUES ('331', '2115056055', '吴娜', '女', '2021', '机电工程学院', '自动化5班', '13067543070', '0', '123456');
INSERT INTO `student` VALUES ('332', '2106327509', '黄军', '男', '2021', '机电工程学院', '软件工程3班', '13871528157', '1', '123456');
INSERT INTO `student` VALUES ('333', '2206200765', '张伟', '女', '2022', '软件与人工智能学院', '视觉设计1班', '13336844131', '0', '123456');
INSERT INTO `student` VALUES ('334', '2162882814', '黄静', '女', '2021', '软件与人工智能学院', '计算机科学与技术3班', '13490297682', '0', '123456');
INSERT INTO `student` VALUES ('335', '2412478963', '吴敏', '女', '2024', '信息学院', '通讯工程4班', '13389663378', '1', '123456');
INSERT INTO `student` VALUES ('336', '2484140730', '赵敏', '女', '2024', '机电工程学院', '视觉设计4班', '13755904485', '1', '123456');
INSERT INTO `student` VALUES ('337', '2127869415', '赵娜', '女', '2021', '计算机学院', '通讯工程2班', '13867191698', '1', '123456');
INSERT INTO `student` VALUES ('338', '2123425012', '王强', '男', '2021', '软件与人工智能学院', '视觉设计3班', '13003915582', '1', '123456');
INSERT INTO `student` VALUES ('339', '2321949328', '刘娜', '男', '2023', '计算机学院', '自动化4班', '13547719856', '0', '123456');
INSERT INTO `student` VALUES ('340', '2158510354', '杨伟', '女', '2021', '机电工程学院', '通讯工程5班', '13535087375', '1', '123456');
INSERT INTO `student` VALUES ('341', '2388641798', '吴伟', '男', '2023', '计算机学院', '视觉设计4班', '13317649843', '1', '123456');
INSERT INTO `student` VALUES ('342', '2420738592', '杨秀英', '男', '2024', '园艺园林学院', '日语4班', '13706564706', '0', '123456');
INSERT INTO `student` VALUES ('343', '2292928720', '赵静', '女', '2022', '计算机学院', '软件工程2班', '13036137884', '0', '123456');
INSERT INTO `student` VALUES ('344', '2377812606', '刘娜', '男', '2023', '机电工程学院', '自动化1班', '13627865675', '0', '123456');
INSERT INTO `student` VALUES ('345', '2334458141', '张敏', '男', '2023', '信息学院', '计算机科学与技术1班', '13270829965', '0', '123456');
INSERT INTO `student` VALUES ('346', '2339556918', '张磊', '男', '2023', '外语系', '园艺3班', '13544565478', '0', '123456');
INSERT INTO `student` VALUES ('347', '2100517811', '陈静', '男', '2021', '艺术系', '计算机科学与技术1班', '13547266475', '1', '123456');
INSERT INTO `student` VALUES ('348', '2370469716', '吴秀英', '女', '2023', '园艺园林学院', '通讯工程5班', '13717158655', '1', '123456');
INSERT INTO `student` VALUES ('349', '2199247274', '刘强', '女', '2021', '艺术系', '计算机科学与技术4班', '13020102091', '0', '123456');
INSERT INTO `student` VALUES ('350', '2330557533', '刘秀英', '女', '2023', '计算机学院', '视觉设计5班', '13275759665', '1', '123456');
INSERT INTO `student` VALUES ('351', '2451296766', '刘伟', '男', '2024', '园艺园林学院', '视觉设计5班', '13256758390', '0', '123456');
INSERT INTO `student` VALUES ('352', '2261048354', '杨敏', '男', '2022', '计算机学院', '视觉设计4班', '13845026924', '1', '123456');
INSERT INTO `student` VALUES ('353', '2395122729', '黄敏', '女', '2023', '外语系', '园艺1班', '13676677377', '0', '123456');
INSERT INTO `student` VALUES ('354', '2251711377', '李军', '女', '2022', '机电工程学院', '日语4班', '13606151824', '0', '123456');
INSERT INTO `student` VALUES ('355', '2291705267', '吴丽', '男', '2022', '外语系', '日语4班', '13953975834', '1', '123456');
INSERT INTO `student` VALUES ('356', '2112917194', '杨伟', '男', '2021', '信息学院', '园艺5班', '13836194114', '0', '123456');
INSERT INTO `student` VALUES ('357', '2391080406', '张静', '女', '2023', '信息学院', '计算机科学与技术4班', '13610987219', '0', '123456');
INSERT INTO `student` VALUES ('358', '2305062748', '周伟', '男', '2023', '软件与人工智能学院', '园艺4班', '13744391842', '1', '123456');
INSERT INTO `student` VALUES ('359', '2299652487', '黄秀英', '女', '2022', '艺术系', '自动化1班', '13123724058', '1', '123456');
INSERT INTO `student` VALUES ('360', '2420010631', '赵敏', '女', '2024', '软件与人工智能学院', '自动化2班', '13409445747', '0', '123456');
INSERT INTO `student` VALUES ('361', '2280125627', '黄伟', '女', '2022', '艺术系', '园艺2班', '13516229754', '0', '123456');
INSERT INTO `student` VALUES ('362', '2246220659', '赵丽', '男', '2022', '机电工程学院', '日语5班', '13895776993', '1', '123456');
INSERT INTO `student` VALUES ('363', '2180286777', '赵伟', '女', '2021', '外语系', '园艺3班', '13653732787', '0', '123456');
INSERT INTO `student` VALUES ('364', '2408144498', '李丽', '女', '2024', '计算机学院', '通讯工程2班', '13029033136', '0', '123456');
INSERT INTO `student` VALUES ('365', '2285290540', '王娜', '男', '2022', '园艺园林学院', '通讯工程3班', '13861036886', '1', '123456');
INSERT INTO `student` VALUES ('366', '2162970773', '王丽', '女', '2021', '计算机学院', '日语1班', '13589787706', '0', '123456');
INSERT INTO `student` VALUES ('367', '2480908594', '张强', '男', '2024', '软件与人工智能学院', '软件工程1班', '13227669619', '1', '123456');
INSERT INTO `student` VALUES ('368', '2200373571', '陈伟', '女', '2022', '园艺园林学院', '自动化5班', '13966891023', '1', '123456');
INSERT INTO `student` VALUES ('369', '2495870552', '王军', '男', '2024', '艺术系', '园艺4班', '13085378126', '1', '123456');
INSERT INTO `student` VALUES ('370', '2382450804', '杨强', '男', '2023', '园艺园林学院', '视觉设计4班', '13343023604', '1', '123456');
INSERT INTO `student` VALUES ('371', '2342158358', '李丽', '男', '2023', '软件与人工智能学院', '通讯工程3班', '13180614304', '0', '123456');
INSERT INTO `student` VALUES ('372', '2479564460', '王伟', '女', '2024', '外语系', '软件工程1班', '13387811272', '0', '123456');
INSERT INTO `student` VALUES ('373', '2239996697', '张军', '男', '2022', '外语系', '自动化3班', '13576346244', '1', '123456');
INSERT INTO `student` VALUES ('374', '2345983249', '杨强', '男', '2023', '信息学院', '园艺5班', '13295981312', '1', '123456');
INSERT INTO `student` VALUES ('375', '2120894763', '张敏', '男', '2021', '信息学院', '园艺5班', '13412123403', '0', '123456');
INSERT INTO `student` VALUES ('376', '2228717229', '赵伟', '女', '2022', '计算机学院', '软件工程4班', '13805766351', '1', '123456');
INSERT INTO `student` VALUES ('377', '2485904190', '王敏', '女', '2024', '软件与人工智能学院', '自动化3班', '13655829874', '0', '123456');
INSERT INTO `student` VALUES ('378', '2133846718', '王伟', '男', '2021', '信息学院', '日语5班', '13622380774', '0', '123456');
INSERT INTO `student` VALUES ('379', '2219072665', '陈丽', '女', '2022', '艺术系', '自动化4班', '13220648173', '1', '123456');
INSERT INTO `student` VALUES ('380', '2169993528', '王敏', '女', '2021', '机电工程学院', '视觉设计4班', '13416569555', '1', '123456');
INSERT INTO `student` VALUES ('381', '2336830490', '吴秀英', '男', '2023', '外语系', '园艺3班', '13572665375', '1', '123456');
INSERT INTO `student` VALUES ('382', '2128467549', '陈丽', '男', '2021', '机电工程学院', '软件工程4班', '13759348744', '0', '123456');
INSERT INTO `student` VALUES ('383', '2395772842', '赵强', '男', '2023', '园艺园林学院', '园艺4班', '13076578345', '1', '123456');
INSERT INTO `student` VALUES ('384', '2243360116', '王伟', '女', '2022', '信息学院', '日语3班', '13010566025', '0', '123456');
INSERT INTO `student` VALUES ('385', '2237948674', '赵芳', '男', '2022', '信息学院', '通讯工程2班', '13028563729', '0', '123456');
INSERT INTO `student` VALUES ('386', '2221619857', '刘芳', '男', '2022', '信息学院', '园艺1班', '13978414840', '0', '123456');
INSERT INTO `student` VALUES ('387', '2470046704', '陈敏', '女', '2024', '外语系', '通讯工程1班', '13699493074', '1', '123456');
INSERT INTO `student` VALUES ('388', '2338272244', '刘磊', '男', '2023', '信息学院', '通讯工程3班', '13732891950', '1', '123456');
INSERT INTO `student` VALUES ('389', '2167095211', '黄磊', '男', '2021', '外语系', '视觉设计2班', '13803314522', '0', '123456');
INSERT INTO `student` VALUES ('390', '2168779871', '王丽', '女', '2021', '机电工程学院', '日语3班', '13598565216', '1', '123456');
INSERT INTO `student` VALUES ('391', '2132081768', '黄静', '男', '2021', '外语系', '视觉设计3班', '13661598335', '1', '123456');
INSERT INTO `student` VALUES ('392', '2173560439', '吴伟', '男', '2021', '艺术系', '计算机科学与技术1班', '13056795574', '0', '123456');
INSERT INTO `student` VALUES ('393', '2471504068', '刘敏', '男', '2024', '信息学院', '视觉设计4班', '13880614905', '1', '123456');
INSERT INTO `student` VALUES ('394', '2148887296', '黄秀英', '女', '2021', '园艺园林学院', '计算机科学与技术1班', '13434983652', '0', '123456');
INSERT INTO `student` VALUES ('395', '2126343588', '周丽', '男', '2021', '外语系', '园艺2班', '13782744769', '1', '123456');
INSERT INTO `student` VALUES ('396', '2225255383', '赵秀英', '男', '2022', '机电工程学院', '自动化5班', '13182462951', '1', '123456');
INSERT INTO `student` VALUES ('397', '2213659062', '陈敏', '女', '2022', '艺术系', '园艺3班', '13760506786', '0', '123456');
INSERT INTO `student` VALUES ('398', '2328623484', '杨娜', '女', '2023', '计算机学院', '软件工程2班', '13806353371', '1', '123456');
INSERT INTO `student` VALUES ('399', '2130506898', '周丽', '女', '2021', '外语系', '通讯工程5班', '13849235683', '0', '123456');
INSERT INTO `student` VALUES ('400', '2116080969', '杨伟', '男', '2021', '信息学院', '日语3班', '13739554807', '1', '123456');
INSERT INTO `student` VALUES ('401', '2338591616', '王敏', '女', '2023', '信息学院', '计算机科学与技术3班', '13326308619', '0', '123456');
INSERT INTO `student` VALUES ('402', '2308444483', '黄丽', '女', '2023', '艺术系', '通讯工程2班', '13844677035', '0', '123456');
INSERT INTO `student` VALUES ('403', '2307576535', '周丽', '男', '2023', '信息学院', '计算机科学与技术4班', '13260054228', '1', '123456');
INSERT INTO `student` VALUES ('404', '2285412747', '杨敏', '男', '2022', '机电工程学院', '视觉设计1班', '13089174224', '1', '123456');
INSERT INTO `student` VALUES ('405', '2485261055', '赵磊', '男', '2024', '软件与人工智能学院', '软件工程4班', '13322098220', '0', '123456');
INSERT INTO `student` VALUES ('406', '2264202609', '刘军', '女', '2022', '信息学院', '通讯工程4班', '13965711374', '1', '123456');
INSERT INTO `student` VALUES ('407', '2257591059', '陈磊', '女', '2022', '艺术系', '自动化2班', '13647959140', '0', '123456');
INSERT INTO `student` VALUES ('408', '2337159973', '杨秀英', '女', '2023', '园艺园林学院', '园艺5班', '13393286989', '0', '123456');
INSERT INTO `student` VALUES ('409', '2363550502', '刘丽', '男', '2023', '软件与人工智能学院', '自动化2班', '13399183228', '1', '123456');
INSERT INTO `student` VALUES ('410', '2443826700', '李磊', '女', '2024', '软件与人工智能学院', '软件工程5班', '13223227473', '1', '123456');
INSERT INTO `student` VALUES ('411', '2292697376', '陈磊', '男', '2022', '外语系', '视觉设计5班', '13901452422', '0', '123456');
INSERT INTO `student` VALUES ('412', '2426315910', '赵芳', '男', '2024', '园艺园林学院', '园艺1班', '13093526649', '0', '123456');
INSERT INTO `student` VALUES ('413', '2446588368', '张强', '女', '2024', '软件与人工智能学院', '视觉设计3班', '13479588333', '1', '123456');
INSERT INTO `student` VALUES ('414', '2430002316', '吴秀英', '女', '2024', '信息学院', '视觉设计5班', '13902800616', '1', '123456');
INSERT INTO `student` VALUES ('415', '2137514276', '王秀英', '男', '2021', '软件与人工智能学院', '通讯工程1班', '13256473302', '0', '123456');
INSERT INTO `student` VALUES ('416', '2305766792', '李静', '女', '2023', '外语系', '视觉设计2班', '13100644257', '0', '123456');
INSERT INTO `student` VALUES ('417', '2455656405', '周伟', '女', '2024', '软件与人工智能学院', '计算机科学与技术3班', '13705453720', '1', '123456');
INSERT INTO `student` VALUES ('418', '2426512406', '刘伟', '男', '2024', '机电工程学院', '软件工程3班', '13837984865', '0', '123456');
INSERT INTO `student` VALUES ('419', '2101709020', '张敏', '女', '2021', '艺术系', '软件工程5班', '13564930459', '0', '123456');
INSERT INTO `student` VALUES ('420', '2370488542', '吴军', '女', '2023', '园艺园林学院', '日语1班', '13513316670', '1', '123456');
INSERT INTO `student` VALUES ('421', '2447055008', '李芳', '男', '2024', '计算机学院', '计算机科学与技术4班', '13635265761', '1', '123456');
INSERT INTO `student` VALUES ('422', '2439093252', '李敏', '女', '2024', '艺术系', '视觉设计5班', '13715088323', '0', '123456');
INSERT INTO `student` VALUES ('423', '2499294238', '赵秀英', '女', '2024', '计算机学院', '日语2班', '13728184661', '1', '123456');
INSERT INTO `student` VALUES ('424', '2280598517', '杨静', '女', '2022', '软件与人工智能学院', '软件工程5班', '13230422543', '1', '123456');
INSERT INTO `student` VALUES ('425', '2140811324', '陈磊', '男', '2021', '园艺园林学院', '园艺3班', '13833828388', '0', '123456');
INSERT INTO `student` VALUES ('426', '2474668719', '李伟', '女', '2024', '机电工程学院', '日语2班', '13120890745', '1', '123456');
INSERT INTO `student` VALUES ('427', '2243262655', '杨敏', '女', '2022', '机电工程学院', '园艺4班', '13895056718', '0', '123456');
INSERT INTO `student` VALUES ('428', '2155730493', '杨娜', '女', '2021', '园艺园林学院', '软件工程3班', '13247309953', '0', '123456');
INSERT INTO `student` VALUES ('429', '2383173524', '王丽', '女', '2023', '艺术系', '园艺5班', '13018194631', '0', '123456');
INSERT INTO `student` VALUES ('430', '2460227719', '陈静', '女', '2024', '艺术系', '通讯工程1班', '13594528473', '0', '123456');
INSERT INTO `student` VALUES ('431', '2452591688', '赵军', '女', '2024', '艺术系', '自动化3班', '13482917656', '0', '123456');
INSERT INTO `student` VALUES ('432', '2434228767', '张伟', '男', '2024', '软件与人工智能学院', '通讯工程4班', '13068791700', '1', '123456');
INSERT INTO `student` VALUES ('433', '2152325273', '刘娜', '男', '2021', '外语系', '通讯工程3班', '13052880504', '1', '123456');
INSERT INTO `student` VALUES ('434', '2220911948', '吴伟', '男', '2022', '计算机学院', '视觉设计1班', '13528730551', '1', '123456');
INSERT INTO `student` VALUES ('435', '2423628565', '黄敏', '女', '2024', '机电工程学院', '视觉设计2班', '13443714843', '1', '123456');
INSERT INTO `student` VALUES ('436', '2366490728', '吴芳', '男', '2023', '信息学院', '计算机科学与技术5班', '13034739711', '1', '123456');
INSERT INTO `student` VALUES ('437', '2134742989', '李强', '女', '2021', '软件与人工智能学院', '日语1班', '13497565148', '1', '123456');
INSERT INTO `student` VALUES ('438', '2223381184', '李强', '男', '2022', '艺术系', '软件工程1班', '13901485041', '0', '123456');
INSERT INTO `student` VALUES ('439', '2201439984', '杨强', '男', '2022', '艺术系', '自动化5班', '13681329158', '0', '123456');
INSERT INTO `student` VALUES ('440', '2244429752', '刘伟', '男', '2022', '计算机学院', '园艺4班', '13499208945', '1', '123456');
INSERT INTO `student` VALUES ('441', '2145860207', '黄静', '女', '2021', '外语系', '计算机科学与技术2班', '13512990944', '0', '123456');
INSERT INTO `student` VALUES ('442', '2412278464', '李秀英', '男', '2024', '机电工程学院', '软件工程3班', '13187573297', '1', '123456');
INSERT INTO `student` VALUES ('443', '2455347005', '张秀英', '女', '2024', '园艺园林学院', '日语2班', '13230257430', '0', '123456');
INSERT INTO `student` VALUES ('444', '2105069732', '刘伟', '男', '2021', '信息学院', '自动化3班', '13632248073', '0', '123456');
INSERT INTO `student` VALUES ('445', '2170580552', '赵娜', '女', '2021', '计算机学院', '通讯工程5班', '13905174173', '0', '123456');
INSERT INTO `student` VALUES ('446', '2338249043', '周娜', '男', '2023', '计算机学院', '计算机科学与技术1班', '13355739362', '0', '123456');
INSERT INTO `student` VALUES ('447', '2389879700', '赵娜', '男', '2023', '计算机学院', '计算机科学与技术5班', '13905754930', '1', '123456');
INSERT INTO `student` VALUES ('448', '2126067403', '黄秀英', '女', '2021', '计算机学院', '计算机科学与技术2班', '13890604239', '0', '123456');
INSERT INTO `student` VALUES ('449', '2447333489', '赵秀英', '男', '2024', '软件与人工智能学院', '软件工程4班', '13891906283', '0', '123456');
INSERT INTO `student` VALUES ('450', '2356166124', '刘芳', '女', '2023', '园艺园林学院', '计算机科学与技术4班', '13719479265', '1', '123456');
INSERT INTO `student` VALUES ('451', '2320356408', '刘秀英', '男', '2023', '软件与人工智能学院', '日语4班', '13727934572', '0', '123456');
INSERT INTO `student` VALUES ('452', '2384875712', '吴秀英', '男', '2023', '外语系', '软件工程1班', '13068209413', '1', '123456');
INSERT INTO `student` VALUES ('453', '2309034291', '李伟', '男', '2023', '外语系', '日语3班', '13874728554', '0', '123456');
INSERT INTO `student` VALUES ('454', '2228963471', '吴伟', '女', '2022', '计算机学院', '通讯工程4班', '13715104526', '1', '123456');
INSERT INTO `student` VALUES ('455', '2257259546', '王静', '女', '2022', '软件与人工智能学院', '日语1班', '13583189966', '1', '123456');
INSERT INTO `student` VALUES ('456', '2199078083', '周丽', '男', '2021', '艺术系', '通讯工程1班', '13903687514', '1', '123456');
INSERT INTO `student` VALUES ('457', '2494460840', '李磊', '女', '2024', '园艺园林学院', '自动化5班', '13546090682', '0', '123456');
INSERT INTO `student` VALUES ('458', '2250435349', '赵芳', '男', '2022', '外语系', '通讯工程4班', '13995932590', '0', '123456');
INSERT INTO `student` VALUES ('459', '2353139685', '黄丽', '男', '2023', '机电工程学院', '视觉设计4班', '13106940068', '1', '123456');
INSERT INTO `student` VALUES ('460', '2191650030', '赵丽', '男', '2021', '外语系', '自动化3班', '13748151323', '1', '123456');
INSERT INTO `student` VALUES ('461', '2169996948', '周秀英', '男', '2021', '外语系', '日语3班', '13416650898', '1', '123456');
INSERT INTO `student` VALUES ('462', '2119881322', '周军', '男', '2021', '园艺园林学院', '园艺1班', '13991798420', '1', '123456');
INSERT INTO `student` VALUES ('463', '2460631403', '赵丽', '男', '2024', '艺术系', '通讯工程4班', '13535365673', '1', '123456');
INSERT INTO `student` VALUES ('464', '2495344009', '陈敏', '男', '2024', '机电工程学院', '自动化2班', '13585705066', '1', '123456');
INSERT INTO `student` VALUES ('465', '2103881120', '赵芳', '女', '2021', '园艺园林学院', '园艺1班', '13891284477', '0', '123456');
INSERT INTO `student` VALUES ('466', '2196043209', '杨磊', '男', '2021', '外语系', '日语1班', '13020295675', '1', '123456');
INSERT INTO `student` VALUES ('467', '2364312659', '黄军', '女', '2023', '计算机学院', '通讯工程5班', '13038800746', '1', '123456');
INSERT INTO `student` VALUES ('468', '2480813309', '张丽', '女', '2024', '机电工程学院', '日语5班', '13354563709', '0', '123456');
INSERT INTO `student` VALUES ('469', '2191745702', '刘丽', '女', '2021', '软件与人工智能学院', '计算机科学与技术1班', '13200027644', '0', '123456');
INSERT INTO `student` VALUES ('470', '2271574060', '黄磊', '女', '2022', '园艺园林学院', '自动化3班', '13643359597', '0', '123456');
INSERT INTO `student` VALUES ('471', '2413810736', '赵静', '男', '2024', '外语系', '园艺4班', '13902684637', '0', '123456');
INSERT INTO `student` VALUES ('472', '2187944887', '李芳', '女', '2021', '软件与人工智能学院', '自动化2班', '13245769214', '1', '123456');
INSERT INTO `student` VALUES ('473', '2328583479', '陈伟', '男', '2023', '信息学院', '通讯工程4班', '13230298577', '0', '123456');
INSERT INTO `student` VALUES ('474', '2372664184', '李芳', '女', '2023', '机电工程学院', '通讯工程4班', '13193273095', '0', '123456');
INSERT INTO `student` VALUES ('475', '2394721132', '吴秀英', '男', '2023', '软件与人工智能学院', '通讯工程2班', '13880322454', '0', '123456');
INSERT INTO `student` VALUES ('476', '2491949473', '周敏', '女', '2024', '外语系', '园艺4班', '13851474166', '0', '123456');
INSERT INTO `student` VALUES ('477', '2404151982', '张军', '女', '2024', '软件与人工智能学院', '计算机科学与技术3班', '13397888684', '1', '123456');
INSERT INTO `student` VALUES ('478', '2451762318', '周秀英', '男', '2024', '外语系', '视觉设计1班', '13982427980', '0', '123456');
INSERT INTO `student` VALUES ('479', '2237099942', '吴军', '女', '2022', '艺术系', '软件工程2班', '13291616378', '1', '123456');
INSERT INTO `student` VALUES ('480', '2218542810', '陈军', '男', '2022', '机电工程学院', '自动化1班', '13960803359', '0', '123456');
INSERT INTO `student` VALUES ('481', '2225711726', '王芳', '男', '2022', '园艺园林学院', '通讯工程1班', '13134073192', '0', '123456');
INSERT INTO `student` VALUES ('482', '2116061936', '赵丽', '女', '2021', '机电工程学院', '软件工程3班', '13024561509', '1', '123456');
INSERT INTO `student` VALUES ('483', '2467957202', '周敏', '男', '2024', '外语系', '计算机科学与技术1班', '13380982719', '0', '123456');
INSERT INTO `student` VALUES ('484', '2127454214', '张娜', '女', '2021', '机电工程学院', '自动化1班', '13751740405', '0', '123456');
INSERT INTO `student` VALUES ('485', '2237508657', '刘敏', '男', '2022', '机电工程学院', '计算机科学与技术5班', '13523793931', '1', '123456');
INSERT INTO `student` VALUES ('486', '2495091286', '吴磊', '男', '2024', '计算机学院', '视觉设计5班', '13254860300', '0', '123456');
INSERT INTO `student` VALUES ('487', '2403834362', '陈静', '女', '2024', '计算机学院', '通讯工程3班', '13610474368', '0', '123456');
INSERT INTO `student` VALUES ('488', '2411889392', '王敏', '女', '2024', '艺术系', '园艺2班', '13524591744', '1', '123456');
INSERT INTO `student` VALUES ('489', '2169215490', '张秀英', '男', '2021', '信息学院', '自动化4班', '13454070722', '0', '123456');
INSERT INTO `student` VALUES ('490', '2150619112', '张静', '男', '2021', '信息学院', '计算机科学与技术2班', '13283854226', '0', '123456');
INSERT INTO `student` VALUES ('491', '2468125958', '赵丽', '男', '2024', '计算机学院', '视觉设计5班', '13001142083', '0', '123456');
INSERT INTO `student` VALUES ('492', '2134154400', '李强', '女', '2021', '机电工程学院', '软件工程3班', '13074185566', '1', '123456');
INSERT INTO `student` VALUES ('493', '2131812157', '刘强', '女', '2021', '机电工程学院', '园艺2班', '13636271688', '0', '123456');
INSERT INTO `student` VALUES ('494', '2362827564', '杨军', '女', '2023', '机电工程学院', '园艺4班', '13158719473', '1', '123456');
INSERT INTO `student` VALUES ('495', '2262411286', '王磊', '男', '2022', '计算机学院', '园艺3班', '13399025800', '0', '123456');
INSERT INTO `student` VALUES ('496', '2419006178', '李静', '男', '2024', '信息学院', '通讯工程3班', '13376679672', '1', '123456');
INSERT INTO `student` VALUES ('497', '2472147984', '赵磊', '女', '2024', '园艺园林学院', '软件工程3班', '13521132914', '0', '123456');
INSERT INTO `student` VALUES ('498', '2175314947', '杨伟', '男', '2021', '园艺园林学院', '软件工程1班', '13380245264', '1', '123456');
INSERT INTO `student` VALUES ('499', '2293422263', '杨军', '男', '2022', '机电工程学院', '园艺4班', '13926651146', '0', '123456');
INSERT INTO `student` VALUES ('500', '2188847235', '赵磊', '男', '2021', '外语系', '日语4班', '13863648959', '1', '123456');
INSERT INTO `student` VALUES ('501', '2210354106', '王秀英', '女', '2022', '机电工程学院', '计算机科学与技术5班', '13815358831', '0', '123456');
INSERT INTO `student` VALUES ('502', '2145596405', '赵伟', '男', '2021', '软件与人工智能学院', '通讯工程1班', '10743536383', '1', '123456');
INSERT INTO `student` VALUES ('503', '2345345577', '周磊', '女', '2023', '园艺园林学院', '自动化1班', '10673984764', '0', '123456');
INSERT INTO `student` VALUES ('504', '2422015124', '黄秀英', '男', '2024', '信息学院', '通讯工程5班', '10742778226', '1', '123456');
INSERT INTO `student` VALUES ('505', '2404066765', '张静', '男', '2024', '计算机学院', '通讯工程3班', '10012017928', '0', '123456');
INSERT INTO `student` VALUES ('506', '2287200363', '杨静', '男', '2022', '园艺园林学院', '园艺2班', '10444376119', '0', '123456');
INSERT INTO `student` VALUES ('507', '2236764577', '王军', '女', '2022', '软件与人工智能学院', '自动化4班', '10738961740', '1', '123456');
INSERT INTO `student` VALUES ('508', '2161284260', '张伟', '女', '2021', '计算机学院', '软件工程4班', '10988873559', '1', '123456');
INSERT INTO `student` VALUES ('509', '2257810798', '杨芳', '女', '2022', '软件与人工智能学院', '计算机科学与技术2班', '10597888992', '0', '123456');
INSERT INTO `student` VALUES ('510', '2131343597', '吴军', '男', '2021', '艺术系', '通讯工程2班', '10114337755', '0', '123456');
INSERT INTO `student` VALUES ('511', '2181759363', '周军', '男', '2021', '软件与人工智能学院', '日语3班', '10088167906', '1', '123456');
INSERT INTO `student` VALUES ('512', '2400983047', '吴芳', '女', '2024', '信息学院', '自动化4班', '10231274109', '1', '123456');
INSERT INTO `student` VALUES ('513', '2396667793', '王军', '女', '2023', '外语系', '通讯工程1班', '10024585908', '1', '123456');
INSERT INTO `student` VALUES ('514', '2221631594', '周军', '女', '2022', '外语系', '视觉设计2班', '10737980921', '0', '123456');
INSERT INTO `student` VALUES ('515', '2355866021', '杨静', '女', '2023', '艺术系', '视觉设计1班', '10368771041', '1', '123456');
INSERT INTO `student` VALUES ('516', '2395745555', '赵静', '女', '2023', '计算机学院', '计算机科学与技术3班', '10613092608', '1', '123456');
INSERT INTO `student` VALUES ('517', '2206715968', '吴伟', '女', '2022', '机电工程学院', '视觉设计5班', '10507614620', '0', '123456');
INSERT INTO `student` VALUES ('518', '2360380014', '黄芳', '女', '2023', '机电工程学院', '自动化3班', '10530654152', '1', '123456');
INSERT INTO `student` VALUES ('519', '2394388113', '杨磊', '男', '2023', '艺术系', '计算机科学与技术4班', '10194852325', '0', '123456');
INSERT INTO `student` VALUES ('520', '2342614623', '刘秀英', '女', '2023', '软件与人工智能学院', '日语3班', '10089004867', '1', '123456');
INSERT INTO `student` VALUES ('521', '2191429075', '黄军', '男', '2021', '计算机学院', '通讯工程5班', '10219606088', '0', '123456');
INSERT INTO `student` VALUES ('522', '2190022251', '李强', '男', '2021', '机电工程学院', '日语5班', '10067636203', '1', '123456');
INSERT INTO `student` VALUES ('523', '2264752321', '周伟', '女', '2022', '外语系', '自动化1班', '10871753283', '0', '123456');
INSERT INTO `student` VALUES ('524', '2235405316', '赵娜', '女', '2022', '信息学院', '园艺2班', '10957167159', '0', '123456');
INSERT INTO `student` VALUES ('525', '2185091126', '吴娜', '女', '2021', '外语系', '通讯工程4班', '10841508931', '1', '123456');
INSERT INTO `student` VALUES ('526', '2283309299', '刘静', '女', '2022', '艺术系', '园艺5班', '10952169645', '1', '123456');
INSERT INTO `student` VALUES ('527', '2475455202', '周强', '女', '2024', '计算机学院', '软件工程1班', '10629292363', '1', '123456');
INSERT INTO `student` VALUES ('528', '2148798430', '吴娜', '女', '2021', '艺术系', '视觉设计2班', '10241317267', '0', '123456');
INSERT INTO `student` VALUES ('529', '2332399655', '刘芳', '男', '2023', '外语系', '通讯工程5班', '10998091571', '0', '123456');
INSERT INTO `student` VALUES ('530', '2315642361', '黄丽', '男', '2023', '艺术系', '园艺2班', '10098820163', '0', '123456');
INSERT INTO `student` VALUES ('531', '2266592019', '李静', '男', '2022', '软件与人工智能学院', '园艺4班', '10266495369', '1', '123456');
INSERT INTO `student` VALUES ('532', '2463583946', '李磊', '女', '2024', '信息学院', '视觉设计4班', '10246831642', '1', '123456');
INSERT INTO `student` VALUES ('533', '2240963190', '刘秀英', '男', '2022', '园艺园林学院', '园艺2班', '10529733910', '1', '123456');
INSERT INTO `student` VALUES ('534', '2348081173', '刘军', '女', '2023', '园艺园林学院', '视觉设计5班', '10577051916', '1', '123456');
INSERT INTO `student` VALUES ('535', '2154131236', '周娜', '男', '2021', '园艺园林学院', '自动化2班', '10571313863', '1', '123456');
INSERT INTO `student` VALUES ('536', '2341946790', '赵伟', '男', '2023', '计算机学院', '视觉设计1班', '10502592449', '1', '123456');
INSERT INTO `student` VALUES ('537', '2302787095', '杨秀英', '男', '2023', '艺术系', '软件工程2班', '10169426711', '1', '123456');
INSERT INTO `student` VALUES ('538', '2438902357', '李磊', '女', '2024', '软件与人工智能学院', '园艺2班', '10078556489', '1', '123456');
INSERT INTO `student` VALUES ('539', '2213445106', '吴静', '男', '2022', '计算机学院', '通讯工程2班', '10919927841', '1', '123456');
INSERT INTO `student` VALUES ('540', '2137435287', '陈伟', '男', '2021', '软件与人工智能学院', '通讯工程3班', '10963050499', '1', '123456');
INSERT INTO `student` VALUES ('541', '2216626354', '张娜', '女', '2022', '外语系', '通讯工程5班', '10322819899', '1', '123456');
INSERT INTO `student` VALUES ('542', '2488888658', '陈磊', '女', '2024', '艺术系', '日语2班', '10379910325', '1', '123456');
INSERT INTO `student` VALUES ('543', '2340269541', '陈静', '女', '2023', '园艺园林学院', '通讯工程3班', '10853016741', '0', '123456');
INSERT INTO `student` VALUES ('544', '2177435435', '刘敏', '男', '2021', '园艺园林学院', '日语1班', '10874756024', '0', '123456');
INSERT INTO `student` VALUES ('545', '2238524245', '李芳', '女', '2022', '计算机学院', '园艺5班', '10333683069', '1', '123456');
INSERT INTO `student` VALUES ('546', '2321575138', '刘伟', '男', '2023', '软件与人工智能学院', '计算机科学与技术1班', '10259631887', '0', '123456');
INSERT INTO `student` VALUES ('547', '2153876148', '黄静', '女', '2021', '软件与人工智能学院', '通讯工程5班', '10012474996', '1', '123456');
INSERT INTO `student` VALUES ('548', '2400059276', '王芳', '女', '2024', '软件与人工智能学院', '计算机科学与技术1班', '10552945370', '1', '123456');
INSERT INTO `student` VALUES ('549', '2453373072', '王丽', '男', '2024', '信息学院', '自动化1班', '10317243171', '1', '123456');
INSERT INTO `student` VALUES ('550', '2368377228', '李丽', '女', '2023', '机电工程学院', '软件工程3班', '10976843479', '1', '123456');
INSERT INTO `student` VALUES ('551', '2354294648', '黄军', '男', '2023', '艺术系', '视觉设计4班', '10446561470', '0', '123456');
INSERT INTO `student` VALUES ('552', '2146215826', '黄娜', '女', '2021', '信息学院', '软件工程5班', '10122022827', '1', '123456');
INSERT INTO `student` VALUES ('553', '2323350134', '赵芳', '女', '2023', '外语系', '视觉设计4班', '10103471907', '1', '123456');
INSERT INTO `student` VALUES ('554', '2340710879', '王强', '男', '2023', '软件与人工智能学院', '软件工程3班', '10275176012', '0', '123456');
INSERT INTO `student` VALUES ('555', '2479975768', '李敏', '男', '2024', '外语系', '自动化1班', '10637108376', '1', '123456');
INSERT INTO `student` VALUES ('556', '2426843366', '周军', '女', '2024', '园艺园林学院', '自动化5班', '10796935011', '0', '123456');
INSERT INTO `student` VALUES ('557', '2268685832', '黄磊', '男', '2022', '艺术系', '日语1班', '10968733517', '0', '123456');
INSERT INTO `student` VALUES ('558', '2426504239', '张娜', '男', '2024', '计算机学院', '日语5班', '10804457675', '1', '123456');
INSERT INTO `student` VALUES ('559', '2422785434', '吴敏', '女', '2024', '园艺园林学院', '视觉设计2班', '10945588507', '0', '123456');
INSERT INTO `student` VALUES ('560', '2243066620', '李敏', '男', '2022', '软件与人工智能学院', '视觉设计4班', '10689388973', '0', '123456');
INSERT INTO `student` VALUES ('561', '2292176233', '周娜', '女', '2022', '艺术系', '视觉设计5班', '10431217546', '0', '123456');
INSERT INTO `student` VALUES ('562', '2274383163', '陈敏', '男', '2022', '计算机学院', '日语2班', '10523229930', '0', '123456');
INSERT INTO `student` VALUES ('563', '2205229224', '张强', '女', '2022', '软件与人工智能学院', '通讯工程1班', '10298532244', '0', '123456');
INSERT INTO `student` VALUES ('564', '2117956507', '赵强', '男', '2021', '园艺园林学院', '通讯工程1班', '10615133601', '1', '123456');
INSERT INTO `student` VALUES ('565', '2238067808', '李强', '男', '2022', '信息学院', '园艺4班', '10619966489', '0', '123456');
INSERT INTO `student` VALUES ('566', '2114765580', '王军', '男', '2021', '机电工程学院', '自动化1班', '10662756754', '0', '123456');
INSERT INTO `student` VALUES ('567', '2136947610', '杨强', '男', '2021', '软件与人工智能学院', '视觉设计4班', '10317399355', '1', '123456');
INSERT INTO `student` VALUES ('568', '2243879761', '刘磊', '男', '2022', '软件与人工智能学院', '视觉设计4班', '10455765054', '0', '123456');
INSERT INTO `student` VALUES ('569', '2271420429', '王芳', '女', '2022', '园艺园林学院', '软件工程3班', '10286197623', '1', '123456');
INSERT INTO `student` VALUES ('570', '2357281997', '周静', '男', '2023', '软件与人工智能学院', '软件工程2班', '10575032751', '0', '123456');
INSERT INTO `student` VALUES ('571', '2258085992', '黄军', '男', '2022', '艺术系', '软件工程3班', '10709939338', '1', '123456');
INSERT INTO `student` VALUES ('572', '2333718656', '王秀英', '男', '2023', '信息学院', '园艺4班', '10526341538', '1', '123456');
INSERT INTO `student` VALUES ('573', '2199014981', '周磊', '女', '2021', '外语系', '园艺4班', '10496071669', '0', '123456');
INSERT INTO `student` VALUES ('574', '2160206633', '刘敏', '女', '2021', '软件与人工智能学院', '软件工程3班', '10143779404', '1', '123456');
INSERT INTO `student` VALUES ('575', '2408451810', '张磊', '男', '2024', '艺术系', '通讯工程2班', '10334288003', '0', '123456');
INSERT INTO `student` VALUES ('576', '2290696923', '李伟', '女', '2022', '艺术系', '软件工程2班', '10579931995', '1', '123456');
INSERT INTO `student` VALUES ('577', '2416632721', '刘静', '男', '2024', '园艺园林学院', '视觉设计3班', '10192998890', '1', '123456');
INSERT INTO `student` VALUES ('578', '2482670240', '陈静', '男', '2024', '信息学院', '软件工程2班', '10913128995', '0', '123456');
INSERT INTO `student` VALUES ('579', '2327405721', '周静', '男', '2023', '机电工程学院', '自动化4班', '10437778331', '0', '123456');
INSERT INTO `student` VALUES ('580', '2255894955', '李芳', '男', '2022', '信息学院', '日语3班', '10123693086', '1', '123456');
INSERT INTO `student` VALUES ('581', '2497357692', '陈伟', '男', '2024', '软件与人工智能学院', '通讯工程4班', '10349383560', '1', '123456');
INSERT INTO `student` VALUES ('582', '2191831169', '王丽', '女', '2021', '外语系', '计算机科学与技术4班', '10229912257', '1', '123456');
INSERT INTO `student` VALUES ('583', '2102814828', '赵伟', '男', '2021', '软件与人工智能学院', '园艺5班', '10876615551', '1', '123456');
INSERT INTO `student` VALUES ('584', '2433335361', '李敏', '女', '2024', '艺术系', '软件工程1班', '10001602288', '0', '123456');
INSERT INTO `student` VALUES ('585', '2425007082', '王磊', '男', '2024', '外语系', '计算机科学与技术2班', '10081334593', '1', '123456');
INSERT INTO `student` VALUES ('586', '2279673227', '李磊', '女', '2022', '信息学院', '计算机科学与技术1班', '10944413889', '1', '123456');
INSERT INTO `student` VALUES ('587', '2261659831', '王静', '女', '2022', '软件与人工智能学院', '通讯工程5班', '10258386072', '1', '123456');
INSERT INTO `student` VALUES ('588', '2456869195', '陈敏', '男', '2024', '园艺园林学院', '视觉设计1班', '10859106319', '1', '123456');
INSERT INTO `student` VALUES ('589', '2450048056', '周敏', '男', '2024', '艺术系', '日语2班', '10052644825', '1', '123456');
INSERT INTO `student` VALUES ('590', '2335732444', '王敏', '男', '2023', '计算机学院', '自动化5班', '10865942237', '0', '123456');
INSERT INTO `student` VALUES ('591', '2314227132', '吴强', '男', '2023', '计算机学院', '计算机科学与技术5班', '10421337956', '1', '123456');
INSERT INTO `student` VALUES ('592', '2275726166', '王强', '女', '2022', '机电工程学院', '视觉设计1班', '10811954647', '1', '123456');
INSERT INTO `student` VALUES ('593', '2389407065', '吴丽', '男', '2023', '计算机学院', '日语1班', '10121562120', '0', '123456');
INSERT INTO `student` VALUES ('594', '2170268873', '周静', '女', '2021', '园艺园林学院', '园艺1班', '10742936479', '0', '123456');
INSERT INTO `student` VALUES ('595', '2428432824', '吴强', '男', '2024', '外语系', '园艺5班', '10235537109', '0', '123456');
INSERT INTO `student` VALUES ('596', '2474616140', '王芳', '女', '2024', '艺术系', '视觉设计3班', '10343912019', '1', '123456');
INSERT INTO `student` VALUES ('597', '2354128899', '李丽', '男', '2023', '机电工程学院', '自动化4班', '10037660083', '1', '123456');
INSERT INTO `student` VALUES ('598', '2474063156', '赵芳', '女', '2024', '软件与人工智能学院', '自动化2班', '10511825834', '0', '123456');
INSERT INTO `student` VALUES ('599', '2143820010', '陈娜', '女', '2021', '艺术系', '日语4班', '10509141909', '1', '123456');
INSERT INTO `student` VALUES ('600', '2370677615', '李军', '男', '2023', '软件与人工智能学院', '通讯工程2班', '10039969411', '0', '123456');
INSERT INTO `student` VALUES ('601', '2351824928', '陈芳', '女', '2023', '计算机学院', '视觉设计5班', '10676653529', '1', '123456');
INSERT INTO `student` VALUES ('602', '2312511139', '王静', '女', '2023', '艺术系', '软件工程2班', '10665533434', '1', '123456');
INSERT INTO `student` VALUES ('603', '2246639132', '杨娜', '女', '2022', '软件与人工智能学院', '软件工程1班', '10684776692', '0', '123456');
INSERT INTO `student` VALUES ('604', '2140665731', '陈静', '男', '2021', '园艺园林学院', '视觉设计1班', '10489664080', '1', '123456');
INSERT INTO `student` VALUES ('605', '2498927386', '李静', '女', '2024', '软件与人工智能学院', '视觉设计4班', '10295372399', '0', '123456');
INSERT INTO `student` VALUES ('606', '2286947649', '刘军', '男', '2022', '信息学院', '计算机科学与技术5班', '10944364233', '1', '123456');
INSERT INTO `student` VALUES ('607', '2287436177', '赵芳', '女', '2022', '园艺园林学院', '园艺2班', '10915812297', '0', '123456');
INSERT INTO `student` VALUES ('608', '2363575321', '周强', '男', '2023', '机电工程学院', '通讯工程5班', '10003284465', '0', '123456');
INSERT INTO `student` VALUES ('609', '2274959194', '刘军', '女', '2022', '计算机学院', '园艺5班', '10958872127', '0', '123456');
INSERT INTO `student` VALUES ('610', '2416349495', '刘磊', '男', '2024', '软件与人工智能学院', '计算机科学与技术2班', '10080277199', '0', '123456');
INSERT INTO `student` VALUES ('611', '2271162541', '黄静', '女', '2022', '软件与人工智能学院', '通讯工程1班', '10681145046', '0', '123456');
INSERT INTO `student` VALUES ('612', '2124562371', '黄芳', '女', '2021', '软件与人工智能学院', '日语3班', '10020269639', '-1', '123456');
INSERT INTO `student` VALUES ('613', '2192749257', '李秀英1', '女', '2021', '园艺园林学院', '通讯工程2班', '13731457412', '-1', '123456');
INSERT INTO `student` VALUES ('615', '20243301111', '赵一诺', '女', '2024', '机电工程学院', '自动化', '18609211244', '0', '123456');
INSERT INTO `student` VALUES ('616', '20243301112', '赵二诺', '女', '2024', '机电工程学院', '自动化', '18609211245', '0', '123456');
INSERT INTO `student` VALUES ('617', '11', '11', '男', '11', '11', '11', '13621589621', '0', '');
INSERT INTO `student` VALUES ('729', '20253301111', '赵一诺', '女', '2025', '机电工程学院', '自动化', '18709221249', '0', '123456');
INSERT INTO `student` VALUES ('730', '20253301112', '赵二诺', '女', '2025', '机电工程学院', '自动化', '18709221248', '0', '123456');
