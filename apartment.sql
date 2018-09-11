/*
Navicat MySQL Data Transfer

Source Server         : ld
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : apartment

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2018-09-11 17:16:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_time` date DEFAULT '0000-00-00',
  `a_title` varchar(50) DEFAULT NULL,
  `a_info` varchar(50) DEFAULT NULL,
  `a_place` varchar(50) DEFAULT NULL,
  `a_money` varchar(10) DEFAULT NULL,
  `a_orgnized` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2335 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1234', '2018-08-22', '一日游', '香港一日游', '香港', '5000', 'XX公司');
INSERT INTO `activity` VALUES ('2334', '2018-08-16', '法规及', '附件', '河南', '8888', '战斗机');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_number` int(11) DEFAULT NULL,
  `h_id` int(11) DEFAULT NULL,
  `l_id` int(11) DEFAULT NULL,
  `c_time` date DEFAULT '2018-08-08',
  `c_starttime` date DEFAULT '0000-00-00',
  `c_endtime` date DEFAULT '0000-00-00',
  `c_money` varchar(10) DEFAULT NULL,
  `c_pay` varchar(50) DEFAULT NULL,
  `c_deposit` int(20) DEFAULT NULL,
  `c_periods` int(10) DEFAULT NULL,
  `c_people` varchar(50) DEFAULT NULL,
  `c_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8892 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES ('100', '201801', '102', '111', '2018-08-14', '2018-08-22', '2018-08-23', '100', '月付', '50', '2', '张三', '2');
INSERT INTO `contract` VALUES ('666', '201808', '102', '111', '2018-08-01', '2018-08-02', '2018-08-02', '100', '全付', '500', '2', '张三', '2');
INSERT INTO `contract` VALUES ('8888', '20180854', '103', '111', '2018-08-01', '2018-08-02', '2018-08-02', '54545', '全付', '100', '2', '马冬梅', '1');
INSERT INTO `contract` VALUES ('8890', '5862', '102', '111', '2018-08-02', '2018-08-03', '2018-08-04', '555', '全付', '100', '2', '马梅', '1');
INSERT INTO `contract` VALUES ('8891', '455', '110', '223', '2018-08-04', '2018-08-02', '2018-08-03', '234', '全付', '100', '2', '马梅', '1');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_area` varchar(50) NOT NULL,
  `h_estate` varchar(30) NOT NULL,
  `h_unitNumber` varchar(20) NOT NULL,
  `h_floor` int(11) NOT NULL,
  `h_roomNo` varchar(10) NOT NULL,
  `h_acreage` varchar(10) NOT NULL,
  `h_direction` varchar(10) NOT NULL,
  `h_fitment` varchar(10) NOT NULL,
  `h_isDoubleAir` bit(1) NOT NULL,
  `h_limit` int(11) DEFAULT NULL,
  `h_facility` varchar(200) DEFAULT NULL,
  `h_price` double(10,0) DEFAULT NULL,
  `h_status` int(10) DEFAULT NULL,
  `h_img` varchar(200) DEFAULT NULL,
  `h_address` varchar(100) DEFAULT NULL,
  `h_addtime` date NOT NULL DEFAULT '0000-00-00',
  `h_updateTime` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('102', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('103', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/3.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('104', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/4.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('105', '1', '玩味公寓', '1', '1', 'b202', '500', '朝北', '1', '\0', '1', null, '100', '2', 'http://localhost:8080/Apartment/static/image/5.jpg', '河南省新乡', '2018-08-04', '2018-08-05');
INSERT INTO `house` VALUES ('106', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/1.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('107', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('108', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/3.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('109', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/4.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('110', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/5.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('111', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('112', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/1.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('113', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/5.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('114', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('115', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/1.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('116', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('117', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/1.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('118', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/4.jpg', '河南省郑州市', '2018-08-22', '2018-08-25');
INSERT INTO `house` VALUES ('119', '新乡', '和谐小区', '102', '2', 'a102', '100', '朝南', '精装', '', '3', 'wifi', '100', '2', 'http://localhost:8080/Apartment/static/image/2.jpg', '河南省新乡', '2018-08-01', '2018-08-16');
INSERT INTO `house` VALUES ('155', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/20.jpg', '河南省郑州市经开区', '2018-08-02', '2018-08-02');
INSERT INTO `house` VALUES ('188', '江南', '玩味公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/21.jpg', '河南省郑州市经开区', '2018-08-01', '2018-08-02');
INSERT INTO `house` VALUES ('200', '江南', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/22.jpg', '河南省郑州市经开区', '2018-08-02', '2018-08-02');
INSERT INTO `house` VALUES ('333', '江苏', '贺喜小区', '503', '1', '602', '500', '朝北', '精装', '', '3', null, '300', '2', 'http://localhost:8080/Apartment/image/7.jpg', '江苏省苏州市经开区', '2018-08-01', '2018-08-02');
INSERT INTO `house` VALUES ('555', '河南郑州', '万通公寓', '511', '3', 'c301', '150', '朝南', '精装', '', '3', null, '300', '2', 'http://localhost:8080/Apartment/static/image/7.jpg', '河南省郑州市经开区', '2018-08-01', '2018-08-04');
INSERT INTO `house` VALUES ('888', '新郑', '观澜郡', '555', '5', '503', '200', '朝北', '精装', '', '2', null, '100', '2', 'http://localhost:8080/Apartment/static/image/8.jpg', '河南省郑州市新郑市', '2018-08-01', '2018-08-02');
INSERT INTO `house` VALUES ('999', '杭州', '万通公寓', '301', '3', 'c301', '150', '朝南', '精装', '\0', '3', null, '155', '2', 'http://localhost:8080/Apartment/static/image/1.jpg', '江苏省苏州市经开区', '2018-08-22', '2018-08-23');
INSERT INTO `house` VALUES ('1000', '广西', '和谐公寓', '503', '3', 'c301', '500', '朝南', '精装', '\0', '3', null, '150', '2', 'http://localhost:8080/Apartment/static/image/4.jpg', '江苏省苏州市经开区', '2018-08-10', '2018-08-05');

-- ----------------------------
-- Table structure for lessee
-- ----------------------------
DROP TABLE IF EXISTS `lessee`;
CREATE TABLE `lessee` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(10) NOT NULL,
  `l_tel` varchar(20) NOT NULL,
  `l_sex` char(2) NOT NULL,
  `l_nativeplace` varchar(50) NOT NULL,
  `l_idcard` varchar(20) NOT NULL,
  `l_addtime` date DEFAULT '0000-00-00',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lessee
-- ----------------------------
INSERT INTO `lessee` VALUES ('111', '张三', '15715321535', '男', '河南', '410514199605021254', '2018-08-08');
INSERT INTO `lessee` VALUES ('223', '倪妮妮', '999', '女', ' 北京', '9999', '2018-08-04');
INSERT INTO `lessee` VALUES ('225', '的借口', '454125', '男', '河南', '455245', '2018-09-05');

-- ----------------------------
-- Table structure for logistical
-- ----------------------------
DROP TABLE IF EXISTS `logistical`;
CREATE TABLE `logistical` (
  `lp_id` int(11) NOT NULL AUTO_INCREMENT,
  `lp_name` varchar(20) DEFAULT NULL,
  `lp_idcard` varchar(20) DEFAULT NULL,
  `lp_tel` varchar(20) DEFAULT NULL,
  `lp_sex` char(2) DEFAULT NULL,
  `lp_job` varchar(50) DEFAULT NULL,
  `lp_addtime` date DEFAULT '0000-00-00',
  `lp_salary` double(10,0) DEFAULT NULL,
  `lp_nativeplace` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201504 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logistical
-- ----------------------------
INSERT INTO `logistical` VALUES ('201502', '张子栋', '132415451', '215461', '男', '门卫', '2018-08-15', '6000', '浙江');
INSERT INTO `logistical` VALUES ('201503', '谢大脚q', null, '123151', '女', '门卫', '2018-08-01', '5656', '河南');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  `p_sourcename` varchar(50) DEFAULT NULL,
  `p_sourceUrl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege
-- ----------------------------

-- ----------------------------
-- Table structure for rect
-- ----------------------------
DROP TABLE IF EXISTS `rect`;
CREATE TABLE `rect` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `r_money` double NOT NULL,
  `r_time` date DEFAULT '0000-00-00',
  `r_remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `rect_1` (`h_id`),
  KEY `rect_2` (`l_id`),
  CONSTRAINT `rect_1` FOREIGN KEY (`h_id`) REFERENCES `house` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rect_2` FOREIGN KEY (`l_id`) REFERENCES `lessee` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rect
-- ----------------------------
INSERT INTO `rect` VALUES ('201', '102', '111', '100', '2018-08-22', 'sfjduih ');
INSERT INTO `rect` VALUES ('1004', '104', '223', '6666', '2018-08-01', '交清');
INSERT INTO `rect` VALUES ('1005', '103', '223', '6666', '2018-08-08', '交清');

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair` (
  `ra_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_id` int(11) DEFAULT NULL,
  `lp_id` int(11) DEFAULT NULL,
  `ra_info` varchar(100) DEFAULT NULL,
  `ra_time` date DEFAULT NULL,
  `ra_end` varchar(50) DEFAULT NULL,
  `ra_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES ('123', '106', '201503', '规划局', '2018-08-31', 'fasdvg', 'asf');
INSERT INTO `repair` VALUES ('124', '104', '201502', '规划局', '2018-08-31', 'fasdvg', 'ghgh');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(30) DEFAULT NULL,
  `r_desc` varchar(255) DEFAULT NULL,
  `r_addtime` date DEFAULT '0000-00-00',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('111', 'ga', 'saf ', '2018-07-31');
INSERT INTO `role` VALUES ('222', 'fsef', 'vd', '2018-08-29');
INSERT INTO `role` VALUES ('455', '34', 'wre', '2018-08-02');
INSERT INTO `role` VALUES ('456', '4555', '1213', '2018-08-08');

-- ----------------------------
-- Table structure for role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`p_id`),
  KEY `a4` (`p_id`),
  CONSTRAINT `a3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `a4` FOREIGN KEY (`p_id`) REFERENCES `privilege` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_phone` varchar(200) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20001', '张三1', '111', '15241515125', '河南');
INSERT INTO `user` VALUES ('20002', '张三2', '123456', '15714251536', '河南');
INSERT INTO `user` VALUES ('20003', '递归', '123', '455', '海南');
INSERT INTO `user` VALUES ('20004', 'admin', '123', '1234546458', '河北');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`r_id`),
  KEY `a2` (`r_id`),
  CONSTRAINT `a1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `a2` FOREIGN KEY (`r_id`) REFERENCES `rect` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
