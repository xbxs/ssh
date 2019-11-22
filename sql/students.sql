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

 Date: 22/11/2019 20:25:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('20173780', '李维', '海南', '20170004');
INSERT INTO `students` VALUES ('20173781', '刘沛仑', '白城', '20170001');
INSERT INTO `students` VALUES ('20173786', '刘沛仑67', '白城', '17');
INSERT INTO `students` VALUES ('20173794', '王迪', '长春', '20170001');

SET FOREIGN_KEY_CHECKS = 1;
