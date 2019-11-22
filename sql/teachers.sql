/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : tsinformation

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/11/2019 20:25:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers`  (
  `tid` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tposition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tsubject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('17', '胡婷', '数字媒体技术专业讲师', 'oc');
INSERT INTO `teachers` VALUES ('20170001', '管媛辉', '数字媒体技术系主任，副教授', '自2006年参加工作以来，一直从事与网络媒体、计算机软件和移动媒体相关的研究工作。多年来在计算机软件应用、新媒体传播、数字媒体、教育技术、新闻传播领域开展了广泛的研究工作，具有一定的研究能力。');
INSERT INTO `teachers` VALUES ('20170002', '陈天亨', '数字媒体技术专业讲师', '主讲课程《Android设计基础》、《Android应用设计》、《设计模式》、《JavaWeb程序设计》、《C语言程序设计》、《大学计算机基础》。 主要从事与数字媒体技术、网络应用平台开发相关的研究工作。');
INSERT INTO `teachers` VALUES ('20170004', '纪澍琴', '教授，硕士研究生导师。校级教学名师', '自参加工作以来，一直在教学第一线从事计算机课程的教学和科研工作，多年来给本专科学生讲授了多门计算机课程，教学效果一直优秀，并多次获校教学效果优秀奖');

SET FOREIGN_KEY_CHECKS = 1;
