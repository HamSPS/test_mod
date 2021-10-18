/*
 Navicat Premium Data Transfer

 Source Server         : mks
 Source Server Type    : MariaDB
 Source Server Version : 100511
 Source Host           : 103.114.146.13:3306
 Source Schema         : mod2

 Target Server Type    : MariaDB
 Target Server Version : 100511
 File Encoding         : 65001

 Date: 18/10/2021 10:18:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Meeting
-- ----------------------------
DROP TABLE IF EXISTS `Meeting`;
CREATE TABLE `Meeting`  (
  `ID` int(11) NULL DEFAULT NULL,
  `Meeting_id` int(11) NULL DEFAULT NULL,
  `field_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `field_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Meeting
-- ----------------------------
INSERT INTO `Meeting` VALUES (1, 1, 'first_name', 'Alec');
INSERT INTO `Meeting` VALUES (2, 1, 'last_name', 'Jones');
INSERT INTO `Meeting` VALUES (3, 1, 'occupation', 'engineer');
INSERT INTO `Meeting` VALUES (4, 2, 'first_name', 'John');
INSERT INTO `Meeting` VALUES (5, 2, 'last_name', 'Doe');
INSERT INTO `Meeting` VALUES (6, 2, 'occupation', 'engineer');
INSERT INTO `Meeting` VALUES (NULL, 1, 'occupation', 'occupationsss');

-- ----------------------------
-- Table structure for adjust
-- ----------------------------
DROP TABLE IF EXISTS `adjust`;
CREATE TABLE `adjust`  (
  `adj_id` int(11) NOT NULL AUTO_INCREMENT,
  `fy_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dept_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`adj_id`) USING BTREE,
  INDEX `dept_id`(`dept_id`) USING BTREE,
  INDEX `fy_id`(`fy_id`) USING BTREE,
  CONSTRAINT `adjust_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `adjust_ibfk_2` FOREIGN KEY (`fy_id`) REFERENCES `fy` (`fy_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adjust
-- ----------------------------
INSERT INTO `adjust` VALUES (93, '2021-2022', 'HRD001');
INSERT INTO `adjust` VALUES (94, '2021-2022', 'Dep_010');
INSERT INTO `adjust` VALUES (95, '2021-2022', 'Dep_009');
INSERT INTO `adjust` VALUES (96, '2021-2022', 'Dep_008');
INSERT INTO `adjust` VALUES (97, '2021-2022', 'Dep_007');
INSERT INTO `adjust` VALUES (98, '2021-2022', 'Dep_006');
INSERT INTO `adjust` VALUES (99, '2021-2022', 'Dep_005');
INSERT INTO `adjust` VALUES (100, '2021-2022', 'Dep_004');
INSERT INTO `adjust` VALUES (101, '2021-2022', 'Dep_003');
INSERT INTO `adjust` VALUES (102, '2021-2022', 'Dep_002');
INSERT INTO `adjust` VALUES (103, '2021-2022', '001');

-- ----------------------------
-- Table structure for adjustdetail
-- ----------------------------
DROP TABLE IF EXISTS `adjustdetail`;
CREATE TABLE `adjustdetail`  (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `adj_id` int(11) NULL DEFAULT NULL,
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `get_plan` int(11) NULL DEFAULT NULL,
  `univer` int(11) NULL DEFAULT NULL,
  `prov` int(11) NULL DEFAULT NULL,
  `intv` int(11) NULL DEFAULT NULL,
  `ad_test` int(11) NULL DEFAULT NULL,
  `emp` int(11) NULL DEFAULT NULL,
  `std_handi` int(11) NULL DEFAULT NULL,
  `std_lan` int(11) NULL DEFAULT NULL,
  `ssk` int(11) NULL DEFAULT NULL,
  `std` int(11) NULL DEFAULT NULL,
  `emp_gov` int(11) NULL DEFAULT NULL,
  `test` int(11) NULL DEFAULT NULL,
  `std_con` int(11) NULL DEFAULT NULL,
  `std_2lan` int(11) NULL DEFAULT NULL,
  `std_inter` int(11) NULL DEFAULT NULL,
  `emp_private` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `remark_hrd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE,
  INDEX `adj_id`(`adj_id`) USING BTREE,
  INDEX `field_id`(`course_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `adjustdetail_ibfk_1` FOREIGN KEY (`adj_id`) REFERENCES `adjust` (`adj_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `adjustdetail_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `adjustdetail_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adjustdetail
-- ----------------------------
INSERT INTO `adjustdetail` VALUES (33, 103, 'uni001_cours043', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (34, 103, 'uni001_cours042', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (35, 103, 'uni001_doc030', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (36, 103, 'uni001_cours106', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (37, 103, 'uni001_cours105', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (38, 103, 'uni001_cours104', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (39, 103, 'uni001_cours103', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (40, 103, 'uni001_cours102', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (41, 103, 'uni001_cours101', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (42, 103, 'uni001_doc029', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (43, 103, 'uni001_doc028', 10, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (44, 103, 'uni001_cours100', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (45, 103, 'uni001_cours099', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (46, 103, 'uni001_cours098', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (47, 103, 'uni001_cours097', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (48, 103, 'uni001_cours096', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (49, 103, 'uni001_cours095', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (50, 103, 'uni001_cours094', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (51, 103, 'uni001_cours093', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (52, 103, 'uni001_cours092', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (53, 103, 'uni001_cours091', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (54, 103, 'uni001_cours090', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (55, 103, 'uni001_cours089', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (56, 103, 'uni001_doc027', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (57, 103, 'uni001_cours088', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (58, 103, 'uni001_cours087', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (59, 103, 'uni001_cours086', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (60, 103, 'uni001_cours085', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (61, 103, 'uni001_cours084', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (62, 103, 'uni001_cours083', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (63, 103, 'uni001_doc026', 30, 5, 5, 6, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (64, 103, 'uni001_doc025', 23, 4, 6, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (65, 103, 'uni001_cours082', 19, 2, 8, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (66, 103, 'uni001_cours081', 37, 3, 10, 9, 9, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (67, 103, 'uni001_cours080', 30, 3, 15, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (68, 103, 'uni001_cours079', 16, 3, 3, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (69, 103, 'uni001_cours078', 24, 5, 4, 3, 4, 4, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (70, 103, 'uni001_cours077', 37, 1, 9, 12, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (71, 103, 'uni001_doc024', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (72, 103, 'uni001_doc023', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (73, 103, 'uni001_doc022', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (74, 103, 'uni001_doc021', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (75, 103, 'uni001_doc020', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (76, 103, 'uni001_doc019', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (77, 103, 'uni001_doc018', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (78, 103, 'uni001_doc017', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (79, 103, 'uni001_cours076', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (80, 103, 'uni001_cours075', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (81, 103, 'uni001_cours074', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (82, 103, 'uni001_cours073', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (83, 103, 'uni001_cours072', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (84, 103, 'uni001_cours071', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (85, 103, 'uni001_cours070', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (86, 103, 'uni001_cours069', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (87, 103, 'uni001_cours068', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (88, 103, 'uni001_cours067', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (89, 103, 'uni001_cours066', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (90, 103, 'uni001_cours065', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (91, 103, 'uni001_cours064', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (92, 103, 'uni001_cours063', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (93, 103, 'uni001_cours062', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (94, 103, 'uni001_cours061', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (95, 103, 'uni001_cours060', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (96, 103, 'uni001_cours058', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (97, 103, 'uni001_cours057', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (98, 103, 'uni001_cours056', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (99, 103, 'uni001_cours055', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (100, 103, 'uni001_cours054', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (101, 103, 'uni001_cours053', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (102, 103, 'uni001_cours052', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (103, 103, 'uni001_cours051', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (104, 103, 'uni001_cours050', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (105, 103, 'uni001_cours049', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (106, 103, 'uni001_doc016', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (107, 103, 'uni001_doc015', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (108, 103, 'uni001_doc014', 11, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (109, 103, 'uni001_doc013', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (110, 103, 'uni001_cours048', 16, 3, 7, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (111, 103, 'uni001_cours047', 19, 3, 7, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (112, 103, 'uni001_cours046', 50, 5, 5, 10, 10, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (113, 103, 'uni001_cours045', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (114, 103, 'uni001_cours044', 17, 2, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, '24 noul');
INSERT INTO `adjustdetail` VALUES (115, 103, 'uni001_doc012', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (116, 103, 'uni001_doc011', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (117, 103, 'uni001_doc010', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (118, 103, 'uni001_doc009', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (119, 103, 'uni001_cours041', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (120, 103, 'uni001_cours040', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (121, 103, 'uni001_cours039', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (122, 103, 'uni001_cours038', 10, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (123, 103, 'uni001_cours037', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (124, 103, 'uni001_cours036', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (125, 103, 'uni001_cours035', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (126, 103, 'uni001_cours034', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (127, 103, 'uni001_cours033', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (128, 103, 'uni001_cours032', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (129, 103, 'uni001_doc008', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (130, 103, 'uni001_doc007', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (131, 103, 'uni001_doc006', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (132, 103, 'uni001_cours031', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (133, 103, 'uni001_cours030', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (134, 103, 'uni001_cours029', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (135, 103, 'uni001_cours028', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (136, 103, 'uni001_cours027', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (137, 103, 'uni001_cours026', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (138, 103, 'uni001_cours025', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (139, 103, 'uni001_cours024', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (140, 103, 'uni001_cours023', 10, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (141, 103, 'uni001_doc005', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (142, 103, 'uni001_cours022', 10, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (143, 103, 'uni001_cours021', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (144, 103, 'uni001_cours020', 10, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (145, 103, 'uni001_cours019', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (146, 103, 'uni001_cours018', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (147, 103, 'uni001_cours017', 10, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (148, 103, 'uni001_cours016', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (149, 103, 'uni001_cours015', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (150, 103, 'uni001_cours014', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (151, 103, 'uni001_cours013', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (152, 103, 'uni001_cours012', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (153, 103, 'uni001_doc004', 10, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (154, 103, 'uni001_doc003', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (155, 103, 'uni001_doc002', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (156, 103, 'uni001_doc001', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (157, 103, 'uni001_cours011', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (158, 103, 'uni001_cours010', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (159, 103, 'uni001_cours009', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (160, 103, 'uni001_cours008', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (161, 103, 'uni001_cours007', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (162, 103, 'uni001_cours006', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (163, 103, 'uni001_cours005', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (164, 103, 'uni001_cours004', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (165, 103, 'uni001_cours003', 10, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (166, 103, 'uni001_cours002', 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (167, 103, 'uni001_cours001', 10, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '24 noul');
INSERT INTO `adjustdetail` VALUES (168, 103, 'uni004_fac036', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (169, 103, 'uni004_fac037', 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (170, 103, 'uni004_fac035', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (171, 103, 'uni004_fac041', 653, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (172, 103, 'uni004_fac034', 440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (173, 103, 'uni004_fac033', 380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (174, 103, 'uni004_fac032', 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (175, 103, 'uni004_fac031', 456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (176, 103, 'uni004_fac030', 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (177, 103, 'uni004_fac029', 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (178, 103, 'uni004_fac028', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (179, 103, 'uni004_fac027', 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (180, 103, 'uni004_fac026', 790, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (181, 103, 'uni004_fac025', 367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (182, 103, 'uni004_fac024', 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (183, 103, 'uni004_fac023', 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (184, 103, 'uni004_fac022', 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (185, 103, 'uni004_fac021', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (186, 103, 'uni004_fac020', 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (187, 103, 'uni004_fac019', 456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (188, 103, 'uni004_fac018', 650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (189, 103, 'uni004_fac017', 685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (190, 103, 'uni004_fac016', 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (191, 103, 'uni004_fac015', 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (192, 103, 'uni004_fac040', 710, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (193, 103, 'uni004_fac039', 960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (194, 103, 'uni004_fac038', 855, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (195, 103, 'uni004_fac014', 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (196, 103, 'uni004_fac013', 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (197, 103, 'uni004_fac012', 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (198, 103, 'uni004_fac011', 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (199, 103, 'uni004_fac010', 900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (200, 103, 'uni004_fac009', 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (201, 103, 'uni004_fac008', 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (202, 103, 'uni004_fac007', 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (203, 103, 'uni004_fac006', 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (204, 103, 'uni004_fac005', 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (205, 103, 'uni004_fac004', 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (206, 103, 'uni004_fac003', 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (207, 103, 'uni004_fac002', 700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (208, 103, 'uni004_fac001', 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO `adjustdetail` VALUES (209, 100, 'uni042_course021', 200, 40, 40, 50, 50, 50, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (210, 100, 'uni042_course020', 260, 50, 50, 40, 40, 50, 0, 210, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (211, 100, 'uni042_course019', 250, 40, 50, 60, 40, 40, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (212, 100, 'uni042_course018', 240, 60, 40, 40, 50, 50, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (213, 100, 'uni042_course017', 190, 40, 50, 40, 40, 50, 50, 30, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (214, 100, 'uni042_course016', 270, 50, 40, 40, 50, 60, 60, 30, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (215, 100, 'uni042_course015', 230, 60, 50, 50, 40, 40, 50, 40, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (216, 100, 'uni042_course014', 220, 40, 40, 50, 40, 40, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (217, 100, 'uni042_course013', 210, 50, 50, 50, 40, 40, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (218, 100, 'uni042_course012', 150, 40, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (219, 100, 'uni042_course011', 140, 50, 50, 40, 50, 50, 50, 30, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (220, 100, 'uni042_course010', 100, 30, 40, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (221, 100, 'uni042_course009', 130, 40, 340, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (222, 100, 'uni042_course008', 180, 50, 40, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (223, 100, 'uni042_course007', 110, 40, 30, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (224, 100, 'uni042_course006', 70, 30, 50, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (225, 100, 'uni042_course005', 160, 40, 40, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (226, 100, 'uni042_course004', 120, 20, 50, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (227, 100, 'uni042_course003', 90, 30, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (228, 100, 'uni042_course002', 170, 30, 30, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (229, 100, 'uni042_course001', 80, 40, 40, 50, 20, 20, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 64, '7 admin');
INSERT INTO `adjustdetail` VALUES (230, 100, 'uni043_course003', 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, '7 admin');
INSERT INTO `adjustdetail` VALUES (231, 100, 'uni043_course002', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, '7 admin');
INSERT INTO `adjustdetail` VALUES (232, 100, 'uni043_course001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, '7 admin');
INSERT INTO `adjustdetail` VALUES (233, 100, 'uni044_course004', 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, '7 admin');
INSERT INTO `adjustdetail` VALUES (234, 100, 'uni044_course003', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, '7 admin');
INSERT INTO `adjustdetail` VALUES (235, 100, 'uni044_course002', 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, '7 admin');
INSERT INTO `adjustdetail` VALUES (236, 100, 'uni044_course001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, '7 admin');
INSERT INTO `adjustdetail` VALUES (237, 100, 'uni045_course003', 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, '7 admin');
INSERT INTO `adjustdetail` VALUES (238, 100, 'uni045_course002', 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, '7 admin');
INSERT INTO `adjustdetail` VALUES (239, 100, 'uni045_course001', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, '7 admin');
INSERT INTO `adjustdetail` VALUES (240, 100, 'uni046_course002', 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, '7 admin');
INSERT INTO `adjustdetail` VALUES (241, 100, 'uni046_course001', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, '7 admin');
INSERT INTO `adjustdetail` VALUES (242, 100, 'uni047_course002', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, '7 admin');
INSERT INTO `adjustdetail` VALUES (243, 100, 'uni047_course001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, '7 admin');
INSERT INTO `adjustdetail` VALUES (244, 100, 'uni048_course003', 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, '7 admin');
INSERT INTO `adjustdetail` VALUES (245, 100, 'uni048_course002', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, '7 admin');
INSERT INTO `adjustdetail` VALUES (246, 100, 'uni048_course001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, '7 admin');
INSERT INTO `adjustdetail` VALUES (247, 100, 'uni049_Course001', 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, '7 admin');
INSERT INTO `adjustdetail` VALUES (248, 100, 'uni050_Course003', 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, '7 admin');
INSERT INTO `adjustdetail` VALUES (249, 100, 'uni050_Course002', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, '7 admin');
INSERT INTO `adjustdetail` VALUES (250, 100, 'uni050_Course001', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, '7 admin');
INSERT INTO `adjustdetail` VALUES (251, 100, 'uni051_Course002', 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, '7 admin');
INSERT INTO `adjustdetail` VALUES (252, 100, 'uni051_Course001', 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, '7 admin');
INSERT INTO `adjustdetail` VALUES (253, 98, 'uni057_Course003', 200, 0, 0, 0, 0, 0, 0, 0, 20, 30, 40, 40, 30, 30, 40, 50, 47, '7 admin');
INSERT INTO `adjustdetail` VALUES (254, 98, 'uni057_Course002', 400, 0, 0, 0, 0, 0, 0, 0, 10, 40, 30, 40, 40, 40, 30, 50, 47, '7 admin');
INSERT INTO `adjustdetail` VALUES (255, 98, 'uni057_Course001', 300, 0, 0, 0, 0, 0, 0, 0, 10, 20, 50, 30, 40, 40, 40, 40, 47, '7 admin');
INSERT INTO `adjustdetail` VALUES (256, 98, 'uni058_Course008', 350, 0, 0, 0, 0, 0, 0, 0, 30, 30, 20, 30, 20, 30, 10, 30, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (257, 98, 'uni058_Course007', 450, 0, 0, 0, 0, 0, 0, 0, 20, 20, 20, 40, 30, 40, 20, 40, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (258, 98, 'uni058_Course006', 400, 0, 0, 0, 0, 0, 0, 0, 20, 30, 30, 30, 40, 40, 30, 30, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (259, 98, 'uni058_Course005', 300, 0, 0, 0, 0, 0, 0, 0, 20, 20, 20, 30, 30, 30, 30, 50, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (260, 98, 'uni058_Course004', 100, 0, 0, 0, 0, 0, 0, 0, 30, 30, 40, 450, 40, 30, 30, 50, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (261, 98, 'uni058_Course003', 150, 0, 0, 0, 0, 0, 0, 0, 40, 30, 50, 50, 40, 40, 40, 40, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (262, 98, 'uni058_Course002', 250, 0, 0, 0, 0, 0, 0, 0, 40, 30, 10, 40, 10, 20, 10, 20, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (263, 98, 'uni058_Course001', 200, 0, 0, 0, 0, 0, 0, 0, 30, 30, 50, 30, 50, 30, 30, 50, 48, '7 admin');
INSERT INTO `adjustdetail` VALUES (264, 98, 'uni059_Course008', 350, 40, 30, 30, 50, 40, 80, 70, 50, 60, 60, 40, 50, 30, 30, 40, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (265, 98, 'uni059_Course007', 450, 80, 40, 30, 30, 30, 70, 70, 70, 60, 40, 40, 40, 30, 50, 40, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (266, 98, 'uni059_Course006', 400, 40, 430, 40, 60, 40, 60, 670, 60, 50, 50, 50, 50, 20, 40, 30, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (267, 98, 'uni059_Course005', 150, 80, 0, 40, 60, 50, 70, 60, 40, 50, 50, 50, 60, 40, 40, 30, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (268, 98, 'uni059_Course004', 100, 70, 40, 50, 50, 50, 60, 70, 750, 40, 60, 70, 70, 30, 50, 40, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (269, 98, 'uni059_Course003', 200, 90, 30, 50, 40, 60, 70, 60, 60, 60, 50, 60, 60, 330, 40, 50, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (270, 98, 'uni059_Course002', 300, 70, 40, 50, 40, 50, 60, 70, 50, 70, 60, 60, 60, 60, 30, 40, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (271, 98, 'uni059_Course001', 250, 50, 30, 40, 30, 40, 70, 60, 60, 70, 70, 70, 70, 70, 40, 30, 49, '7 admin');
INSERT INTO `adjustdetail` VALUES (272, 98, 'uni060_Course008', 450, 0, 0, 0, 0, 0, 0, 0, 40, 40, 40, 40, 30, 40, 40, 40, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (273, 98, 'uni060_Course007', 400, 0, 0, 0, 0, 0, 0, 0, 30, 40, 40, 40, 50, 40, 50, 40, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (274, 98, 'uni060_Course006', 350, 0, 0, 0, 0, 0, 0, 0, 40, 50, 30, 30, 40, 30, 40, 50, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (275, 98, 'uni060_Course005', 150, 0, 0, 0, 0, 0, 0, 0, 40, 30, 70, 50, 60, 60, 70, 60, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (276, 98, 'uni060_Course004', 100, 0, 0, 0, 0, 0, 0, 0, 40, 530, 50, 450, 40, 60, 60, 70, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (277, 98, 'uni060_Course003', 200, 0, 0, 0, 0, 0, 0, 0, 40, 440, 450, 50, 40, 70, 60, 70, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (278, 98, 'uni060_Course002', 300, 0, 0, 0, 0, 0, 0, 0, 40, 40, 50, 40, 40, 30, 40, 50, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (279, 98, 'uni060_Course001', 250, 0, 0, 0, 0, 0, 0, 0, 50, 30, 50, 50, 50, 40, 50, 40, 50, '7 admin');
INSERT INTO `adjustdetail` VALUES (280, 98, 'uni061_Course004', 250, 0, 0, 0, 0, 0, 0, 0, 40, 30, 40, 40, 50, 40, 40, 40, 73, '7 admin');
INSERT INTO `adjustdetail` VALUES (281, 98, 'uni061_Course003', 100, 0, 0, 0, 0, 0, 0, 0, 40, 30, 40, 40, 40, 30, 30, 40, 73, '7 admin');
INSERT INTO `adjustdetail` VALUES (282, 98, 'uni061_Course002', 150, 0, 0, 0, 0, 0, 0, 0, 40, 40, 30, 30, 30, 40, 40, 30, 73, '7 admin');
INSERT INTO `adjustdetail` VALUES (283, 98, 'uni061_Course001', 200, 0, 0, 0, 0, 0, 0, 0, 40, 40, 40, 40, 40, 30, 40, 40, 73, '7 admin');
INSERT INTO `adjustdetail` VALUES (284, 97, 'uni062_Course003', 500, 2, 3, 2, 0, 40, 50, 40, 40, 50, 40, 40, 10, 40, 30, 30, 51, '7 admin');
INSERT INTO `adjustdetail` VALUES (285, 97, 'uni062_Course002', 700, 4, 3, 3, 0, 30, 30, 30, 30, 40, 30, 30, 20, 30, 20, 30, 51, '7 admin');
INSERT INTO `adjustdetail` VALUES (286, 97, 'uni062_Course001', 1000, 5, 3, 5, 0, 40, 30, 30, 30, 30, 40, 40, 30, 30, 10, 20, 51, '7 admin');
INSERT INTO `adjustdetail` VALUES (287, 97, 'uni063_Course005', 300, 43, 40, 430, 40, 40, 50, 30, 50, 30, 430, 40, 40, 30, 20, 340, 70, '7 admin');
INSERT INTO `adjustdetail` VALUES (288, 97, 'uni063_Course004', 700, 4, 3, 50, 2, 50, 60, 20, 60, 40, 40, 30, 30, 20, 20, 30, 70, '7 admin');
INSERT INTO `adjustdetail` VALUES (289, 97, 'uni063_Course003', 600, 3, 4, 40, 50, 30, 60, 30, 40, 40, 50, 40, 230, 40, 50, 30, 70, '7 admin');
INSERT INTO `adjustdetail` VALUES (290, 97, 'uni063_Course002', 500, 20, 3, 40, 20, 50, 60, 30, 40, 40, 30, 30, 40, 40, 30, 30, 70, '7 admin');
INSERT INTO `adjustdetail` VALUES (291, 97, 'uni063_Course001', 400, 4, 5, 50, 40, 50, 50, 40, 30, 30, 40, 50, 30, 20, 30, 40, 70, '7 admin');
INSERT INTO `adjustdetail` VALUES (292, 97, 'uni064_Course005', 500, 3, 4, 3, 50, 50, 0, 50, 60, 50, 30, 40, 210, 20, 20, 40, 65, '7 admin');
INSERT INTO `adjustdetail` VALUES (293, 97, 'uni064_Course004', 600, 3, 4, 5, 50, 60, 0, 40, 50, 30, 40, 30, 20, 30, 20, 30, 65, '7 admin');
INSERT INTO `adjustdetail` VALUES (294, 97, 'uni064_Course003', 300, 3, 4, 3, 50, 50, 0, 50, 40, 40, 50, 40, 20, 230, 10, 30, 65, '7 admin');
INSERT INTO `adjustdetail` VALUES (295, 97, 'uni064_Course002', 200, 3, 4, 4, 60, 60, 50, 40, 50, 505, 40, 30, 30, 230, 30, 40, 65, '7 admin');
INSERT INTO `adjustdetail` VALUES (296, 97, 'uni064_Course001', 400, 3, 4, 4, 60, 60, 0, 40, 430, 60, 40, 30, 10, 30, 210, 30, 65, '7 admin');
INSERT INTO `adjustdetail` VALUES (297, 96, 'uni065_Course004', 600, 6, 2, 3, 1, 2, 2, 2, 3, 3, 1, 3, 2, 1, 2, 2, 69, '7 admin');
INSERT INTO `adjustdetail` VALUES (298, 96, 'uni065_Course003', 1000, 3, 2, 2, 2, 2, 2, 3, 3, 2, 1, 3, 2, 1, 2, 2, 69, '7 admin');
INSERT INTO `adjustdetail` VALUES (299, 96, 'uni065_Course002', 1500, 1, 2, 2, 2, 2, 2, 4, 4, 3, 3, 9, 2, 2, 2, 3, 69, '7 admin');
INSERT INTO `adjustdetail` VALUES (300, 96, 'uni065_Course001', 800, 3, 2, 3, 2, 3, 3, 2, 3, 3, 4, 3, 2, 3, 1, 4, 69, '7 admin');
INSERT INTO `adjustdetail` VALUES (301, 94, 'uni070_Course002', 200, 3, 3, 3, 3, 2, 2, 3, 3, 2, 3, 1, 3, 2, 3, 3, 72, '7 admin');
INSERT INTO `adjustdetail` VALUES (302, 94, 'uni070_Course001', 300, 3, 2, 3, 3, 2, 2, 3, 3, 2, 2, 2, 2, 2, 3, 3, 72, '7 admin');
INSERT INTO `adjustdetail` VALUES (303, 103, 'uni002_Course026', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (304, 103, 'uni002_Course025', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (305, 103, 'uni002_Course024', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (306, 103, 'uni002_Course023', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (307, 103, 'uni002_Course022', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (308, 103, 'uni002_Course039', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (309, 103, 'uni002_Course038', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (310, 103, 'uni002_Course033', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (311, 103, 'uni002_Course032', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (312, 103, 'uni002_Course021', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (313, 103, 'uni002_Course020', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (314, 103, 'uni002_Course019', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (315, 103, 'uni002_Course043', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (316, 103, 'uni002_Course042', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (317, 103, 'uni002_Course031', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (318, 103, 'uni002_Course030', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (319, 103, 'uni002_Course018', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (320, 103, 'uni002_Course017', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (321, 103, 'uni002_Course041', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (322, 103, 'uni002_Course040', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (323, 103, 'uni002_Course036', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (324, 103, 'uni002_Course035', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (325, 103, 'uni002_Course034', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (326, 103, 'uni002_Course016', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (327, 103, 'uni002_Course015', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (328, 103, 'uni002_Course014', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (329, 103, 'uni002_Course013', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (330, 103, 'uni002_Course012', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (331, 103, 'uni002_Course037', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (332, 103, 'uni002_Course029', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (333, 103, 'uni002_Course028', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (334, 103, 'uni002_Course027', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (335, 103, 'uni002_Course011', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (336, 103, 'uni002_Course010', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (337, 103, 'uni002_Course009', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (338, 103, 'uni002_Course008', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (339, 103, 'uni002_Course007', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (340, 103, 'uni002_Course006', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (341, 103, 'uni002_Course005', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (342, 103, 'uni002_Course004', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (343, 103, 'uni002_Course003', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (344, 103, 'uni002_Course002', 430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (345, 103, 'uni002_Course001', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO `adjustdetail` VALUES (346, 103, 'uni003_Course037', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (347, 103, 'uni003_course032', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (348, 103, 'uni003_course031', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (349, 103, 'uni003_course030', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (350, 103, 'uni003_course029', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (351, 103, 'uni003_course028', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (352, 103, 'uni003_Course036', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (353, 103, 'uni003_course026', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (354, 103, 'uni003_course025', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (355, 103, 'uni003_course024', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (356, 103, 'uni003_course023', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (357, 103, 'uni003_course022', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (358, 103, 'uni003_course021', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (359, 103, 'uni003_course020', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (360, 103, 'uni003_course019', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (361, 103, 'uni003_Course035', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (362, 103, 'uni003_Course034', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (363, 103, 'uni003_Course033', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (364, 103, 'uni003_course018', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (365, 103, 'uni003_course017', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (366, 103, 'uni003_course016', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (367, 103, 'uni003_course015', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (368, 103, 'uni003_course014', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (369, 103, 'uni003_course013', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (370, 103, 'uni003_course012', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (371, 103, 'uni003_course011', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (372, 103, 'uni003_course010', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (373, 103, 'uni003_course009', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (374, 103, 'uni003_course008', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (375, 103, 'uni003_course007', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (376, 103, 'uni003_course006', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (377, 103, 'uni003_course005', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (378, 103, 'uni003_course004', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (379, 103, 'uni003_course003', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (380, 103, 'uni003_course002', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);
INSERT INTO `adjustdetail` VALUES (381, 103, 'uni003_course001', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fac_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `fac_id`(`fac_id`) USING BTREE,
  INDEX `course_ibfk_2`(`level_id`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `course_level` (`level_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('uni001_cours001', 'ຄູຈິດຕະສຶກສາສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours002', 'ໍບໍລິຫານການສຶກສາ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours003', 'ຄູຄະນິດສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours004', 'ຄູຟິຊິກສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours005', 'ຄູເຄມີສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours006', 'ຄູພາສາລາວ-ວັນນະຄະດີ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours007', 'ຄູພາສາອັງກິດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours008', 'ຄູພາສາຝຮັ່ງ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours009', 'ຄູປະຫວັດສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours010', 'ຄູພູມສາດ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours011', 'ຄູວິທະຍາສາດການເມືອງ', 'uni001_fac001', 4);
INSERT INTO `course` VALUES ('uni001_cours012', 'ພາສາລາວ-ວັນນະຄະດີ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours013', 'ສື່ສານມວນຊົນ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours014', 'ພາສາຝຮັ່ງ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours015', 'ພາສາອັງກິດ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours016', 'ພາສາຫວຽດນາມ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours017', 'ພາສາຈີນ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours018', 'ພາສາຍີ່ປຸ່ນ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours019', 'ພາສາເກົາຫຼີ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours020', 'ພາສາເຢຍລະມັນ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours021', 'ພາສາລັດເຊຍ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours022', 'ພາສາແອດສະປາຍໂຍນ', 'uni001_fac002', 4);
INSERT INTO `course` VALUES ('uni001_cours023', 'ປະຫວັດສາດ ແລະ ມະນຸດວິທະຍາສາດ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours024', 'ບູຮານວິທະຍາ ແລະ ການຄຸ້ມຄອງມໍລະດົກ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours025', 'ສັງຄົມສັງເຄາະ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours026', 'ພັດທະນາຊຸມຊົນ ແລະ ຊົນນະບົດ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours027', 'ການເມືອງ ແລະ ບໍລິຫານລັດຖະກິດ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours028', 'ບັນນາຮັກສາດ ແລະ ສາລະສົນເທດ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours029', 'ພູມີສາດ ແລະ ພູມີສາລະສົນເທດ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours030', 'ການທ່ອງທ່ຽວ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours031', 'ການໂຮງແຮມ', 'uni001_fac003', 4);
INSERT INTO `course` VALUES ('uni001_cours032', 'ເສດຖະສາດນຳໃຊ້', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours033', 'ເສດຖະສາດພັດທະນາ ແລະ ການວາງແຜນ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours034', 'ເສດຖະສາດການເງິນພາກລັດ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours035', 'ບໍລິຫານທຸລະກິດທົ່ວໄປ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours036', 'ການຕະຫຼາດ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours037', 'ການບັນຊີ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours038', 'ການກວດສອບ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours039', 'ພາສີ ແລະ ສ່ວຍສາອາກອນ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours040', 'ການເງິນ-ການທະນາຄານ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours041', 'ການຄ້າ', 'uni001_fac004', 4);
INSERT INTO `course` VALUES ('uni001_cours042', 'ເສດຖະສາດພັດທະນາ ແລະ ການວາງແຜນ', 'uni001_fac014', 4);
INSERT INTO `course` VALUES ('uni001_cours043', 'ການເງິນພາກລັດ', 'uni001_fac014', 4);
INSERT INTO `course` VALUES ('uni001_cours044', 'ກົດໝາຍແພ່ງ', 'uni001_fac005', 4);
INSERT INTO `course` VALUES ('uni001_cours045', 'ກົດໝາຍອາຍາ', 'uni001_fac005', 4);
INSERT INTO `course` VALUES ('uni001_cours046', 'ກົດ​ໝາຍ​ປົກ​ຄອງ', 'uni001_fac005', 4);
INSERT INTO `course` VALUES ('uni001_cours047', 'ກົດໝາຍທຸລະກິດ', 'uni001_fac005', 4);
INSERT INTO `course` VALUES ('uni001_cours048', 'ການຕ່າງປະເທດ', 'uni001_fac005', 4);
INSERT INTO `course` VALUES ('uni001_cours049', 'ຄະນິດສາດ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours050', 'ສະຖິຕິນຳໃຊ້', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours051', 'ຄະນິດສາດສຳລັບເສດຖະສາດ-ບໍລິຫານທຸລະກິດ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours052', 'ຟີຊິກສາດ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours053', 'ວັດສະດຸສາດ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours054', 'ຟີຊິກນິວເຄຼຍ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours055', 'ເຄມີສາດ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours056', 'ເຄມີສິ່ງແວດລ້ອມ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours057', 'ຊີວະວິທະຍາ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours058', 'ໄບໂອເຕັກໂນໂລຊີ ຊີວະພາບ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours060', 'ວິທະຍາສາດຄອມພິວເຕີ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours061', 'ການພັດທະນາເວບໄຊ', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours062', 'ການ​ພັດ​ທະ​ນາ​ໂປ​ຣ​ແກ​ຣມ​', 'uni001_fac006', 4);
INSERT INTO `course` VALUES ('uni001_cours063', 'ວິສະວະກຳ ໂຍທາ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours064', 'ວິສະວະກຳ ສິ່ງແວດລ້ອມ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours065', 'ວິສະວະກຳ ບໍ່ແຮ່', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours066', 'ວິສະວະກຳ ກົນຈັກ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours067', 'ວິສະວະກຳ ອຸສາຫະກຳ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours068', 'ວິສະວະກຳ ເຄມີ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours069', 'ວິສະວະກຳ ໄຟຟ້າ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours070', 'ວິສະວະກຳ ໄຟຟ້າພະລັງງານນ້ຳ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours071', 'ວິສະວະກຳ ເອ​ເລັກ​ໂຕຼ​ນິກ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours072', 'ວິສະວະກຳ ໂທລະຄົມມະນາຄົມ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours073', 'ວິສະວະກຳ ຄອມພິວເຕີ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours074', 'ວິສະວະກຳເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours075', 'ວິສະວະກຳ ຂົວ-ທາງ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours076', 'ວິສະວະກຳ ຂົນສົ່ງ ແລະ ພາ​ລາ​ທິ​ການ', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_cours077', 'ການປູກຝັງ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours078', 'ການປ້ອງກັນພືດ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours079', 'ເສດຖະກິດຊົນ​ນະ​ບົດ ກະສິກຳ ແລະ ເຕັກໂນໂລຊີອາຫານ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours080', 'ລ້ຽງສັດ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours081', 'ການປະມົງ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours082', 'ສັດຕະວະແພດ', 'uni001_fac008', 4);
INSERT INTO `course` VALUES ('uni001_cours083', 'ເສດຖະກິດປ່າໄມ້ ແລະ ເຕັກໂນໂລຊີປຸງແຕ່ງໄມ້', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours084', 'ປ່າໄມ້ຊຸມຊົນ ແລະ ພັດທະນາຊົນນະບົດ', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours085', 'ການຈັດສັນຄຸ້ມຄອງຊັບພະຍາກອນປ່າໄມ້', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours086', 'ຈັດສັນຄຸ້ມຄອງແຫຼ່ງນ້ຳ ແລະ ວາງແຜນນຳໃຊ້ທີ່ດິນ', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours087', 'ການທ່ອງທ່ຽວອານຸຮັກ', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours088', 'ການອະນຸ​ຮັກປ່າໄມ້ ແລະ ສັດປ່າ', 'uni001_fac009', 4);
INSERT INTO `course` VALUES ('uni001_cours089', 'ສະຖາປັດຕະຍະກຳສາດ', 'uni001_fac010', 4);
INSERT INTO `course` VALUES ('uni001_cours090', 'ສິ່ງແວດລ້ອມ-ຜັງເມືອງ', 'uni001_fac010', 4);
INSERT INTO `course` VALUES ('uni001_cours091', 'ວິທະຍາການອາຄານ', 'uni001_fac010', 4);
INSERT INTO `course` VALUES ('uni001_cours092', 'ອອກແບບຜະລິດຕະພັນ', 'uni001_fac010', 4);
INSERT INTO `course` VALUES ('uni001_cours093', 'ອອກແບບຕົກແຕ່ງ', 'uni001_fac010', 4);
INSERT INTO `course` VALUES ('uni001_cours094', 'ວິທະຍາສາດສິ່ງແວດລ້ອມ', 'uni001_fac011', 4);
INSERT INTO `course` VALUES ('uni001_cours095', 'ການຈັດການສິ່ງແວດລ້ອມ', 'uni001_fac011', 4);
INSERT INTO `course` VALUES ('uni001_cours096', 'ການວາງແຜນພັດທະນາ', 'uni001_fac011', 4);
INSERT INTO `course` VALUES ('uni001_cours097', 'ເຕັກໂນໂລຊີສິ່ງແວດລ້ອມ', 'uni001_fac011', 4);
INSERT INTO `course` VALUES ('uni001_cours098', 'ວິສະວະກຳ ຊົບລະປະທານ', 'uni001_fac012', 4);
INSERT INTO `course` VALUES ('uni001_cours099', 'ການຄຸ້ມຄອງຊັບພະຍາກອນນ້ຳ', 'uni001_fac012', 4);
INSERT INTO `course` VALUES ('uni001_cours100', 'ອຸຕຸນິຍົມ ແລະ ອຸທົກກະສາດ', 'uni001_fac012', 4);
INSERT INTO `course` VALUES ('uni001_cours101', 'ນັກຮຽນພອນສະຫວັນກິລາ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_cours102', 'ຄູພະລະສຶກສາ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_cours103', '​ຄູ​​ເຝິກ​ກິ​ລາ​ແລ່ນ ແລະ ລານ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_cours104', '​ຄູ​​ເຝິກ​ກິ​ລາ​ບານ​ເຕະ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_cours105', '​ວິ​ທະ​ຍາ​ສາດ​ການ​ກິ​ລາ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_cours106', '​ບໍ​ລິ​ຫານ​ການ​ກິ​ລາ', 'uni001_fac013', 4);
INSERT INTO `course` VALUES ('uni001_doc001', 'ຄູຄະນິດສາດ (ຕໍ່ເນື່ອງ)', 'uni001_fac001', 3);
INSERT INTO `course` VALUES ('uni001_doc002', 'ຄູວິທະຍາສາດການເມືອງ (ຕໍ່ເນື່ອງ)', 'uni001_fac001', 3);
INSERT INTO `course` VALUES ('uni001_doc003', 'ພາສາລາວ-ວັນນະຄະດີ (ຕໍ່ເນື່ອງ)', 'uni001_fac001', 3);
INSERT INTO `course` VALUES ('uni001_doc004', 'ຄູພາສາອັງກິດ (ຕໍ່ເນື່ອງ)', 'uni001_fac001', 3);
INSERT INTO `course` VALUES ('uni001_doc005', 'ພາສາອັງກິດ (ຕໍ່ເນື່ອງ)', 'uni001_fac002', 3);
INSERT INTO `course` VALUES ('uni001_doc006', 'ການເມືອງ ແລະ ບໍລິຫານລັດຖະກິດ (ຕໍ່ເນື່ອງ)', 'uni001_fac003', 3);
INSERT INTO `course` VALUES ('uni001_doc007', 'ການທ່ອງທ່ຽວ (ຕໍ່ເນື່ອງ)', 'uni001_fac003', 3);
INSERT INTO `course` VALUES ('uni001_doc008', 'ການໂຮງແຮມ (ຕໍ່ເນື່ອງ)', 'uni001_fac003', 3);
INSERT INTO `course` VALUES ('uni001_doc009', 'ເສດ​ຖະ​ສາດ​ການ​ເງິນ​ພາກ​ລັດ (ຕໍ່ເນື່ອງ)', 'uni001_fac004', 3);
INSERT INTO `course` VALUES ('uni001_doc010', 'ບໍລິຫານທຸລະກິດທົ່ວໄປ (ຕໍ່ເນື່ອງ)', 'uni001_fac004', 3);
INSERT INTO `course` VALUES ('uni001_doc011', '​ການ​ບັນ​ຊີ (ຕໍ່ເນື່ອງ)', 'uni001_fac004', 3);
INSERT INTO `course` VALUES ('uni001_doc012', '​ການ​ຄ້າ (ຕໍ່ເນື່ອງ)', 'uni001_fac004', 3);
INSERT INTO `course` VALUES ('uni001_doc013', 'ກົດໝາຍແພ່ງ (ຕໍ່​ເນື່ອງ)', 'uni001_fac005', 3);
INSERT INTO `course` VALUES ('uni001_doc014', 'ກົດໝາຍອາຍາ (ຕໍ່​ເນື່ອງ)', 'uni001_fac005', 3);
INSERT INTO `course` VALUES ('uni001_doc015', 'ກົດ​ໝາຍປົກຄອງ (ຕໍ່​ເນື່ອງ)', 'uni001_fac005', 3);
INSERT INTO `course` VALUES ('uni001_doc016', 'ກົດໝາຍທຸລະກິດ (ຕໍ່​ເນື່ອງ)', 'uni001_fac005', 3);
INSERT INTO `course` VALUES ('uni001_doc017', 'ວິສະວະກຳ ໂຍທາ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc018', 'ວິສະວະກຳ ກົນຈັກ(ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc019', 'ວິສະວະກຳ ໄຟຟ້າ(ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc020', 'ວິສະວະກຳ ເອເລັກໂຕຣນິກ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 4);
INSERT INTO `course` VALUES ('uni001_doc021', 'ວິສະວະກຳ ໂທລະຄົມມະນາຄົມ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc022', 'ວິສະວະກຳ ຄອມພິວເຕີ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc023', 'ວິສະວະກຳ ຂໍ້ມູນຂ່າວສານ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc024', 'ວິສະວະກຳ ຂົວ-ທາງ (ຕໍ່ເນື່ອງ)', 'uni001_fac007', 3);
INSERT INTO `course` VALUES ('uni001_doc025', 'ການປູກຝັງ (ຕໍ່ເນື່ອງ)', 'uni001_fac008', 3);
INSERT INTO `course` VALUES ('uni001_doc026', 'ການລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni001_fac008', 3);
INSERT INTO `course` VALUES ('uni001_doc027', 'ປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni001_fac009', 3);
INSERT INTO `course` VALUES ('uni001_doc028', 'ວິສະວະກຳຊົນລະປະທານ (ຕໍ່ເນື່ອງ)', 'uni001_fac012', 3);
INSERT INTO `course` VALUES ('uni001_doc029', 'ການ​ຄຸ້ມ​ຄອງ​ຊັບ​ພະ​ຍາ​ກອນ​ນ້ຳ (ຕໍ່ເນື່ອງ)', 'uni001_fac012', 3);
INSERT INTO `course` VALUES ('uni001_doc030', 'ຄູພະລະສຶກສາ (ຕໍ່​ເນື່ອງ)', 'uni001_fac013', 3);
INSERT INTO `course` VALUES ('uni002_Course001', 'ຄູຊີວະ', 'uni002_fac001', 4);
INSERT INTO `course` VALUES ('uni002_Course002', 'ຄູພາສາລາວ', 'uni002_fac001', 4);
INSERT INTO `course` VALUES ('uni002_Course003', 'ສາຂາວິຊາພາສາອັງກິດທົ່ວໄປ', 'uni002_fac001', 4);
INSERT INTO `course` VALUES ('uni002_Course004', 'ພາສາຫວຽດນາມ', 'uni002_fac001', 4);
INSERT INTO `course` VALUES ('uni002_Course005', 'ພາສາລາວ-ວັນນະຄະດີທົ່ວໄປົ', 'uni002_fac001', 4);
INSERT INTO `course` VALUES ('uni002_Course006', 'ເສດຖະສາດ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course007', 'ການຄຸ້ມຄອງ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course008', 'ການບໍລິຫານການທ່ອງທ່ຽວ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course009', 'ການບໍລິຫານການໂຮງແຮມ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course010', 'ການຕະຫຼາດ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course011', 'ການພັດທະນາຊຸມຊົນ', 'uni002_fac002', 4);
INSERT INTO `course` VALUES ('uni002_Course012', 'ປູກຟັງ', 'uni002_fac003', 4);
INSERT INTO `course` VALUES ('uni002_Course013', 'ພາກວິຊາລ້ຽງສັດ', 'uni002_fac003', 4);
INSERT INTO `course` VALUES ('uni002_Course014', 'ຊັບພະຍາກອນປ່າໄມ້ ແລະ ສິ່ງແວດລ້ອມ', 'uni002_fac003', 4);
INSERT INTO `course` VALUES ('uni002_Course015', 'ສັດຕະວະແພດ', 'uni002_fac003', 4);
INSERT INTO `course` VALUES ('uni002_Course016', 'ປຸງຜະລິດຕະພັນກະສິກຳ', 'uni002_fac003', 4);
INSERT INTO `course` VALUES ('uni002_Course017', 'ສາຂາວິຊານິຕິສາດ', 'uni002_fac004', 4);
INSERT INTO `course` VALUES ('uni002_Course018', 'ສາຂາວິຊາລັດຖະສາດ', 'uni002_fac004', 4);
INSERT INTO `course` VALUES ('uni002_Course019', 'ວິສະວະກຳໄຟຟ້າ', 'uni002_fac005', 4);
INSERT INTO `course` VALUES ('uni002_Course020', 'ວິສະວະກຳໂຍທາ', 'uni002_fac005', 4);
INSERT INTO `course` VALUES ('uni002_Course021', 'ສະຖາປັດຕະຍະກຳ', 'uni002_fac005', 4);
INSERT INTO `course` VALUES ('uni002_Course022', 'ຟິຊິກສາດ', 'uni002_fac006', 4);
INSERT INTO `course` VALUES ('uni002_Course023', 'ເຄມີສາດ', 'uni002_fac006', 4);
INSERT INTO `course` VALUES ('uni002_Course024', 'ເຄມີສາດ', 'uni002_fac006', 4);
INSERT INTO `course` VALUES ('uni002_Course025', 'ຊີວະສາດ', 'uni002_fac006', 4);
INSERT INTO `course` VALUES ('uni002_Course026', 'ຄະນິດສາດ', 'uni002_fac006', 4);
INSERT INTO `course` VALUES ('uni002_Course027', 'ສາຂາວິຊາເສດຖະສາດ (ຕໍ່ເນື່ອງ)', 'uni002_fac002', 3);
INSERT INTO `course` VALUES ('uni002_Course028', 'ສາຂາວິຊາຄຸ້ມຄອງ (ຕໍ່ເນື່ອງ)', 'uni002_fac002', 3);
INSERT INTO `course` VALUES ('uni002_Course029', 'ການບໍລິຫານການທ່ອງທ່ຽວ (ຕໍ່ເນື່ອງ)', 'uni002_fac002', 3);
INSERT INTO `course` VALUES ('uni002_Course030', 'ພາກວິຊານິຕິສາດ (ຕໍ່ເນື່ອງ)', 'uni002_fac004', 3);
INSERT INTO `course` VALUES ('uni002_Course031', 'ພາກວິຊາລັດຖະສາດ (ຕໍ່ເນື່ອງ)', 'uni002_fac004', 3);
INSERT INTO `course` VALUES ('uni002_Course032', 'ພາກວິຊາວິສະວະກຳໄຟຟ້າ (ຕໍ່ເນື່ອງ)', 'uni002_fac005', 3);
INSERT INTO `course` VALUES ('uni002_Course033', 'ພາກວິຊາໂຍທາ (ຕໍ່ເນື່ອງ)', 'uni002_fac005', 3);
INSERT INTO `course` VALUES ('uni002_Course034', 'ສາຂາວິຊາປູກຟັງ (ຕໍ່ເນື່ອງ)', 'uni002_fac003', 3);
INSERT INTO `course` VALUES ('uni002_Course035', 'ສາຂາວິຊາລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni002_fac003', 3);
INSERT INTO `course` VALUES ('uni002_Course036', 'ພາກວິຊາປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni002_fac003', 3);
INSERT INTO `course` VALUES ('uni002_Course037', 'ສາຂາວິຊາການທ້ອງທ່ຽວ ແລະ ບໍລິການ', 'uni002_fac002', 2);
INSERT INTO `course` VALUES ('uni002_Course038', 'ສາຂາວິຊາວິສະວະກຳໂຍທາ', 'uni002_fac005', 2);
INSERT INTO `course` VALUES ('uni002_Course039', 'ສາຂາວິຊາວິສະວະກຳໄຟຟ້າ', 'uni002_fac005', 2);
INSERT INTO `course` VALUES ('uni002_Course040', 'ປູກຟັງ', 'uni002_fac003', 2);
INSERT INTO `course` VALUES ('uni002_Course041', 'ລ້ຽງສັດ', 'uni002_fac003', 2);
INSERT INTO `course` VALUES ('uni002_Course042', 'ພາກວິຊານິຕິສາດ', 'uni002_fac004', 2);
INSERT INTO `course` VALUES ('uni002_Course043', 'ພາກວິຊາລັດຖະສາດ', 'uni002_fac004', 2);
INSERT INTO `course` VALUES ('uni003_course001', 'ຄູຄະນິດສາດ', 'uni003_Fac001', 4);
INSERT INTO `course` VALUES ('uni003_course002', 'ຄູຟີຊິກສາດ', 'uni003_Fac001', 4);
INSERT INTO `course` VALUES ('uni003_course003', 'ຄູວິທະຍາສາດການເມືອງ', 'uni003_Fac001', 4);
INSERT INTO `course` VALUES ('uni003_course004', 'ຄູພາສາອັງກິດ', 'uni003_Fac001', 4);
INSERT INTO `course` VALUES ('uni003_course005', 'ເສດຖະສາດ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course006', 'ບໍລິຫານທຸລະກິດທົ່ວໄປ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course007', 'ບໍລິຫານການທ່ອງທ່ຽວ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course008', 'ບໍລິຫານການໂຮງແຮມ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course009', 'ບໍລິຫານທຸລະກິດ (IT)', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course010', 'ບໍລິຫານທຸລະກິດລະຫວ່າງປະເທດ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course011', 'ການເງິນ ແລະ ການທະນາຄານ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course012', 'ການບັນຊີ', 'uni003_Fac002', 4);
INSERT INTO `course` VALUES ('uni003_course013', 'ວິທະຍາສາດພືດ', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course014', 'ວິທະຍາສາດສັດ', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course015', 'ຊັບພະຍາກອນປ່າໄມ້', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course016', 'ວິທະຍາສາດ ແລະ ເຕັກໂນໂລຊີອາຫານ', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course017', 'ທ່ອງທ່ຽວນິເວດວິທະຍາ', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course018', 'ພັດທະນາຊົນນະບົດ', 'uni003_Fac003', 4);
INSERT INTO `course` VALUES ('uni003_course019', 'ສະຖາປັດຕະຍະກຳ', 'uni003_Fac004', 4);
INSERT INTO `course` VALUES ('uni003_course020', 'ບໍລິຫານຈັດການພາຍໃນ', 'uni003_Fac004', 4);
INSERT INTO `course` VALUES ('uni003_course021', 'ສະຖາປັດຕະຍະກຳພາຍໃນ', 'uni003_Fac004', 4);
INSERT INTO `course` VALUES ('uni003_course022', 'ວິສະວະກຳໄຟຟ້າ', 'uni003_Fac005', 4);
INSERT INTO `course` VALUES ('uni003_course023', 'ວິສະວະກຳຄອມພິວເຕີ', 'uni003_Fac005', 4);
INSERT INTO `course` VALUES ('uni003_course024', 'ວິສະວະກຳໂຍທາ', 'uni003_Fac005', 4);
INSERT INTO `course` VALUES ('uni003_course025', 'ເຕັກໂນໂລຊີໂລຈິດສະຕິກ', 'uni003_Fac005', 4);
INSERT INTO `course` VALUES ('uni003_course026', 'ວິສະວະກຳວັດສະດຸ', 'uni003_Fac005', 4);
INSERT INTO `course` VALUES ('uni003_course028', 'ພາສາລາວ-ວັນນະຄະດີ', 'uni003_Fac006', 4);
INSERT INTO `course` VALUES ('uni003_course029', 'ພາສາອັງກິດ', 'uni003_Fac006', 4);
INSERT INTO `course` VALUES ('uni003_course030', 'ສື່ສານມວນຊົນ', 'uni003_Fac006', 4);
INSERT INTO `course` VALUES ('uni003_course031', 'ພາສາເກົາຫຼີ', 'uni003_Fac006', 4);
INSERT INTO `course` VALUES ('uni003_course032', 'ພາສາຫວຽດນາມ', 'uni003_Fac006', 4);
INSERT INTO `course` VALUES ('uni003_Course033', 'ວິທະຍາສາດພຶດ (ຕໍ່ເນື່ອງ)', 'uni003_Fac003', 3);
INSERT INTO `course` VALUES ('uni003_Course034', 'ວິທະຍາສາດລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni003_Fac003', 3);
INSERT INTO `course` VALUES ('uni003_Course035', 'ຊັບພະຍາກອນປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni003_Fac003', 3);
INSERT INTO `course` VALUES ('uni003_Course036', 'ວິສະວະກຳໄຟຟ້າ', 'uni003_Fac005', 3);
INSERT INTO `course` VALUES ('uni003_Course037', 'ພາສາອັງກິດ', 'uni003_Fac006', 3);
INSERT INTO `course` VALUES ('uni004_fac001', 'ວິທະຍາສາດພືດ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac002', 'ວີທະຍາສາດສັດ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac003', 'ວິທະຍາສາດສິ່ງແວດລ້ອມ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac004', 'ການຈັດສັນແຫຼ່ງນ້ຳ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac005', 'ທ່ອງທ່ຽວແບບອະນຸລັກທຳມະຊາດ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac006', 'ການຈັດສັນທີ່ດິນ', 'uni004_fac001', 4);
INSERT INTO `course` VALUES ('uni004_fac007', 'ບໍລິຫານການຄ້າ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac008', 'ບໍລິຫານການທ່ອງທ່ຽວ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac009', 'ບໍລີຫານການໂຮງແຮມ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac010', 'ບໍລິຫານການຂົນສົ່ງ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac011', 'ບໍລິຫານການເງິນ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac012', 'ການທະນາຄານ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac013', 'ບໍລິຫານການບັນຊີ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac014', 'ບໍລິຫານທຸລະກິດທົ່ວໄປ', 'uni004_fac002', 4);
INSERT INTO `course` VALUES ('uni004_fac015', 'ພາສາຝຣັ່ງ', 'uni004_fac003', 4);
INSERT INTO `course` VALUES ('uni004_fac016', 'ພາສາອັງກິດ', 'uni004_fac003', 4);
INSERT INTO `course` VALUES ('uni004_fac017', 'ສື່ສານມວນຊົນ', 'uni004_fac003', 4);
INSERT INTO `course` VALUES ('uni004_fac018', 'ພາສາຫວຽດນາມ', 'uni004_fac003', 4);
INSERT INTO `course` VALUES ('uni004_fac019', 'ພາສາຍີ່ປຸ່ນ', 'uni004_fac003', 4);
INSERT INTO `course` VALUES ('uni004_fac020', 'ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ', 'uni004_fac004', 4);
INSERT INTO `course` VALUES ('uni004_fac021', 'ເຕັກໂນໂລຊີສື່ປະສົມ', 'uni004_fac004', 4);
INSERT INTO `course` VALUES ('uni004_fac022', 'ເຕັກໂນໂລຊີເຄື່ອຂ່າຍ', 'uni004_fac004', 4);
INSERT INTO `course` VALUES ('uni004_fac023', 'ບໍລິຫານທຸລະກິດແລະການກະເສດ', 'uni004_fac005', 4);
INSERT INTO `course` VALUES ('uni004_fac024', 'ເຕັກໂນໂລຊີປຸງແຕ່ງອາຫານ', 'uni004_fac005', 4);
INSERT INTO `course` VALUES ('uni004_fac025', 'ວິທະຍາການຫຼັງການເກັບກ່ຽວ', 'uni004_fac005', 4);
INSERT INTO `course` VALUES ('uni004_fac026', 'ເສດຖະກິດເພື່ອການພັດທະນາ', 'uni004_fac005', 4);
INSERT INTO `course` VALUES ('uni004_fac027', 'ຄູຟີຊິກສາດ', 'uni004_fac006', 4);
INSERT INTO `course` VALUES ('uni004_fac028', 'ຄູປະຫວັດສາດ', 'uni004_fac006', 4);
INSERT INTO `course` VALUES ('uni004_fac029', 'ຄູວິທະຍາສາດການເມືອງ', 'uni004_fac006', 4);
INSERT INTO `course` VALUES ('uni004_fac030', 'ຄູພູມສາດ', 'uni004_fac006', 4);
INSERT INTO `course` VALUES ('uni004_fac031', 'ຄະນິດສາດ', 'uni004_fac007', 4);
INSERT INTO `course` VALUES ('uni004_fac032', 'ເຄມີສາດ', 'uni004_fac007', 4);
INSERT INTO `course` VALUES ('uni004_fac033', 'ຊີວະສາດ', 'uni004_fac007', 4);
INSERT INTO `course` VALUES ('uni004_fac034', 'ຟີຊິກສາດ', 'uni004_fac007', 4);
INSERT INTO `course` VALUES ('uni004_fac035', 'ວິສະວະກຳໄຟຟ້າ', 'uni004_fac008', 4);
INSERT INTO `course` VALUES ('uni004_fac036', 'ວິສະວະກຳຂົນສົ່ງ', 'uni004_fac008', 4);
INSERT INTO `course` VALUES ('uni004_fac037', 'ເສດຖະກິດເພື່ອພັດທະນາຊົນນະບົດແລະສົ່ງເສີມທຸລະກິດ', 'uni004_fac009', 4);
INSERT INTO `course` VALUES ('uni004_fac038', 'ການບັນຊີ', 'uni004_fac002', 3);
INSERT INTO `course` VALUES ('uni004_fac039', 'ການເງິນ', 'uni004_fac002', 3);
INSERT INTO `course` VALUES ('uni004_fac040', 'ບໍລິຫານທຸລະກິດການຄ້າ', 'uni004_fac002', 3);
INSERT INTO `course` VALUES ('uni004_fac041', 'ຄູຄະນິດສາດ(ຕໍ່ເນື່ອງ)', 'uni004_fac007', 3);
INSERT INTO `course` VALUES ('uni042_course001', 'ການແພດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course002', 'ເພສັດຊະກຳ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course003', 'ທັນຕະແພດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course004', 'ພະຍາບານ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course005', 'ວິເຄາະການແພັດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course006', 'ກາຍະບຳບັດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course007', 'ຜະດຸງຄັນ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course008', 'ເພສັດຊະກຳສາຂາການຢາພື້ນເມືອງ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course009', 'ລັງສີ ແລະ ຮູບພາບການແພດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course010', 'ນັກສາທາລະນະສຸກສາດ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course011', 'ວິທະຍາສາດພື້ນຖານ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course012', 'ວິທະຍາສາດພື້ນຖານ', 'uni042_fac001', 4);
INSERT INTO `course` VALUES ('uni042_course013', 'ຊ່າງອົງຄະທຽມ ແລະ ເຄື່ອງຄ້ຳຊູ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course014', 'ຜະດຸງຄັນ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course015', 'ພະຍາບານ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course016', 'ເພສັດຊະກຳ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course017', 'ກາຍະບຳບັດ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course018', 'ລັງສີ ແລະ ຮູບພາບການແພດ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course019', 'ວິເຄາະການແພັດ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course020', 'ສາທາລະນະສຸກສາດ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni042_course021', 'ຊ່າງທັນຕະກຳ', 'uni042_fac001', 2);
INSERT INTO `course` VALUES ('uni043_course001', 'ຜະດຸງຄັນ', 'uni043_fac001', 2);
INSERT INTO `course` VALUES ('uni043_course002', 'ພະຍາບານ', 'uni043_fac001', 2);
INSERT INTO `course` VALUES ('uni043_course003', 'ແພດ ຮສຂ', 'uni043_fac001', 2);
INSERT INTO `course` VALUES ('uni044_course001', 'ຜະດຸງຄັນ', 'uni044_fac001', 2);
INSERT INTO `course` VALUES ('uni044_course002', 'ພະຍາບານ', 'uni044_fac001', 2);
INSERT INTO `course` VALUES ('uni044_course003', 'ແພດ ຮສຂ', 'uni044_fac001', 2);
INSERT INTO `course` VALUES ('uni044_course004', 'ແພດ ຮສຂ', 'uni044_fac001', 2);
INSERT INTO `course` VALUES ('uni045_course001', 'ຜະດຸງຄັນ', 'uni045_fac001', 2);
INSERT INTO `course` VALUES ('uni045_course002', 'ພະຍາບານ', 'uni045_fac001', 2);
INSERT INTO `course` VALUES ('uni045_course003', 'ແພດ ຮສຂ', 'uni045_fac001', 2);
INSERT INTO `course` VALUES ('uni046_course001', 'ຜະດຸງຄັນ', 'uni046_fac001', 2);
INSERT INTO `course` VALUES ('uni046_course002', 'ພະຍາບານ', 'uni046_fac001', 2);
INSERT INTO `course` VALUES ('uni047_course001', 'ຜະດຸງຄັນ', 'uni047_fac001', 2);
INSERT INTO `course` VALUES ('uni047_course002', 'ພະຍາບານ', 'uni047_fac001', 2);
INSERT INTO `course` VALUES ('uni048_course001', 'ຜະດຸງຄັນ', 'uni048_fac001', 2);
INSERT INTO `course` VALUES ('uni048_course002', 'ພະຍາບານ', 'uni048_fac001', 2);
INSERT INTO `course` VALUES ('uni048_course003', 'ແພດ ຮສຂ', 'uni048_fac001', 2);
INSERT INTO `course` VALUES ('uni049_Course001', 'ພະຍາບານເຕັກນິກ (ຕໍ່ເນື່ອງ)', 'uni049_fac001', 8);
INSERT INTO `course` VALUES ('uni050_Course001', 'ຜະດຸງຄັນຊຸມຊົນຊັ້ນສູງ', 'uni050_fac001', 2);
INSERT INTO `course` VALUES ('uni050_Course002', 'ພະຍາບານຊັ້ນສູງ', 'uni050_fac001', 2);
INSERT INTO `course` VALUES ('uni050_Course003', 'ແພດຊັ້ນສູງ ຮສຂ', 'uni050_fac001', 2);
INSERT INTO `course` VALUES ('uni051_Course001', 'ພະຍາບານເຕັກນິກ', 'uni051_fac001', 1);
INSERT INTO `course` VALUES ('uni051_Course002', 'ແພດ ຮສຂ', 'uni051_fac001', 1);
INSERT INTO `course` VALUES ('uni057_Course001', 'ປູກຝັງ (ຕໍ່ເນື່ອງ)', 'uni057_fac001', 7);
INSERT INTO `course` VALUES ('uni057_Course002', 'ລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni057_fac001', 7);
INSERT INTO `course` VALUES ('uni057_Course003', 'ປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni057_fac001', 7);
INSERT INTO `course` VALUES ('uni058_Course001', 'ປຸກຝັງ', 'uni058_fac001', 2);
INSERT INTO `course` VALUES ('uni058_Course002', 'ລ້ຽງສັດ', 'uni058_fac001', 2);
INSERT INTO `course` VALUES ('uni058_Course003', 'ປ່າໄມ້', 'uni058_fac001', 2);
INSERT INTO `course` VALUES ('uni058_Course004', 'ທຸລະກິດກະສິກຳ', 'uni058_fac001', 2);
INSERT INTO `course` VALUES ('uni058_Course005', 'ສັດຕະວະແພດ', 'uni058_fac001', 2);
INSERT INTO `course` VALUES ('uni058_Course006', 'ປູກຝັງ (ຕໍ່ເນື່ອງ)', 'uni058_fac001', 7);
INSERT INTO `course` VALUES ('uni058_Course007', 'ລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni058_fac001', 7);
INSERT INTO `course` VALUES ('uni058_Course008', 'ປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni058_fac001', 7);
INSERT INTO `course` VALUES ('uni059_Course001', 'ປຸກຝັງ', 'uni059_fac001', 2);
INSERT INTO `course` VALUES ('uni059_Course002', 'ລ້ຽງສັດ', 'uni059_fac001', 2);
INSERT INTO `course` VALUES ('uni059_Course003', 'ປ່າໄມ້', 'uni059_fac001', 2);
INSERT INTO `course` VALUES ('uni059_Course004', 'ທຸລະກິດກະສິກຳ', 'uni059_fac001', 2);
INSERT INTO `course` VALUES ('uni059_Course005', 'ປ້ອງກັນພືດ', 'uni059_fac001', 2);
INSERT INTO `course` VALUES ('uni059_Course006', 'ປຸກຝັງ (ຕໍ່ເນື່ອງ)', 'uni059_fac001', 7);
INSERT INTO `course` VALUES ('uni059_Course007', 'ລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni059_fac001', 7);
INSERT INTO `course` VALUES ('uni059_Course008', 'ປ່າໄມ້ (ຕໍ່ເນື່ອງ)', 'uni059_fac001', 7);
INSERT INTO `course` VALUES ('uni060_Course001', 'ປຸກຝັງ', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course002', 'ລ້ຽງສັດ', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course003', 'ປ່າໄມ້', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course004', 'ທຸລະກິດກະສິກຳ', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course005', 'ປະມົງ', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course006', 'ວິທະຍາສາດດິນ', 'uni060_fac001', 2);
INSERT INTO `course` VALUES ('uni060_Course007', 'ປຸກຝັງ (ຕໍ່ເນື່ອງ)', 'uni060_fac001', 7);
INSERT INTO `course` VALUES ('uni060_Course008', 'ລ້ຽງສັດ (ຕໍ່ເນື່ອງ)', 'uni060_fac001', 7);
INSERT INTO `course` VALUES ('uni061_Course001', 'ຊົນລະປະທານ', 'uni061_fac001', 2);
INSERT INTO `course` VALUES ('uni061_Course002', 'ຊັບພະຍາກອນນ້ຳ', 'uni061_fac001', 2);
INSERT INTO `course` VALUES ('uni061_Course003', 'ກົນຈັກກະສິກຳ', 'uni061_fac001', 2);
INSERT INTO `course` VALUES ('uni061_Course004', 'ຊົນລະປະທານ (ຕໍ່ເນື່ອງ)', 'uni061_fac001', 7);
INSERT INTO `course` VALUES ('uni062_Course001', 'ບັນຊີ ແລະ ກວດສອບ', 'uni062_fac001', 2);
INSERT INTO `course` VALUES ('uni062_Course002', 'ຄຸ້ມຄອງການເງີນແຫ່ງລັດ', 'uni062_fac001', 2);
INSERT INTO `course` VALUES ('uni062_Course003', 'ຄຸ້ມຄອງການເງິນວິສະຫະກິດ', 'uni062_fac001', 2);
INSERT INTO `course` VALUES ('uni063_Course001', 'ການເງິນວິສາຫະກິດ', 'uni063_fac_001', 4);
INSERT INTO `course` VALUES ('uni063_Course002', 'ການເງິນແຫ່ງລັດ', 'uni063_fac_001', 4);
INSERT INTO `course` VALUES ('uni063_Course003', 'ພາສີ', 'uni063_fac_001', 4);
INSERT INTO `course` VALUES ('uni063_Course004', 'ສ່ວຍສາອາກອນ', 'uni063_fac_001', 4);
INSERT INTO `course` VALUES ('uni063_Course005', 'ການບັນຊີ-ກວດສອບ', 'uni063_fac_001', 4);
INSERT INTO `course` VALUES ('uni064_Course001', 'ການເງິນ-ການບັນຊີ', 'uni064_fac001', 2);
INSERT INTO `course` VALUES ('uni064_Course002', 'ການທະນາຄານ', 'uni064_fac001', 2);
INSERT INTO `course` VALUES ('uni064_Course003', 'ການບັນຊີວິສະຫະກິດ', 'uni064_fac001', 2);
INSERT INTO `course` VALUES ('uni064_Course004', 'ຄຸ້ມຄອງການເງີນແຫ່ງລັດ', 'uni064_fac001', 2);
INSERT INTO `course` VALUES ('uni064_Course005', 'ຄຸ້ມຄອງການເງິນວິສະຫະກິດ', 'uni064_fac001', 2);
INSERT INTO `course` VALUES ('uni065_Course001', 'ສາຂາການທະນາຄານ', 'uni065_fac_001', 4);
INSERT INTO `course` VALUES ('uni065_Course002', 'ສາຂາການເງິນ', 'uni065_fac_001', 4);
INSERT INTO `course` VALUES ('uni065_Course003', 'ສາຂາການບັນຊີ', 'uni065_fac_001', 4);
INSERT INTO `course` VALUES ('uni065_Course004', 'ການເງິນຈຸລະພາກ', 'uni065_fac_001', 4);
INSERT INTO `course` VALUES ('uni070_Course001', 'ວິຊາໂທລະຄົມມະນາຄົມ', 'uni070_fac001', 3);
INSERT INTO `course` VALUES ('uni070_Course002', 'ວິຊາ ICT', 'uni070_fac001', 3);

-- ----------------------------
-- Table structure for course_level
-- ----------------------------
DROP TABLE IF EXISTS `course_level`;
CREATE TABLE `course_level`  (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_level
-- ----------------------------
INSERT INTO `course_level` VALUES (1, 'ຊັ້ນກາງ');
INSERT INTO `course_level` VALUES (2, 'ອະນຸປະລິນຍາ');
INSERT INTO `course_level` VALUES (3, 'ປະລິນຍາຕີ (ຕໍ່ເນື່ອງ)');
INSERT INTO `course_level` VALUES (4, 'ປະລິນຍາຕີ');
INSERT INTO `course_level` VALUES (5, 'ປະລິນຍາໂທ');
INSERT INTO `course_level` VALUES (6, 'ປະລິນຍາເອກ');
INSERT INTO `course_level` VALUES (7, 'ອະນຸປະລິນຍາຕີ (ຕໍ່ເນື່ອງ)');
INSERT INTO `course_level` VALUES (8, 'ຊັ້ນກາງ (ຕໍ່ເນື່ອງ)');

-- ----------------------------
-- Table structure for create_plan
-- ----------------------------
DROP TABLE IF EXISTS `create_plan`;
CREATE TABLE `create_plan`  (
  `cre_id` int(11) NOT NULL AUTO_INCREMENT,
  `adj_id` int(11) NOT NULL,
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `p_m_id` int(11) NOT NULL,
  `std_qty` int(11) NOT NULL,
  `emp_qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cre_id`) USING BTREE,
  INDEX `adj_id`(`adj_id`) USING BTREE,
  INDEX `field_id`(`course_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `create_plan_ibfk_1` FOREIGN KEY (`adj_id`) REFERENCES `adjust` (`adj_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `create_plan_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `create_plan_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5957 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of create_plan
-- ----------------------------
INSERT INTO `create_plan` VALUES (150, 103, 'uni004_fac037', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (151, 103, 'uni004_fac036', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (152, 103, 'uni004_fac035', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (153, 103, 'uni004_fac041', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (154, 103, 'uni004_fac034', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (155, 103, 'uni004_fac033', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (156, 103, 'uni004_fac032', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (157, 103, 'uni004_fac031', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (158, 103, 'uni004_fac030', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (159, 103, 'uni004_fac029', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (160, 103, 'uni004_fac028', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (161, 103, 'uni004_fac027', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (162, 103, 'uni004_fac022', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (163, 103, 'uni004_fac021', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (164, 103, 'uni004_fac020', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (165, 103, 'uni004_fac019', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (166, 103, 'uni004_fac018', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (167, 103, 'uni004_fac017', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (168, 103, 'uni004_fac016', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (169, 103, 'uni004_fac039', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (170, 103, 'uni004_fac038', 1, 20, 0, 6);
INSERT INTO `create_plan` VALUES (171, 103, 'uni004_fac014', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (172, 103, 'uni004_fac013', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (173, 103, 'uni004_fac011', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (174, 103, 'uni004_fac009', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (175, 103, 'uni004_fac006', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (176, 103, 'uni004_fac004', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (177, 103, 'uni004_fac003', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (178, 103, 'uni004_fac001', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (179, 103, 'uni003_Course037', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (180, 103, 'uni003_course032', 1, 14, 0, 6);
INSERT INTO `create_plan` VALUES (181, 103, 'uni003_course031', 1, 22, 0, 6);
INSERT INTO `create_plan` VALUES (182, 103, 'uni003_course030', 1, 13, 0, 6);
INSERT INTO `create_plan` VALUES (183, 103, 'uni003_course029', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (184, 103, 'uni003_course028', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (185, 103, 'uni003_Course035', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (186, 103, 'uni003_Course034', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (187, 103, 'uni003_Course033', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (188, 103, 'uni003_course018', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (189, 103, 'uni003_course017', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (190, 103, 'uni003_course016', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (191, 103, 'uni003_course015', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (192, 103, 'uni003_course014', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (193, 103, 'uni003_course013', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (194, 103, 'uni003_course012', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (195, 103, 'uni003_course011', 1, 13, 0, 6);
INSERT INTO `create_plan` VALUES (196, 103, 'uni003_course010', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (197, 103, 'uni003_course009', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (198, 103, 'uni003_course008', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (199, 103, 'uni003_course007', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (200, 103, 'uni003_course006', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (201, 103, 'uni003_course005', 1, 12, 0, 6);
INSERT INTO `create_plan` VALUES (202, 103, 'uni003_course004', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (203, 103, 'uni003_course003', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (204, 103, 'uni003_course002', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (205, 103, 'uni003_course001', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (206, 103, 'uni002_Course039', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (207, 103, 'uni002_Course033', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (208, 103, 'uni002_Course021', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (209, 103, 'uni002_Course035', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (210, 103, 'uni002_Course037', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (211, 103, 'uni002_Course028', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (212, 103, 'uni002_Course027', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (213, 103, 'uni002_Course010', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (214, 103, 'uni002_Course008', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (215, 103, 'uni002_Course006', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (216, 103, 'uni002_Course004', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (217, 103, 'uni002_Course002', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (218, 103, 'uni002_Course001', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (219, 103, 'uni001_cours043', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (220, 103, 'uni001_cours042', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (221, 103, 'uni001_doc030', 1, 21, 0, 6);
INSERT INTO `create_plan` VALUES (222, 103, 'uni001_cours106', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (223, 103, 'uni001_cours105', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (224, 103, 'uni001_cours104', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (225, 103, 'uni001_cours103', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (226, 103, 'uni001_cours102', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (227, 103, 'uni001_cours101', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (228, 103, 'uni001_cours085', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (229, 103, 'uni001_cours084', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (230, 103, 'uni001_cours083', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (231, 103, 'uni001_doc025', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (232, 103, 'uni001_cours082', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (233, 103, 'uni001_cours080', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (234, 103, 'uni001_cours079', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (235, 103, 'uni001_cours078', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (236, 103, 'uni001_cours077', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (237, 103, 'uni001_cours061', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (238, 103, 'uni001_cours060', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (239, 103, 'uni001_cours058', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (240, 103, 'uni001_cours057', 1, 11, 0, 6);
INSERT INTO `create_plan` VALUES (241, 103, 'uni001_cours056', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (242, 103, 'uni001_cours055', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (243, 103, 'uni001_cours054', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (244, 103, 'uni001_cours053', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (245, 103, 'uni001_cours051', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (246, 103, 'uni001_cours050', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (247, 103, 'uni001_cours049', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (248, 103, 'uni001_doc016', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (249, 103, 'uni001_doc015', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (250, 103, 'uni001_doc013', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (251, 103, 'uni001_cours048', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (252, 103, 'uni001_cours047', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (253, 103, 'uni001_cours046', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (254, 103, 'uni001_cours044', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (255, 103, 'uni001_doc010', 1, 11, 0, 6);
INSERT INTO `create_plan` VALUES (256, 103, 'uni001_doc009', 1, 22, 0, 6);
INSERT INTO `create_plan` VALUES (257, 103, 'uni001_cours035', 1, 23, 0, 6);
INSERT INTO `create_plan` VALUES (258, 103, 'uni001_cours034', 1, 11, 0, 6);
INSERT INTO `create_plan` VALUES (259, 103, 'uni001_cours033', 1, 23, 0, 6);
INSERT INTO `create_plan` VALUES (260, 103, 'uni001_cours032', 1, 12, 0, 6);
INSERT INTO `create_plan` VALUES (261, 103, 'uni001_cours020', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (262, 103, 'uni001_cours019', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (263, 103, 'uni001_cours017', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (264, 103, 'uni001_cours016', 1, 22, 0, 6);
INSERT INTO `create_plan` VALUES (265, 103, 'uni001_cours014', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (266, 103, 'uni001_cours013', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (267, 103, 'uni001_doc002', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (268, 103, 'uni001_doc001', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (269, 103, 'uni001_cours011', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (270, 103, 'uni001_cours010', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (271, 103, 'uni001_cours009', 1, 5, 0, 6);
INSERT INTO `create_plan` VALUES (272, 103, 'uni001_cours008', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (273, 103, 'uni001_cours007', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (274, 103, 'uni001_cours006', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (275, 103, 'uni001_cours005', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (276, 103, 'uni001_cours004', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (277, 103, 'uni001_cours003', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (278, 103, 'uni001_cours002', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (279, 103, 'uni001_cours001', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (280, 100, 'uni051_Course002', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (281, 100, 'uni051_Course001', 1, 20, 0, 6);
INSERT INTO `create_plan` VALUES (282, 100, 'uni050_Course003', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (283, 100, 'uni050_Course002', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (284, 100, 'uni050_Course001', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (285, 100, 'uni049_Course001', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (286, 100, 'uni048_course003', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (287, 100, 'uni048_course002', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (288, 100, 'uni048_course001', 1, 30, 0, 6);
INSERT INTO `create_plan` VALUES (289, 100, 'uni047_course002', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (290, 100, 'uni047_course001', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (291, 100, 'uni046_course002', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (292, 100, 'uni046_course001', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (293, 100, 'uni045_course003', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (294, 100, 'uni045_course002', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (295, 100, 'uni045_course001', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (296, 100, 'uni044_course004', 1, 20, 0, 6);
INSERT INTO `create_plan` VALUES (297, 100, 'uni044_course003', 1, 18, 0, 6);
INSERT INTO `create_plan` VALUES (298, 100, 'uni044_course002', 1, 11, 0, 6);
INSERT INTO `create_plan` VALUES (299, 100, 'uni044_course001', 1, 10, 0, 6);
INSERT INTO `create_plan` VALUES (300, 100, 'uni043_course003', 1, 19, 0, 6);
INSERT INTO `create_plan` VALUES (301, 100, 'uni043_course002', 1, 18, 0, 6);
INSERT INTO `create_plan` VALUES (302, 100, 'uni043_course001', 1, 15, 0, 6);
INSERT INTO `create_plan` VALUES (303, 100, 'uni042_course021', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (304, 100, 'uni042_course020', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (305, 100, 'uni042_course019', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (306, 100, 'uni042_course018', 1, 15, 0, 6);
INSERT INTO `create_plan` VALUES (307, 100, 'uni042_course017', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (308, 100, 'uni042_course016', 1, 15, 0, 6);
INSERT INTO `create_plan` VALUES (309, 100, 'uni042_course015', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (310, 100, 'uni042_course014', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (311, 100, 'uni042_course013', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (312, 100, 'uni042_course012', 1, 1, 0, 6);
INSERT INTO `create_plan` VALUES (313, 100, 'uni042_course011', 1, 11, 0, 6);
INSERT INTO `create_plan` VALUES (314, 100, 'uni042_course010', 1, 8, 0, 6);
INSERT INTO `create_plan` VALUES (315, 100, 'uni042_course009', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (316, 100, 'uni042_course008', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (317, 100, 'uni042_course007', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (318, 100, 'uni042_course006', 1, 2, 0, 6);
INSERT INTO `create_plan` VALUES (319, 100, 'uni042_course005', 1, 3, 0, 6);
INSERT INTO `create_plan` VALUES (320, 100, 'uni042_course004', 1, 6, 0, 6);
INSERT INTO `create_plan` VALUES (321, 100, 'uni042_course003', 1, 9, 0, 6);
INSERT INTO `create_plan` VALUES (322, 100, 'uni042_course002', 1, 7, 0, 6);
INSERT INTO `create_plan` VALUES (323, 100, 'uni042_course001', 1, 4, 0, 6);
INSERT INTO `create_plan` VALUES (324, 103, 'uni004_fac037', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (325, 103, 'uni004_fac034', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (326, 103, 'uni004_fac033', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (327, 103, 'uni004_fac032', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (328, 103, 'uni004_fac030', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (329, 103, 'uni004_fac026', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (330, 103, 'uni004_fac025', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (331, 103, 'uni004_fac024', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (332, 103, 'uni004_fac023', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (333, 103, 'uni004_fac022', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (334, 103, 'uni004_fac021', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (335, 103, 'uni004_fac020', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (336, 103, 'uni004_fac019', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (337, 103, 'uni004_fac018', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (338, 103, 'uni004_fac016', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (339, 103, 'uni004_fac015', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (340, 103, 'uni004_fac040', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (341, 103, 'uni004_fac039', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (342, 103, 'uni004_fac038', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (343, 103, 'uni004_fac013', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (344, 103, 'uni004_fac012', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (345, 103, 'uni004_fac011', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (346, 103, 'uni004_fac010', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (347, 103, 'uni004_fac009', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (348, 103, 'uni004_fac008', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (349, 103, 'uni004_fac007', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (350, 103, 'uni004_fac006', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (351, 103, 'uni004_fac005', 37, 0, 20, 42);
INSERT INTO `create_plan` VALUES (352, 103, 'uni004_fac003', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (353, 103, 'uni004_fac002', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (354, 103, 'uni003_Course037', 37, 0, 13, 42);
INSERT INTO `create_plan` VALUES (355, 103, 'uni003_course032', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (356, 103, 'uni003_course031', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (357, 103, 'uni003_course030', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (358, 103, 'uni003_course029', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (359, 103, 'uni003_course028', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (360, 103, 'uni003_Course036', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (361, 103, 'uni003_course026', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (362, 103, 'uni003_course025', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (363, 103, 'uni003_course023', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (364, 103, 'uni003_course021', 37, 0, 22, 42);
INSERT INTO `create_plan` VALUES (365, 103, 'uni003_course019', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (366, 103, 'uni003_Course035', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (367, 103, 'uni003_Course034', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (368, 103, 'uni003_Course033', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (369, 103, 'uni003_course018', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (370, 103, 'uni003_course017', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (371, 103, 'uni003_course016', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (372, 103, 'uni003_course015', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (373, 103, 'uni003_course014', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (374, 103, 'uni003_course013', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (375, 103, 'uni003_course011', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (376, 103, 'uni003_course010', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (377, 103, 'uni003_course009', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (378, 103, 'uni003_course008', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (379, 103, 'uni003_course005', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (380, 103, 'uni003_course004', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (381, 103, 'uni003_course003', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (382, 103, 'uni003_course002', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (383, 103, 'uni003_course001', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (384, 103, 'uni002_Course026', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (385, 103, 'uni002_Course024', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (386, 103, 'uni002_Course023', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (387, 103, 'uni002_Course022', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (388, 103, 'uni002_Course039', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (389, 103, 'uni002_Course038', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (390, 103, 'uni002_Course033', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (391, 103, 'uni002_Course032', 37, 0, 16, 42);
INSERT INTO `create_plan` VALUES (392, 103, 'uni002_Course021', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (393, 103, 'uni002_Course020', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (394, 103, 'uni002_Course019', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (395, 103, 'uni002_Course043', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (396, 103, 'uni002_Course030', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (397, 103, 'uni002_Course018', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (398, 103, 'uni002_Course041', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (399, 103, 'uni002_Course040', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (400, 103, 'uni002_Course035', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (401, 103, 'uni002_Course014', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (402, 103, 'uni002_Course037', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (403, 103, 'uni002_Course029', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (404, 103, 'uni002_Course027', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (405, 103, 'uni002_Course011', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (406, 103, 'uni002_Course009', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (407, 103, 'uni002_Course008', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (408, 103, 'uni002_Course006', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (409, 103, 'uni002_Course005', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (410, 103, 'uni002_Course004', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (411, 103, 'uni002_Course003', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (412, 103, 'uni002_Course002', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (413, 103, 'uni002_Course001', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (414, 103, 'uni001_cours043', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (415, 103, 'uni001_cours042', 37, 0, 16, 42);
INSERT INTO `create_plan` VALUES (416, 103, 'uni001_doc030', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (417, 103, 'uni001_cours106', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (418, 103, 'uni001_cours105', 37, 0, 16, 42);
INSERT INTO `create_plan` VALUES (419, 103, 'uni001_cours104', 37, 0, 13, 42);
INSERT INTO `create_plan` VALUES (420, 103, 'uni001_cours103', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (421, 103, 'uni001_cours102', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (422, 103, 'uni001_cours101', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (423, 103, 'uni001_doc029', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (424, 103, 'uni001_doc028', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (425, 103, 'uni001_cours100', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (426, 103, 'uni001_cours099', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (427, 103, 'uni001_cours098', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (428, 103, 'uni001_cours097', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (429, 103, 'uni001_cours096', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (430, 103, 'uni001_cours095', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (431, 103, 'uni001_cours094', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (432, 103, 'uni001_cours093', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (433, 103, 'uni001_cours092', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (434, 103, 'uni001_cours089', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (435, 103, 'uni001_doc027', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (436, 103, 'uni001_cours088', 37, 0, 20, 42);
INSERT INTO `create_plan` VALUES (437, 103, 'uni001_cours087', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (438, 103, 'uni001_cours086', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (439, 103, 'uni001_cours085', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (440, 103, 'uni001_cours084', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (441, 103, 'uni001_cours082', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (442, 103, 'uni001_cours081', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (443, 103, 'uni001_cours080', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (444, 103, 'uni001_cours079', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (445, 103, 'uni001_cours078', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (446, 103, 'uni001_cours077', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (447, 103, 'uni001_doc024', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (448, 103, 'uni001_doc023', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (449, 103, 'uni001_doc022', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (450, 103, 'uni001_doc021', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (451, 103, 'uni001_doc020', 37, 0, 1, 42);
INSERT INTO `create_plan` VALUES (452, 103, 'uni001_doc019', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (453, 103, 'uni001_doc017', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (454, 103, 'uni001_cours076', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (455, 103, 'uni001_cours075', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (456, 103, 'uni001_cours074', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (457, 103, 'uni001_cours073', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (458, 103, 'uni001_cours072', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (459, 103, 'uni001_cours071', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (460, 103, 'uni001_cours069', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (461, 103, 'uni001_cours068', 37, 0, 13, 42);
INSERT INTO `create_plan` VALUES (462, 103, 'uni001_cours067', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (463, 103, 'uni001_cours066', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (464, 103, 'uni001_cours065', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (465, 103, 'uni001_cours064', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (466, 103, 'uni001_cours063', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (467, 103, 'uni001_cours062', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (468, 103, 'uni001_cours061', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (469, 103, 'uni001_cours060', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (470, 103, 'uni001_cours058', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (471, 103, 'uni001_cours057', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (472, 103, 'uni001_cours056', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (473, 103, 'uni001_cours055', 37, 0, 14, 42);
INSERT INTO `create_plan` VALUES (474, 103, 'uni001_cours054', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (475, 103, 'uni001_cours053', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (476, 103, 'uni001_cours052', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (477, 103, 'uni001_cours050', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (478, 103, 'uni001_cours049', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (479, 103, 'uni001_doc016', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (480, 103, 'uni001_doc015', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (481, 103, 'uni001_doc014', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (482, 103, 'uni001_doc013', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (483, 103, 'uni001_cours048', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (484, 103, 'uni001_cours046', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (485, 103, 'uni001_cours045', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (486, 103, 'uni001_cours044', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (487, 103, 'uni001_doc012', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (488, 103, 'uni001_doc011', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (489, 103, 'uni001_doc010', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (490, 103, 'uni001_doc009', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (491, 103, 'uni001_cours041', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (492, 103, 'uni001_cours040', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (493, 103, 'uni001_cours039', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (494, 103, 'uni001_cours038', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (495, 103, 'uni001_cours037', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (496, 103, 'uni001_cours036', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (497, 103, 'uni001_cours035', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (498, 103, 'uni001_cours034', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (499, 103, 'uni001_cours033', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (500, 103, 'uni001_cours032', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (501, 103, 'uni001_doc008', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (502, 103, 'uni001_doc007', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (503, 103, 'uni001_doc006', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (504, 103, 'uni001_cours031', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (505, 103, 'uni001_cours030', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (506, 103, 'uni001_cours029', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (507, 103, 'uni001_cours028', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (508, 103, 'uni001_cours027', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (509, 103, 'uni001_cours026', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (510, 103, 'uni001_cours025', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (511, 103, 'uni001_cours024', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (512, 103, 'uni001_cours023', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (513, 103, 'uni001_doc005', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (514, 103, 'uni001_cours022', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (515, 103, 'uni001_cours021', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (516, 103, 'uni001_cours020', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (517, 103, 'uni001_cours019', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (518, 103, 'uni001_cours018', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (519, 103, 'uni001_cours017', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (520, 103, 'uni001_cours016', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (521, 103, 'uni001_cours015', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (522, 103, 'uni001_cours014', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (523, 103, 'uni001_cours013', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (524, 103, 'uni001_cours012', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (525, 103, 'uni001_doc004', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (526, 103, 'uni001_doc001', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (527, 103, 'uni001_cours011', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (528, 103, 'uni001_cours010', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (529, 103, 'uni001_cours009', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (530, 103, 'uni001_cours008', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (531, 103, 'uni001_cours007', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (532, 103, 'uni001_cours006', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (533, 103, 'uni001_cours005', 37, 0, 13, 42);
INSERT INTO `create_plan` VALUES (534, 103, 'uni001_cours004', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (535, 103, 'uni001_cours003', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (536, 103, 'uni001_cours002', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (537, 103, 'uni001_cours001', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (538, 96, 'uni065_Course004', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (539, 96, 'uni065_Course003', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (540, 96, 'uni065_Course002', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (541, 96, 'uni065_Course001', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (542, 94, 'uni070_Course002', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (543, 94, 'uni070_Course001', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (544, 100, 'uni051_Course002', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (545, 100, 'uni051_Course001', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (546, 100, 'uni050_Course003', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (547, 100, 'uni050_Course002', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (548, 100, 'uni050_Course001', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (549, 100, 'uni049_Course001', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (550, 100, 'uni048_course003', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (551, 100, 'uni048_course002', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (552, 100, 'uni048_course001', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (553, 100, 'uni047_course002', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (554, 100, 'uni047_course001', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (555, 100, 'uni046_course002', 37, 0, 15, 42);
INSERT INTO `create_plan` VALUES (556, 100, 'uni046_course001', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (557, 100, 'uni045_course003', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (558, 100, 'uni045_course002', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (559, 100, 'uni045_course001', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (560, 100, 'uni044_course004', 37, 0, 11, 42);
INSERT INTO `create_plan` VALUES (561, 100, 'uni044_course003', 37, 0, 9, 42);
INSERT INTO `create_plan` VALUES (562, 100, 'uni044_course002', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (563, 100, 'uni044_course001', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (564, 100, 'uni043_course003', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (565, 100, 'uni043_course002', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (566, 100, 'uni043_course001', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (567, 100, 'uni042_course021', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (568, 100, 'uni042_course020', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (569, 100, 'uni042_course019', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (570, 100, 'uni042_course018', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (571, 100, 'uni042_course017', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (572, 100, 'uni042_course016', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (573, 100, 'uni042_course015', 37, 0, 7, 42);
INSERT INTO `create_plan` VALUES (574, 100, 'uni042_course014', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (575, 100, 'uni042_course013', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (576, 100, 'uni042_course012', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (577, 100, 'uni042_course011', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (578, 100, 'uni042_course010', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (579, 100, 'uni042_course009', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (580, 100, 'uni042_course008', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (581, 100, 'uni042_course007', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (582, 100, 'uni042_course006', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (583, 100, 'uni042_course005', 37, 0, 3, 42);
INSERT INTO `create_plan` VALUES (584, 100, 'uni042_course004', 37, 0, 8, 42);
INSERT INTO `create_plan` VALUES (585, 100, 'uni042_course003', 37, 0, 17, 42);
INSERT INTO `create_plan` VALUES (586, 100, 'uni042_course002', 37, 0, 4, 42);
INSERT INTO `create_plan` VALUES (587, 100, 'uni042_course001', 37, 0, 12, 42);
INSERT INTO `create_plan` VALUES (588, 98, 'uni061_Course004', 37, 0, 14, 42);
INSERT INTO `create_plan` VALUES (589, 98, 'uni061_Course003', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (590, 98, 'uni061_Course002', 37, 0, 10, 42);
INSERT INTO `create_plan` VALUES (591, 98, 'uni061_Course001', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (592, 98, 'uni059_Course008', 37, 0, 5, 42);
INSERT INTO `create_plan` VALUES (593, 98, 'uni059_Course007', 37, 0, 16, 42);
INSERT INTO `create_plan` VALUES (594, 98, 'uni059_Course006', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (595, 98, 'uni059_Course003', 37, 0, 15, 42);
INSERT INTO `create_plan` VALUES (596, 98, 'uni059_Course002', 37, 0, 2, 42);
INSERT INTO `create_plan` VALUES (597, 98, 'uni059_Course001', 37, 0, 6, 42);
INSERT INTO `create_plan` VALUES (598, 94, 'uni070_Course002', 26, 11, 0, 29);
INSERT INTO `create_plan` VALUES (599, 94, 'uni070_Course001', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (600, 96, 'uni065_Course004', 26, 14, 0, 29);
INSERT INTO `create_plan` VALUES (601, 96, 'uni065_Course003', 26, 12, 0, 29);
INSERT INTO `create_plan` VALUES (602, 96, 'uni065_Course002', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (603, 96, 'uni065_Course001', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (604, 98, 'uni061_Course004', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (605, 98, 'uni061_Course003', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (606, 98, 'uni061_Course002', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (607, 98, 'uni061_Course001', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (608, 98, 'uni060_Course008', 26, 14, 0, 29);
INSERT INTO `create_plan` VALUES (609, 98, 'uni060_Course007', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (610, 98, 'uni060_Course006', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (611, 98, 'uni060_Course005', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (612, 98, 'uni060_Course004', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (613, 98, 'uni060_Course003', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (614, 98, 'uni060_Course002', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (615, 98, 'uni060_Course001', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (616, 98, 'uni059_Course008', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (617, 98, 'uni059_Course007', 26, 6, 0, 29);
INSERT INTO `create_plan` VALUES (618, 98, 'uni059_Course006', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (619, 98, 'uni059_Course005', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (620, 98, 'uni059_Course004', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (621, 98, 'uni059_Course003', 26, 10, 0, 29);
INSERT INTO `create_plan` VALUES (622, 98, 'uni059_Course002', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (623, 98, 'uni059_Course001', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (624, 98, 'uni058_Course008', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (625, 98, 'uni058_Course007', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (626, 98, 'uni058_Course006', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (627, 98, 'uni058_Course005', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (628, 98, 'uni058_Course004', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (629, 98, 'uni058_Course003', 26, 18, 0, 29);
INSERT INTO `create_plan` VALUES (630, 98, 'uni058_Course002', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (631, 98, 'uni058_Course001', 26, 13, 0, 29);
INSERT INTO `create_plan` VALUES (632, 98, 'uni057_Course003', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (633, 98, 'uni057_Course002', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (634, 98, 'uni057_Course001', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (635, 100, 'uni051_Course002', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (636, 100, 'uni051_Course001', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (637, 100, 'uni050_Course003', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (638, 100, 'uni050_Course002', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (639, 100, 'uni050_Course001', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (640, 100, 'uni049_Course001', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (641, 100, 'uni048_course003', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (642, 100, 'uni048_course002', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (643, 100, 'uni048_course001', 26, 6, 0, 29);
INSERT INTO `create_plan` VALUES (644, 100, 'uni047_course002', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (645, 100, 'uni047_course001', 26, 11, 0, 29);
INSERT INTO `create_plan` VALUES (646, 100, 'uni046_course002', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (647, 100, 'uni046_course001', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (648, 100, 'uni045_course003', 26, 13, 0, 29);
INSERT INTO `create_plan` VALUES (649, 100, 'uni045_course002', 26, 1, 0, 29);
INSERT INTO `create_plan` VALUES (650, 100, 'uni045_course001', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (651, 100, 'uni044_course004', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (652, 100, 'uni044_course003', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (653, 100, 'uni044_course002', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (654, 100, 'uni044_course001', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (655, 100, 'uni043_course003', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (656, 100, 'uni042_course021', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (657, 100, 'uni042_course020', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (658, 100, 'uni042_course019', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (659, 100, 'uni042_course018', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (660, 100, 'uni042_course017', 26, 17, 0, 29);
INSERT INTO `create_plan` VALUES (661, 100, 'uni042_course016', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (662, 100, 'uni042_course015', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (663, 100, 'uni042_course014', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (664, 100, 'uni042_course013', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (665, 100, 'uni042_course012', 26, 9, 0, 29);
INSERT INTO `create_plan` VALUES (666, 100, 'uni042_course011', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (667, 100, 'uni042_course010', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (668, 100, 'uni042_course009', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (669, 100, 'uni042_course008', 26, 11, 0, 29);
INSERT INTO `create_plan` VALUES (670, 100, 'uni042_course007', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (671, 100, 'uni042_course006', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (672, 100, 'uni042_course005', 26, 8, 0, 29);
INSERT INTO `create_plan` VALUES (673, 100, 'uni042_course004', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (674, 100, 'uni042_course003', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (675, 100, 'uni042_course002', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (676, 100, 'uni042_course001', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (677, 97, 'uni064_Course005', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (678, 97, 'uni064_Course004', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (679, 97, 'uni064_Course003', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (680, 97, 'uni064_Course002', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (681, 97, 'uni064_Course001', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (682, 97, 'uni063_Course005', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (683, 97, 'uni063_Course004', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (684, 97, 'uni063_Course003', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (685, 97, 'uni063_Course002', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (686, 97, 'uni063_Course001', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (687, 97, 'uni062_Course003', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (688, 97, 'uni062_Course002', 22, 10, 0, 27);
INSERT INTO `create_plan` VALUES (689, 97, 'uni062_Course001', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (690, 94, 'uni070_Course002', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (691, 94, 'uni070_Course001', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (692, 96, 'uni065_Course004', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (693, 96, 'uni065_Course003', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (694, 96, 'uni065_Course002', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (695, 96, 'uni065_Course001', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (696, 94, 'uni070_Course002', 20, 0, 10, 10);
INSERT INTO `create_plan` VALUES (697, 94, 'uni070_Course001', 20, 0, 10, 10);
INSERT INTO `create_plan` VALUES (698, 96, 'uni065_Course004', 20, 4, 5, 10);
INSERT INTO `create_plan` VALUES (699, 96, 'uni065_Course003', 20, 5, 2, 10);
INSERT INTO `create_plan` VALUES (700, 96, 'uni065_Course002', 20, 4, 2, 10);
INSERT INTO `create_plan` VALUES (701, 96, 'uni065_Course001', 20, 3, 2, 10);
INSERT INTO `create_plan` VALUES (702, 97, 'uni064_Course005', 20, 4, 3, 10);
INSERT INTO `create_plan` VALUES (703, 97, 'uni064_Course004', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (704, 97, 'uni064_Course003', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (705, 97, 'uni064_Course002', 20, 4, 3, 10);
INSERT INTO `create_plan` VALUES (706, 97, 'uni064_Course001', 20, 3, 3, 10);
INSERT INTO `create_plan` VALUES (707, 97, 'uni063_Course005', 20, 2, 4, 10);
INSERT INTO `create_plan` VALUES (708, 97, 'uni063_Course004', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (709, 97, 'uni063_Course003', 20, 3, 5, 10);
INSERT INTO `create_plan` VALUES (710, 97, 'uni063_Course002', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (711, 97, 'uni063_Course001', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (712, 97, 'uni062_Course003', 20, 3, 5, 10);
INSERT INTO `create_plan` VALUES (713, 97, 'uni062_Course002', 20, 4, 5, 10);
INSERT INTO `create_plan` VALUES (714, 97, 'uni062_Course001', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (715, 98, 'uni061_Course004', 20, 43, 23, 10);
INSERT INTO `create_plan` VALUES (716, 98, 'uni061_Course003', 20, 312, 43, 10);
INSERT INTO `create_plan` VALUES (717, 98, 'uni061_Course002', 20, 3, 34, 10);
INSERT INTO `create_plan` VALUES (718, 98, 'uni061_Course001', 20, 23, 34, 10);
INSERT INTO `create_plan` VALUES (719, 98, 'uni060_Course008', 20, 3, 3, 10);
INSERT INTO `create_plan` VALUES (720, 98, 'uni060_Course007', 20, 2, 3, 10);
INSERT INTO `create_plan` VALUES (721, 98, 'uni060_Course006', 20, 2, 3, 10);
INSERT INTO `create_plan` VALUES (722, 98, 'uni060_Course005', 20, 2, 2, 10);
INSERT INTO `create_plan` VALUES (723, 98, 'uni060_Course004', 20, 2, 1, 10);
INSERT INTO `create_plan` VALUES (724, 98, 'uni060_Course003', 20, 3, 3, 10);
INSERT INTO `create_plan` VALUES (725, 98, 'uni060_Course002', 20, 3, 3, 10);
INSERT INTO `create_plan` VALUES (726, 98, 'uni060_Course001', 20, 2, 2, 10);
INSERT INTO `create_plan` VALUES (727, 98, 'uni059_Course008', 20, 23, 32, 10);
INSERT INTO `create_plan` VALUES (728, 98, 'uni059_Course007', 20, 21, 321, 10);
INSERT INTO `create_plan` VALUES (729, 98, 'uni059_Course006', 20, 43, 321, 10);
INSERT INTO `create_plan` VALUES (730, 98, 'uni059_Course005', 20, 45, 21, 10);
INSERT INTO `create_plan` VALUES (731, 98, 'uni059_Course004', 20, 45, 54, 10);
INSERT INTO `create_plan` VALUES (732, 98, 'uni059_Course003', 20, 64, 32, 10);
INSERT INTO `create_plan` VALUES (733, 98, 'uni059_Course002', 20, 342, 3, 10);
INSERT INTO `create_plan` VALUES (734, 98, 'uni059_Course001', 20, 123, 432, 10);
INSERT INTO `create_plan` VALUES (735, 98, 'uni058_Course008', 20, 4, 3, 10);
INSERT INTO `create_plan` VALUES (736, 98, 'uni058_Course007', 20, 18, 4, 10);
INSERT INTO `create_plan` VALUES (737, 98, 'uni058_Course006', 20, 0, 4, 10);
INSERT INTO `create_plan` VALUES (738, 98, 'uni058_Course005', 20, 3, 0, 10);
INSERT INTO `create_plan` VALUES (739, 98, 'uni058_Course004', 20, 2, 3, 10);
INSERT INTO `create_plan` VALUES (740, 98, 'uni058_Course003', 20, 3, 4, 10);
INSERT INTO `create_plan` VALUES (741, 98, 'uni058_Course002', 20, 1, 7, 10);
INSERT INTO `create_plan` VALUES (742, 98, 'uni058_Course001', 20, 2, 3, 10);
INSERT INTO `create_plan` VALUES (743, 98, 'uni057_Course003', 20, 32, 26, 10);
INSERT INTO `create_plan` VALUES (744, 98, 'uni057_Course002', 20, 34, 32, 10);
INSERT INTO `create_plan` VALUES (745, 98, 'uni057_Course001', 20, 12, 12, 10);
INSERT INTO `create_plan` VALUES (746, 100, 'uni051_Course002', 20, 567, 5786, 10);
INSERT INTO `create_plan` VALUES (747, 100, 'uni051_Course001', 20, 5675, 567, 10);
INSERT INTO `create_plan` VALUES (748, 100, 'uni050_Course003', 20, 657, 567, 10);
INSERT INTO `create_plan` VALUES (749, 100, 'uni050_Course002', 20, 67, 567, 10);
INSERT INTO `create_plan` VALUES (750, 100, 'uni050_Course001', 20, 6567, 65, 10);
INSERT INTO `create_plan` VALUES (751, 100, 'uni049_Course001', 20, 56, 67, 10);
INSERT INTO `create_plan` VALUES (752, 100, 'uni048_course003', 20, 657, 678, 10);
INSERT INTO `create_plan` VALUES (753, 100, 'uni048_course002', 20, 675, 56, 10);
INSERT INTO `create_plan` VALUES (754, 100, 'uni048_course001', 20, 76, 6785, 10);
INSERT INTO `create_plan` VALUES (755, 100, 'uni047_course002', 20, 57, 75, 10);
INSERT INTO `create_plan` VALUES (756, 100, 'uni047_course001', 20, 675, 760, 10);
INSERT INTO `create_plan` VALUES (757, 100, 'uni046_course002', 20, 675, 6, 10);
INSERT INTO `create_plan` VALUES (758, 100, 'uni046_course001', 20, 675, 67, 10);
INSERT INTO `create_plan` VALUES (759, 100, 'uni045_course003', 20, 234, 234, 10);
INSERT INTO `create_plan` VALUES (760, 100, 'uni045_course002', 20, 322, 2345, 10);
INSERT INTO `create_plan` VALUES (761, 100, 'uni045_course001', 20, 233, 230, 10);
INSERT INTO `create_plan` VALUES (762, 100, 'uni044_course004', 20, 6578, 877, 10);
INSERT INTO `create_plan` VALUES (763, 100, 'uni044_course003', 20, 2345, 235, 10);
INSERT INTO `create_plan` VALUES (764, 100, 'uni044_course002', 20, 2354, 235, 10);
INSERT INTO `create_plan` VALUES (765, 100, 'uni044_course001', 20, 232345, 2355, 10);
INSERT INTO `create_plan` VALUES (766, 100, 'uni043_course003', 20, 364, 765, 10);
INSERT INTO `create_plan` VALUES (767, 100, 'uni043_course002', 20, 345, 456, 10);
INSERT INTO `create_plan` VALUES (768, 100, 'uni043_course001', 20, 535, 456, 10);
INSERT INTO `create_plan` VALUES (769, 100, 'uni042_course012', 20, 345, 0, 10);
INSERT INTO `create_plan` VALUES (770, 100, 'uni042_course011', 20, 343, 0, 10);
INSERT INTO `create_plan` VALUES (771, 100, 'uni042_course010', 20, 3, 13, 10);
INSERT INTO `create_plan` VALUES (772, 100, 'uni042_course009', 20, 34, 2545233, 10);
INSERT INTO `create_plan` VALUES (773, 100, 'uni042_course007', 20, 9, 45, 10);
INSERT INTO `create_plan` VALUES (774, 100, 'uni042_course006', 20, 3, 233, 10);
INSERT INTO `create_plan` VALUES (775, 100, 'uni042_course005', 20, 123, 0, 10);
INSERT INTO `create_plan` VALUES (776, 100, 'uni042_course004', 20, 9, 34, 10);
INSERT INTO `create_plan` VALUES (777, 100, 'uni042_course003', 20, 5, 34, 10);
INSERT INTO `create_plan` VALUES (778, 100, 'uni042_course001', 20, 5, 33, 10);
INSERT INTO `create_plan` VALUES (779, 103, 'uni004_fac037', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (780, 103, 'uni004_fac036', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (781, 103, 'uni004_fac035', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (782, 103, 'uni004_fac041', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (783, 103, 'uni004_fac034', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (784, 103, 'uni004_fac033', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (785, 103, 'uni004_fac032', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (786, 103, 'uni004_fac031', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (787, 103, 'uni004_fac030', 22, 10, 0, 27);
INSERT INTO `create_plan` VALUES (788, 103, 'uni004_fac029', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (789, 103, 'uni004_fac028', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (790, 103, 'uni004_fac027', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (791, 103, 'uni004_fac026', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (792, 103, 'uni004_fac025', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (793, 103, 'uni004_fac024', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (794, 103, 'uni004_fac023', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (795, 103, 'uni004_fac022', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (796, 103, 'uni004_fac021', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (797, 103, 'uni004_fac020', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (798, 103, 'uni004_fac019', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (799, 103, 'uni004_fac018', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (800, 103, 'uni004_fac017', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (801, 103, 'uni004_fac016', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (802, 103, 'uni004_fac015', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (803, 103, 'uni004_fac040', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (804, 103, 'uni004_fac039', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (805, 103, 'uni004_fac038', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (806, 103, 'uni004_fac014', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (807, 103, 'uni004_fac013', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (808, 103, 'uni004_fac012', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (809, 103, 'uni004_fac011', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (810, 103, 'uni004_fac010', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (811, 103, 'uni004_fac008', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (812, 103, 'uni004_fac007', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (813, 103, 'uni004_fac006', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (814, 103, 'uni004_fac005', 22, 12, 0, 27);
INSERT INTO `create_plan` VALUES (815, 103, 'uni004_fac004', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (816, 103, 'uni004_fac003', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (817, 103, 'uni004_fac002', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (818, 103, 'uni004_fac001', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (819, 103, 'uni003_Course037', 22, 16, 0, 27);
INSERT INTO `create_plan` VALUES (820, 103, 'uni003_course032', 22, 13, 0, 27);
INSERT INTO `create_plan` VALUES (821, 103, 'uni003_course031', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (822, 103, 'uni003_course030', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (823, 103, 'uni003_course029', 22, 18, 0, 27);
INSERT INTO `create_plan` VALUES (824, 103, 'uni003_course028', 22, 15, 0, 27);
INSERT INTO `create_plan` VALUES (825, 103, 'uni003_Course036', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (826, 103, 'uni003_course026', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (827, 103, 'uni003_course025', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (828, 103, 'uni003_course024', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (829, 103, 'uni003_course023', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (830, 103, 'uni003_course022', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (831, 103, 'uni003_course021', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (832, 103, 'uni003_course020', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (833, 103, 'uni003_course019', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (834, 103, 'uni003_Course034', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (835, 103, 'uni003_Course033', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (836, 103, 'uni003_course018', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (837, 103, 'uni003_course017', 22, 15, 0, 27);
INSERT INTO `create_plan` VALUES (838, 103, 'uni003_course016', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (839, 103, 'uni003_course015', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (840, 103, 'uni003_course014', 22, 12, 0, 27);
INSERT INTO `create_plan` VALUES (841, 103, 'uni003_course013', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (842, 103, 'uni003_course012', 22, 14, 0, 27);
INSERT INTO `create_plan` VALUES (843, 103, 'uni003_course011', 22, 10, 0, 27);
INSERT INTO `create_plan` VALUES (844, 103, 'uni003_course010', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (845, 103, 'uni003_course009', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (846, 103, 'uni003_course008', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (847, 103, 'uni003_course007', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (848, 103, 'uni003_course006', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (849, 103, 'uni003_course005', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (850, 103, 'uni003_course004', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (851, 103, 'uni003_course003', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (852, 103, 'uni003_course002', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (853, 103, 'uni003_course001', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (854, 103, 'uni002_Course026', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (855, 103, 'uni002_Course025', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (856, 103, 'uni002_Course024', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (857, 103, 'uni002_Course023', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (858, 103, 'uni002_Course022', 22, 15, 0, 27);
INSERT INTO `create_plan` VALUES (859, 103, 'uni002_Course039', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (860, 103, 'uni002_Course038', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (861, 103, 'uni002_Course033', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (862, 103, 'uni002_Course021', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (863, 103, 'uni002_Course020', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (864, 103, 'uni002_Course019', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (865, 103, 'uni002_Course043', 22, 13, 0, 27);
INSERT INTO `create_plan` VALUES (866, 103, 'uni002_Course042', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (867, 103, 'uni002_Course031', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (868, 103, 'uni002_Course030', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (869, 103, 'uni002_Course018', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (870, 103, 'uni002_Course017', 22, 12, 0, 27);
INSERT INTO `create_plan` VALUES (871, 103, 'uni002_Course041', 22, 16, 0, 27);
INSERT INTO `create_plan` VALUES (872, 103, 'uni002_Course040', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (873, 103, 'uni002_Course036', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (874, 103, 'uni002_Course035', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (875, 103, 'uni002_Course034', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (876, 103, 'uni002_Course016', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (877, 103, 'uni002_Course015', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (878, 103, 'uni002_Course014', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (879, 103, 'uni002_Course013', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (880, 103, 'uni002_Course012', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (881, 103, 'uni002_Course037', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (882, 103, 'uni002_Course029', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (883, 103, 'uni002_Course028', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (884, 103, 'uni002_Course027', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (885, 103, 'uni002_Course011', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (886, 103, 'uni002_Course010', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (887, 103, 'uni002_Course009', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (888, 103, 'uni002_Course008', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (889, 103, 'uni002_Course007', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (890, 103, 'uni002_Course006', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (891, 103, 'uni002_Course005', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (892, 103, 'uni002_Course004', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (893, 103, 'uni002_Course003', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (894, 103, 'uni002_Course002', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (895, 103, 'uni002_Course001', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (896, 103, 'uni001_cours043', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (897, 103, 'uni001_cours042', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (898, 103, 'uni001_doc030', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (899, 103, 'uni001_cours106', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (900, 103, 'uni001_cours105', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (901, 103, 'uni001_cours104', 22, 10, 0, 27);
INSERT INTO `create_plan` VALUES (902, 103, 'uni001_cours103', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (903, 103, 'uni001_cours102', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (904, 103, 'uni001_cours101', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (905, 103, 'uni001_doc029', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (906, 103, 'uni001_doc028', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (907, 103, 'uni001_cours100', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (908, 103, 'uni001_cours099', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (909, 103, 'uni001_cours098', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (910, 103, 'uni001_cours097', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (911, 103, 'uni001_cours096', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (912, 103, 'uni001_cours095', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (913, 103, 'uni001_cours094', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (914, 103, 'uni001_cours093', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (915, 103, 'uni001_cours092', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (916, 103, 'uni001_cours091', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (917, 103, 'uni001_cours090', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (918, 103, 'uni001_cours089', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (919, 103, 'uni001_doc027', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (920, 103, 'uni001_cours088', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (921, 103, 'uni001_cours087', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (922, 103, 'uni001_cours086', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (923, 103, 'uni001_cours085', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (924, 103, 'uni001_cours084', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (925, 103, 'uni001_cours083', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (926, 103, 'uni001_cours082', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (927, 103, 'uni001_cours081', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (928, 103, 'uni001_cours080', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (929, 103, 'uni001_cours079', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (930, 103, 'uni001_cours078', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (931, 103, 'uni001_cours077', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (932, 103, 'uni001_doc024', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (933, 103, 'uni001_doc023', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (934, 103, 'uni001_doc022', 22, 7, 0, 27);
INSERT INTO `create_plan` VALUES (935, 103, 'uni001_doc021', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (936, 103, 'uni001_doc020', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (937, 103, 'uni001_doc019', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (938, 103, 'uni001_doc018', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (939, 103, 'uni001_doc017', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (940, 103, 'uni001_cours076', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (941, 103, 'uni001_cours075', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (942, 103, 'uni001_cours074', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (943, 103, 'uni001_cours073', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (944, 103, 'uni001_cours072', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (945, 103, 'uni001_cours071', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (946, 103, 'uni001_cours070', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (947, 103, 'uni001_cours069', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (948, 103, 'uni001_cours068', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (949, 103, 'uni001_cours067', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (950, 103, 'uni001_cours066', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (951, 103, 'uni001_cours065', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (952, 103, 'uni001_cours064', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (953, 103, 'uni001_cours063', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (954, 103, 'uni001_cours062', 22, 10, 0, 27);
INSERT INTO `create_plan` VALUES (955, 103, 'uni001_cours061', 22, 12, 0, 27);
INSERT INTO `create_plan` VALUES (956, 103, 'uni001_cours060', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (957, 103, 'uni001_cours058', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (958, 103, 'uni001_cours057', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (959, 103, 'uni001_cours056', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (960, 103, 'uni001_cours055', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (961, 103, 'uni001_cours054', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (962, 103, 'uni001_cours053', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (963, 103, 'uni001_cours052', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (964, 103, 'uni001_cours051', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (965, 103, 'uni001_cours050', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (966, 103, 'uni001_cours049', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (967, 103, 'uni001_doc016', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (968, 103, 'uni001_doc015', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (969, 103, 'uni001_doc014', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (970, 103, 'uni001_doc013', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (971, 103, 'uni001_cours048', 22, 16, 0, 27);
INSERT INTO `create_plan` VALUES (972, 103, 'uni001_cours047', 22, 14, 0, 27);
INSERT INTO `create_plan` VALUES (973, 103, 'uni001_cours046', 22, 12, 0, 27);
INSERT INTO `create_plan` VALUES (974, 103, 'uni001_cours045', 22, 11, 0, 27);
INSERT INTO `create_plan` VALUES (975, 103, 'uni001_cours044', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (976, 103, 'uni001_doc012', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (977, 103, 'uni001_doc011', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (978, 103, 'uni001_doc010', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (979, 103, 'uni001_doc009', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (980, 103, 'uni001_cours041', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (981, 103, 'uni001_cours040', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (982, 103, 'uni001_cours039', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (983, 103, 'uni001_cours038', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (984, 103, 'uni001_cours037', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (985, 103, 'uni001_cours036', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (986, 103, 'uni001_cours035', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (987, 103, 'uni001_cours034', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (988, 103, 'uni001_cours033', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (989, 103, 'uni001_cours032', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (990, 103, 'uni001_doc008', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (991, 103, 'uni001_doc007', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (992, 103, 'uni001_doc006', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (993, 103, 'uni001_cours031', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (994, 103, 'uni001_cours030', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (995, 103, 'uni001_cours029', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (996, 103, 'uni001_cours028', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (997, 103, 'uni001_cours027', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (998, 103, 'uni001_cours026', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (999, 103, 'uni001_cours025', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (1000, 103, 'uni001_cours024', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (1001, 103, 'uni001_cours023', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1002, 103, 'uni001_doc005', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (1003, 103, 'uni001_cours022', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1004, 103, 'uni001_cours021', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (1005, 103, 'uni001_cours020', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (1006, 103, 'uni001_cours019', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (1007, 103, 'uni001_cours018', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1008, 103, 'uni001_cours017', 22, 6, 0, 27);
INSERT INTO `create_plan` VALUES (1009, 103, 'uni001_cours016', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1010, 103, 'uni001_cours015', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1011, 103, 'uni001_cours014', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1012, 103, 'uni001_cours013', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (1013, 103, 'uni001_cours012', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (1014, 103, 'uni001_doc004', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1015, 103, 'uni001_doc003', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (1016, 103, 'uni001_doc002', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1017, 103, 'uni001_doc001', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1018, 103, 'uni001_cours011', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1019, 103, 'uni001_cours010', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1020, 103, 'uni001_cours009', 22, 5, 0, 27);
INSERT INTO `create_plan` VALUES (1021, 103, 'uni001_cours008', 22, 3, 0, 27);
INSERT INTO `create_plan` VALUES (1022, 103, 'uni001_cours007', 22, 4, 0, 27);
INSERT INTO `create_plan` VALUES (1023, 103, 'uni001_cours006', 22, 9, 0, 27);
INSERT INTO `create_plan` VALUES (1024, 103, 'uni001_cours005', 22, 1, 0, 27);
INSERT INTO `create_plan` VALUES (1025, 103, 'uni001_cours004', 22, 8, 0, 27);
INSERT INTO `create_plan` VALUES (1026, 103, 'uni001_cours003', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1027, 103, 'uni001_cours002', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1028, 103, 'uni001_cours001', 22, 2, 0, 27);
INSERT INTO `create_plan` VALUES (1029, 103, 'uni004_fac037', 20, 50, 670, 10);
INSERT INTO `create_plan` VALUES (1030, 103, 'uni004_fac036', 20, 6556, 560, 10);
INSERT INTO `create_plan` VALUES (1031, 103, 'uni004_fac035', 20, 56, 560, 10);
INSERT INTO `create_plan` VALUES (1032, 103, 'uni004_fac041', 20, 330, 640, 10);
INSERT INTO `create_plan` VALUES (1033, 103, 'uni004_fac034', 20, 40, 670, 10);
INSERT INTO `create_plan` VALUES (1034, 103, 'uni004_fac033', 20, 50, 450, 10);
INSERT INTO `create_plan` VALUES (1035, 103, 'uni004_fac032', 20, 30, 4560, 10);
INSERT INTO `create_plan` VALUES (1036, 103, 'uni004_fac031', 20, 70, 40, 10);
INSERT INTO `create_plan` VALUES (1037, 103, 'uni004_fac030', 20, 540, 34560, 10);
INSERT INTO `create_plan` VALUES (1038, 103, 'uni004_fac029', 20, 3460, 3560, 10);
INSERT INTO `create_plan` VALUES (1039, 103, 'uni004_fac028', 20, 360, 3460, 10);
INSERT INTO `create_plan` VALUES (1040, 103, 'uni004_fac027', 20, 6450, 4560, 10);
INSERT INTO `create_plan` VALUES (1041, 103, 'uni004_fac026', 20, 3450, 3460, 10);
INSERT INTO `create_plan` VALUES (1042, 103, 'uni004_fac025', 20, 30, 3460, 10);
INSERT INTO `create_plan` VALUES (1043, 103, 'uni004_fac024', 20, 50, 5640, 10);
INSERT INTO `create_plan` VALUES (1044, 103, 'uni004_fac023', 20, 4560, 3450, 10);
INSERT INTO `create_plan` VALUES (1045, 103, 'uni004_fac022', 20, 60, 70, 10);
INSERT INTO `create_plan` VALUES (1046, 103, 'uni004_fac021', 20, 760, 3560, 10);
INSERT INTO `create_plan` VALUES (1047, 103, 'uni004_fac020', 20, 50, 45630, 10);
INSERT INTO `create_plan` VALUES (1048, 103, 'uni004_fac019', 20, 43360, 3460, 10);
INSERT INTO `create_plan` VALUES (1049, 103, 'uni004_fac018', 20, 4630, 60, 10);
INSERT INTO `create_plan` VALUES (1050, 103, 'uni004_fac017', 20, 60, 50, 10);
INSERT INTO `create_plan` VALUES (1051, 103, 'uni004_fac016', 20, 30, 40, 10);
INSERT INTO `create_plan` VALUES (1052, 103, 'uni004_fac015', 20, 34564, 4360, 10);
INSERT INTO `create_plan` VALUES (1053, 103, 'uni004_fac040', 20, 460, 340, 10);
INSERT INTO `create_plan` VALUES (1054, 103, 'uni004_fac039', 20, 560, 540, 10);
INSERT INTO `create_plan` VALUES (1055, 103, 'uni004_fac038', 20, 560, 560, 10);
INSERT INTO `create_plan` VALUES (1056, 103, 'uni004_fac014', 20, 560, 60, 10);
INSERT INTO `create_plan` VALUES (1057, 103, 'uni004_fac013', 20, 640, 60, 10);
INSERT INTO `create_plan` VALUES (1058, 103, 'uni004_fac012', 20, 3456, 34, 10);
INSERT INTO `create_plan` VALUES (1059, 103, 'uni004_fac011', 20, 70, 5, 10);
INSERT INTO `create_plan` VALUES (1060, 103, 'uni004_fac010', 20, 345, 56, 10);
INSERT INTO `create_plan` VALUES (1061, 103, 'uni004_fac009', 20, 560, 560, 10);
INSERT INTO `create_plan` VALUES (1062, 103, 'uni004_fac008', 20, 45, 6570, 10);
INSERT INTO `create_plan` VALUES (1063, 103, 'uni004_fac007', 20, 5670, 4560, 10);
INSERT INTO `create_plan` VALUES (1064, 103, 'uni004_fac006', 20, 60, 560, 10);
INSERT INTO `create_plan` VALUES (1065, 103, 'uni004_fac005', 20, 5634, 3456, 10);
INSERT INTO `create_plan` VALUES (1066, 103, 'uni004_fac004', 20, 65, 3560, 10);
INSERT INTO `create_plan` VALUES (1067, 103, 'uni004_fac003', 20, 3460, 3456, 10);
INSERT INTO `create_plan` VALUES (1068, 103, 'uni004_fac002', 20, 34560, 3460, 10);
INSERT INTO `create_plan` VALUES (1069, 103, 'uni004_fac001', 20, 3560, 34560, 10);
INSERT INTO `create_plan` VALUES (1070, 103, 'uni003_Course037', 20, 234, 43, 10);
INSERT INTO `create_plan` VALUES (1071, 103, 'uni003_course032', 20, 43, 345, 10);
INSERT INTO `create_plan` VALUES (1072, 103, 'uni003_course031', 20, 34, 345, 10);
INSERT INTO `create_plan` VALUES (1073, 103, 'uni003_course030', 20, 43, 345, 10);
INSERT INTO `create_plan` VALUES (1074, 103, 'uni003_course029', 20, 34, 345, 10);
INSERT INTO `create_plan` VALUES (1075, 103, 'uni003_course028', 20, 23, 53, 10);
INSERT INTO `create_plan` VALUES (1076, 103, 'uni003_Course036', 20, 789, 789, 10);
INSERT INTO `create_plan` VALUES (1077, 103, 'uni003_course026', 20, 99, 34, 10);
INSERT INTO `create_plan` VALUES (1078, 103, 'uni003_course025', 20, 89, 870, 10);
INSERT INTO `create_plan` VALUES (1079, 103, 'uni003_course024', 20, 90, 564, 10);
INSERT INTO `create_plan` VALUES (1080, 103, 'uni003_course023', 20, 456, 46, 10);
INSERT INTO `create_plan` VALUES (1081, 103, 'uni003_course022', 20, 87, 89, 10);
INSERT INTO `create_plan` VALUES (1082, 103, 'uni003_course021', 20, 98, 89, 10);
INSERT INTO `create_plan` VALUES (1083, 103, 'uni003_course020', 20, 789, 780, 10);
INSERT INTO `create_plan` VALUES (1084, 103, 'uni003_course019', 20, 879, 89, 10);
INSERT INTO `create_plan` VALUES (1085, 103, 'uni003_Course035', 20, 4, 5, 10);
INSERT INTO `create_plan` VALUES (1086, 103, 'uni003_Course034', 20, 3, 32, 10);
INSERT INTO `create_plan` VALUES (1087, 103, 'uni003_Course033', 20, 45, 3, 10);
INSERT INTO `create_plan` VALUES (1088, 103, 'uni003_course018', 20, 23, 45, 10);
INSERT INTO `create_plan` VALUES (1089, 103, 'uni003_course017', 20, 34, 34, 10);
INSERT INTO `create_plan` VALUES (1090, 103, 'uni003_course016', 20, 65, 65, 10);
INSERT INTO `create_plan` VALUES (1091, 103, 'uni003_course015', 20, 324, 20, 10);
INSERT INTO `create_plan` VALUES (1092, 103, 'uni003_course014', 20, 2, 4, 10);
INSERT INTO `create_plan` VALUES (1093, 103, 'uni003_course013', 20, 34, 5, 10);
INSERT INTO `create_plan` VALUES (1094, 103, 'uni003_course012', 20, 6, 67, 10);
INSERT INTO `create_plan` VALUES (1095, 103, 'uni003_course011', 20, 76, 67, 10);
INSERT INTO `create_plan` VALUES (1096, 103, 'uni003_course010', 20, 6, 456, 10);
INSERT INTO `create_plan` VALUES (1097, 103, 'uni003_course009', 20, 67, 667, 10);
INSERT INTO `create_plan` VALUES (1098, 103, 'uni003_course008', 20, 76, 3, 10);
INSERT INTO `create_plan` VALUES (1099, 103, 'uni003_course007', 20, 67, 67, 10);
INSERT INTO `create_plan` VALUES (1100, 103, 'uni003_course006', 20, 67, 5, 10);
INSERT INTO `create_plan` VALUES (1101, 103, 'uni003_course005', 20, 4, 3450, 10);
INSERT INTO `create_plan` VALUES (1102, 103, 'uni003_course004', 20, 45, 345, 10);
INSERT INTO `create_plan` VALUES (1103, 103, 'uni003_course003', 20, 54, 54, 10);
INSERT INTO `create_plan` VALUES (1104, 103, 'uni003_course002', 20, 3, 54, 10);
INSERT INTO `create_plan` VALUES (1105, 103, 'uni003_course001', 20, 3, 54, 10);
INSERT INTO `create_plan` VALUES (1106, 103, 'uni002_Course026', 20, 3640, 6900, 10);
INSERT INTO `create_plan` VALUES (1107, 103, 'uni002_Course025', 20, 34560, 60, 10);
INSERT INTO `create_plan` VALUES (1108, 103, 'uni002_Course024', 20, 35460, 30, 10);
INSERT INTO `create_plan` VALUES (1109, 103, 'uni002_Course023', 20, 350, 50, 10);
INSERT INTO `create_plan` VALUES (1110, 103, 'uni002_Course022', 20, 34560, 3630, 10);
INSERT INTO `create_plan` VALUES (1111, 103, 'uni002_Course039', 20, 3460, 4560, 10);
INSERT INTO `create_plan` VALUES (1112, 103, 'uni002_Course038', 20, 30, 4560, 10);
INSERT INTO `create_plan` VALUES (1113, 103, 'uni002_Course033', 20, 53450, 4560, 10);
INSERT INTO `create_plan` VALUES (1114, 103, 'uni002_Course032', 20, 730, 4560, 10);
INSERT INTO `create_plan` VALUES (1115, 103, 'uni002_Course021', 20, 46650, 4560, 10);
INSERT INTO `create_plan` VALUES (1116, 103, 'uni002_Course020', 20, 7560, 5630, 10);
INSERT INTO `create_plan` VALUES (1117, 103, 'uni002_Course019', 20, 5670, 450, 10);
INSERT INTO `create_plan` VALUES (1118, 103, 'uni002_Course043', 20, 680, 6800, 10);
INSERT INTO `create_plan` VALUES (1119, 103, 'uni002_Course042', 20, 770, 680, 10);
INSERT INTO `create_plan` VALUES (1120, 103, 'uni002_Course031', 20, 90, 860, 10);
INSERT INTO `create_plan` VALUES (1121, 103, 'uni002_Course030', 20, 90, 8900, 10);
INSERT INTO `create_plan` VALUES (1122, 103, 'uni002_Course018', 20, 90, 8900, 10);
INSERT INTO `create_plan` VALUES (1123, 103, 'uni002_Course017', 20, 89, 890, 10);
INSERT INTO `create_plan` VALUES (1124, 103, 'uni002_Course040', 20, 34660, 560, 10);
INSERT INTO `create_plan` VALUES (1125, 103, 'uni002_Course036', 20, 460, 356560, 10);
INSERT INTO `create_plan` VALUES (1126, 103, 'uni002_Course035', 20, 345560, 560, 10);
INSERT INTO `create_plan` VALUES (1127, 103, 'uni002_Course034', 20, 3460, 560, 10);
INSERT INTO `create_plan` VALUES (1128, 103, 'uni002_Course016', 20, 34560, 3560, 10);
INSERT INTO `create_plan` VALUES (1129, 103, 'uni002_Course015', 20, 45630, 56430, 10);
INSERT INTO `create_plan` VALUES (1130, 103, 'uni002_Course014', 20, 670, 34560, 10);
INSERT INTO `create_plan` VALUES (1131, 103, 'uni002_Course013', 20, 3460, 35640, 10);
INSERT INTO `create_plan` VALUES (1132, 103, 'uni002_Course012', 20, 34560, 34560, 10);
INSERT INTO `create_plan` VALUES (1133, 103, 'uni002_Course037', 20, 6760, 670, 10);
INSERT INTO `create_plan` VALUES (1134, 103, 'uni002_Course029', 20, 3460, 640, 10);
INSERT INTO `create_plan` VALUES (1135, 103, 'uni002_Course028', 20, 34560, 3560, 10);
INSERT INTO `create_plan` VALUES (1136, 103, 'uni002_Course027', 20, 70, 670, 10);
INSERT INTO `create_plan` VALUES (1137, 103, 'uni002_Course011', 20, 40, 450, 10);
INSERT INTO `create_plan` VALUES (1138, 103, 'uni002_Course010', 20, 340, 450, 10);
INSERT INTO `create_plan` VALUES (1139, 103, 'uni002_Course009', 20, 40, 30, 10);
INSERT INTO `create_plan` VALUES (1140, 103, 'uni002_Course008', 20, 64640, 30, 10);
INSERT INTO `create_plan` VALUES (1141, 103, 'uni002_Course007', 20, 460, 430, 10);
INSERT INTO `create_plan` VALUES (1142, 103, 'uni002_Course006', 20, 60, 60, 10);
INSERT INTO `create_plan` VALUES (1143, 103, 'uni002_Course005', 20, 4560, 45650, 10);
INSERT INTO `create_plan` VALUES (1144, 103, 'uni002_Course004', 20, 4560, 6330, 10);
INSERT INTO `create_plan` VALUES (1145, 103, 'uni002_Course003', 20, 45560, 450, 10);
INSERT INTO `create_plan` VALUES (1146, 103, 'uni002_Course002', 20, 4560, 4560, 10);
INSERT INTO `create_plan` VALUES (1147, 103, 'uni002_Course001', 20, 4560, 43560, 10);
INSERT INTO `create_plan` VALUES (1148, 103, 'uni001_cours043', 20, 560, 560, 10);
INSERT INTO `create_plan` VALUES (1149, 103, 'uni001_cours042', 20, 560, 560, 10);
INSERT INTO `create_plan` VALUES (1150, 103, 'uni001_doc030', 20, 5670, 5670, 10);
INSERT INTO `create_plan` VALUES (1151, 103, 'uni001_cours106', 20, 350, 54670, 10);
INSERT INTO `create_plan` VALUES (1152, 103, 'uni001_cours105', 20, 560, 4570, 10);
INSERT INTO `create_plan` VALUES (1153, 103, 'uni001_cours104', 20, 5740, 5670, 10);
INSERT INTO `create_plan` VALUES (1154, 103, 'uni001_cours103', 20, 577, 450, 10);
INSERT INTO `create_plan` VALUES (1155, 103, 'uni001_cours102', 20, 750, 370, 10);
INSERT INTO `create_plan` VALUES (1156, 103, 'uni001_cours101', 20, 570, 570, 10);
INSERT INTO `create_plan` VALUES (1157, 103, 'uni001_doc029', 20, 40, 440, 10);
INSERT INTO `create_plan` VALUES (1158, 103, 'uni001_doc028', 20, 30, 50, 10);
INSERT INTO `create_plan` VALUES (1159, 103, 'uni001_cours100', 20, 40, 30, 10);
INSERT INTO `create_plan` VALUES (1160, 103, 'uni001_cours099', 20, 50, 30, 10);
INSERT INTO `create_plan` VALUES (1161, 103, 'uni001_cours098', 20, 50, 30, 10);
INSERT INTO `create_plan` VALUES (1162, 103, 'uni001_cours097', 20, 340, 30, 10);
INSERT INTO `create_plan` VALUES (1163, 103, 'uni001_cours096', 20, 40, 60, 10);
INSERT INTO `create_plan` VALUES (1164, 103, 'uni001_cours095', 20, 34, 3450, 10);
INSERT INTO `create_plan` VALUES (1165, 103, 'uni001_cours094', 20, 60, 40, 10);
INSERT INTO `create_plan` VALUES (1166, 103, 'uni001_cours093', 20, 4560, 4560, 10);
INSERT INTO `create_plan` VALUES (1167, 103, 'uni001_cours092', 20, 30, 460, 10);
INSERT INTO `create_plan` VALUES (1168, 103, 'uni001_cours091', 20, 560, 34560, 10);
INSERT INTO `create_plan` VALUES (1169, 103, 'uni001_cours090', 20, 3560, 650, 10);
INSERT INTO `create_plan` VALUES (1170, 103, 'uni001_cours089', 20, 5750, 340, 10);
INSERT INTO `create_plan` VALUES (1171, 103, 'uni001_doc027', 20, 320, 450, 10);
INSERT INTO `create_plan` VALUES (1172, 103, 'uni001_cours088', 20, 50, 330, 10);
INSERT INTO `create_plan` VALUES (1173, 103, 'uni001_cours087', 20, 3460, 43560, 10);
INSERT INTO `create_plan` VALUES (1174, 103, 'uni001_cours086', 20, 30, 220, 10);
INSERT INTO `create_plan` VALUES (1175, 103, 'uni001_cours085', 20, 640, 3450, 10);
INSERT INTO `create_plan` VALUES (1176, 103, 'uni001_cours084', 20, 32, 340, 10);
INSERT INTO `create_plan` VALUES (1177, 103, 'uni001_cours083', 20, 40, 5350, 10);
INSERT INTO `create_plan` VALUES (1178, 103, 'uni001_doc026', 20, 60, 70, 10);
INSERT INTO `create_plan` VALUES (1179, 103, 'uni001_doc025', 20, 40, 30, 10);
INSERT INTO `create_plan` VALUES (1180, 103, 'uni001_cours082', 20, 60, 560, 10);
INSERT INTO `create_plan` VALUES (1181, 103, 'uni001_cours081', 20, 4560, 30, 10);
INSERT INTO `create_plan` VALUES (1182, 103, 'uni001_cours080', 20, 40, 30, 10);
INSERT INTO `create_plan` VALUES (1183, 103, 'uni001_cours079', 20, 50, 530, 10);
INSERT INTO `create_plan` VALUES (1184, 103, 'uni001_cours078', 20, 5670, 560, 10);
INSERT INTO `create_plan` VALUES (1185, 103, 'uni001_cours077', 20, 330, 4560, 10);
INSERT INTO `create_plan` VALUES (1186, 103, 'uni001_doc024', 20, 340, 350, 10);
INSERT INTO `create_plan` VALUES (1187, 103, 'uni001_doc023', 20, 530, 3450, 10);
INSERT INTO `create_plan` VALUES (1188, 103, 'uni001_doc022', 20, 450, 3650, 10);
INSERT INTO `create_plan` VALUES (1189, 103, 'uni001_doc021', 20, 3450, 560, 10);
INSERT INTO `create_plan` VALUES (1190, 103, 'uni001_doc020', 20, 60, 450, 10);
INSERT INTO `create_plan` VALUES (1191, 103, 'uni001_doc019', 20, 34650, 7560, 10);
INSERT INTO `create_plan` VALUES (1192, 103, 'uni001_doc018', 20, 40, 34560, 10);
INSERT INTO `create_plan` VALUES (1193, 103, 'uni001_doc017', 20, 63450, 43670, 10);
INSERT INTO `create_plan` VALUES (1194, 103, 'uni001_cours076', 20, 640, 60, 10);
INSERT INTO `create_plan` VALUES (1195, 103, 'uni001_cours075', 20, 50, 660, 10);
INSERT INTO `create_plan` VALUES (1196, 103, 'uni001_cours074', 20, 6340, 4560, 10);
INSERT INTO `create_plan` VALUES (1197, 103, 'uni001_cours073', 20, 350, 60, 10);
INSERT INTO `create_plan` VALUES (1198, 103, 'uni001_cours072', 20, 60, 630, 10);
INSERT INTO `create_plan` VALUES (1199, 103, 'uni001_cours071', 20, 60, 4560, 10);
INSERT INTO `create_plan` VALUES (1200, 103, 'uni001_cours070', 20, 20, 30, 10);
INSERT INTO `create_plan` VALUES (1201, 103, 'uni001_cours069', 20, 3450, 34560, 10);
INSERT INTO `create_plan` VALUES (1202, 103, 'uni001_cours068', 20, 60, 430, 10);
INSERT INTO `create_plan` VALUES (1203, 103, 'uni001_cours067', 20, 60, 60, 10);
INSERT INTO `create_plan` VALUES (1204, 103, 'uni001_cours066', 20, 45560, 34560, 10);
INSERT INTO `create_plan` VALUES (1205, 103, 'uni001_cours065', 20, 630, 60, 10);
INSERT INTO `create_plan` VALUES (1206, 103, 'uni001_cours064', 20, 60, 60, 10);
INSERT INTO `create_plan` VALUES (1207, 103, 'uni001_cours063', 20, 60, 50, 10);
INSERT INTO `create_plan` VALUES (1208, 103, 'uni001_cours062', 20, 570, 560, 10);
INSERT INTO `create_plan` VALUES (1209, 103, 'uni001_cours061', 20, 560, 670, 10);
INSERT INTO `create_plan` VALUES (1210, 103, 'uni001_cours060', 20, 470, 50, 10);
INSERT INTO `create_plan` VALUES (1211, 103, 'uni001_cours058', 20, 34560, 340, 10);
INSERT INTO `create_plan` VALUES (1212, 103, 'uni001_cours057', 20, 5670, 460, 10);
INSERT INTO `create_plan` VALUES (1213, 103, 'uni001_cours056', 20, 3450, 530, 10);
INSERT INTO `create_plan` VALUES (1214, 103, 'uni001_cours055', 20, 50, 350, 10);
INSERT INTO `create_plan` VALUES (1215, 103, 'uni001_cours054', 20, 56670, 470, 10);
INSERT INTO `create_plan` VALUES (1216, 103, 'uni001_cours053', 20, 50, 540, 10);
INSERT INTO `create_plan` VALUES (1217, 103, 'uni001_cours052', 20, 40, 70, 10);
INSERT INTO `create_plan` VALUES (1218, 103, 'uni001_cours051', 20, 47560, 570, 10);
INSERT INTO `create_plan` VALUES (1219, 103, 'uni001_cours050', 20, 30, 60, 10);
INSERT INTO `create_plan` VALUES (1220, 103, 'uni001_cours049', 20, 4570, 7560, 10);
INSERT INTO `create_plan` VALUES (1221, 103, 'uni001_doc016', 20, 6570, 670, 10);
INSERT INTO `create_plan` VALUES (1222, 103, 'uni001_doc015', 20, 560, 540, 10);
INSERT INTO `create_plan` VALUES (1223, 103, 'uni001_doc014', 20, 570, 560, 10);
INSERT INTO `create_plan` VALUES (1224, 103, 'uni001_doc013', 20, 7650, 0, 10);
INSERT INTO `create_plan` VALUES (1225, 103, 'uni001_cours048', 20, 3540, 360, 10);
INSERT INTO `create_plan` VALUES (1226, 103, 'uni001_cours047', 20, 34560, 50, 10);
INSERT INTO `create_plan` VALUES (1227, 103, 'uni001_cours046', 20, 560, 560, 10);
INSERT INTO `create_plan` VALUES (1228, 103, 'uni001_cours045', 20, 670, 670, 10);
INSERT INTO `create_plan` VALUES (1229, 103, 'uni001_cours044', 20, 5, 430, 10);
INSERT INTO `create_plan` VALUES (1230, 103, 'uni001_doc012', 20, 56, 30, 10);
INSERT INTO `create_plan` VALUES (1231, 103, 'uni001_doc011', 20, 350, 60, 10);
INSERT INTO `create_plan` VALUES (1232, 103, 'uni001_doc010', 20, 450, 5640, 10);
INSERT INTO `create_plan` VALUES (1233, 103, 'uni001_doc009', 20, 4360, 450, 10);
INSERT INTO `create_plan` VALUES (1234, 103, 'uni001_cours041', 20, 70, 60, 10);
INSERT INTO `create_plan` VALUES (1235, 103, 'uni001_cours040', 20, 70, 60, 10);
INSERT INTO `create_plan` VALUES (1236, 103, 'uni001_cours039', 20, 303, 670, 10);
INSERT INTO `create_plan` VALUES (1237, 103, 'uni001_cours038', 20, 5, 40, 10);
INSERT INTO `create_plan` VALUES (1238, 103, 'uni001_cours037', 20, 50, 50, 10);
INSERT INTO `create_plan` VALUES (1239, 103, 'uni001_cours036', 20, 570, 40, 10);
INSERT INTO `create_plan` VALUES (1240, 103, 'uni001_cours035', 20, 530, 40, 10);
INSERT INTO `create_plan` VALUES (1241, 103, 'uni001_cours034', 20, 40, 4360, 10);
INSERT INTO `create_plan` VALUES (1242, 103, 'uni001_cours033', 20, 340, 3440, 10);
INSERT INTO `create_plan` VALUES (1243, 103, 'uni001_cours032', 20, 560, 50, 10);
INSERT INTO `create_plan` VALUES (1244, 103, 'uni001_doc008', 20, 330, 3451, 10);
INSERT INTO `create_plan` VALUES (1245, 103, 'uni001_doc007', 20, 640, 40, 10);
INSERT INTO `create_plan` VALUES (1246, 103, 'uni001_doc006', 20, 6640, 40, 10);
INSERT INTO `create_plan` VALUES (1247, 103, 'uni001_cours031', 20, 320, 460, 10);
INSERT INTO `create_plan` VALUES (1248, 103, 'uni001_cours030', 20, 350, 70, 10);
INSERT INTO `create_plan` VALUES (1249, 103, 'uni001_cours029', 20, 450, 50, 10);
INSERT INTO `create_plan` VALUES (1250, 103, 'uni001_cours028', 20, 20, 5560, 10);
INSERT INTO `create_plan` VALUES (1251, 103, 'uni001_cours027', 20, 330, 50, 10);
INSERT INTO `create_plan` VALUES (1252, 103, 'uni001_cours026', 20, 33, 50, 10);
INSERT INTO `create_plan` VALUES (1253, 103, 'uni001_cours025', 20, 640, 450, 10);
INSERT INTO `create_plan` VALUES (1254, 103, 'uni001_cours024', 20, 230, 6540, 10);
INSERT INTO `create_plan` VALUES (1255, 103, 'uni001_cours023', 20, 30, 40, 10);
INSERT INTO `create_plan` VALUES (1256, 103, 'uni001_doc005', 20, 66450, 30, 10);
INSERT INTO `create_plan` VALUES (1257, 103, 'uni001_cours022', 20, 34560, 40, 10);
INSERT INTO `create_plan` VALUES (1258, 103, 'uni001_cours021', 20, 450, 34560, 10);
INSERT INTO `create_plan` VALUES (1259, 103, 'uni001_cours020', 20, 30, 4560, 10);
INSERT INTO `create_plan` VALUES (1260, 103, 'uni001_cours019', 20, 5560, 36540, 10);
INSERT INTO `create_plan` VALUES (1261, 103, 'uni001_cours018', 20, 430, 540, 10);
INSERT INTO `create_plan` VALUES (1262, 103, 'uni001_cours017', 20, 50, 4560, 10);
INSERT INTO `create_plan` VALUES (1263, 103, 'uni001_cours016', 20, 60, 6450, 10);
INSERT INTO `create_plan` VALUES (1264, 103, 'uni001_cours015', 20, 6450, 34560, 10);
INSERT INTO `create_plan` VALUES (1265, 103, 'uni001_cours014', 20, 630, 60, 10);
INSERT INTO `create_plan` VALUES (1266, 103, 'uni001_cours013', 20, 40, 40, 10);
INSERT INTO `create_plan` VALUES (1267, 103, 'uni001_cours012', 20, 60, 34560, 10);
INSERT INTO `create_plan` VALUES (1268, 103, 'uni001_doc004', 20, 50, 60, 10);
INSERT INTO `create_plan` VALUES (1269, 103, 'uni001_doc003', 20, 640, 430, 10);
INSERT INTO `create_plan` VALUES (1270, 103, 'uni001_doc002', 20, 630, 40, 10);
INSERT INTO `create_plan` VALUES (1271, 103, 'uni001_doc001', 20, 40, 3450, 10);
INSERT INTO `create_plan` VALUES (1272, 103, 'uni001_cours011', 20, 340, 60, 10);
INSERT INTO `create_plan` VALUES (1273, 103, 'uni001_cours010', 20, 40, 60, 10);
INSERT INTO `create_plan` VALUES (1274, 103, 'uni001_cours009', 20, 50, 456450, 10);
INSERT INTO `create_plan` VALUES (1275, 103, 'uni001_cours008', 20, 430, 4560, 10);
INSERT INTO `create_plan` VALUES (1276, 103, 'uni001_cours007', 20, 60, 340, 10);
INSERT INTO `create_plan` VALUES (1277, 103, 'uni001_cours006', 20, 40, 640, 10);
INSERT INTO `create_plan` VALUES (1278, 103, 'uni001_cours005', 20, 6460, 430, 10);
INSERT INTO `create_plan` VALUES (1279, 103, 'uni001_cours004', 20, 60, 460, 10);
INSERT INTO `create_plan` VALUES (1280, 103, 'uni001_cours003', 20, 560, 43560, 10);
INSERT INTO `create_plan` VALUES (1281, 103, 'uni001_cours002', 20, 30, 3460, 10);
INSERT INTO `create_plan` VALUES (1282, 103, 'uni001_cours001', 20, 40, 4560, 10);
INSERT INTO `create_plan` VALUES (1283, 94, 'uni070_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1284, 94, 'uni070_Course001', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1285, 96, 'uni065_Course004', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1286, 96, 'uni065_Course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1287, 96, 'uni065_Course002', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1288, 96, 'uni065_Course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1289, 97, 'uni064_Course005', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1290, 97, 'uni064_Course004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1291, 97, 'uni064_Course003', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1292, 97, 'uni064_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1293, 97, 'uni064_Course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1294, 97, 'uni063_Course005', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1295, 97, 'uni063_Course004', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1296, 97, 'uni063_Course003', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1297, 97, 'uni063_Course002', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1298, 97, 'uni063_Course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1299, 97, 'uni062_Course003', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1300, 97, 'uni062_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1301, 97, 'uni062_Course001', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1308, 98, 'uni060_Course008', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1309, 98, 'uni060_Course007', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1310, 98, 'uni060_Course006', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1311, 98, 'uni060_Course005', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1312, 98, 'uni060_Course004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1313, 98, 'uni060_Course003', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1314, 98, 'uni060_Course002', 25, 8, 0, 28);
INSERT INTO `create_plan` VALUES (1315, 98, 'uni060_Course001', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1316, 98, 'uni059_Course008', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1317, 98, 'uni059_Course007', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1318, 98, 'uni059_Course006', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1319, 98, 'uni059_Course005', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1320, 98, 'uni059_Course004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1321, 98, 'uni059_Course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1322, 98, 'uni059_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1323, 98, 'uni059_Course001', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1324, 98, 'uni058_Course008', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1325, 98, 'uni058_Course007', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1326, 98, 'uni058_Course006', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1327, 98, 'uni058_Course005', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1328, 98, 'uni058_Course004', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1329, 98, 'uni058_Course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1330, 98, 'uni058_Course002', 25, 7, 0, 28);
INSERT INTO `create_plan` VALUES (1331, 98, 'uni058_Course001', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1332, 98, 'uni057_Course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1333, 98, 'uni057_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1334, 98, 'uni057_Course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1379, 100, 'uni051_Course002', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1380, 100, 'uni051_Course001', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1381, 100, 'uni050_Course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1382, 100, 'uni050_Course002', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1383, 100, 'uni050_Course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1384, 100, 'uni049_Course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1385, 100, 'uni048_course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1386, 100, 'uni048_course002', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1387, 100, 'uni048_course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1388, 100, 'uni047_course002', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1389, 100, 'uni047_course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1390, 100, 'uni046_course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1391, 100, 'uni046_course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1392, 100, 'uni045_course003', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1393, 100, 'uni045_course002', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1394, 100, 'uni045_course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1395, 100, 'uni044_course004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1396, 100, 'uni044_course003', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1397, 100, 'uni044_course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1398, 100, 'uni044_course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1399, 100, 'uni043_course003', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1400, 100, 'uni043_course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1401, 100, 'uni043_course001', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1402, 100, 'uni042_course021', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1403, 100, 'uni042_course020', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1404, 100, 'uni042_course019', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1405, 100, 'uni042_course018', 25, 7, 0, 28);
INSERT INTO `create_plan` VALUES (1406, 100, 'uni042_course017', 25, 7, 0, 28);
INSERT INTO `create_plan` VALUES (1407, 100, 'uni042_course016', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1408, 100, 'uni042_course015', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1409, 100, 'uni042_course014', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1410, 100, 'uni042_course013', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1411, 100, 'uni042_course012', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1412, 100, 'uni042_course011', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1413, 100, 'uni042_course010', 25, 7, 0, 28);
INSERT INTO `create_plan` VALUES (1414, 100, 'uni042_course009', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1415, 100, 'uni042_course008', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1416, 100, 'uni042_course007', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1417, 100, 'uni042_course006', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1418, 100, 'uni042_course005', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1419, 100, 'uni042_course004', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1420, 100, 'uni042_course003', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1421, 100, 'uni042_course002', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1422, 100, 'uni042_course001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1467, 103, 'uni003_Course037', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1468, 103, 'uni003_course032', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1469, 103, 'uni003_course031', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1470, 103, 'uni003_course030', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1471, 103, 'uni003_course029', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1472, 103, 'uni003_course028', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1473, 103, 'uni003_Course035', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1474, 103, 'uni003_Course034', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1475, 103, 'uni003_Course033', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1476, 103, 'uni003_course018', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1477, 103, 'uni003_course017', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1478, 103, 'uni003_course016', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1479, 103, 'uni003_course015', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1480, 103, 'uni003_course014', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1481, 103, 'uni003_course013', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1482, 103, 'uni003_course012', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1483, 103, 'uni003_course011', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1484, 103, 'uni003_course010', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1485, 103, 'uni003_course009', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1486, 103, 'uni003_course008', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1487, 103, 'uni003_course007', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1488, 103, 'uni003_course006', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1489, 103, 'uni003_course005', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1490, 103, 'uni003_course004', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1491, 103, 'uni003_course003', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1492, 103, 'uni003_course002', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1493, 103, 'uni003_course001', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1697, 103, 'uni004_fac037', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1698, 103, 'uni004_fac036', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1699, 103, 'uni004_fac035', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1700, 103, 'uni004_fac041', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1701, 103, 'uni004_fac034', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1702, 103, 'uni004_fac033', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1703, 103, 'uni004_fac032', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1704, 103, 'uni004_fac031', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1705, 103, 'uni004_fac030', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1706, 103, 'uni004_fac029', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1707, 103, 'uni004_fac028', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1708, 103, 'uni004_fac027', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1709, 103, 'uni004_fac026', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1710, 103, 'uni004_fac025', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1711, 103, 'uni004_fac024', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1712, 103, 'uni004_fac023', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1713, 103, 'uni004_fac022', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1714, 103, 'uni004_fac021', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1715, 103, 'uni004_fac020', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1716, 103, 'uni004_fac019', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1717, 103, 'uni004_fac018', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1718, 103, 'uni004_fac017', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1719, 103, 'uni004_fac016', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1720, 103, 'uni004_fac015', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1721, 103, 'uni004_fac039', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1722, 103, 'uni004_fac038', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1723, 103, 'uni004_fac014', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1724, 103, 'uni004_fac013', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1725, 103, 'uni004_fac012', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1726, 103, 'uni004_fac011', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1727, 103, 'uni004_fac010', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1728, 103, 'uni004_fac009', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1729, 103, 'uni004_fac008', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1730, 103, 'uni004_fac007', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1731, 103, 'uni004_fac006', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1732, 103, 'uni004_fac005', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1733, 103, 'uni004_fac004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1734, 103, 'uni004_fac003', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1735, 103, 'uni004_fac002', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1736, 103, 'uni004_fac001', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1737, 103, 'uni003_Course036', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1738, 103, 'uni003_course026', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1739, 103, 'uni003_course025', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1740, 103, 'uni003_course024', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1741, 103, 'uni003_course023', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1742, 103, 'uni003_course022', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1743, 103, 'uni003_course021', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1744, 103, 'uni003_course020', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1745, 103, 'uni003_course019', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1746, 103, 'uni002_Course026', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1747, 103, 'uni002_Course025', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1748, 103, 'uni002_Course024', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1749, 103, 'uni002_Course023', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1750, 103, 'uni002_Course022', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1751, 103, 'uni002_Course039', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1752, 103, 'uni002_Course038', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1753, 103, 'uni002_Course033', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1754, 103, 'uni002_Course032', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1755, 103, 'uni002_Course021', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1756, 103, 'uni002_Course020', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1757, 103, 'uni002_Course019', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1758, 103, 'uni002_Course043', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1759, 103, 'uni002_Course042', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1760, 103, 'uni002_Course031', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1761, 103, 'uni002_Course030', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1762, 103, 'uni002_Course018', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1763, 103, 'uni002_Course017', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1764, 103, 'uni002_Course040', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1765, 103, 'uni002_Course036', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1766, 103, 'uni002_Course035', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1767, 103, 'uni002_Course034', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1768, 103, 'uni002_Course016', 25, 7, 0, 28);
INSERT INTO `create_plan` VALUES (1769, 103, 'uni002_Course015', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1770, 103, 'uni002_Course014', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1771, 103, 'uni002_Course013', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1772, 103, 'uni002_Course012', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1773, 103, 'uni002_Course037', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1774, 103, 'uni002_Course029', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1775, 103, 'uni002_Course028', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1776, 103, 'uni002_Course027', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1777, 103, 'uni002_Course011', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1778, 103, 'uni002_Course010', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1779, 103, 'uni002_Course009', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1780, 103, 'uni002_Course008', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1781, 103, 'uni002_Course007', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1782, 103, 'uni002_Course006', 25, 10, 0, 28);
INSERT INTO `create_plan` VALUES (1783, 103, 'uni002_Course005', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1784, 103, 'uni002_Course004', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1785, 103, 'uni002_Course003', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1786, 103, 'uni002_Course002', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1787, 103, 'uni002_Course001', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1788, 103, 'uni001_doc030', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1789, 103, 'uni001_cours106', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1790, 103, 'uni001_cours105', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1791, 103, 'uni001_cours104', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1792, 103, 'uni001_cours103', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1793, 103, 'uni001_cours102', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1794, 103, 'uni001_cours101', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1795, 103, 'uni001_doc027', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1796, 103, 'uni001_cours088', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1797, 103, 'uni001_cours087', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1798, 103, 'uni001_cours086', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1799, 103, 'uni001_cours085', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1800, 103, 'uni001_cours084', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1801, 103, 'uni001_cours083', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1802, 103, 'uni001_doc026', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1803, 103, 'uni001_doc025', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1804, 103, 'uni001_cours082', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1805, 103, 'uni001_cours081', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1806, 103, 'uni001_cours080', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1807, 103, 'uni001_cours079', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1808, 103, 'uni001_cours078', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1809, 103, 'uni001_cours077', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1810, 103, 'uni001_cours062', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1811, 103, 'uni001_cours061', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1812, 103, 'uni001_cours060', 25, 6, 0, 28);
INSERT INTO `create_plan` VALUES (1813, 103, 'uni001_cours058', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1814, 103, 'uni001_cours057', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1815, 103, 'uni001_cours056', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1816, 103, 'uni001_cours055', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1817, 103, 'uni001_cours054', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1818, 103, 'uni001_cours053', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1819, 103, 'uni001_cours052', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1820, 103, 'uni001_cours051', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1821, 103, 'uni001_cours050', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1822, 103, 'uni001_cours049', 25, 5, 0, 28);
INSERT INTO `create_plan` VALUES (1823, 103, 'uni001_doc016', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1824, 103, 'uni001_doc015', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1825, 103, 'uni001_doc014', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1826, 103, 'uni001_doc013', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1827, 103, 'uni001_cours048', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1828, 103, 'uni001_cours047', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1829, 103, 'uni001_cours046', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1830, 103, 'uni001_cours045', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1831, 103, 'uni001_cours044', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1832, 103, 'uni001_doc007', 25, 4, 0, 28);
INSERT INTO `create_plan` VALUES (1833, 103, 'uni001_cours031', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1834, 103, 'uni001_cours030', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1835, 103, 'uni001_cours029', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1836, 103, 'uni001_cours028', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1837, 103, 'uni001_cours027', 25, 3, 0, 28);
INSERT INTO `create_plan` VALUES (1838, 103, 'uni001_cours026', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1839, 103, 'uni001_cours025', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1840, 103, 'uni001_cours024', 25, 2, 0, 28);
INSERT INTO `create_plan` VALUES (1841, 103, 'uni001_cours023', 25, 1, 0, 28);
INSERT INTO `create_plan` VALUES (1907, 97, 'uni064_Course005', 26, 223, 0, 29);
INSERT INTO `create_plan` VALUES (1908, 97, 'uni064_Course004', 26, 32, 0, 29);
INSERT INTO `create_plan` VALUES (1909, 97, 'uni064_Course003', 26, 34, 0, 29);
INSERT INTO `create_plan` VALUES (1910, 97, 'uni064_Course002', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1911, 97, 'uni064_Course001', 26, 32, 0, 29);
INSERT INTO `create_plan` VALUES (1912, 97, 'uni063_Course005', 26, 31, 0, 29);
INSERT INTO `create_plan` VALUES (1913, 97, 'uni063_Course004', 26, 34, 0, 29);
INSERT INTO `create_plan` VALUES (1914, 97, 'uni063_Course003', 26, 43, 0, 29);
INSERT INTO `create_plan` VALUES (1915, 97, 'uni063_Course002', 26, 10, 0, 29);
INSERT INTO `create_plan` VALUES (1916, 97, 'uni063_Course001', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (1917, 97, 'uni062_Course003', 26, 2, 0, 29);
INSERT INTO `create_plan` VALUES (1918, 97, 'uni062_Course002', 26, 3, 0, 29);
INSERT INTO `create_plan` VALUES (1919, 97, 'uni062_Course001', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (1920, 103, 'uni004_fac037', 26, 350, 0, 29);
INSERT INTO `create_plan` VALUES (1921, 103, 'uni004_fac036', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (1922, 103, 'uni004_fac035', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (1923, 103, 'uni004_fac041', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (1924, 103, 'uni004_fac034', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (1925, 103, 'uni004_fac033', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (1926, 103, 'uni004_fac032', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1927, 103, 'uni004_fac031', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1928, 103, 'uni004_fac030', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1929, 103, 'uni004_fac029', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (1930, 103, 'uni004_fac028', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1931, 103, 'uni004_fac027', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1932, 103, 'uni004_fac026', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (1933, 103, 'uni004_fac025', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1934, 103, 'uni004_fac024', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1935, 103, 'uni004_fac023', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (1936, 103, 'uni004_fac022', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1937, 103, 'uni004_fac021', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1938, 103, 'uni004_fac020', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1939, 103, 'uni004_fac019', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (1940, 103, 'uni004_fac018', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1941, 103, 'uni004_fac017', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (1942, 103, 'uni004_fac016', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1943, 103, 'uni004_fac015', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1944, 103, 'uni004_fac040', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1945, 103, 'uni004_fac039', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1946, 103, 'uni004_fac038', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1947, 103, 'uni004_fac014', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (1948, 103, 'uni004_fac013', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (1949, 103, 'uni004_fac012', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (1950, 103, 'uni004_fac011', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1951, 103, 'uni004_fac010', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1952, 103, 'uni004_fac009', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (1953, 103, 'uni004_fac008', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (1954, 103, 'uni004_fac007', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (1955, 103, 'uni004_fac006', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (1956, 103, 'uni004_fac005', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (1957, 103, 'uni004_fac004', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (1958, 103, 'uni004_fac003', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (1959, 103, 'uni004_fac002', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (1960, 103, 'uni004_fac001', 26, 3450, 0, 29);
INSERT INTO `create_plan` VALUES (1961, 103, 'uni003_Course037', 26, 767, 0, 29);
INSERT INTO `create_plan` VALUES (1962, 103, 'uni003_course032', 26, 4, 0, 29);
INSERT INTO `create_plan` VALUES (1963, 103, 'uni003_course031', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (1964, 103, 'uni003_course030', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (1965, 103, 'uni003_course029', 26, 5650, 0, 29);
INSERT INTO `create_plan` VALUES (1966, 103, 'uni003_course028', 26, 5670, 0, 29);
INSERT INTO `create_plan` VALUES (1967, 103, 'uni003_Course036', 26, 64, 0, 29);
INSERT INTO `create_plan` VALUES (1968, 103, 'uni003_course026', 26, 34, 0, 29);
INSERT INTO `create_plan` VALUES (1969, 103, 'uni003_course025', 26, 345, 0, 29);
INSERT INTO `create_plan` VALUES (1970, 103, 'uni003_course024', 26, 54, 0, 29);
INSERT INTO `create_plan` VALUES (1971, 103, 'uni003_course023', 26, 22, 0, 29);
INSERT INTO `create_plan` VALUES (1972, 103, 'uni003_course022', 26, 54, 0, 29);
INSERT INTO `create_plan` VALUES (1973, 103, 'uni003_course021', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (1974, 103, 'uni003_course020', 26, 456, 0, 29);
INSERT INTO `create_plan` VALUES (1975, 103, 'uni003_course019', 26, 3456, 0, 29);
INSERT INTO `create_plan` VALUES (1976, 103, 'uni003_Course035', 26, 75, 0, 29);
INSERT INTO `create_plan` VALUES (1977, 103, 'uni003_Course034', 26, 56, 0, 29);
INSERT INTO `create_plan` VALUES (1978, 103, 'uni003_Course033', 26, 56, 0, 29);
INSERT INTO `create_plan` VALUES (1979, 103, 'uni003_course018', 26, 345, 0, 29);
INSERT INTO `create_plan` VALUES (1980, 103, 'uni003_course017', 26, 334, 0, 29);
INSERT INTO `create_plan` VALUES (1981, 103, 'uni003_course016', 26, 34, 0, 29);
INSERT INTO `create_plan` VALUES (1982, 103, 'uni003_course015', 26, 34, 0, 29);
INSERT INTO `create_plan` VALUES (1983, 103, 'uni003_course014', 26, 460, 0, 29);
INSERT INTO `create_plan` VALUES (1984, 103, 'uni003_course013', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (1985, 103, 'uni003_course012', 26, 545, 0, 29);
INSERT INTO `create_plan` VALUES (1986, 103, 'uni003_course011', 26, 54, 0, 29);
INSERT INTO `create_plan` VALUES (1987, 103, 'uni003_course010', 26, 65, 0, 29);
INSERT INTO `create_plan` VALUES (1988, 103, 'uni003_course009', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (1989, 103, 'uni003_course008', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (1990, 103, 'uni003_course007', 26, 75, 0, 29);
INSERT INTO `create_plan` VALUES (1991, 103, 'uni003_course006', 26, 7, 0, 29);
INSERT INTO `create_plan` VALUES (1992, 103, 'uni003_course005', 26, 456, 0, 29);
INSERT INTO `create_plan` VALUES (1993, 103, 'uni003_course004', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (1994, 103, 'uni003_course003', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (1995, 103, 'uni003_course002', 26, 64, 0, 29);
INSERT INTO `create_plan` VALUES (1996, 103, 'uni003_course001', 26, 456, 0, 29);
INSERT INTO `create_plan` VALUES (1997, 103, 'uni002_Course026', 26, 43, 0, 29);
INSERT INTO `create_plan` VALUES (1998, 103, 'uni002_Course025', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (1999, 103, 'uni002_Course024', 26, 507, 0, 29);
INSERT INTO `create_plan` VALUES (2000, 103, 'uni002_Course023', 26, 567, 0, 29);
INSERT INTO `create_plan` VALUES (2001, 103, 'uni002_Course022', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2002, 103, 'uni002_Course039', 26, 870, 0, 29);
INSERT INTO `create_plan` VALUES (2003, 103, 'uni002_Course038', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2004, 103, 'uni002_Course033', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2005, 103, 'uni002_Course032', 26, 6, 0, 29);
INSERT INTO `create_plan` VALUES (2006, 103, 'uni002_Course021', 26, 674, 0, 29);
INSERT INTO `create_plan` VALUES (2007, 103, 'uni002_Course020', 26, 5470, 0, 29);
INSERT INTO `create_plan` VALUES (2008, 103, 'uni002_Course019', 26, 67, 0, 29);
INSERT INTO `create_plan` VALUES (2009, 103, 'uni002_Course043', 26, 565, 0, 29);
INSERT INTO `create_plan` VALUES (2010, 103, 'uni002_Course042', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2011, 103, 'uni002_Course031', 26, 45, 0, 29);
INSERT INTO `create_plan` VALUES (2012, 103, 'uni002_Course030', 26, 5, 0, 29);
INSERT INTO `create_plan` VALUES (2013, 103, 'uni002_Course018', 26, 64, 0, 29);
INSERT INTO `create_plan` VALUES (2014, 103, 'uni002_Course017', 26, 4563, 0, 29);
INSERT INTO `create_plan` VALUES (2015, 103, 'uni002_Course041', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2016, 103, 'uni002_Course040', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2017, 103, 'uni002_Course036', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2018, 103, 'uni002_Course035', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (2019, 103, 'uni002_Course034', 26, 4650, 0, 29);
INSERT INTO `create_plan` VALUES (2020, 103, 'uni002_Course016', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2021, 103, 'uni002_Course015', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (2022, 103, 'uni002_Course014', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2023, 103, 'uni002_Course013', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2024, 103, 'uni002_Course012', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2025, 103, 'uni002_Course037', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2026, 103, 'uni002_Course029', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2027, 103, 'uni002_Course028', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2028, 103, 'uni002_Course027', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2029, 103, 'uni002_Course011', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2030, 103, 'uni002_Course010', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2031, 103, 'uni002_Course009', 26, 650, 0, 29);
INSERT INTO `create_plan` VALUES (2032, 103, 'uni002_Course008', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2033, 103, 'uni002_Course007', 26, 90, 0, 29);
INSERT INTO `create_plan` VALUES (2034, 103, 'uni002_Course006', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2035, 103, 'uni002_Course005', 26, 780, 0, 29);
INSERT INTO `create_plan` VALUES (2036, 103, 'uni002_Course004', 26, 880, 0, 29);
INSERT INTO `create_plan` VALUES (2037, 103, 'uni002_Course003', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2038, 103, 'uni002_Course002', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2039, 103, 'uni002_Course001', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2040, 103, 'uni001_cours043', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2041, 103, 'uni001_cours042', 26, 760, 0, 29);
INSERT INTO `create_plan` VALUES (2042, 103, 'uni001_doc030', 26, 3450, 0, 29);
INSERT INTO `create_plan` VALUES (2043, 103, 'uni001_cours106', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2044, 103, 'uni001_cours105', 26, 460, 0, 29);
INSERT INTO `create_plan` VALUES (2045, 103, 'uni001_cours104', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (2046, 103, 'uni001_cours103', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2047, 103, 'uni001_cours102', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (2048, 103, 'uni001_cours101', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2049, 103, 'uni001_doc029', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2050, 103, 'uni001_doc028', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2051, 103, 'uni001_cours100', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2052, 103, 'uni001_cours099', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2053, 103, 'uni001_cours098', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2054, 103, 'uni001_cours097', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2055, 103, 'uni001_cours096', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2056, 103, 'uni001_cours095', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2057, 103, 'uni001_cours094', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2058, 103, 'uni001_cours093', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2059, 103, 'uni001_cours092', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (2060, 103, 'uni001_cours091', 26, 6780, 0, 29);
INSERT INTO `create_plan` VALUES (2061, 103, 'uni001_cours090', 26, 780, 0, 29);
INSERT INTO `create_plan` VALUES (2062, 103, 'uni001_cours089', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2063, 103, 'uni001_doc027', 26, 460, 0, 29);
INSERT INTO `create_plan` VALUES (2064, 103, 'uni001_cours088', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2065, 103, 'uni001_cours087', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (2066, 103, 'uni001_cours086', 26, 650, 0, 29);
INSERT INTO `create_plan` VALUES (2067, 103, 'uni001_cours085', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2068, 103, 'uni001_cours084', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2069, 103, 'uni001_cours083', 26, 6450, 0, 29);
INSERT INTO `create_plan` VALUES (2070, 103, 'uni001_doc026', 26, 4340, 0, 29);
INSERT INTO `create_plan` VALUES (2071, 103, 'uni001_doc025', 26, 5460, 0, 29);
INSERT INTO `create_plan` VALUES (2072, 103, 'uni001_cours082', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2073, 103, 'uni001_cours081', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2074, 103, 'uni001_cours080', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2075, 103, 'uni001_cours079', 26, 3450, 0, 29);
INSERT INTO `create_plan` VALUES (2076, 103, 'uni001_cours078', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2077, 103, 'uni001_cours077', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2078, 103, 'uni001_doc024', 26, 56260, 0, 29);
INSERT INTO `create_plan` VALUES (2079, 103, 'uni001_doc023', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2080, 103, 'uni001_doc022', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2081, 103, 'uni001_doc021', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2082, 103, 'uni001_doc020', 26, 530, 0, 29);
INSERT INTO `create_plan` VALUES (2083, 103, 'uni001_doc019', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (2084, 103, 'uni001_doc018', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2085, 103, 'uni001_doc017', 26, 5430, 0, 29);
INSERT INTO `create_plan` VALUES (2086, 103, 'uni001_cours076', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2087, 103, 'uni001_cours075', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2088, 103, 'uni001_cours074', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2089, 103, 'uni001_cours073', 26, 650, 0, 29);
INSERT INTO `create_plan` VALUES (2090, 103, 'uni001_cours072', 26, 360, 0, 29);
INSERT INTO `create_plan` VALUES (2091, 103, 'uni001_cours071', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (2092, 103, 'uni001_cours070', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2093, 103, 'uni001_cours069', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (2094, 103, 'uni001_cours068', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2095, 103, 'uni001_cours067', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2096, 103, 'uni001_cours066', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2097, 103, 'uni001_cours065', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2098, 103, 'uni001_cours064', 26, 4560, 0, 29);
INSERT INTO `create_plan` VALUES (2099, 103, 'uni001_cours063', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2100, 103, 'uni001_cours062', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2101, 103, 'uni001_cours061', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2102, 103, 'uni001_cours060', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2103, 103, 'uni001_cours058', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2104, 103, 'uni001_cours057', 26, 30, 0, 29);
INSERT INTO `create_plan` VALUES (2105, 103, 'uni001_cours056', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2106, 103, 'uni001_cours055', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2107, 103, 'uni001_cours054', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2108, 103, 'uni001_cours053', 26, 350, 0, 29);
INSERT INTO `create_plan` VALUES (2109, 103, 'uni001_cours052', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2110, 103, 'uni001_cours051', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2111, 103, 'uni001_cours050', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2112, 103, 'uni001_cours049', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2113, 103, 'uni001_doc016', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2114, 103, 'uni001_doc015', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2115, 103, 'uni001_doc014', 26, 540, 0, 29);
INSERT INTO `create_plan` VALUES (2116, 103, 'uni001_doc013', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (2117, 103, 'uni001_cours048', 26, 340, 0, 29);
INSERT INTO `create_plan` VALUES (2118, 103, 'uni001_cours047', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2119, 103, 'uni001_cours046', 26, 3450, 0, 29);
INSERT INTO `create_plan` VALUES (2120, 103, 'uni001_cours045', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2121, 103, 'uni001_cours044', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2122, 103, 'uni001_doc012', 26, 570, 0, 29);
INSERT INTO `create_plan` VALUES (2123, 103, 'uni001_doc011', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2124, 103, 'uni001_doc010', 26, 870, 0, 29);
INSERT INTO `create_plan` VALUES (2125, 103, 'uni001_doc009', 26, 6780, 0, 29);
INSERT INTO `create_plan` VALUES (2126, 103, 'uni001_cours041', 26, 580, 0, 29);
INSERT INTO `create_plan` VALUES (2127, 103, 'uni001_cours040', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2128, 103, 'uni001_cours039', 26, 8650, 0, 29);
INSERT INTO `create_plan` VALUES (2129, 103, 'uni001_cours038', 26, 6780, 0, 29);
INSERT INTO `create_plan` VALUES (2130, 103, 'uni001_cours037', 26, 780, 0, 29);
INSERT INTO `create_plan` VALUES (2131, 103, 'uni001_cours036', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2132, 103, 'uni001_cours035', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (2133, 103, 'uni001_cours034', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2134, 103, 'uni001_cours033', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2135, 103, 'uni001_cours032', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2136, 103, 'uni001_doc008', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2137, 103, 'uni001_doc007', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2138, 103, 'uni001_doc006', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2139, 103, 'uni001_cours031', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2140, 103, 'uni001_cours030', 26, 640, 0, 29);
INSERT INTO `create_plan` VALUES (2141, 103, 'uni001_cours029', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2142, 103, 'uni001_cours028', 26, 450, 0, 29);
INSERT INTO `create_plan` VALUES (2143, 103, 'uni001_cours027', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2144, 103, 'uni001_cours026', 26, 40, 0, 29);
INSERT INTO `create_plan` VALUES (2145, 103, 'uni001_cours025', 26, 430, 0, 29);
INSERT INTO `create_plan` VALUES (2146, 103, 'uni001_cours024', 26, 50, 0, 29);
INSERT INTO `create_plan` VALUES (2147, 103, 'uni001_cours023', 26, 650, 0, 29);
INSERT INTO `create_plan` VALUES (2148, 103, 'uni001_doc005', 26, 780, 0, 29);
INSERT INTO `create_plan` VALUES (2149, 103, 'uni001_cours022', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (2150, 103, 'uni001_cours021', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2151, 103, 'uni001_cours020', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2152, 103, 'uni001_cours019', 26, 680, 0, 29);
INSERT INTO `create_plan` VALUES (2153, 103, 'uni001_cours018', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2154, 103, 'uni001_cours017', 26, 870, 0, 29);
INSERT INTO `create_plan` VALUES (2155, 103, 'uni001_cours016', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2156, 103, 'uni001_cours015', 26, 680, 0, 29);
INSERT INTO `create_plan` VALUES (2157, 103, 'uni001_cours014', 26, 780, 0, 29);
INSERT INTO `create_plan` VALUES (2158, 103, 'uni001_cours013', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2159, 103, 'uni001_cours012', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2160, 103, 'uni001_doc004', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2161, 103, 'uni001_doc003', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (2162, 103, 'uni001_doc002', 26, 850, 0, 29);
INSERT INTO `create_plan` VALUES (2163, 103, 'uni001_doc001', 26, 560, 0, 29);
INSERT INTO `create_plan` VALUES (2164, 103, 'uni001_cours011', 26, 670, 0, 29);
INSERT INTO `create_plan` VALUES (2165, 103, 'uni001_cours010', 26, 60, 0, 29);
INSERT INTO `create_plan` VALUES (2166, 103, 'uni001_cours009', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2167, 103, 'uni001_cours008', 26, 970, 0, 29);
INSERT INTO `create_plan` VALUES (2168, 103, 'uni001_cours007', 26, 70, 0, 29);
INSERT INTO `create_plan` VALUES (2169, 103, 'uni001_cours006', 26, 750, 0, 29);
INSERT INTO `create_plan` VALUES (2170, 103, 'uni001_cours005', 26, 6780, 0, 29);
INSERT INTO `create_plan` VALUES (2171, 103, 'uni001_cours004', 26, 650, 0, 29);
INSERT INTO `create_plan` VALUES (2172, 103, 'uni001_cours003', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2173, 103, 'uni001_cours002', 26, 80, 0, 29);
INSERT INTO `create_plan` VALUES (2174, 103, 'uni001_cours001', 26, 860, 0, 29);
INSERT INTO `create_plan` VALUES (2175, 94, 'uni070_Course002', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2176, 94, 'uni070_Course001', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2177, 96, 'uni065_Course004', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2178, 96, 'uni065_Course003', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2179, 96, 'uni065_Course002', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2180, 96, 'uni065_Course001', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2181, 97, 'uni064_Course005', 27, 560, 0, 31);
INSERT INTO `create_plan` VALUES (2182, 97, 'uni064_Course004', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2183, 97, 'uni064_Course003', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2184, 97, 'uni064_Course002', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2185, 97, 'uni064_Course001', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2186, 97, 'uni063_Course005', 27, 53, 0, 31);
INSERT INTO `create_plan` VALUES (2187, 97, 'uni063_Course004', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2188, 97, 'uni063_Course003', 27, 642, 0, 31);
INSERT INTO `create_plan` VALUES (2189, 97, 'uni063_Course002', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2190, 97, 'uni063_Course001', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2191, 97, 'uni062_Course003', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2192, 97, 'uni062_Course002', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2193, 97, 'uni062_Course001', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2194, 98, 'uni061_Course004', 27, 56, 0, 31);
INSERT INTO `create_plan` VALUES (2195, 98, 'uni061_Course003', 27, 54, 0, 31);
INSERT INTO `create_plan` VALUES (2196, 98, 'uni061_Course002', 27, 56, 0, 31);
INSERT INTO `create_plan` VALUES (2197, 98, 'uni061_Course001', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2198, 98, 'uni060_Course008', 27, 3, 0, 31);
INSERT INTO `create_plan` VALUES (2199, 98, 'uni060_Course007', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2200, 98, 'uni060_Course006', 27, 34, 0, 31);
INSERT INTO `create_plan` VALUES (2201, 98, 'uni060_Course005', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2202, 98, 'uni060_Course004', 27, 2, 0, 31);
INSERT INTO `create_plan` VALUES (2203, 98, 'uni060_Course003', 27, 34, 0, 31);
INSERT INTO `create_plan` VALUES (2204, 98, 'uni060_Course002', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2205, 98, 'uni060_Course001', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2206, 98, 'uni059_Course008', 27, 6, 0, 31);
INSERT INTO `create_plan` VALUES (2207, 98, 'uni059_Course007', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2208, 98, 'uni059_Course006', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2209, 98, 'uni059_Course005', 27, 506, 0, 31);
INSERT INTO `create_plan` VALUES (2210, 98, 'uni059_Course004', 27, 65, 0, 31);
INSERT INTO `create_plan` VALUES (2211, 98, 'uni059_Course003', 27, 54, 0, 31);
INSERT INTO `create_plan` VALUES (2212, 98, 'uni059_Course002', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2213, 98, 'uni059_Course001', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2214, 98, 'uni058_Course008', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2215, 98, 'uni058_Course007', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2216, 98, 'uni058_Course006', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2217, 98, 'uni058_Course005', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2218, 98, 'uni058_Course004', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2219, 98, 'uni058_Course003', 27, 34, 0, 31);
INSERT INTO `create_plan` VALUES (2220, 98, 'uni058_Course002', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2221, 98, 'uni058_Course001', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2222, 98, 'uni057_Course003', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2223, 98, 'uni057_Course002', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2224, 98, 'uni057_Course001', 27, 56, 0, 31);
INSERT INTO `create_plan` VALUES (2225, 100, 'uni051_Course002', 27, 504, 0, 31);
INSERT INTO `create_plan` VALUES (2226, 100, 'uni051_Course001', 27, 6, 0, 31);
INSERT INTO `create_plan` VALUES (2227, 100, 'uni050_Course003', 27, 54, 0, 31);
INSERT INTO `create_plan` VALUES (2228, 100, 'uni050_Course002', 27, 456, 0, 31);
INSERT INTO `create_plan` VALUES (2229, 100, 'uni050_Course001', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2230, 100, 'uni049_Course001', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2231, 100, 'uni048_course003', 27, 6, 0, 31);
INSERT INTO `create_plan` VALUES (2232, 100, 'uni048_course002', 27, 76, 0, 31);
INSERT INTO `create_plan` VALUES (2233, 100, 'uni048_course001', 27, 645, 0, 31);
INSERT INTO `create_plan` VALUES (2234, 100, 'uni047_course002', 27, 76, 0, 31);
INSERT INTO `create_plan` VALUES (2235, 100, 'uni047_course001', 27, 756, 0, 31);
INSERT INTO `create_plan` VALUES (2236, 100, 'uni046_course002', 27, 650, 0, 31);
INSERT INTO `create_plan` VALUES (2237, 100, 'uni046_course001', 27, 7650, 0, 31);
INSERT INTO `create_plan` VALUES (2238, 100, 'uni045_course003', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2239, 100, 'uni045_course002', 27, 645, 0, 31);
INSERT INTO `create_plan` VALUES (2240, 100, 'uni045_course001', 27, 54, 0, 31);
INSERT INTO `create_plan` VALUES (2241, 100, 'uni044_course004', 27, 560, 0, 31);
INSERT INTO `create_plan` VALUES (2242, 100, 'uni044_course003', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2243, 100, 'uni044_course002', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2244, 100, 'uni044_course001', 27, 6450, 0, 31);
INSERT INTO `create_plan` VALUES (2245, 100, 'uni043_course003', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2246, 100, 'uni043_course002', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2247, 100, 'uni043_course001', 27, 65, 0, 31);
INSERT INTO `create_plan` VALUES (2248, 100, 'uni042_course021', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2249, 100, 'uni042_course020', 27, 640, 0, 31);
INSERT INTO `create_plan` VALUES (2250, 100, 'uni042_course019', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2251, 100, 'uni042_course018', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2252, 100, 'uni042_course017', 27, 543, 0, 31);
INSERT INTO `create_plan` VALUES (2253, 100, 'uni042_course016', 27, 56, 0, 31);
INSERT INTO `create_plan` VALUES (2254, 100, 'uni042_course015', 27, 43, 0, 31);
INSERT INTO `create_plan` VALUES (2255, 100, 'uni042_course014', 27, 65, 0, 31);
INSERT INTO `create_plan` VALUES (2256, 100, 'uni042_course013', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2257, 100, 'uni042_course012', 27, 56, 0, 31);
INSERT INTO `create_plan` VALUES (2258, 100, 'uni042_course011', 27, 654, 0, 31);
INSERT INTO `create_plan` VALUES (2259, 100, 'uni042_course010', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2260, 100, 'uni042_course009', 27, 45, 0, 31);
INSERT INTO `create_plan` VALUES (2261, 100, 'uni042_course008', 27, 23, 0, 31);
INSERT INTO `create_plan` VALUES (2262, 100, 'uni042_course007', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2263, 100, 'uni042_course006', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2264, 100, 'uni042_course005', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2265, 100, 'uni042_course004', 27, 6, 0, 31);
INSERT INTO `create_plan` VALUES (2266, 100, 'uni042_course003', 27, 4, 0, 31);
INSERT INTO `create_plan` VALUES (2267, 100, 'uni042_course002', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2268, 100, 'uni042_course001', 27, 3, 0, 31);
INSERT INTO `create_plan` VALUES (2269, 103, 'uni004_fac037', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2270, 103, 'uni004_fac036', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2271, 103, 'uni004_fac035', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2272, 103, 'uni004_fac041', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2273, 103, 'uni004_fac034', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2274, 103, 'uni004_fac033', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2275, 103, 'uni004_fac032', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2276, 103, 'uni004_fac031', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2277, 103, 'uni004_fac030', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2278, 103, 'uni004_fac029', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2279, 103, 'uni004_fac028', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2280, 103, 'uni004_fac027', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2281, 103, 'uni004_fac026', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2282, 103, 'uni004_fac025', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2283, 103, 'uni004_fac024', 27, 520, 0, 31);
INSERT INTO `create_plan` VALUES (2284, 103, 'uni004_fac023', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2285, 103, 'uni004_fac022', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2286, 103, 'uni004_fac021', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2287, 103, 'uni004_fac020', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2288, 103, 'uni004_fac019', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2289, 103, 'uni004_fac018', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2290, 103, 'uni004_fac017', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2291, 103, 'uni004_fac016', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2292, 103, 'uni004_fac015', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2293, 103, 'uni004_fac040', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2294, 103, 'uni004_fac039', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2295, 103, 'uni004_fac038', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2296, 103, 'uni004_fac014', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2297, 103, 'uni004_fac013', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2298, 103, 'uni004_fac012', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2299, 103, 'uni004_fac011', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2300, 103, 'uni004_fac010', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2301, 103, 'uni004_fac009', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2302, 103, 'uni004_fac008', 27, 250, 0, 31);
INSERT INTO `create_plan` VALUES (2303, 103, 'uni004_fac007', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2304, 103, 'uni004_fac006', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2305, 103, 'uni004_fac005', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2306, 103, 'uni004_fac004', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2307, 103, 'uni004_fac003', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2308, 103, 'uni004_fac002', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2309, 103, 'uni004_fac001', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2310, 103, 'uni003_Course037', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2311, 103, 'uni003_course032', 27, 32, 0, 31);
INSERT INTO `create_plan` VALUES (2312, 103, 'uni003_course031', 27, 120, 0, 31);
INSERT INTO `create_plan` VALUES (2313, 103, 'uni003_course030', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2314, 103, 'uni003_course029', 27, 123, 0, 31);
INSERT INTO `create_plan` VALUES (2315, 103, 'uni003_course028', 27, 120, 0, 31);
INSERT INTO `create_plan` VALUES (2316, 103, 'uni003_Course036', 27, 420, 0, 31);
INSERT INTO `create_plan` VALUES (2317, 103, 'uni003_course026', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2318, 103, 'uni003_course025', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2319, 103, 'uni003_course024', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2320, 103, 'uni003_course023', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2321, 103, 'uni003_course022', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2322, 103, 'uni003_course021', 27, 1230, 0, 31);
INSERT INTO `create_plan` VALUES (2323, 103, 'uni003_course020', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2324, 103, 'uni003_course019', 27, 420, 0, 31);
INSERT INTO `create_plan` VALUES (2325, 103, 'uni003_Course035', 27, 7, 0, 31);
INSERT INTO `create_plan` VALUES (2326, 103, 'uni003_Course034', 27, 7, 0, 31);
INSERT INTO `create_plan` VALUES (2327, 103, 'uni003_Course033', 27, 65, 0, 31);
INSERT INTO `create_plan` VALUES (2328, 103, 'uni003_course018', 27, 89, 0, 31);
INSERT INTO `create_plan` VALUES (2329, 103, 'uni003_course017', 27, 9, 0, 31);
INSERT INTO `create_plan` VALUES (2330, 103, 'uni003_course016', 27, 5, 0, 31);
INSERT INTO `create_plan` VALUES (2331, 103, 'uni003_course015', 27, 9, 0, 31);
INSERT INTO `create_plan` VALUES (2332, 103, 'uni003_course014', 27, 65, 0, 31);
INSERT INTO `create_plan` VALUES (2333, 103, 'uni003_course013', 27, 6, 0, 31);
INSERT INTO `create_plan` VALUES (2334, 103, 'uni003_course012', 27, 2340, 0, 31);
INSERT INTO `create_plan` VALUES (2335, 103, 'uni003_course011', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2336, 103, 'uni003_course010', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2337, 103, 'uni003_course009', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2338, 103, 'uni003_course008', 27, 240, 0, 31);
INSERT INTO `create_plan` VALUES (2339, 103, 'uni003_course007', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2340, 103, 'uni003_course006', 27, 420, 0, 31);
INSERT INTO `create_plan` VALUES (2341, 103, 'uni003_course005', 27, 34230, 0, 31);
INSERT INTO `create_plan` VALUES (2342, 103, 'uni003_course004', 27, 3230, 0, 31);
INSERT INTO `create_plan` VALUES (2343, 103, 'uni003_course003', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2344, 103, 'uni003_course002', 27, 240, 0, 31);
INSERT INTO `create_plan` VALUES (2345, 103, 'uni003_course001', 27, 2310, 0, 31);
INSERT INTO `create_plan` VALUES (2346, 103, 'uni002_Course026', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2347, 103, 'uni002_Course025', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2348, 103, 'uni002_Course024', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2349, 103, 'uni002_Course023', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2350, 103, 'uni002_Course022', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2351, 103, 'uni002_Course039', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2352, 103, 'uni002_Course038', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2353, 103, 'uni002_Course033', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2354, 103, 'uni002_Course032', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2355, 103, 'uni002_Course021', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2356, 103, 'uni002_Course020', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2357, 103, 'uni002_Course019', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2358, 103, 'uni002_Course043', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2359, 103, 'uni002_Course042', 27, 210, 0, 31);
INSERT INTO `create_plan` VALUES (2360, 103, 'uni002_Course031', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2361, 103, 'uni002_Course030', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2362, 103, 'uni002_Course018', 27, 420, 0, 31);
INSERT INTO `create_plan` VALUES (2363, 103, 'uni002_Course017', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2364, 103, 'uni002_Course041', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2365, 103, 'uni002_Course040', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2366, 103, 'uni002_Course036', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2367, 103, 'uni002_Course035', 27, 520, 0, 31);
INSERT INTO `create_plan` VALUES (2368, 103, 'uni002_Course034', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2369, 103, 'uni002_Course016', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2370, 103, 'uni002_Course015', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2371, 103, 'uni002_Course014', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2372, 103, 'uni002_Course013', 27, 3250, 0, 31);
INSERT INTO `create_plan` VALUES (2373, 103, 'uni002_Course012', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2374, 103, 'uni002_Course037', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2375, 103, 'uni002_Course029', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2376, 103, 'uni002_Course028', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2377, 103, 'uni002_Course027', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2378, 103, 'uni002_Course011', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2379, 103, 'uni002_Course010', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2380, 103, 'uni002_Course009', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2381, 103, 'uni002_Course008', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2382, 103, 'uni002_Course007', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2383, 103, 'uni002_Course006', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2384, 103, 'uni002_Course005', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2385, 103, 'uni002_Course004', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2386, 103, 'uni002_Course003', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2387, 103, 'uni002_Course002', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2388, 103, 'uni002_Course001', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2389, 103, 'uni001_cours043', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2390, 103, 'uni001_cours042', 27, 250, 0, 31);
INSERT INTO `create_plan` VALUES (2391, 103, 'uni001_doc030', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2392, 103, 'uni001_cours106', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2393, 103, 'uni001_cours105', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2394, 103, 'uni001_cours104', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2395, 103, 'uni001_cours103', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2396, 103, 'uni001_cours102', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2397, 103, 'uni001_cours101', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2398, 103, 'uni001_doc029', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2399, 103, 'uni001_doc028', 27, 240, 0, 31);
INSERT INTO `create_plan` VALUES (2400, 103, 'uni001_cours100', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2401, 103, 'uni001_cours099', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2402, 103, 'uni001_cours098', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2403, 103, 'uni001_cours097', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2404, 103, 'uni001_cours096', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2405, 103, 'uni001_cours095', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2406, 103, 'uni001_cours094', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2407, 103, 'uni001_cours093', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2408, 103, 'uni001_cours092', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2409, 103, 'uni001_cours091', 27, 580, 0, 31);
INSERT INTO `create_plan` VALUES (2410, 103, 'uni001_cours090', 27, 670, 0, 31);
INSERT INTO `create_plan` VALUES (2411, 103, 'uni001_cours089', 27, 680, 0, 31);
INSERT INTO `create_plan` VALUES (2412, 103, 'uni001_doc027', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2413, 103, 'uni001_cours088', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2414, 103, 'uni001_cours087', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2415, 103, 'uni001_cours086', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2416, 103, 'uni001_cours085', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2417, 103, 'uni001_cours084', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2418, 103, 'uni001_cours083', 27, 250, 0, 31);
INSERT INTO `create_plan` VALUES (2419, 103, 'uni001_doc026', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2420, 103, 'uni001_doc025', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2421, 103, 'uni001_cours082', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2422, 103, 'uni001_cours081', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2423, 103, 'uni001_cours080', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2424, 103, 'uni001_cours079', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2425, 103, 'uni001_cours078', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2426, 103, 'uni001_cours077', 27, 3450, 0, 31);
INSERT INTO `create_plan` VALUES (2427, 103, 'uni001_doc024', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2428, 103, 'uni001_doc023', 27, 70, 0, 31);
INSERT INTO `create_plan` VALUES (2429, 103, 'uni001_doc022', 27, 70, 0, 31);
INSERT INTO `create_plan` VALUES (2430, 103, 'uni001_doc021', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2431, 103, 'uni001_doc020', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2432, 103, 'uni001_doc019', 27, 780, 0, 31);
INSERT INTO `create_plan` VALUES (2433, 103, 'uni001_doc018', 27, 870, 0, 31);
INSERT INTO `create_plan` VALUES (2434, 103, 'uni001_doc017', 27, 90, 0, 31);
INSERT INTO `create_plan` VALUES (2435, 103, 'uni001_cours076', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2436, 103, 'uni001_cours075', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2437, 103, 'uni001_cours074', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2438, 103, 'uni001_cours073', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2439, 103, 'uni001_cours072', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2440, 103, 'uni001_cours071', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2441, 103, 'uni001_cours070', 27, 250, 0, 31);
INSERT INTO `create_plan` VALUES (2442, 103, 'uni001_cours069', 27, 240, 0, 31);
INSERT INTO `create_plan` VALUES (2443, 103, 'uni001_cours068', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2444, 103, 'uni001_cours067', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2445, 103, 'uni001_cours066', 27, 5345, 0, 31);
INSERT INTO `create_plan` VALUES (2446, 103, 'uni001_cours065', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2447, 103, 'uni001_cours064', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2448, 103, 'uni001_cours063', 27, 2560, 0, 31);
INSERT INTO `create_plan` VALUES (2449, 103, 'uni001_cours062', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2450, 103, 'uni001_cours061', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2451, 103, 'uni001_cours060', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2452, 103, 'uni001_cours058', 27, 320, 0, 31);
INSERT INTO `create_plan` VALUES (2453, 103, 'uni001_cours057', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2454, 103, 'uni001_cours056', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2455, 103, 'uni001_cours055', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2456, 103, 'uni001_cours054', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2457, 103, 'uni001_cours053', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2458, 103, 'uni001_cours052', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2459, 103, 'uni001_cours051', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2460, 103, 'uni001_cours050', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2461, 103, 'uni001_cours049', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2462, 103, 'uni001_doc016', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2463, 103, 'uni001_doc015', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2464, 103, 'uni001_doc014', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2465, 103, 'uni001_doc013', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2466, 103, 'uni001_cours048', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2467, 103, 'uni001_cours047', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2468, 103, 'uni001_cours046', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2469, 103, 'uni001_cours045', 27, 450, 0, 31);
INSERT INTO `create_plan` VALUES (2470, 103, 'uni001_cours044', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2471, 103, 'uni001_doc012', 27, 5304, 0, 31);
INSERT INTO `create_plan` VALUES (2472, 103, 'uni001_doc011', 27, 430, 0, 31);
INSERT INTO `create_plan` VALUES (2473, 103, 'uni001_doc010', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2474, 103, 'uni001_doc009', 27, 2340, 0, 31);
INSERT INTO `create_plan` VALUES (2475, 103, 'uni001_cours041', 27, 5450, 0, 31);
INSERT INTO `create_plan` VALUES (2476, 103, 'uni001_cours040', 27, 4540, 0, 31);
INSERT INTO `create_plan` VALUES (2477, 103, 'uni001_cours039', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2478, 103, 'uni001_cours038', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2479, 103, 'uni001_cours037', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2480, 103, 'uni001_cours036', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2481, 103, 'uni001_cours035', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2482, 103, 'uni001_cours034', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2483, 103, 'uni001_cours033', 27, 3230, 0, 31);
INSERT INTO `create_plan` VALUES (2484, 103, 'uni001_cours032', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2485, 103, 'uni001_doc008', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2486, 103, 'uni001_doc007', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2487, 103, 'uni001_doc006', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2488, 103, 'uni001_cours031', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2489, 103, 'uni001_cours030', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2490, 103, 'uni001_cours029', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2491, 103, 'uni001_cours028', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2492, 103, 'uni001_cours027', 27, 540, 0, 31);
INSERT INTO `create_plan` VALUES (2493, 103, 'uni001_cours026', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2494, 103, 'uni001_cours025', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2495, 103, 'uni001_cours024', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2496, 103, 'uni001_cours023', 27, 520, 0, 31);
INSERT INTO `create_plan` VALUES (2497, 103, 'uni001_doc005', 27, 340, 0, 31);
INSERT INTO `create_plan` VALUES (2498, 103, 'uni001_cours022', 27, 640, 0, 31);
INSERT INTO `create_plan` VALUES (2499, 103, 'uni001_cours021', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2500, 103, 'uni001_cours020', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2501, 103, 'uni001_cours019', 27, 3420, 0, 31);
INSERT INTO `create_plan` VALUES (2502, 103, 'uni001_cours018', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2503, 103, 'uni001_cours017', 27, 230, 0, 31);
INSERT INTO `create_plan` VALUES (2504, 103, 'uni001_cours016', 27, 420, 0, 31);
INSERT INTO `create_plan` VALUES (2505, 103, 'uni001_cours015', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2506, 103, 'uni001_cours014', 27, 350, 0, 31);
INSERT INTO `create_plan` VALUES (2507, 103, 'uni001_cours013', 27, 440, 0, 31);
INSERT INTO `create_plan` VALUES (2508, 103, 'uni001_cours012', 27, 530, 0, 31);
INSERT INTO `create_plan` VALUES (2509, 103, 'uni001_doc004', 27, 10, 0, 31);
INSERT INTO `create_plan` VALUES (2510, 103, 'uni001_doc003', 27, 20, 0, 31);
INSERT INTO `create_plan` VALUES (2511, 103, 'uni001_doc002', 27, 2340, 0, 31);
INSERT INTO `create_plan` VALUES (2512, 103, 'uni001_doc001', 27, 30, 0, 31);
INSERT INTO `create_plan` VALUES (2513, 103, 'uni001_cours011', 27, 90, 0, 31);
INSERT INTO `create_plan` VALUES (2514, 103, 'uni001_cours010', 27, 760, 0, 31);
INSERT INTO `create_plan` VALUES (2515, 103, 'uni001_cours009', 27, 50, 0, 31);
INSERT INTO `create_plan` VALUES (2516, 103, 'uni001_cours008', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2517, 103, 'uni001_cours007', 27, 8560, 0, 31);
INSERT INTO `create_plan` VALUES (2518, 103, 'uni001_cours006', 27, 780, 0, 31);
INSERT INTO `create_plan` VALUES (2519, 103, 'uni001_cours005', 27, 40, 0, 31);
INSERT INTO `create_plan` VALUES (2520, 103, 'uni001_cours004', 27, 780, 0, 31);
INSERT INTO `create_plan` VALUES (2521, 103, 'uni001_cours003', 27, 860, 0, 31);
INSERT INTO `create_plan` VALUES (2522, 103, 'uni001_cours002', 27, 1120, 0, 31);
INSERT INTO `create_plan` VALUES (2523, 103, 'uni001_cours001', 27, 60, 0, 31);
INSERT INTO `create_plan` VALUES (2524, 94, 'uni070_Course002', 28, 13, 0, 30);
INSERT INTO `create_plan` VALUES (2525, 94, 'uni070_Course001', 28, 10, 0, 30);
INSERT INTO `create_plan` VALUES (2526, 96, 'uni065_Course004', 28, 3, 0, 30);
INSERT INTO `create_plan` VALUES (2527, 96, 'uni065_Course003', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2528, 96, 'uni065_Course002', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2529, 96, 'uni065_Course001', 28, 320, 0, 30);
INSERT INTO `create_plan` VALUES (2530, 97, 'uni064_Course005', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2531, 97, 'uni064_Course004', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2532, 97, 'uni064_Course003', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2533, 97, 'uni064_Course002', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2534, 97, 'uni064_Course001', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2535, 97, 'uni063_Course005', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2536, 97, 'uni063_Course004', 28, 760, 0, 30);
INSERT INTO `create_plan` VALUES (2537, 97, 'uni063_Course003', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2538, 97, 'uni063_Course002', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2539, 97, 'uni063_Course001', 28, 780, 0, 30);
INSERT INTO `create_plan` VALUES (2540, 97, 'uni062_Course003', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2541, 97, 'uni062_Course002', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2542, 97, 'uni062_Course001', 28, 420, 0, 30);
INSERT INTO `create_plan` VALUES (2543, 98, 'uni061_Course004', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2544, 98, 'uni061_Course003', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2545, 98, 'uni061_Course002', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2546, 98, 'uni061_Course001', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2547, 98, 'uni060_Course008', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2548, 98, 'uni060_Course007', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2549, 98, 'uni060_Course006', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2550, 98, 'uni060_Course005', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2551, 98, 'uni060_Course004', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2552, 98, 'uni060_Course003', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2553, 98, 'uni060_Course002', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2554, 98, 'uni060_Course001', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2555, 98, 'uni059_Course008', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2556, 98, 'uni059_Course007', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2557, 98, 'uni059_Course006', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2558, 98, 'uni059_Course005', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2559, 98, 'uni059_Course004', 28, 3460, 0, 30);
INSERT INTO `create_plan` VALUES (2560, 98, 'uni059_Course003', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2561, 98, 'uni059_Course002', 28, 6340, 0, 30);
INSERT INTO `create_plan` VALUES (2562, 98, 'uni059_Course001', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2563, 98, 'uni058_Course008', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2564, 98, 'uni058_Course007', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2565, 98, 'uni058_Course006', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2566, 98, 'uni058_Course005', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2567, 98, 'uni058_Course004', 28, 90, 0, 30);
INSERT INTO `create_plan` VALUES (2568, 98, 'uni058_Course003', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2569, 98, 'uni058_Course002', 28, 530, 0, 30);
INSERT INTO `create_plan` VALUES (2570, 98, 'uni058_Course001', 28, 750, 0, 30);
INSERT INTO `create_plan` VALUES (2571, 98, 'uni057_Course003', 28, 640, 0, 30);
INSERT INTO `create_plan` VALUES (2572, 98, 'uni057_Course002', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2573, 98, 'uni057_Course001', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2574, 100, 'uni051_Course002', 28, 4505, 0, 30);
INSERT INTO `create_plan` VALUES (2575, 100, 'uni051_Course001', 28, 4750, 0, 30);
INSERT INTO `create_plan` VALUES (2576, 100, 'uni050_Course003', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2577, 100, 'uni050_Course002', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2578, 100, 'uni050_Course001', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2579, 100, 'uni049_Course001', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2580, 100, 'uni048_course003', 28, 740, 0, 30);
INSERT INTO `create_plan` VALUES (2581, 100, 'uni048_course002', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2582, 100, 'uni048_course001', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2583, 100, 'uni047_course002', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2584, 100, 'uni047_course001', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2585, 100, 'uni046_course002', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2586, 100, 'uni046_course001', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2587, 100, 'uni045_course003', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2588, 100, 'uni045_course002', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2589, 100, 'uni045_course001', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2590, 100, 'uni044_course004', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2591, 100, 'uni044_course003', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2592, 100, 'uni044_course002', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2593, 100, 'uni044_course001', 28, 750, 0, 30);
INSERT INTO `create_plan` VALUES (2594, 100, 'uni043_course003', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2595, 100, 'uni043_course002', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2596, 100, 'uni043_course001', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2597, 100, 'uni042_course021', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2598, 100, 'uni042_course020', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2599, 100, 'uni042_course019', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2600, 100, 'uni042_course018', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2601, 100, 'uni042_course017', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2602, 100, 'uni042_course016', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2603, 100, 'uni042_course015', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2604, 100, 'uni042_course014', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2605, 100, 'uni042_course013', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2606, 100, 'uni042_course012', 28, 3560, 0, 30);
INSERT INTO `create_plan` VALUES (2607, 100, 'uni042_course011', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2608, 100, 'uni042_course010', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2609, 100, 'uni042_course009', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2610, 100, 'uni042_course008', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2611, 100, 'uni042_course007', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2612, 100, 'uni042_course006', 28, 3, 0, 30);
INSERT INTO `create_plan` VALUES (2613, 100, 'uni042_course005', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2614, 100, 'uni042_course004', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2615, 100, 'uni042_course003', 28, 3540, 0, 30);
INSERT INTO `create_plan` VALUES (2616, 100, 'uni042_course002', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2617, 100, 'uni042_course001', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2618, 103, 'uni004_fac037', 28, 5460, 0, 30);
INSERT INTO `create_plan` VALUES (2619, 103, 'uni004_fac036', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2620, 103, 'uni004_fac035', 28, 680, 0, 30);
INSERT INTO `create_plan` VALUES (2621, 103, 'uni004_fac041', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2622, 103, 'uni004_fac034', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2623, 103, 'uni004_fac033', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2624, 103, 'uni004_fac032', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2625, 103, 'uni004_fac031', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2626, 103, 'uni004_fac030', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2627, 103, 'uni004_fac029', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2628, 103, 'uni004_fac028', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2629, 103, 'uni004_fac027', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2630, 103, 'uni004_fac026', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2631, 103, 'uni004_fac025', 28, 230, 0, 30);
INSERT INTO `create_plan` VALUES (2632, 103, 'uni004_fac024', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2633, 103, 'uni004_fac023', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2634, 103, 'uni004_fac022', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2635, 103, 'uni004_fac021', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2636, 103, 'uni004_fac020', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2637, 103, 'uni004_fac019', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2638, 103, 'uni004_fac018', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2639, 103, 'uni004_fac017', 28, 5670, 0, 30);
INSERT INTO `create_plan` VALUES (2640, 103, 'uni004_fac016', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2641, 103, 'uni004_fac015', 28, 7560, 0, 30);
INSERT INTO `create_plan` VALUES (2642, 103, 'uni004_fac040', 28, 570, 0, 30);
INSERT INTO `create_plan` VALUES (2643, 103, 'uni004_fac039', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2644, 103, 'uni004_fac038', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2645, 103, 'uni004_fac014', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2646, 103, 'uni004_fac013', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2647, 103, 'uni004_fac012', 28, 470, 0, 30);
INSERT INTO `create_plan` VALUES (2648, 103, 'uni004_fac011', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2649, 103, 'uni004_fac010', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2650, 103, 'uni004_fac009', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2651, 103, 'uni004_fac008', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2652, 103, 'uni004_fac007', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2653, 103, 'uni004_fac006', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2654, 103, 'uni004_fac005', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2655, 103, 'uni004_fac004', 28, 90, 0, 30);
INSERT INTO `create_plan` VALUES (2656, 103, 'uni004_fac003', 28, 660, 0, 30);
INSERT INTO `create_plan` VALUES (2657, 103, 'uni004_fac002', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2658, 103, 'uni004_fac001', 28, 750, 0, 30);
INSERT INTO `create_plan` VALUES (2659, 103, 'uni003_Course037', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2660, 103, 'uni003_course032', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2661, 103, 'uni003_course031', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2662, 103, 'uni003_course030', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2663, 103, 'uni003_course029', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2664, 103, 'uni003_course028', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2665, 103, 'uni003_Course036', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2666, 103, 'uni003_course026', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2667, 103, 'uni003_course025', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2668, 103, 'uni003_course024', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2669, 103, 'uni003_course023', 28, 860, 0, 30);
INSERT INTO `create_plan` VALUES (2670, 103, 'uni003_course022', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2671, 103, 'uni003_course021', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2672, 103, 'uni003_course020', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2673, 103, 'uni003_course019', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2674, 103, 'uni003_Course035', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2675, 103, 'uni003_Course034', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2676, 103, 'uni003_Course033', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2677, 103, 'uni003_course018', 28, 420, 0, 30);
INSERT INTO `create_plan` VALUES (2678, 103, 'uni003_course017', 28, 230, 0, 30);
INSERT INTO `create_plan` VALUES (2679, 103, 'uni003_course016', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2680, 103, 'uni003_course015', 28, 10, 0, 30);
INSERT INTO `create_plan` VALUES (2681, 103, 'uni003_course014', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2682, 103, 'uni003_course013', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2683, 103, 'uni003_course012', 28, 90, 0, 30);
INSERT INTO `create_plan` VALUES (2684, 103, 'uni003_course011', 28, 680, 0, 30);
INSERT INTO `create_plan` VALUES (2685, 103, 'uni003_course010', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2686, 103, 'uni003_course009', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2687, 103, 'uni003_course008', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2688, 103, 'uni003_course007', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2689, 103, 'uni003_course006', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2690, 103, 'uni003_course005', 28, 570, 0, 30);
INSERT INTO `create_plan` VALUES (2691, 103, 'uni003_course004', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2692, 103, 'uni003_course003', 28, 780, 0, 30);
INSERT INTO `create_plan` VALUES (2693, 103, 'uni003_course002', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2694, 103, 'uni003_course001', 28, 860, 0, 30);
INSERT INTO `create_plan` VALUES (2695, 103, 'uni002_Course026', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2696, 103, 'uni002_Course025', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2697, 103, 'uni002_Course024', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2698, 103, 'uni002_Course023', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2699, 103, 'uni002_Course022', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2700, 103, 'uni002_Course039', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2701, 103, 'uni002_Course038', 28, 520, 0, 30);
INSERT INTO `create_plan` VALUES (2702, 103, 'uni002_Course033', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2703, 103, 'uni002_Course032', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2704, 103, 'uni002_Course021', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2705, 103, 'uni002_Course020', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2706, 103, 'uni002_Course019', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2707, 103, 'uni002_Course043', 28, 870, 0, 30);
INSERT INTO `create_plan` VALUES (2708, 103, 'uni002_Course042', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2709, 103, 'uni002_Course031', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2710, 103, 'uni002_Course030', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2711, 103, 'uni002_Course018', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2712, 103, 'uni002_Course017', 28, 6340, 0, 30);
INSERT INTO `create_plan` VALUES (2713, 103, 'uni002_Course041', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2714, 103, 'uni002_Course040', 28, 5670, 0, 30);
INSERT INTO `create_plan` VALUES (2715, 103, 'uni002_Course036', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2716, 103, 'uni002_Course035', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2717, 103, 'uni002_Course034', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2718, 103, 'uni002_Course016', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2719, 103, 'uni002_Course015', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2720, 103, 'uni002_Course014', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2721, 103, 'uni002_Course013', 28, 640, 0, 30);
INSERT INTO `create_plan` VALUES (2722, 103, 'uni002_Course012', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2723, 103, 'uni002_Course037', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2724, 103, 'uni002_Course029', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2725, 103, 'uni002_Course028', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2726, 103, 'uni002_Course027', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2727, 103, 'uni002_Course011', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2728, 103, 'uni002_Course010', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2729, 103, 'uni002_Course009', 28, 230, 0, 30);
INSERT INTO `create_plan` VALUES (2730, 103, 'uni002_Course008', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2731, 103, 'uni002_Course007', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2732, 103, 'uni002_Course006', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2733, 103, 'uni002_Course005', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2734, 103, 'uni002_Course004', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2735, 103, 'uni002_Course003', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2736, 103, 'uni002_Course002', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2737, 103, 'uni002_Course001', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2738, 103, 'uni001_cours043', 28, 860, 0, 30);
INSERT INTO `create_plan` VALUES (2739, 103, 'uni001_cours042', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2740, 103, 'uni001_doc030', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2741, 103, 'uni001_cours106', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2742, 103, 'uni001_cours105', 28, 760, 0, 30);
INSERT INTO `create_plan` VALUES (2743, 103, 'uni001_cours104', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2744, 103, 'uni001_cours103', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2745, 103, 'uni001_cours102', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2746, 103, 'uni001_cours101', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2747, 103, 'uni001_doc029', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2748, 103, 'uni001_doc028', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2749, 103, 'uni001_cours100', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2750, 103, 'uni001_cours099', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2751, 103, 'uni001_cours098', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2752, 103, 'uni001_cours097', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2753, 103, 'uni001_cours096', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2754, 103, 'uni001_cours095', 28, 460, 0, 30);
INSERT INTO `create_plan` VALUES (2755, 103, 'uni001_cours094', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2756, 103, 'uni001_cours093', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2757, 103, 'uni001_cours092', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2758, 103, 'uni001_cours091', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2759, 103, 'uni001_cours090', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2760, 103, 'uni001_cours089', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2761, 103, 'uni001_doc027', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2762, 103, 'uni001_cours088', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2763, 103, 'uni001_cours087', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2764, 103, 'uni001_cours086', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2765, 103, 'uni001_cours085', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2766, 103, 'uni001_cours084', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2767, 103, 'uni001_cours083', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2768, 103, 'uni001_doc026', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2769, 103, 'uni001_doc025', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2770, 103, 'uni001_cours082', 28, 640, 0, 30);
INSERT INTO `create_plan` VALUES (2771, 103, 'uni001_cours081', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2772, 103, 'uni001_cours080', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2773, 103, 'uni001_cours079', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2774, 103, 'uni001_cours078', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2775, 103, 'uni001_cours077', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2776, 103, 'uni001_doc024', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2777, 103, 'uni001_doc023', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2778, 103, 'uni001_doc022', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2779, 103, 'uni001_doc021', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2780, 103, 'uni001_doc020', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2781, 103, 'uni001_doc019', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2782, 103, 'uni001_doc018', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2783, 103, 'uni001_doc017', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2784, 103, 'uni001_cours076', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2785, 103, 'uni001_cours075', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2786, 103, 'uni001_cours074', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2787, 103, 'uni001_cours073', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2788, 103, 'uni001_cours072', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2789, 103, 'uni001_cours071', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2790, 103, 'uni001_cours070', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2791, 103, 'uni001_cours069', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2792, 103, 'uni001_cours068', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2793, 103, 'uni001_cours067', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2794, 103, 'uni001_cours066', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2795, 103, 'uni001_cours065', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2796, 103, 'uni001_cours064', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2797, 103, 'uni001_cours063', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2798, 103, 'uni001_cours062', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2799, 103, 'uni001_cours061', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2800, 103, 'uni001_cours060', 28, 230, 0, 30);
INSERT INTO `create_plan` VALUES (2801, 103, 'uni001_cours058', 28, 530, 0, 30);
INSERT INTO `create_plan` VALUES (2802, 103, 'uni001_cours057', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2803, 103, 'uni001_cours056', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2804, 103, 'uni001_cours055', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2805, 103, 'uni001_cours054', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2806, 103, 'uni001_cours053', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2807, 103, 'uni001_cours052', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2808, 103, 'uni001_cours051', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2809, 103, 'uni001_cours050', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2810, 103, 'uni001_cours049', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2811, 103, 'uni001_doc016', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2812, 103, 'uni001_doc015', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2813, 103, 'uni001_doc014', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2814, 103, 'uni001_doc013', 28, 450, 0, 30);
INSERT INTO `create_plan` VALUES (2815, 103, 'uni001_cours048', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2816, 103, 'uni001_cours047', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2817, 103, 'uni001_cours046', 28, 540, 0, 30);
INSERT INTO `create_plan` VALUES (2818, 103, 'uni001_cours045', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2819, 103, 'uni001_cours044', 28, 650, 0, 30);
INSERT INTO `create_plan` VALUES (2820, 103, 'uni001_doc012', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2821, 103, 'uni001_doc011', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2822, 103, 'uni001_doc010', 28, 570, 0, 30);
INSERT INTO `create_plan` VALUES (2823, 103, 'uni001_doc009', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2824, 103, 'uni001_cours041', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2825, 103, 'uni001_cours040', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2826, 103, 'uni001_cours039', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2827, 103, 'uni001_cours038', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2828, 103, 'uni001_cours037', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2829, 103, 'uni001_cours036', 28, 680, 0, 30);
INSERT INTO `create_plan` VALUES (2830, 103, 'uni001_cours035', 28, 750, 0, 30);
INSERT INTO `create_plan` VALUES (2831, 103, 'uni001_cours034', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2832, 103, 'uni001_cours033', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2833, 103, 'uni001_cours032', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2834, 103, 'uni001_doc008', 28, 430, 0, 30);
INSERT INTO `create_plan` VALUES (2835, 103, 'uni001_doc007', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2836, 103, 'uni001_doc006', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2837, 103, 'uni001_cours031', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2838, 103, 'uni001_cours030', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2839, 103, 'uni001_cours029', 28, 20, 0, 30);
INSERT INTO `create_plan` VALUES (2840, 103, 'uni001_cours028', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2841, 103, 'uni001_cours027', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2842, 103, 'uni001_cours026', 28, 30, 0, 30);
INSERT INTO `create_plan` VALUES (2843, 103, 'uni001_cours025', 28, 340, 0, 30);
INSERT INTO `create_plan` VALUES (2844, 103, 'uni001_cours024', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2845, 103, 'uni001_cours023', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2846, 103, 'uni001_doc005', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2847, 103, 'uni001_cours022', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2848, 103, 'uni001_cours021', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2849, 103, 'uni001_cours020', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2850, 103, 'uni001_cours019', 28, 560, 0, 30);
INSERT INTO `create_plan` VALUES (2851, 103, 'uni001_cours018', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2852, 103, 'uni001_cours017', 28, 6780, 0, 30);
INSERT INTO `create_plan` VALUES (2853, 103, 'uni001_cours016', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2854, 103, 'uni001_cours015', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2855, 103, 'uni001_cours014', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2856, 103, 'uni001_cours013', 28, 40, 0, 30);
INSERT INTO `create_plan` VALUES (2857, 103, 'uni001_cours012', 28, 570, 0, 30);
INSERT INTO `create_plan` VALUES (2858, 103, 'uni001_doc004', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2859, 103, 'uni001_doc003', 28, 7540, 0, 30);
INSERT INTO `create_plan` VALUES (2860, 103, 'uni001_doc002', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2861, 103, 'uni001_doc001', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2862, 103, 'uni001_cours011', 28, 50, 0, 30);
INSERT INTO `create_plan` VALUES (2863, 103, 'uni001_cours010', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2864, 103, 'uni001_cours009', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2865, 103, 'uni001_cours008', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2866, 103, 'uni001_cours007', 28, 90, 0, 30);
INSERT INTO `create_plan` VALUES (2867, 103, 'uni001_cours006', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2868, 103, 'uni001_cours005', 28, 70, 0, 30);
INSERT INTO `create_plan` VALUES (2869, 103, 'uni001_cours004', 28, 80, 0, 30);
INSERT INTO `create_plan` VALUES (2870, 103, 'uni001_cours003', 28, 60, 0, 30);
INSERT INTO `create_plan` VALUES (2871, 103, 'uni001_cours002', 28, 750, 0, 30);
INSERT INTO `create_plan` VALUES (2872, 103, 'uni001_cours001', 28, 670, 0, 30);
INSERT INTO `create_plan` VALUES (2873, 94, 'uni070_Course002', 29, 6, 0, 34);
INSERT INTO `create_plan` VALUES (2874, 94, 'uni070_Course001', 29, 6, 0, 34);
INSERT INTO `create_plan` VALUES (2875, 96, 'uni065_Course004', 29, 8, 0, 34);
INSERT INTO `create_plan` VALUES (2876, 96, 'uni065_Course003', 29, 87, 0, 34);
INSERT INTO `create_plan` VALUES (2877, 96, 'uni065_Course002', 29, 87, 0, 34);
INSERT INTO `create_plan` VALUES (2878, 96, 'uni065_Course001', 29, 7, 0, 34);
INSERT INTO `create_plan` VALUES (2879, 97, 'uni064_Course005', 29, 230, 0, 34);
INSERT INTO `create_plan` VALUES (2880, 97, 'uni064_Course004', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2881, 97, 'uni064_Course003', 29, 23, 0, 34);
INSERT INTO `create_plan` VALUES (2882, 97, 'uni064_Course002', 29, 43, 0, 34);
INSERT INTO `create_plan` VALUES (2883, 97, 'uni064_Course001', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2884, 97, 'uni063_Course005', 29, 420, 0, 34);
INSERT INTO `create_plan` VALUES (2885, 97, 'uni063_Course004', 29, 230, 0, 34);
INSERT INTO `create_plan` VALUES (2886, 97, 'uni063_Course003', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2887, 97, 'uni063_Course002', 29, 420, 0, 34);
INSERT INTO `create_plan` VALUES (2888, 97, 'uni063_Course001', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2889, 97, 'uni062_Course003', 29, 1, 0, 34);
INSERT INTO `create_plan` VALUES (2890, 97, 'uni062_Course002', 29, 21, 0, 34);
INSERT INTO `create_plan` VALUES (2891, 97, 'uni062_Course001', 29, 230, 0, 34);
INSERT INTO `create_plan` VALUES (2892, 98, 'uni061_Course004', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2893, 98, 'uni061_Course003', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2894, 98, 'uni061_Course002', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2895, 98, 'uni061_Course001', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2896, 98, 'uni060_Course008', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2897, 98, 'uni060_Course007', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (2898, 98, 'uni060_Course006', 29, 90, 0, 34);
INSERT INTO `create_plan` VALUES (2899, 98, 'uni060_Course005', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2900, 98, 'uni060_Course004', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2901, 98, 'uni060_Course003', 29, 130, 0, 34);
INSERT INTO `create_plan` VALUES (2902, 98, 'uni060_Course002', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2903, 98, 'uni060_Course001', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (2904, 98, 'uni059_Course008', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2905, 98, 'uni059_Course007', 29, 430, 0, 34);
INSERT INTO `create_plan` VALUES (2906, 98, 'uni059_Course006', 29, 230, 0, 34);
INSERT INTO `create_plan` VALUES (2907, 98, 'uni059_Course005', 29, 130, 0, 34);
INSERT INTO `create_plan` VALUES (2908, 98, 'uni059_Course004', 29, 3410, 0, 34);
INSERT INTO `create_plan` VALUES (2909, 98, 'uni059_Course003', 29, 320, 0, 34);
INSERT INTO `create_plan` VALUES (2910, 98, 'uni059_Course002', 29, 240, 0, 34);
INSERT INTO `create_plan` VALUES (2911, 98, 'uni059_Course001', 29, 130, 0, 34);
INSERT INTO `create_plan` VALUES (2912, 98, 'uni058_Course008', 29, 5430, 0, 34);
INSERT INTO `create_plan` VALUES (2913, 98, 'uni058_Course007', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2914, 98, 'uni058_Course006', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2915, 98, 'uni058_Course005', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2916, 98, 'uni058_Course004', 29, 10, 0, 34);
INSERT INTO `create_plan` VALUES (2917, 98, 'uni058_Course003', 29, 320, 0, 34);
INSERT INTO `create_plan` VALUES (2918, 98, 'uni058_Course002', 29, 340, 0, 34);
INSERT INTO `create_plan` VALUES (2919, 98, 'uni058_Course001', 29, 230, 0, 34);
INSERT INTO `create_plan` VALUES (2920, 98, 'uni057_Course003', 29, 340, 0, 34);
INSERT INTO `create_plan` VALUES (2921, 98, 'uni057_Course002', 29, 340, 0, 34);
INSERT INTO `create_plan` VALUES (2922, 98, 'uni057_Course001', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2923, 100, 'uni051_Course002', 29, 570, 0, 34);
INSERT INTO `create_plan` VALUES (2924, 100, 'uni051_Course001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2925, 100, 'uni050_Course003', 29, 460, 0, 34);
INSERT INTO `create_plan` VALUES (2926, 100, 'uni050_Course002', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2927, 100, 'uni050_Course001', 29, 570, 0, 34);
INSERT INTO `create_plan` VALUES (2928, 100, 'uni049_Course001', 29, 560, 0, 34);
INSERT INTO `create_plan` VALUES (2929, 100, 'uni048_course003', 29, 650, 0, 34);
INSERT INTO `create_plan` VALUES (2930, 100, 'uni048_course002', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2931, 100, 'uni048_course001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2932, 100, 'uni047_course002', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2933, 100, 'uni047_course001', 29, 750, 0, 34);
INSERT INTO `create_plan` VALUES (2934, 100, 'uni046_course002', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2935, 100, 'uni046_course001', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2936, 100, 'uni045_course003', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2937, 100, 'uni045_course002', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2938, 100, 'uni045_course001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2939, 100, 'uni044_course004', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2940, 100, 'uni044_course003', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2941, 100, 'uni044_course002', 29, 570, 0, 34);
INSERT INTO `create_plan` VALUES (2942, 100, 'uni044_course001', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2943, 100, 'uni043_course003', 29, 750, 0, 34);
INSERT INTO `create_plan` VALUES (2944, 100, 'uni043_course002', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2945, 100, 'uni043_course001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2946, 100, 'uni042_course021', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2947, 100, 'uni042_course020', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2948, 100, 'uni042_course019', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2949, 100, 'uni042_course018', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2950, 100, 'uni042_course017', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2951, 100, 'uni042_course016', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2952, 100, 'uni042_course015', 29, 90, 0, 34);
INSERT INTO `create_plan` VALUES (2953, 100, 'uni042_course014', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (2954, 100, 'uni042_course013', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2955, 100, 'uni042_course012', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2956, 100, 'uni042_course011', 29, 760, 0, 34);
INSERT INTO `create_plan` VALUES (2957, 100, 'uni042_course010', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2958, 100, 'uni042_course009', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2959, 100, 'uni042_course008', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2960, 100, 'uni042_course007', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2961, 100, 'uni042_course006', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2962, 100, 'uni042_course005', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2963, 100, 'uni042_course004', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2964, 100, 'uni042_course003', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2965, 100, 'uni042_course002', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (2966, 100, 'uni042_course001', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2967, 103, 'uni004_fac037', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2968, 103, 'uni004_fac036', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2969, 103, 'uni004_fac035', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (2970, 103, 'uni004_fac041', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2971, 103, 'uni004_fac034', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2972, 103, 'uni004_fac033', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2973, 103, 'uni004_fac032', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2974, 103, 'uni004_fac031', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2975, 103, 'uni004_fac030', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2976, 103, 'uni004_fac029', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2977, 103, 'uni004_fac028', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2978, 103, 'uni004_fac027', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2979, 103, 'uni004_fac026', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2980, 103, 'uni004_fac025', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2981, 103, 'uni004_fac024', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2982, 103, 'uni004_fac023', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2983, 103, 'uni004_fac022', 29, 120, 0, 34);
INSERT INTO `create_plan` VALUES (2984, 103, 'uni004_fac021', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2985, 103, 'uni004_fac020', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2986, 103, 'uni004_fac019', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2987, 103, 'uni004_fac018', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2988, 103, 'uni004_fac017', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (2989, 103, 'uni004_fac016', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2990, 103, 'uni004_fac015', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2991, 103, 'uni004_fac040', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2992, 103, 'uni004_fac039', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2993, 103, 'uni004_fac038', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (2994, 103, 'uni004_fac014', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2995, 103, 'uni004_fac013', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (2996, 103, 'uni004_fac012', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (2997, 103, 'uni004_fac011', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (2998, 103, 'uni004_fac010', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (2999, 103, 'uni004_fac009', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3000, 103, 'uni004_fac008', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3001, 103, 'uni004_fac007', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3002, 103, 'uni004_fac006', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3003, 103, 'uni004_fac005', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3004, 103, 'uni004_fac004', 29, 750, 0, 34);
INSERT INTO `create_plan` VALUES (3005, 103, 'uni004_fac003', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3006, 103, 'uni004_fac002', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3007, 103, 'uni004_fac001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3008, 103, 'uni003_Course037', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3009, 103, 'uni003_course032', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3010, 103, 'uni003_course031', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3011, 103, 'uni003_course030', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3012, 103, 'uni003_course029', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3013, 103, 'uni003_course028', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3014, 103, 'uni003_Course036', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3015, 103, 'uni003_course026', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3016, 103, 'uni003_course025', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3017, 103, 'uni003_course024', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3018, 103, 'uni003_course023', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3019, 103, 'uni003_course022', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3020, 103, 'uni003_course021', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3021, 103, 'uni003_course020', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3022, 103, 'uni003_course019', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3023, 103, 'uni003_Course035', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3024, 103, 'uni003_Course034', 29, 10, 0, 34);
INSERT INTO `create_plan` VALUES (3025, 103, 'uni003_Course033', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3026, 103, 'uni003_course018', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3027, 103, 'uni003_course017', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3028, 103, 'uni003_course016', 29, 4, 0, 34);
INSERT INTO `create_plan` VALUES (3029, 103, 'uni003_course015', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3030, 103, 'uni003_course014', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3031, 103, 'uni003_course013', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3032, 103, 'uni003_course012', 29, 450, 0, 34);
INSERT INTO `create_plan` VALUES (3033, 103, 'uni003_course011', 29, 560, 0, 34);
INSERT INTO `create_plan` VALUES (3034, 103, 'uni003_course010', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3035, 103, 'uni003_course009', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3036, 103, 'uni003_course008', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3037, 103, 'uni003_course007', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3038, 103, 'uni003_course006', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3039, 103, 'uni003_course005', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3040, 103, 'uni003_course004', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3041, 103, 'uni003_course003', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3042, 103, 'uni003_course002', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3043, 103, 'uni003_course001', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3044, 103, 'uni002_Course026', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3045, 103, 'uni002_Course025', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3046, 103, 'uni002_Course024', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3047, 103, 'uni002_Course023', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3048, 103, 'uni002_Course022', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3049, 103, 'uni002_Course039', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3050, 103, 'uni002_Course038', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3051, 103, 'uni002_Course033', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3052, 103, 'uni002_Course032', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3053, 103, 'uni002_Course021', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3054, 103, 'uni002_Course020', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3055, 103, 'uni002_Course019', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3056, 103, 'uni002_Course043', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3057, 103, 'uni002_Course042', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3058, 103, 'uni002_Course031', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3059, 103, 'uni002_Course030', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3060, 103, 'uni002_Course018', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3061, 103, 'uni002_Course017', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3062, 103, 'uni002_Course041', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3063, 103, 'uni002_Course040', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3064, 103, 'uni002_Course036', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3065, 103, 'uni002_Course035', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3066, 103, 'uni002_Course034', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3067, 103, 'uni002_Course016', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3068, 103, 'uni002_Course015', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3069, 103, 'uni002_Course014', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3070, 103, 'uni002_Course013', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3071, 103, 'uni002_Course012', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3072, 103, 'uni002_Course037', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3073, 103, 'uni002_Course029', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3074, 103, 'uni002_Course028', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3075, 103, 'uni002_Course027', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3076, 103, 'uni002_Course011', 29, 540, 0, 34);
INSERT INTO `create_plan` VALUES (3077, 103, 'uni002_Course010', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3078, 103, 'uni002_Course009', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3079, 103, 'uni002_Course008', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3080, 103, 'uni002_Course007', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3081, 103, 'uni002_Course006', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3082, 103, 'uni002_Course005', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3083, 103, 'uni002_Course004', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3084, 103, 'uni002_Course003', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3085, 103, 'uni002_Course002', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3086, 103, 'uni002_Course001', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3087, 103, 'uni001_cours043', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3088, 103, 'uni001_cours042', 29, 650, 0, 34);
INSERT INTO `create_plan` VALUES (3089, 103, 'uni001_doc030', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3090, 103, 'uni001_cours106', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3091, 103, 'uni001_cours105', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3092, 103, 'uni001_cours104', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3093, 103, 'uni001_cours103', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3094, 103, 'uni001_cours102', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3095, 103, 'uni001_cours101', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3096, 103, 'uni001_doc029', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3097, 103, 'uni001_doc028', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3098, 103, 'uni001_cours100', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3099, 103, 'uni001_cours099', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3100, 103, 'uni001_cours098', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3101, 103, 'uni001_cours097', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3102, 103, 'uni001_cours096', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3103, 103, 'uni001_cours095', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3104, 103, 'uni001_cours094', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3105, 103, 'uni001_cours093', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3106, 103, 'uni001_cours092', 29, 640, 0, 34);
INSERT INTO `create_plan` VALUES (3107, 103, 'uni001_cours091', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3108, 103, 'uni001_cours090', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3109, 103, 'uni001_cours089', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3110, 103, 'uni001_doc027', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3111, 103, 'uni001_cours088', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3112, 103, 'uni001_cours087', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3113, 103, 'uni001_cours086', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3114, 103, 'uni001_cours085', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3115, 103, 'uni001_cours084', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3116, 103, 'uni001_cours083', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3117, 103, 'uni001_doc026', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3118, 103, 'uni001_doc025', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3119, 103, 'uni001_cours082', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3120, 103, 'uni001_cours081', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3121, 103, 'uni001_cours080', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3122, 103, 'uni001_cours079', 29, 320, 0, 34);
INSERT INTO `create_plan` VALUES (3123, 103, 'uni001_cours078', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3124, 103, 'uni001_cours077', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3125, 103, 'uni001_doc024', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3126, 103, 'uni001_doc023', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3127, 103, 'uni001_doc022', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3128, 103, 'uni001_doc021', 29, 4450, 0, 34);
INSERT INTO `create_plan` VALUES (3129, 103, 'uni001_doc020', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3130, 103, 'uni001_doc019', 29, 420, 0, 34);
INSERT INTO `create_plan` VALUES (3131, 103, 'uni001_doc018', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3132, 103, 'uni001_doc017', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3133, 103, 'uni001_cours076', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3134, 103, 'uni001_cours075', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3135, 103, 'uni001_cours074', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3136, 103, 'uni001_cours073', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3137, 103, 'uni001_cours072', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3138, 103, 'uni001_cours071', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3139, 103, 'uni001_cours070', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3140, 103, 'uni001_cours069', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3141, 103, 'uni001_cours068', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3142, 103, 'uni001_cours067', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3143, 103, 'uni001_cours066', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3144, 103, 'uni001_cours065', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3145, 103, 'uni001_cours064', 29, 2350, 0, 34);
INSERT INTO `create_plan` VALUES (3146, 103, 'uni001_cours063', 29, 640, 0, 34);
INSERT INTO `create_plan` VALUES (3147, 103, 'uni001_cours062', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3148, 103, 'uni001_cours061', 29, 320, 0, 34);
INSERT INTO `create_plan` VALUES (3149, 103, 'uni001_cours060', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3150, 103, 'uni001_cours058', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3151, 103, 'uni001_cours057', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3152, 103, 'uni001_cours056', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3153, 103, 'uni001_cours055', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3154, 103, 'uni001_cours054', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3155, 103, 'uni001_cours053', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3156, 103, 'uni001_cours052', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3157, 103, 'uni001_cours051', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3158, 103, 'uni001_cours050', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3159, 103, 'uni001_cours049', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3160, 103, 'uni001_doc016', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3161, 103, 'uni001_doc015', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3162, 103, 'uni001_doc014', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3163, 103, 'uni001_doc013', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3164, 103, 'uni001_cours048', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3165, 103, 'uni001_cours047', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3166, 103, 'uni001_cours046', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3167, 103, 'uni001_cours045', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3168, 103, 'uni001_cours044', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3169, 103, 'uni001_doc012', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3170, 103, 'uni001_doc011', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3171, 103, 'uni001_doc010', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3172, 103, 'uni001_doc009', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3173, 103, 'uni001_cours041', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3174, 103, 'uni001_cours040', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3175, 103, 'uni001_cours039', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3176, 103, 'uni001_cours038', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3177, 103, 'uni001_cours037', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3178, 103, 'uni001_cours036', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3179, 103, 'uni001_cours035', 29, 860, 0, 34);
INSERT INTO `create_plan` VALUES (3180, 103, 'uni001_cours034', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3181, 103, 'uni001_cours033', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3182, 103, 'uni001_cours032', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3183, 103, 'uni001_doc008', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3184, 103, 'uni001_doc007', 29, 540, 0, 34);
INSERT INTO `create_plan` VALUES (3185, 103, 'uni001_doc006', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3186, 103, 'uni001_cours031', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3187, 103, 'uni001_cours030', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3188, 103, 'uni001_cours029', 29, 520, 0, 34);
INSERT INTO `create_plan` VALUES (3189, 103, 'uni001_cours028', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3190, 103, 'uni001_cours027', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3191, 103, 'uni001_cours026', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3192, 103, 'uni001_cours025', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3193, 103, 'uni001_cours024', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3194, 103, 'uni001_cours023', 29, 360, 0, 34);
INSERT INTO `create_plan` VALUES (3195, 103, 'uni001_doc005', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3196, 103, 'uni001_cours022', 29, 560, 0, 34);
INSERT INTO `create_plan` VALUES (3197, 103, 'uni001_cours021', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3198, 103, 'uni001_cours020', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3199, 103, 'uni001_cours019', 29, 560, 0, 34);
INSERT INTO `create_plan` VALUES (3200, 103, 'uni001_cours018', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3201, 103, 'uni001_cours017', 29, 40, 0, 34);
INSERT INTO `create_plan` VALUES (3202, 103, 'uni001_cours016', 29, 420, 0, 34);
INSERT INTO `create_plan` VALUES (3203, 103, 'uni001_cours015', 29, 6780, 0, 34);
INSERT INTO `create_plan` VALUES (3204, 103, 'uni001_cours014', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3205, 103, 'uni001_cours013', 29, 80, 0, 34);
INSERT INTO `create_plan` VALUES (3206, 103, 'uni001_cours012', 29, 60, 0, 34);
INSERT INTO `create_plan` VALUES (3207, 103, 'uni001_doc004', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3208, 103, 'uni001_doc003', 29, 460, 0, 34);
INSERT INTO `create_plan` VALUES (3209, 103, 'uni001_doc002', 29, 240, 0, 34);
INSERT INTO `create_plan` VALUES (3210, 103, 'uni001_doc001', 29, 650, 0, 34);
INSERT INTO `create_plan` VALUES (3211, 103, 'uni001_cours011', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3212, 103, 'uni001_cours010', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3213, 103, 'uni001_cours009', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3214, 103, 'uni001_cours008', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3215, 103, 'uni001_cours007', 29, 420, 0, 34);
INSERT INTO `create_plan` VALUES (3216, 103, 'uni001_cours006', 29, 70, 0, 34);
INSERT INTO `create_plan` VALUES (3217, 103, 'uni001_cours005', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3218, 103, 'uni001_cours004', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3219, 103, 'uni001_cours003', 29, 50, 0, 34);
INSERT INTO `create_plan` VALUES (3220, 103, 'uni001_cours002', 29, 20, 0, 34);
INSERT INTO `create_plan` VALUES (3221, 103, 'uni001_cours001', 29, 30, 0, 34);
INSERT INTO `create_plan` VALUES (3222, 94, 'uni070_Course002', 30, 12, 0, 32);
INSERT INTO `create_plan` VALUES (3223, 94, 'uni070_Course001', 30, 32, 0, 32);
INSERT INTO `create_plan` VALUES (3224, 96, 'uni065_Course004', 30, 4, 0, 32);
INSERT INTO `create_plan` VALUES (3225, 96, 'uni065_Course003', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3226, 96, 'uni065_Course002', 30, 420, 0, 32);
INSERT INTO `create_plan` VALUES (3227, 96, 'uni065_Course001', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3228, 97, 'uni064_Course005', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3229, 97, 'uni064_Course004', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3230, 97, 'uni064_Course003', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3231, 97, 'uni064_Course002', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3232, 97, 'uni064_Course001', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3233, 97, 'uni063_Course005', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3234, 97, 'uni063_Course004', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3235, 97, 'uni063_Course003', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3236, 97, 'uni063_Course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3237, 97, 'uni063_Course001', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3238, 97, 'uni062_Course003', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3239, 97, 'uni062_Course002', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3240, 97, 'uni062_Course001', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3241, 98, 'uni061_Course004', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3242, 98, 'uni061_Course003', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3243, 98, 'uni061_Course002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3244, 98, 'uni061_Course001', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3245, 98, 'uni060_Course008', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3246, 98, 'uni060_Course007', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3247, 98, 'uni060_Course006', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3248, 98, 'uni060_Course005', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3249, 98, 'uni060_Course004', 30, 5, 0, 32);
INSERT INTO `create_plan` VALUES (3250, 98, 'uni060_Course003', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3251, 98, 'uni060_Course002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3252, 98, 'uni060_Course001', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3253, 98, 'uni059_Course008', 30, 640, 0, 32);
INSERT INTO `create_plan` VALUES (3254, 98, 'uni059_Course007', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3255, 98, 'uni059_Course006', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3256, 98, 'uni059_Course005', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3257, 98, 'uni059_Course004', 30, 750, 0, 32);
INSERT INTO `create_plan` VALUES (3258, 98, 'uni059_Course003', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3259, 98, 'uni059_Course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3260, 98, 'uni059_Course001', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3261, 98, 'uni058_Course008', 30, 4, 0, 32);
INSERT INTO `create_plan` VALUES (3262, 98, 'uni058_Course007', 30, 6, 0, 32);
INSERT INTO `create_plan` VALUES (3263, 98, 'uni058_Course006', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3264, 98, 'uni058_Course005', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3265, 98, 'uni058_Course004', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3266, 98, 'uni058_Course003', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3267, 98, 'uni058_Course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3268, 98, 'uni058_Course001', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3269, 98, 'uni057_Course003', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3270, 98, 'uni057_Course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3271, 98, 'uni057_Course001', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3272, 100, 'uni051_Course002', 30, 760, 0, 32);
INSERT INTO `create_plan` VALUES (3273, 100, 'uni051_Course001', 30, 760, 0, 32);
INSERT INTO `create_plan` VALUES (3274, 100, 'uni050_Course003', 30, 650, 0, 32);
INSERT INTO `create_plan` VALUES (3275, 100, 'uni050_Course002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3276, 100, 'uni050_Course001', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3277, 100, 'uni049_Course001', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3278, 100, 'uni048_course003', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3279, 100, 'uni048_course002', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3280, 100, 'uni048_course001', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3281, 100, 'uni047_course002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3282, 100, 'uni047_course001', 30, 750, 0, 32);
INSERT INTO `create_plan` VALUES (3283, 100, 'uni046_course002', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3284, 100, 'uni046_course001', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3285, 100, 'uni045_course003', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3286, 100, 'uni045_course002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3287, 100, 'uni045_course001', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3288, 100, 'uni044_course004', 30, 430, 0, 32);
INSERT INTO `create_plan` VALUES (3289, 100, 'uni044_course003', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3290, 100, 'uni044_course002', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3291, 100, 'uni044_course001', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3292, 100, 'uni043_course003', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3293, 100, 'uni043_course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3294, 100, 'uni043_course001', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3295, 100, 'uni042_course021', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3296, 100, 'uni042_course020', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3297, 100, 'uni042_course019', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3298, 100, 'uni042_course018', 30, 640, 0, 32);
INSERT INTO `create_plan` VALUES (3299, 100, 'uni042_course017', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3300, 100, 'uni042_course016', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3301, 100, 'uni042_course015', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3302, 100, 'uni042_course014', 30, 43, 0, 32);
INSERT INTO `create_plan` VALUES (3303, 100, 'uni042_course013', 30, 7, 0, 32);
INSERT INTO `create_plan` VALUES (3304, 100, 'uni042_course012', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3305, 100, 'uni042_course011', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3306, 100, 'uni042_course010', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3307, 100, 'uni042_course009', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3308, 100, 'uni042_course008', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3309, 100, 'uni042_course007', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3310, 100, 'uni042_course006', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3311, 100, 'uni042_course005', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3312, 100, 'uni042_course004', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3313, 100, 'uni042_course003', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3314, 100, 'uni042_course002', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3315, 100, 'uni042_course001', 30, 470, 0, 32);
INSERT INTO `create_plan` VALUES (3316, 103, 'uni004_fac037', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3317, 103, 'uni004_fac036', 30, 90, 0, 32);
INSERT INTO `create_plan` VALUES (3318, 103, 'uni004_fac035', 30, 6780, 0, 32);
INSERT INTO `create_plan` VALUES (3319, 103, 'uni004_fac041', 30, 430, 0, 32);
INSERT INTO `create_plan` VALUES (3320, 103, 'uni004_fac034', 30, 970, 0, 32);
INSERT INTO `create_plan` VALUES (3321, 103, 'uni004_fac033', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3322, 103, 'uni004_fac032', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3323, 103, 'uni004_fac031', 30, 9670, 0, 32);
INSERT INTO `create_plan` VALUES (3324, 103, 'uni004_fac030', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3325, 103, 'uni004_fac029', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3326, 103, 'uni004_fac028', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3327, 103, 'uni004_fac027', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3328, 103, 'uni004_fac026', 30, 220, 0, 32);
INSERT INTO `create_plan` VALUES (3329, 103, 'uni004_fac025', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3330, 103, 'uni004_fac024', 30, 5230, 0, 32);
INSERT INTO `create_plan` VALUES (3331, 103, 'uni004_fac023', 30, 2340, 0, 32);
INSERT INTO `create_plan` VALUES (3332, 103, 'uni004_fac022', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3333, 103, 'uni004_fac021', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3334, 103, 'uni004_fac020', 30, 520, 0, 32);
INSERT INTO `create_plan` VALUES (3335, 103, 'uni004_fac019', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3336, 103, 'uni004_fac018', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3337, 103, 'uni004_fac017', 30, 90, 0, 32);
INSERT INTO `create_plan` VALUES (3338, 103, 'uni004_fac016', 30, 90, 0, 32);
INSERT INTO `create_plan` VALUES (3339, 103, 'uni004_fac015', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3340, 103, 'uni004_fac040', 30, 90, 0, 32);
INSERT INTO `create_plan` VALUES (3341, 103, 'uni004_fac039', 30, 80, 0, 32);
INSERT INTO `create_plan` VALUES (3342, 103, 'uni004_fac038', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3343, 103, 'uni004_fac014', 30, 90, 0, 32);
INSERT INTO `create_plan` VALUES (3344, 103, 'uni004_fac013', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3345, 103, 'uni004_fac012', 30, 970, 0, 32);
INSERT INTO `create_plan` VALUES (3346, 103, 'uni004_fac011', 30, 7890, 0, 32);
INSERT INTO `create_plan` VALUES (3347, 103, 'uni004_fac010', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3348, 103, 'uni004_fac009', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3349, 103, 'uni004_fac008', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3350, 103, 'uni004_fac007', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3351, 103, 'uni004_fac006', 30, 990, 0, 32);
INSERT INTO `create_plan` VALUES (3352, 103, 'uni004_fac005', 30, 690, 0, 32);
INSERT INTO `create_plan` VALUES (3353, 103, 'uni004_fac004', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3354, 103, 'uni004_fac003', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3355, 103, 'uni004_fac002', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3356, 103, 'uni004_fac001', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3357, 103, 'uni003_Course037', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3358, 103, 'uni003_course032', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3359, 103, 'uni003_course031', 30, 5470, 0, 32);
INSERT INTO `create_plan` VALUES (3360, 103, 'uni003_course030', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3361, 103, 'uni003_course029', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3362, 103, 'uni003_course028', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3363, 103, 'uni003_Course036', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3364, 103, 'uni003_course026', 30, 420, 0, 32);
INSERT INTO `create_plan` VALUES (3365, 103, 'uni003_course025', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3366, 103, 'uni003_course024', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3367, 103, 'uni003_course023', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3368, 103, 'uni003_course022', 30, 4540, 0, 32);
INSERT INTO `create_plan` VALUES (3369, 103, 'uni003_course021', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3370, 103, 'uni003_course020', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3371, 103, 'uni003_course019', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3372, 103, 'uni003_Course035', 30, 670, 0, 32);
INSERT INTO `create_plan` VALUES (3373, 103, 'uni003_Course034', 30, 4540, 0, 32);
INSERT INTO `create_plan` VALUES (3374, 103, 'uni003_Course033', 30, 80, 0, 32);
INSERT INTO `create_plan` VALUES (3375, 103, 'uni003_course018', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3376, 103, 'uni003_course017', 30, 5, 0, 32);
INSERT INTO `create_plan` VALUES (3377, 103, 'uni003_course016', 30, 670, 0, 32);
INSERT INTO `create_plan` VALUES (3378, 103, 'uni003_course015', 30, 74, 0, 32);
INSERT INTO `create_plan` VALUES (3379, 103, 'uni003_course014', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3380, 103, 'uni003_course013', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3381, 103, 'uni003_course012', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3382, 103, 'uni003_course011', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3383, 103, 'uni003_course010', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3384, 103, 'uni003_course009', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3385, 103, 'uni003_course008', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3386, 103, 'uni003_course007', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3387, 103, 'uni003_course006', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3388, 103, 'uni003_course005', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3389, 103, 'uni003_course004', 30, 570, 0, 32);
INSERT INTO `create_plan` VALUES (3390, 103, 'uni003_course003', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3391, 103, 'uni003_course002', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3392, 103, 'uni003_course001', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3393, 103, 'uni002_Course026', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3394, 103, 'uni002_Course025', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3395, 103, 'uni002_Course024', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3396, 103, 'uni002_Course023', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3397, 103, 'uni002_Course022', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3398, 103, 'uni002_Course039', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3399, 103, 'uni002_Course038', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3400, 103, 'uni002_Course033', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3401, 103, 'uni002_Course032', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3402, 103, 'uni002_Course021', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3403, 103, 'uni002_Course020', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3404, 103, 'uni002_Course019', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3405, 103, 'uni002_Course043', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3406, 103, 'uni002_Course042', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3407, 103, 'uni002_Course031', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3408, 103, 'uni002_Course030', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3409, 103, 'uni002_Course018', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3410, 103, 'uni002_Course017', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3411, 103, 'uni002_Course041', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3412, 103, 'uni002_Course040', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3413, 103, 'uni002_Course036', 30, 670, 0, 32);
INSERT INTO `create_plan` VALUES (3414, 103, 'uni002_Course035', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3415, 103, 'uni002_Course034', 30, 630, 0, 32);
INSERT INTO `create_plan` VALUES (3416, 103, 'uni002_Course016', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3417, 103, 'uni002_Course015', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3418, 103, 'uni002_Course014', 30, 260, 0, 32);
INSERT INTO `create_plan` VALUES (3419, 103, 'uni002_Course013', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3420, 103, 'uni002_Course012', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3421, 103, 'uni002_Course037', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3422, 103, 'uni002_Course029', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3423, 103, 'uni002_Course028', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3424, 103, 'uni002_Course027', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3425, 103, 'uni002_Course011', 30, 780, 0, 32);
INSERT INTO `create_plan` VALUES (3426, 103, 'uni002_Course010', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3427, 103, 'uni002_Course009', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3428, 103, 'uni002_Course008', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3429, 103, 'uni002_Course007', 30, 750, 0, 32);
INSERT INTO `create_plan` VALUES (3430, 103, 'uni002_Course006', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3431, 103, 'uni002_Course005', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3432, 103, 'uni002_Course004', 30, 630, 0, 32);
INSERT INTO `create_plan` VALUES (3433, 103, 'uni002_Course003', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3434, 103, 'uni002_Course002', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3435, 103, 'uni002_Course001', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3436, 103, 'uni001_cours043', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3437, 103, 'uni001_cours042', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3438, 103, 'uni001_doc030', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3439, 103, 'uni001_cours106', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3440, 103, 'uni001_cours105', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3441, 103, 'uni001_cours104', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3442, 103, 'uni001_cours103', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3443, 103, 'uni001_cours102', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3444, 103, 'uni001_cours101', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3445, 103, 'uni001_doc029', 30, 4530, 0, 32);
INSERT INTO `create_plan` VALUES (3446, 103, 'uni001_doc028', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3447, 103, 'uni001_cours100', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3448, 103, 'uni001_cours099', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3449, 103, 'uni001_cours098', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3450, 103, 'uni001_cours097', 30, 130, 0, 32);
INSERT INTO `create_plan` VALUES (3451, 103, 'uni001_cours096', 30, 10, 0, 32);
INSERT INTO `create_plan` VALUES (3452, 103, 'uni001_cours095', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3453, 103, 'uni001_cours094', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3454, 103, 'uni001_cours093', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3455, 103, 'uni001_cours092', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3456, 103, 'uni001_cours091', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3457, 103, 'uni001_cours090', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3458, 103, 'uni001_cours089', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3459, 103, 'uni001_doc027', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3460, 103, 'uni001_cours088', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3461, 103, 'uni001_cours087', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3462, 103, 'uni001_cours086', 30, 550, 0, 32);
INSERT INTO `create_plan` VALUES (3463, 103, 'uni001_cours085', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3464, 103, 'uni001_cours084', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3465, 103, 'uni001_cours083', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3466, 103, 'uni001_doc026', 30, 2340, 0, 32);
INSERT INTO `create_plan` VALUES (3467, 103, 'uni001_doc025', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3468, 103, 'uni001_cours082', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3469, 103, 'uni001_cours081', 30, 630, 0, 32);
INSERT INTO `create_plan` VALUES (3470, 103, 'uni001_cours080', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3471, 103, 'uni001_cours079', 30, 6430, 0, 32);
INSERT INTO `create_plan` VALUES (3472, 103, 'uni001_cours078', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3473, 103, 'uni001_cours077', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3474, 103, 'uni001_doc024', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3475, 103, 'uni001_doc023', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3476, 103, 'uni001_doc022', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3477, 103, 'uni001_doc021', 30, 640, 0, 32);
INSERT INTO `create_plan` VALUES (3478, 103, 'uni001_doc020', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3479, 103, 'uni001_doc019', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3480, 103, 'uni001_doc018', 30, 430, 0, 32);
INSERT INTO `create_plan` VALUES (3481, 103, 'uni001_doc017', 30, 330, 0, 32);
INSERT INTO `create_plan` VALUES (3482, 103, 'uni001_cours076', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3483, 103, 'uni001_cours075', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3484, 103, 'uni001_cours074', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3485, 103, 'uni001_cours073', 30, 6540, 0, 32);
INSERT INTO `create_plan` VALUES (3486, 103, 'uni001_cours072', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3487, 103, 'uni001_cours071', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3488, 103, 'uni001_cours070', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3489, 103, 'uni001_cours069', 30, 10, 0, 32);
INSERT INTO `create_plan` VALUES (3490, 103, 'uni001_cours068', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3491, 103, 'uni001_cours067', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3492, 103, 'uni001_cours066', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3493, 103, 'uni001_cours065', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3494, 103, 'uni001_cours064', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3495, 103, 'uni001_cours063', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3496, 103, 'uni001_cours062', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3497, 103, 'uni001_cours061', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3498, 103, 'uni001_cours060', 30, 750, 0, 32);
INSERT INTO `create_plan` VALUES (3499, 103, 'uni001_cours058', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3500, 103, 'uni001_cours057', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3501, 103, 'uni001_cours056', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3502, 103, 'uni001_cours055', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3503, 103, 'uni001_cours054', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3504, 103, 'uni001_cours053', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3505, 103, 'uni001_cours052', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3506, 103, 'uni001_cours051', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3507, 103, 'uni001_cours050', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3508, 103, 'uni001_cours049', 30, 5420, 0, 32);
INSERT INTO `create_plan` VALUES (3509, 103, 'uni001_doc016', 30, 320, 0, 32);
INSERT INTO `create_plan` VALUES (3510, 103, 'uni001_doc015', 30, 10, 0, 32);
INSERT INTO `create_plan` VALUES (3511, 103, 'uni001_doc014', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3512, 103, 'uni001_doc013', 30, 340, 0, 32);
INSERT INTO `create_plan` VALUES (3513, 103, 'uni001_cours048', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3514, 103, 'uni001_cours047', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3515, 103, 'uni001_cours046', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3516, 103, 'uni001_cours045', 30, 350, 0, 32);
INSERT INTO `create_plan` VALUES (3517, 103, 'uni001_cours044', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3518, 103, 'uni001_doc012', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3519, 103, 'uni001_doc011', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3520, 103, 'uni001_doc010', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3521, 103, 'uni001_doc009', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3522, 103, 'uni001_cours041', 30, 660, 0, 32);
INSERT INTO `create_plan` VALUES (3523, 103, 'uni001_cours040', 30, 80, 0, 32);
INSERT INTO `create_plan` VALUES (3524, 103, 'uni001_cours039', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3525, 103, 'uni001_cours038', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3526, 103, 'uni001_cours037', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3527, 103, 'uni001_cours036', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3528, 103, 'uni001_cours035', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3529, 103, 'uni001_cours034', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3530, 103, 'uni001_cours033', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3531, 103, 'uni001_cours032', 30, 230, 0, 32);
INSERT INTO `create_plan` VALUES (3532, 103, 'uni001_doc008', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3533, 103, 'uni001_doc007', 30, 540, 0, 32);
INSERT INTO `create_plan` VALUES (3534, 103, 'uni001_doc006', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3535, 103, 'uni001_cours031', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3536, 103, 'uni001_cours030', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3537, 103, 'uni001_cours029', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3538, 103, 'uni001_cours028', 30, 530, 0, 32);
INSERT INTO `create_plan` VALUES (3539, 103, 'uni001_cours027', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3540, 103, 'uni001_cours026', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3541, 103, 'uni001_cours025', 30, 5760, 0, 32);
INSERT INTO `create_plan` VALUES (3542, 103, 'uni001_cours024', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3543, 103, 'uni001_cours023', 30, 560, 0, 32);
INSERT INTO `create_plan` VALUES (3544, 103, 'uni001_doc005', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3545, 103, 'uni001_cours022', 30, 70, 0, 32);
INSERT INTO `create_plan` VALUES (3546, 103, 'uni001_cours021', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3547, 103, 'uni001_cours020', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3548, 103, 'uni001_cours019', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3549, 103, 'uni001_cours018', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3550, 103, 'uni001_cours017', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3551, 103, 'uni001_cours016', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3552, 103, 'uni001_cours015', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3553, 103, 'uni001_cours014', 30, 30, 0, 32);
INSERT INTO `create_plan` VALUES (3554, 103, 'uni001_cours013', 30, 80, 0, 32);
INSERT INTO `create_plan` VALUES (3555, 103, 'uni001_cours012', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3556, 103, 'uni001_doc004', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3557, 103, 'uni001_doc003', 30, 640, 0, 32);
INSERT INTO `create_plan` VALUES (3558, 103, 'uni001_doc002', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3559, 103, 'uni001_doc001', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3560, 103, 'uni001_cours011', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3561, 103, 'uni001_cours010', 30, 50, 0, 32);
INSERT INTO `create_plan` VALUES (3562, 103, 'uni001_cours009', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3563, 103, 'uni001_cours008', 30, 450, 0, 32);
INSERT INTO `create_plan` VALUES (3564, 103, 'uni001_cours007', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3565, 103, 'uni001_cours006', 30, 630, 0, 32);
INSERT INTO `create_plan` VALUES (3566, 103, 'uni001_cours005', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3567, 103, 'uni001_cours004', 30, 60, 0, 32);
INSERT INTO `create_plan` VALUES (3568, 103, 'uni001_cours003', 30, 640, 0, 32);
INSERT INTO `create_plan` VALUES (3569, 103, 'uni001_cours002', 30, 40, 0, 32);
INSERT INTO `create_plan` VALUES (3570, 103, 'uni001_cours001', 30, 20, 0, 32);
INSERT INTO `create_plan` VALUES (3571, 94, 'uni070_Course002', 31, 1, 0, 33);
INSERT INTO `create_plan` VALUES (3572, 94, 'uni070_Course001', 31, 3, 0, 33);
INSERT INTO `create_plan` VALUES (3573, 96, 'uni065_Course004', 31, 54, 0, 33);
INSERT INTO `create_plan` VALUES (3574, 96, 'uni065_Course003', 31, 5, 0, 33);
INSERT INTO `create_plan` VALUES (3575, 96, 'uni065_Course002', 31, 4, 0, 33);
INSERT INTO `create_plan` VALUES (3576, 96, 'uni065_Course001', 31, 6, 0, 33);
INSERT INTO `create_plan` VALUES (3577, 97, 'uni064_Course005', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3578, 97, 'uni064_Course004', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3579, 97, 'uni064_Course003', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3580, 97, 'uni064_Course002', 31, 430, 0, 33);
INSERT INTO `create_plan` VALUES (3581, 97, 'uni064_Course001', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3582, 97, 'uni063_Course005', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3583, 97, 'uni063_Course004', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3584, 97, 'uni063_Course003', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3585, 97, 'uni063_Course002', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3586, 97, 'uni063_Course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3587, 97, 'uni062_Course003', 31, 6, 0, 33);
INSERT INTO `create_plan` VALUES (3588, 97, 'uni062_Course002', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3589, 97, 'uni062_Course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3590, 98, 'uni061_Course004', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3591, 98, 'uni061_Course003', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3592, 98, 'uni061_Course002', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3593, 98, 'uni061_Course001', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3594, 98, 'uni060_Course008', 31, 430, 0, 33);
INSERT INTO `create_plan` VALUES (3595, 98, 'uni060_Course007', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3596, 98, 'uni060_Course006', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3597, 98, 'uni060_Course005', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3598, 98, 'uni060_Course004', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3599, 98, 'uni060_Course003', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3600, 98, 'uni060_Course002', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3601, 98, 'uni060_Course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3602, 98, 'uni059_Course008', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3603, 98, 'uni059_Course007', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3604, 98, 'uni059_Course006', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3605, 98, 'uni059_Course005', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3606, 98, 'uni059_Course004', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3607, 98, 'uni059_Course003', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3608, 98, 'uni059_Course002', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3609, 98, 'uni059_Course001', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3610, 98, 'uni058_Course008', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3611, 98, 'uni058_Course007', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3612, 98, 'uni058_Course006', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3613, 98, 'uni058_Course005', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3614, 98, 'uni058_Course004', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3615, 98, 'uni058_Course003', 31, 740, 0, 33);
INSERT INTO `create_plan` VALUES (3616, 98, 'uni058_Course002', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3617, 98, 'uni058_Course001', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3618, 98, 'uni057_Course003', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3619, 98, 'uni057_Course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3620, 98, 'uni057_Course001', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3621, 100, 'uni051_Course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3622, 100, 'uni051_Course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3623, 100, 'uni050_Course003', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3624, 100, 'uni050_Course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3625, 100, 'uni050_Course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3626, 100, 'uni049_Course001', 31, 530, 0, 33);
INSERT INTO `create_plan` VALUES (3627, 100, 'uni048_course003', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3628, 100, 'uni048_course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3629, 100, 'uni048_course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3630, 100, 'uni047_course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3631, 100, 'uni047_course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3632, 100, 'uni046_course002', 31, 530, 0, 33);
INSERT INTO `create_plan` VALUES (3633, 100, 'uni046_course001', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3634, 100, 'uni045_course003', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3635, 100, 'uni045_course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3636, 100, 'uni045_course001', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3637, 100, 'uni044_course004', 31, 350, 0, 33);
INSERT INTO `create_plan` VALUES (3638, 100, 'uni044_course003', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3639, 100, 'uni044_course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3640, 100, 'uni044_course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3641, 100, 'uni043_course003', 31, 230, 0, 33);
INSERT INTO `create_plan` VALUES (3642, 100, 'uni043_course002', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3643, 100, 'uni043_course001', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3644, 100, 'uni042_course021', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3645, 100, 'uni042_course020', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3646, 100, 'uni042_course019', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3647, 100, 'uni042_course018', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3648, 100, 'uni042_course017', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3649, 100, 'uni042_course016', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3650, 100, 'uni042_course015', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3651, 100, 'uni042_course014', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3652, 100, 'uni042_course013', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3653, 100, 'uni042_course012', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3654, 100, 'uni042_course011', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3655, 100, 'uni042_course010', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3656, 100, 'uni042_course009', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3657, 100, 'uni042_course008', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3658, 100, 'uni042_course007', 31, 540, 0, 33);
INSERT INTO `create_plan` VALUES (3659, 100, 'uni042_course006', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3660, 100, 'uni042_course005', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3661, 100, 'uni042_course004', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3662, 100, 'uni042_course003', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3663, 100, 'uni042_course002', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3664, 100, 'uni042_course001', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3665, 103, 'uni004_fac037', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3666, 103, 'uni004_fac036', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3667, 103, 'uni004_fac035', 31, 760, 0, 33);
INSERT INTO `create_plan` VALUES (3668, 103, 'uni004_fac041', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3669, 103, 'uni004_fac034', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3670, 103, 'uni004_fac033', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3671, 103, 'uni004_fac032', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3672, 103, 'uni004_fac031', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3673, 103, 'uni004_fac030', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3674, 103, 'uni004_fac029', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3675, 103, 'uni004_fac028', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3676, 103, 'uni004_fac027', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3677, 103, 'uni004_fac026', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3678, 103, 'uni004_fac025', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3679, 103, 'uni004_fac024', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3680, 103, 'uni004_fac023', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3681, 103, 'uni004_fac022', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3682, 103, 'uni004_fac021', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3683, 103, 'uni004_fac020', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3684, 103, 'uni004_fac019', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3685, 103, 'uni004_fac015', 31, 670, 0, 33);
INSERT INTO `create_plan` VALUES (3686, 103, 'uni004_fac012', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3687, 103, 'uni004_fac010', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3688, 103, 'uni004_fac007', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3689, 103, 'uni004_fac006', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3690, 103, 'uni004_fac005', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3691, 103, 'uni004_fac004', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3692, 103, 'uni004_fac003', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3693, 103, 'uni004_fac002', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3694, 103, 'uni004_fac001', 31, 740, 0, 33);
INSERT INTO `create_plan` VALUES (3695, 103, 'uni003_Course037', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3696, 103, 'uni003_course032', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3697, 103, 'uni003_course031', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3698, 103, 'uni003_course030', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3699, 103, 'uni003_course029', 31, 430, 0, 33);
INSERT INTO `create_plan` VALUES (3700, 103, 'uni003_course028', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3701, 103, 'uni003_Course036', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3702, 103, 'uni003_course026', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3703, 103, 'uni003_course025', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3704, 103, 'uni003_course024', 31, 640, 0, 33);
INSERT INTO `create_plan` VALUES (3705, 103, 'uni003_course023', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3706, 103, 'uni003_course022', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3707, 103, 'uni003_course021', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3708, 103, 'uni003_course020', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3709, 103, 'uni003_course019', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3710, 103, 'uni003_Course035', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3711, 103, 'uni003_Course034', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3712, 103, 'uni003_Course033', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3713, 103, 'uni003_course018', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3714, 103, 'uni003_course017', 31, 210, 0, 33);
INSERT INTO `create_plan` VALUES (3715, 103, 'uni003_course016', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3716, 103, 'uni003_course015', 31, 10, 0, 33);
INSERT INTO `create_plan` VALUES (3717, 103, 'uni003_course014', 31, 340, 0, 33);
INSERT INTO `create_plan` VALUES (3718, 103, 'uni003_course013', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3719, 103, 'uni003_course012', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3720, 103, 'uni003_course011', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3721, 103, 'uni003_course010', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3722, 103, 'uni003_course009', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3723, 103, 'uni003_course008', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3724, 103, 'uni003_course007', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3725, 103, 'uni003_course006', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3726, 103, 'uni003_course005', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3727, 103, 'uni003_course004', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3728, 103, 'uni003_course003', 31, 20, 0, 33);
INSERT INTO `create_plan` VALUES (3729, 103, 'uni003_course002', 31, 30, 0, 33);
INSERT INTO `create_plan` VALUES (3730, 103, 'uni003_course001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3731, 103, 'uni002_Course026', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3732, 103, 'uni002_Course025', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3733, 103, 'uni002_Course024', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3734, 103, 'uni002_Course023', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3735, 103, 'uni002_Course022', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3736, 103, 'uni002_Course039', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3737, 103, 'uni002_Course038', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3738, 103, 'uni002_Course033', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3739, 103, 'uni002_Course032', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3740, 103, 'uni002_Course021', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3741, 103, 'uni002_Course020', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3742, 103, 'uni002_Course019', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3743, 103, 'uni002_Course043', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3744, 103, 'uni002_Course042', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3745, 103, 'uni002_Course031', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3746, 103, 'uni002_Course030', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3747, 103, 'uni002_Course018', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3748, 103, 'uni002_Course017', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3749, 103, 'uni002_Course041', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3750, 103, 'uni002_Course040', 31, 670, 0, 33);
INSERT INTO `create_plan` VALUES (3751, 103, 'uni002_Course036', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3752, 103, 'uni002_Course035', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3753, 103, 'uni002_Course034', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3754, 103, 'uni002_Course016', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3755, 103, 'uni002_Course015', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3756, 103, 'uni002_Course014', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3757, 103, 'uni002_Course013', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3758, 103, 'uni002_Course012', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3759, 103, 'uni002_Course037', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3760, 103, 'uni002_Course029', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3761, 103, 'uni002_Course028', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3762, 103, 'uni002_Course027', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3763, 103, 'uni002_Course011', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3764, 103, 'uni002_Course010', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3765, 103, 'uni002_Course009', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3766, 103, 'uni002_Course008', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3767, 103, 'uni002_Course007', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3768, 103, 'uni002_Course006', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3769, 103, 'uni002_Course005', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3770, 103, 'uni002_Course004', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3771, 103, 'uni002_Course003', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3772, 103, 'uni002_Course002', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3773, 103, 'uni002_Course001', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3774, 103, 'uni001_cours043', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3775, 103, 'uni001_doc030', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3776, 103, 'uni001_cours106', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3777, 103, 'uni001_cours105', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3778, 103, 'uni001_cours104', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3779, 103, 'uni001_cours103', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3780, 103, 'uni001_cours102', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3781, 103, 'uni001_cours101', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3782, 103, 'uni001_doc029', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3783, 103, 'uni001_doc028', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3784, 103, 'uni001_cours100', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3785, 103, 'uni001_cours099', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3786, 103, 'uni001_cours098', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3787, 103, 'uni001_cours097', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3788, 103, 'uni001_cours096', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3789, 103, 'uni001_cours095', 31, 5670, 0, 33);
INSERT INTO `create_plan` VALUES (3790, 103, 'uni001_cours094', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3791, 103, 'uni001_cours093', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3792, 103, 'uni001_cours092', 31, 560, 0, 33);
INSERT INTO `create_plan` VALUES (3793, 103, 'uni001_cours091', 31, 90, 0, 33);
INSERT INTO `create_plan` VALUES (3794, 103, 'uni001_cours090', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3795, 103, 'uni001_cours089', 31, 760, 0, 33);
INSERT INTO `create_plan` VALUES (3796, 103, 'uni001_doc027', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3797, 103, 'uni001_cours088', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3798, 103, 'uni001_cours087', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3799, 103, 'uni001_cours086', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3800, 103, 'uni001_cours085', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3801, 103, 'uni001_cours084', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3802, 103, 'uni001_cours083', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3803, 103, 'uni001_doc026', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3804, 103, 'uni001_doc025', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3805, 103, 'uni001_cours082', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3806, 103, 'uni001_cours081', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3807, 103, 'uni001_cours080', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3808, 103, 'uni001_cours079', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3809, 103, 'uni001_cours078', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3810, 103, 'uni001_cours077', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3811, 103, 'uni001_doc024', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3812, 103, 'uni001_doc023', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3813, 103, 'uni001_doc022', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3814, 103, 'uni001_doc021', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3815, 103, 'uni001_doc020', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3816, 103, 'uni001_doc019', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3817, 103, 'uni001_doc018', 31, 640, 0, 33);
INSERT INTO `create_plan` VALUES (3818, 103, 'uni001_doc017', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3819, 103, 'uni001_cours076', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3820, 103, 'uni001_cours075', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3821, 103, 'uni001_cours074', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3822, 103, 'uni001_cours073', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3823, 103, 'uni001_cours072', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3824, 103, 'uni001_cours071', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3825, 103, 'uni001_cours070', 31, 40, 0, 33);
INSERT INTO `create_plan` VALUES (3826, 103, 'uni001_cours069', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3827, 103, 'uni001_cours068', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3828, 103, 'uni001_cours067', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3829, 103, 'uni001_cours066', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3830, 103, 'uni001_cours065', 31, 750, 0, 33);
INSERT INTO `create_plan` VALUES (3831, 103, 'uni001_cours064', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3832, 103, 'uni001_cours063', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3833, 103, 'uni001_cours062', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3834, 103, 'uni001_cours061', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3835, 103, 'uni001_cours060', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3836, 103, 'uni001_cours058', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3837, 103, 'uni001_cours057', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3838, 103, 'uni001_cours056', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3839, 103, 'uni001_cours055', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3840, 103, 'uni001_cours054', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3841, 103, 'uni001_cours053', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3842, 103, 'uni001_cours052', 31, 550, 0, 33);
INSERT INTO `create_plan` VALUES (3843, 103, 'uni001_cours051', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3844, 103, 'uni001_cours050', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3845, 103, 'uni001_cours049', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3846, 103, 'uni001_doc016', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3847, 103, 'uni001_doc015', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3848, 103, 'uni001_doc014', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3849, 103, 'uni001_doc013', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3850, 103, 'uni001_cours048', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3851, 103, 'uni001_cours047', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3852, 103, 'uni001_cours046', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3853, 103, 'uni001_cours045', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3854, 103, 'uni001_cours044', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3855, 103, 'uni001_doc012', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3856, 103, 'uni001_doc011', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3857, 103, 'uni001_doc010', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3858, 103, 'uni001_doc009', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3859, 103, 'uni001_cours041', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3860, 103, 'uni001_cours040', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3861, 103, 'uni001_cours039', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3862, 103, 'uni001_cours038', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3863, 103, 'uni001_cours037', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3864, 103, 'uni001_cours036', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3865, 103, 'uni001_cours035', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3866, 103, 'uni001_cours034', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3867, 103, 'uni001_cours033', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3868, 103, 'uni001_cours032', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3869, 103, 'uni001_doc008', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3870, 103, 'uni001_doc007', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3871, 103, 'uni001_doc006', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3872, 103, 'uni001_cours031', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3873, 103, 'uni001_cours030', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3874, 103, 'uni001_cours029', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3875, 103, 'uni001_cours028', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3876, 103, 'uni001_cours027', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3877, 103, 'uni001_cours026', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3878, 103, 'uni001_cours025', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3879, 103, 'uni001_cours024', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3880, 103, 'uni001_cours023', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3881, 103, 'uni001_doc005', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3882, 103, 'uni001_cours022', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3883, 103, 'uni001_cours021', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3884, 103, 'uni001_cours020', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3885, 103, 'uni001_cours019', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3886, 103, 'uni001_cours018', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3887, 103, 'uni001_cours017', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3888, 103, 'uni001_cours016', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3889, 103, 'uni001_cours015', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3890, 103, 'uni001_cours014', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3891, 103, 'uni001_cours013', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3892, 103, 'uni001_cours012', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3893, 103, 'uni001_doc004', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3894, 103, 'uni001_doc003', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3895, 103, 'uni001_doc002', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3896, 103, 'uni001_doc001', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3897, 103, 'uni001_cours011', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3898, 103, 'uni001_cours010', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3899, 103, 'uni001_cours009', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3900, 103, 'uni001_cours008', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3901, 103, 'uni001_cours007', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3902, 103, 'uni001_cours006', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3903, 103, 'uni001_cours005', 31, 60, 0, 33);
INSERT INTO `create_plan` VALUES (3904, 103, 'uni001_cours004', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3905, 103, 'uni001_cours003', 31, 80, 0, 33);
INSERT INTO `create_plan` VALUES (3906, 103, 'uni001_cours002', 31, 50, 0, 33);
INSERT INTO `create_plan` VALUES (3907, 103, 'uni001_cours001', 31, 70, 0, 33);
INSERT INTO `create_plan` VALUES (3908, 94, 'uni070_Course002', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3909, 94, 'uni070_Course001', 32, 10, 0, 37);
INSERT INTO `create_plan` VALUES (3910, 96, 'uni065_Course004', 32, 4, 0, 37);
INSERT INTO `create_plan` VALUES (3911, 96, 'uni065_Course003', 32, 3, 0, 37);
INSERT INTO `create_plan` VALUES (3912, 96, 'uni065_Course002', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3913, 96, 'uni065_Course001', 32, 2, 0, 37);
INSERT INTO `create_plan` VALUES (3914, 97, 'uni064_Course005', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3915, 97, 'uni064_Course004', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3916, 97, 'uni064_Course003', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3917, 97, 'uni064_Course002', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (3918, 97, 'uni064_Course001', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3919, 97, 'uni063_Course005', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (3920, 97, 'uni063_Course004', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3921, 97, 'uni063_Course003', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3922, 97, 'uni063_Course002', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3923, 97, 'uni063_Course001', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3924, 97, 'uni062_Course003', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3925, 97, 'uni062_Course002', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3926, 97, 'uni062_Course001', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3931, 98, 'uni061_Course004', 32, 32, 0, 37);
INSERT INTO `create_plan` VALUES (3932, 98, 'uni061_Course003', 32, 32, 0, 37);
INSERT INTO `create_plan` VALUES (3933, 98, 'uni061_Course002', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3934, 98, 'uni061_Course001', 32, 232, 0, 37);
INSERT INTO `create_plan` VALUES (3935, 98, 'uni060_Course008', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3936, 98, 'uni060_Course007', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3937, 98, 'uni060_Course006', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (3938, 98, 'uni060_Course005', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3939, 98, 'uni060_Course004', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (3940, 98, 'uni060_Course003', 32, 450, 0, 37);
INSERT INTO `create_plan` VALUES (3941, 98, 'uni060_Course002', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (3942, 98, 'uni060_Course001', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3943, 98, 'uni059_Course008', 32, 24, 0, 37);
INSERT INTO `create_plan` VALUES (3944, 98, 'uni059_Course007', 32, 3, 0, 37);
INSERT INTO `create_plan` VALUES (3945, 98, 'uni059_Course006', 32, 234, 0, 37);
INSERT INTO `create_plan` VALUES (3946, 98, 'uni059_Course005', 32, 234, 0, 37);
INSERT INTO `create_plan` VALUES (3947, 98, 'uni059_Course004', 32, 23, 0, 37);
INSERT INTO `create_plan` VALUES (3948, 98, 'uni059_Course003', 32, 5, 0, 37);
INSERT INTO `create_plan` VALUES (3949, 98, 'uni059_Course002', 32, 3, 0, 37);
INSERT INTO `create_plan` VALUES (3950, 98, 'uni059_Course001', 32, 34, 0, 37);
INSERT INTO `create_plan` VALUES (3951, 98, 'uni058_Course008', 32, 7, 0, 37);
INSERT INTO `create_plan` VALUES (3952, 98, 'uni058_Course007', 32, 8, 0, 37);
INSERT INTO `create_plan` VALUES (3953, 98, 'uni058_Course006', 32, 67, 0, 37);
INSERT INTO `create_plan` VALUES (3954, 98, 'uni058_Course005', 32, 87, 0, 37);
INSERT INTO `create_plan` VALUES (3955, 98, 'uni058_Course004', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (3956, 98, 'uni058_Course003', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (3957, 98, 'uni058_Course002', 32, 54, 0, 37);
INSERT INTO `create_plan` VALUES (3958, 98, 'uni058_Course001', 32, 21, 0, 37);
INSERT INTO `create_plan` VALUES (3959, 98, 'uni057_Course003', 32, 34, 0, 37);
INSERT INTO `create_plan` VALUES (3960, 98, 'uni057_Course002', 32, 123, 0, 37);
INSERT INTO `create_plan` VALUES (3961, 98, 'uni057_Course001', 32, 34, 0, 37);
INSERT INTO `create_plan` VALUES (3962, 100, 'uni042_course021', 32, 2, 0, 37);
INSERT INTO `create_plan` VALUES (3963, 100, 'uni042_course017', 32, 1, 0, 37);
INSERT INTO `create_plan` VALUES (3964, 100, 'uni042_course012', 32, 32, 0, 37);
INSERT INTO `create_plan` VALUES (3965, 100, 'uni042_course011', 32, 31, 0, 37);
INSERT INTO `create_plan` VALUES (3966, 100, 'uni042_course010', 32, 31, 0, 37);
INSERT INTO `create_plan` VALUES (3967, 100, 'uni042_course009', 32, 21, 0, 37);
INSERT INTO `create_plan` VALUES (3968, 100, 'uni042_course008', 32, 32, 0, 37);
INSERT INTO `create_plan` VALUES (3969, 100, 'uni042_course007', 32, 2, 0, 37);
INSERT INTO `create_plan` VALUES (3970, 100, 'uni042_course006', 32, 12, 0, 37);
INSERT INTO `create_plan` VALUES (3971, 100, 'uni042_course005', 32, 3, 0, 37);
INSERT INTO `create_plan` VALUES (3972, 100, 'uni042_course004', 32, 3, 0, 37);
INSERT INTO `create_plan` VALUES (3973, 100, 'uni042_course003', 32, 2, 0, 37);
INSERT INTO `create_plan` VALUES (3974, 100, 'uni042_course002', 32, 321, 0, 37);
INSERT INTO `create_plan` VALUES (3975, 100, 'uni042_course001', 32, 31, 0, 37);
INSERT INTO `create_plan` VALUES (4006, 103, 'uni004_fac037', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4007, 103, 'uni004_fac036', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4008, 103, 'uni004_fac035', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4009, 103, 'uni004_fac041', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4010, 103, 'uni004_fac034', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4011, 103, 'uni004_fac033', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4012, 103, 'uni004_fac032', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4013, 103, 'uni004_fac031', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4014, 103, 'uni004_fac030', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4015, 103, 'uni004_fac029', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4016, 103, 'uni004_fac028', 32, 45, 0, 37);
INSERT INTO `create_plan` VALUES (4017, 103, 'uni004_fac027', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4018, 103, 'uni004_fac026', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4019, 103, 'uni004_fac025', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4020, 103, 'uni004_fac024', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4021, 103, 'uni004_fac023', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4022, 103, 'uni004_fac022', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4023, 103, 'uni004_fac021', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4024, 103, 'uni004_fac020', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4025, 103, 'uni004_fac019', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4026, 103, 'uni004_fac018', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4027, 103, 'uni004_fac017', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4028, 103, 'uni004_fac016', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4029, 103, 'uni004_fac015', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4030, 103, 'uni004_fac040', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4031, 103, 'uni004_fac039', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4032, 103, 'uni004_fac038', 32, 560, 0, 37);
INSERT INTO `create_plan` VALUES (4033, 103, 'uni004_fac014', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4034, 103, 'uni004_fac013', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4035, 103, 'uni004_fac012', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4036, 103, 'uni004_fac011', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4037, 103, 'uni004_fac010', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4038, 103, 'uni004_fac009', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4039, 103, 'uni004_fac008', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4040, 103, 'uni004_fac007', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4041, 103, 'uni004_fac006', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4042, 103, 'uni004_fac005', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4043, 103, 'uni004_fac004', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4044, 103, 'uni004_fac003', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4045, 103, 'uni004_fac002', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4046, 103, 'uni004_fac001', 32, 70, 0, 37);
INSERT INTO `create_plan` VALUES (4047, 103, 'uni003_Course037', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4048, 103, 'uni003_course032', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4049, 103, 'uni003_course031', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4050, 103, 'uni003_course030', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4051, 103, 'uni003_course029', 32, 340, 0, 37);
INSERT INTO `create_plan` VALUES (4052, 103, 'uni003_course028', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4053, 103, 'uni003_Course036', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4054, 103, 'uni003_course026', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4055, 103, 'uni003_course025', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4056, 103, 'uni003_course024', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4057, 103, 'uni003_course023', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4058, 103, 'uni003_course022', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4059, 103, 'uni003_course021', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4060, 103, 'uni003_course020', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4061, 103, 'uni003_course019', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4062, 103, 'uni003_Course035', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4063, 103, 'uni003_Course034', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4064, 103, 'uni003_Course033', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4065, 103, 'uni003_course018', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4066, 103, 'uni003_course017', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (4067, 103, 'uni003_course016', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4068, 103, 'uni003_course015', 32, 10, 0, 37);
INSERT INTO `create_plan` VALUES (4069, 103, 'uni003_course014', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4070, 103, 'uni003_course013', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4071, 103, 'uni003_course012', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4072, 103, 'uni003_course011', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4073, 103, 'uni003_course010', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4074, 103, 'uni003_course009', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4075, 103, 'uni003_course008', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4076, 103, 'uni003_course007', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4077, 103, 'uni003_course006', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4078, 103, 'uni003_course005', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4079, 103, 'uni003_course004', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4080, 103, 'uni003_course003', 32, 340, 0, 37);
INSERT INTO `create_plan` VALUES (4081, 103, 'uni003_course002', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4082, 103, 'uni003_course001', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4083, 103, 'uni002_Course026', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4084, 103, 'uni002_Course025', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4085, 103, 'uni002_Course024', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4086, 103, 'uni002_Course023', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4087, 103, 'uni002_Course022', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4088, 103, 'uni002_Course039', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4089, 103, 'uni002_Course038', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4090, 103, 'uni002_Course033', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4091, 103, 'uni002_Course032', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4092, 103, 'uni002_Course021', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4093, 103, 'uni002_Course020', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4094, 103, 'uni002_Course019', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4095, 103, 'uni002_Course043', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4096, 103, 'uni002_Course042', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4097, 103, 'uni002_Course031', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4098, 103, 'uni002_Course030', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4099, 103, 'uni002_Course018', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4100, 103, 'uni002_Course017', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4101, 103, 'uni002_Course041', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4102, 103, 'uni002_Course040', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4103, 103, 'uni002_Course036', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4104, 103, 'uni002_Course035', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4105, 103, 'uni002_Course034', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4106, 103, 'uni002_Course016', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4107, 103, 'uni002_Course015', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4108, 103, 'uni002_Course014', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4109, 103, 'uni002_Course013', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4110, 103, 'uni002_Course012', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4111, 103, 'uni002_Course037', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4112, 103, 'uni002_Course029', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4113, 103, 'uni002_Course028', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4114, 103, 'uni002_Course027', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4115, 103, 'uni002_Course011', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4116, 103, 'uni002_Course010', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4117, 103, 'uni002_Course009', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4118, 103, 'uni002_Course008', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4119, 103, 'uni002_Course007', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4120, 103, 'uni002_Course006', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4121, 103, 'uni002_Course005', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4122, 103, 'uni002_Course004', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4123, 103, 'uni002_Course003', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4124, 103, 'uni002_Course002', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4125, 103, 'uni002_Course001', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4126, 103, 'uni001_cours043', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4127, 103, 'uni001_cours042', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4128, 103, 'uni001_doc030', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4129, 103, 'uni001_cours106', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4130, 103, 'uni001_cours105', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4131, 103, 'uni001_cours104', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4132, 103, 'uni001_cours103', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4133, 103, 'uni001_cours102', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4134, 103, 'uni001_cours101', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4135, 103, 'uni001_doc029', 32, 650, 0, 37);
INSERT INTO `create_plan` VALUES (4136, 103, 'uni001_doc028', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4137, 103, 'uni001_cours100', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4138, 103, 'uni001_cours099', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4139, 103, 'uni001_cours098', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4140, 103, 'uni001_cours097', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4141, 103, 'uni001_cours096', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4142, 103, 'uni001_cours095', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4143, 103, 'uni001_cours094', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4144, 103, 'uni001_cours093', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4145, 103, 'uni001_cours092', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4146, 103, 'uni001_cours091', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4147, 103, 'uni001_cours090', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4148, 103, 'uni001_cours089', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4149, 103, 'uni001_doc027', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4150, 103, 'uni001_cours088', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4151, 103, 'uni001_cours087', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4152, 103, 'uni001_cours086', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4153, 103, 'uni001_cours085', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4154, 103, 'uni001_cours084', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4155, 103, 'uni001_cours083', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4156, 103, 'uni001_doc026', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4157, 103, 'uni001_doc025', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4158, 103, 'uni001_cours082', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4159, 103, 'uni001_cours081', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4160, 103, 'uni001_cours080', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4161, 103, 'uni001_cours079', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4162, 103, 'uni001_cours078', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4163, 103, 'uni001_cours077', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4164, 103, 'uni001_doc020', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4165, 103, 'uni001_cours076', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4166, 103, 'uni001_cours075', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4167, 103, 'uni001_cours073', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4168, 103, 'uni001_cours068', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4169, 103, 'uni001_cours067', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4170, 103, 'uni001_cours066', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4171, 103, 'uni001_cours065', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4172, 103, 'uni001_cours064', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4173, 103, 'uni001_cours062', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4174, 103, 'uni001_cours061', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4175, 103, 'uni001_cours060', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4176, 103, 'uni001_cours058', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4177, 103, 'uni001_cours057', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4178, 103, 'uni001_cours056', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4179, 103, 'uni001_cours055', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4180, 103, 'uni001_cours054', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4181, 103, 'uni001_cours053', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4182, 103, 'uni001_cours052', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4183, 103, 'uni001_cours051', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4184, 103, 'uni001_cours050', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4185, 103, 'uni001_cours049', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4186, 103, 'uni001_doc016', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4187, 103, 'uni001_doc015', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4188, 103, 'uni001_doc014', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4189, 103, 'uni001_doc013', 32, 540, 0, 37);
INSERT INTO `create_plan` VALUES (4190, 103, 'uni001_cours048', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4191, 103, 'uni001_cours047', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4192, 103, 'uni001_cours046', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4193, 103, 'uni001_cours045', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4194, 103, 'uni001_cours044', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4195, 103, 'uni001_doc012', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4196, 103, 'uni001_doc011', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4197, 103, 'uni001_doc010', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4198, 103, 'uni001_doc009', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4199, 103, 'uni001_cours041', 32, 20, 0, 37);
INSERT INTO `create_plan` VALUES (4200, 103, 'uni001_cours040', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4201, 103, 'uni001_cours039', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4202, 103, 'uni001_cours038', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4203, 103, 'uni001_cours037', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4204, 103, 'uni001_cours036', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4205, 103, 'uni001_cours035', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4206, 103, 'uni001_cours034', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4207, 103, 'uni001_cours033', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4208, 103, 'uni001_cours032', 32, 30, 0, 37);
INSERT INTO `create_plan` VALUES (4209, 103, 'uni001_doc008', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4210, 103, 'uni001_doc007', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4211, 103, 'uni001_doc006', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4212, 103, 'uni001_cours031', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4213, 103, 'uni001_cours030', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4214, 103, 'uni001_cours029', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4215, 103, 'uni001_cours028', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4216, 103, 'uni001_cours027', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4217, 103, 'uni001_cours026', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4218, 103, 'uni001_cours025', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4219, 103, 'uni001_cours024', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4220, 103, 'uni001_cours023', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4221, 103, 'uni001_cours022', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4222, 103, 'uni001_cours021', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4223, 103, 'uni001_cours020', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4224, 103, 'uni001_cours019', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4225, 103, 'uni001_cours018', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4226, 103, 'uni001_cours017', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4227, 103, 'uni001_cours016', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4228, 103, 'uni001_cours015', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4229, 103, 'uni001_cours014', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4230, 103, 'uni001_cours012', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4231, 103, 'uni001_cours011', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4232, 103, 'uni001_cours010', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4233, 103, 'uni001_cours009', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4234, 103, 'uni001_cours008', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4235, 103, 'uni001_cours007', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4236, 103, 'uni001_cours006', 32, 60, 0, 37);
INSERT INTO `create_plan` VALUES (4237, 103, 'uni001_cours005', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4238, 103, 'uni001_cours004', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4239, 103, 'uni001_cours003', 32, 40, 0, 37);
INSERT INTO `create_plan` VALUES (4240, 103, 'uni001_cours001', 32, 50, 0, 37);
INSERT INTO `create_plan` VALUES (4241, 103, 'uni001_cours001', 1, 6, 10, 44);
INSERT INTO `create_plan` VALUES (4242, 94, 'uni070_Course002', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4243, 94, 'uni070_Course001', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4244, 96, 'uni065_Course004', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4245, 96, 'uni065_Course003', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4246, 96, 'uni065_Course002', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4247, 96, 'uni065_Course001', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4248, 97, 'uni064_Course005', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4249, 97, 'uni064_Course004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4250, 97, 'uni064_Course003', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4251, 97, 'uni064_Course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4252, 97, 'uni064_Course001', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4253, 97, 'uni063_Course005', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4254, 97, 'uni063_Course004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4255, 97, 'uni063_Course003', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4256, 97, 'uni063_Course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4257, 97, 'uni063_Course001', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4258, 97, 'uni062_Course003', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4259, 97, 'uni062_Course002', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4260, 97, 'uni062_Course001', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4261, 98, 'uni061_Course004', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4262, 98, 'uni061_Course003', 33, 760, 0, 38);
INSERT INTO `create_plan` VALUES (4263, 98, 'uni061_Course002', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4264, 98, 'uni061_Course001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4265, 98, 'uni060_Course008', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4266, 98, 'uni060_Course007', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4267, 98, 'uni060_Course006', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4268, 98, 'uni060_Course005', 33, 90, 0, 38);
INSERT INTO `create_plan` VALUES (4269, 98, 'uni060_Course004', 33, 80, 0, 38);
INSERT INTO `create_plan` VALUES (4270, 98, 'uni060_Course003', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4271, 98, 'uni060_Course002', 33, 80, 0, 38);
INSERT INTO `create_plan` VALUES (4272, 98, 'uni060_Course001', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4273, 98, 'uni059_Course008', 33, 760, 0, 38);
INSERT INTO `create_plan` VALUES (4274, 98, 'uni059_Course007', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4275, 98, 'uni059_Course006', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4276, 98, 'uni059_Course005', 33, 560, 0, 38);
INSERT INTO `create_plan` VALUES (4277, 98, 'uni059_Course004', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4278, 98, 'uni059_Course003', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4279, 98, 'uni059_Course002', 33, 560, 0, 38);
INSERT INTO `create_plan` VALUES (4280, 98, 'uni059_Course001', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4281, 98, 'uni058_Course008', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4282, 98, 'uni058_Course007', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4283, 98, 'uni058_Course006', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4284, 98, 'uni058_Course005', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4285, 98, 'uni058_Course004', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4286, 98, 'uni058_Course003', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4287, 98, 'uni058_Course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4288, 98, 'uni058_Course001', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4289, 98, 'uni057_Course003', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4290, 98, 'uni057_Course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4291, 98, 'uni057_Course001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4292, 100, 'uni051_Course002', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4293, 100, 'uni051_Course001', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4294, 100, 'uni050_Course003', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4295, 100, 'uni050_Course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4296, 100, 'uni050_Course001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4297, 100, 'uni049_Course001', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4298, 100, 'uni048_course003', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4299, 100, 'uni048_course002', 33, 340, 0, 38);
INSERT INTO `create_plan` VALUES (4300, 100, 'uni048_course001', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4301, 100, 'uni047_course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4302, 100, 'uni047_course001', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4303, 100, 'uni046_course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4304, 100, 'uni046_course001', 33, 430, 0, 38);
INSERT INTO `create_plan` VALUES (4305, 100, 'uni045_course003', 33, 8980, 0, 38);
INSERT INTO `create_plan` VALUES (4306, 100, 'uni045_course002', 33, 890, 0, 38);
INSERT INTO `create_plan` VALUES (4307, 100, 'uni045_course001', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4308, 100, 'uni044_course004', 33, 890, 0, 38);
INSERT INTO `create_plan` VALUES (4309, 100, 'uni044_course003', 33, 780, 0, 38);
INSERT INTO `create_plan` VALUES (4310, 100, 'uni044_course002', 33, 780, 0, 38);
INSERT INTO `create_plan` VALUES (4311, 100, 'uni044_course001', 33, 650, 0, 38);
INSERT INTO `create_plan` VALUES (4312, 100, 'uni043_course003', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4313, 100, 'uni043_course002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4314, 100, 'uni043_course001', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4315, 100, 'uni042_course021', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4316, 100, 'uni042_course020', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4317, 100, 'uni042_course019', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4318, 100, 'uni042_course018', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4319, 100, 'uni042_course017', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4320, 100, 'uni042_course016', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4321, 100, 'uni042_course015', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4322, 100, 'uni042_course014', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4323, 100, 'uni042_course013', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4324, 100, 'uni042_course012', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4325, 100, 'uni042_course011', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4326, 100, 'uni042_course010', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4327, 100, 'uni042_course009', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4328, 100, 'uni042_course008', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4329, 100, 'uni042_course007', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4330, 100, 'uni042_course006', 33, 640, 0, 38);
INSERT INTO `create_plan` VALUES (4331, 100, 'uni042_course005', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4332, 100, 'uni042_course004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4333, 100, 'uni042_course003', 33, 450, 0, 38);
INSERT INTO `create_plan` VALUES (4334, 100, 'uni042_course002', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4335, 100, 'uni042_course001', 33, 540, 0, 38);
INSERT INTO `create_plan` VALUES (4336, 103, 'uni004_fac037', 33, 80, 0, 38);
INSERT INTO `create_plan` VALUES (4337, 103, 'uni004_fac036', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4338, 103, 'uni004_fac035', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4339, 103, 'uni004_fac041', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4340, 103, 'uni004_fac034', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4341, 103, 'uni004_fac033', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4342, 103, 'uni004_fac032', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4343, 103, 'uni004_fac031', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4344, 103, 'uni004_fac030', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4345, 103, 'uni004_fac029', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4346, 103, 'uni004_fac028', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4347, 103, 'uni004_fac027', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4348, 103, 'uni004_fac026', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4349, 103, 'uni004_fac025', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4350, 103, 'uni004_fac024', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4351, 103, 'uni004_fac023', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4352, 103, 'uni004_fac022', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4353, 103, 'uni004_fac021', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4354, 103, 'uni004_fac020', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4355, 103, 'uni004_fac019', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4356, 103, 'uni004_fac018', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4357, 103, 'uni004_fac017', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4358, 103, 'uni004_fac016', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4359, 103, 'uni004_fac015', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4360, 103, 'uni004_fac040', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4361, 103, 'uni004_fac039', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4362, 103, 'uni004_fac038', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4363, 103, 'uni004_fac014', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4364, 103, 'uni004_fac013', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4365, 103, 'uni004_fac012', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4366, 103, 'uni004_fac011', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4367, 103, 'uni004_fac010', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4368, 103, 'uni004_fac009', 33, 540, 0, 38);
INSERT INTO `create_plan` VALUES (4369, 103, 'uni004_fac008', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4370, 103, 'uni004_fac007', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4371, 103, 'uni004_fac006', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4372, 103, 'uni004_fac005', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4373, 103, 'uni004_fac004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4374, 103, 'uni004_fac003', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4375, 103, 'uni004_fac002', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4376, 103, 'uni004_fac001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4377, 103, 'uni003_Course037', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4378, 103, 'uni003_course032', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4379, 103, 'uni003_course031', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4380, 103, 'uni003_course030', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4381, 103, 'uni003_course029', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4382, 103, 'uni003_course028', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4383, 103, 'uni003_Course036', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4384, 103, 'uni003_course026', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4385, 103, 'uni003_course025', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4386, 103, 'uni003_course024', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4387, 103, 'uni003_course023', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4388, 103, 'uni003_course022', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4389, 103, 'uni003_course021', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4390, 103, 'uni003_course020', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4391, 103, 'uni003_course019', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4392, 103, 'uni003_Course035', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4393, 103, 'uni003_Course034', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4394, 103, 'uni003_Course033', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4395, 103, 'uni003_course018', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4396, 103, 'uni003_course017', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4397, 103, 'uni003_course016', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4398, 103, 'uni003_course015', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4399, 103, 'uni003_course014', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4400, 103, 'uni003_course013', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4401, 103, 'uni003_course012', 33, 870, 0, 38);
INSERT INTO `create_plan` VALUES (4402, 103, 'uni003_course011', 33, 980, 0, 38);
INSERT INTO `create_plan` VALUES (4403, 103, 'uni003_course010', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4404, 103, 'uni003_course009', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4405, 103, 'uni003_course008', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4406, 103, 'uni003_course007', 33, 90, 0, 38);
INSERT INTO `create_plan` VALUES (4407, 103, 'uni003_course006', 33, 90, 0, 38);
INSERT INTO `create_plan` VALUES (4408, 103, 'uni003_course005', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4409, 103, 'uni003_course004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4410, 103, 'uni003_course003', 33, 890, 0, 38);
INSERT INTO `create_plan` VALUES (4411, 103, 'uni003_course002', 33, 890, 0, 38);
INSERT INTO `create_plan` VALUES (4412, 103, 'uni003_course001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4413, 103, 'uni002_Course026', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4414, 103, 'uni002_Course025', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4415, 103, 'uni002_Course024', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4416, 103, 'uni002_Course023', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4417, 103, 'uni002_Course022', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4418, 103, 'uni002_Course039', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4419, 103, 'uni002_Course038', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4420, 103, 'uni002_Course033', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4421, 103, 'uni002_Course032', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4422, 103, 'uni002_Course021', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4423, 103, 'uni002_Course020', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4424, 103, 'uni002_Course019', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4425, 103, 'uni002_Course043', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4426, 103, 'uni002_Course042', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4427, 103, 'uni002_Course031', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4428, 103, 'uni002_Course030', 33, 540, 0, 38);
INSERT INTO `create_plan` VALUES (4429, 103, 'uni002_Course018', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4430, 103, 'uni002_Course017', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4431, 103, 'uni002_Course041', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4432, 103, 'uni002_Course040', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4433, 103, 'uni002_Course036', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4434, 103, 'uni002_Course035', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4435, 103, 'uni002_Course034', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4436, 103, 'uni002_Course016', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4437, 103, 'uni002_Course015', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4438, 103, 'uni002_Course014', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4439, 103, 'uni002_Course013', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4440, 103, 'uni002_Course012', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4441, 103, 'uni002_Course037', 33, 6450, 0, 38);
INSERT INTO `create_plan` VALUES (4442, 103, 'uni002_Course029', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4443, 103, 'uni002_Course028', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4444, 103, 'uni002_Course027', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4445, 103, 'uni002_Course011', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4446, 103, 'uni002_Course010', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4447, 103, 'uni002_Course009', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4448, 103, 'uni002_Course008', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4449, 103, 'uni002_Course007', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4450, 103, 'uni002_Course006', 33, 340, 0, 38);
INSERT INTO `create_plan` VALUES (4451, 103, 'uni002_Course005', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4452, 103, 'uni002_Course004', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4453, 103, 'uni002_Course003', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4454, 103, 'uni002_Course002', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4455, 103, 'uni002_Course001', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4456, 103, 'uni001_cours043', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4457, 103, 'uni001_cours042', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4458, 103, 'uni001_doc030', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4459, 103, 'uni001_cours106', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4460, 103, 'uni001_cours105', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4461, 103, 'uni001_cours104', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4462, 103, 'uni001_cours103', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4463, 103, 'uni001_cours102', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4464, 103, 'uni001_cours101', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4465, 103, 'uni001_doc029', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4466, 103, 'uni001_doc028', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4467, 103, 'uni001_cours100', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4468, 103, 'uni001_cours099', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4469, 103, 'uni001_cours098', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4470, 103, 'uni001_cours097', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4471, 103, 'uni001_cours096', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4472, 103, 'uni001_cours095', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4473, 103, 'uni001_cours094', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4474, 103, 'uni001_cours093', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4475, 103, 'uni001_cours092', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4476, 103, 'uni001_cours091', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4477, 103, 'uni001_cours090', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4478, 103, 'uni001_cours089', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4479, 103, 'uni001_doc027', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4480, 103, 'uni001_cours088', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4481, 103, 'uni001_cours087', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4482, 103, 'uni001_cours086', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4483, 103, 'uni001_cours085', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4484, 103, 'uni001_cours084', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4485, 103, 'uni001_cours083', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4486, 103, 'uni001_doc026', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4487, 103, 'uni001_doc025', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4488, 103, 'uni001_cours082', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4489, 103, 'uni001_cours081', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4490, 103, 'uni001_cours080', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4491, 103, 'uni001_cours079', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4492, 103, 'uni001_cours078', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4493, 103, 'uni001_cours077', 33, 650, 0, 38);
INSERT INTO `create_plan` VALUES (4494, 103, 'uni001_doc024', 33, 640, 0, 38);
INSERT INTO `create_plan` VALUES (4495, 103, 'uni001_doc023', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4496, 103, 'uni001_doc022', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4497, 103, 'uni001_doc021', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4498, 103, 'uni001_doc020', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4499, 103, 'uni001_doc019', 33, 450, 0, 38);
INSERT INTO `create_plan` VALUES (4500, 103, 'uni001_doc018', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4501, 103, 'uni001_doc017', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4502, 103, 'uni001_cours076', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4503, 103, 'uni001_cours075', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4504, 103, 'uni001_cours074', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4505, 103, 'uni001_cours073', 33, 640, 0, 38);
INSERT INTO `create_plan` VALUES (4506, 103, 'uni001_cours072', 33, 640, 0, 38);
INSERT INTO `create_plan` VALUES (4507, 103, 'uni001_cours071', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4508, 103, 'uni001_cours070', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4509, 103, 'uni001_cours069', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4510, 103, 'uni001_cours068', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4511, 103, 'uni001_cours067', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4512, 103, 'uni001_cours066', 33, 640, 0, 38);
INSERT INTO `create_plan` VALUES (4513, 103, 'uni001_cours065', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4514, 103, 'uni001_cours064', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4515, 103, 'uni001_cours063', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4516, 103, 'uni001_cours062', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4517, 103, 'uni001_cours061', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4518, 103, 'uni001_cours060', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4519, 103, 'uni001_cours058', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4520, 103, 'uni001_cours057', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4521, 103, 'uni001_cours056', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4522, 103, 'uni001_cours055', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4523, 103, 'uni001_cours054', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4524, 103, 'uni001_cours053', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4525, 103, 'uni001_cours052', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4526, 103, 'uni001_cours051', 33, 20, 0, 38);
INSERT INTO `create_plan` VALUES (4527, 103, 'uni001_cours050', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4528, 103, 'uni001_cours049', 33, 10, 0, 38);
INSERT INTO `create_plan` VALUES (4529, 103, 'uni001_doc016', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4530, 103, 'uni001_doc015', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4531, 103, 'uni001_doc014', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4532, 103, 'uni001_doc013', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4533, 103, 'uni001_cours048', 33, 90, 0, 38);
INSERT INTO `create_plan` VALUES (4534, 103, 'uni001_cours047', 33, 80, 0, 38);
INSERT INTO `create_plan` VALUES (4535, 103, 'uni001_cours046', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4536, 103, 'uni001_cours045', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4537, 103, 'uni001_cours044', 33, 560, 0, 38);
INSERT INTO `create_plan` VALUES (4538, 103, 'uni001_doc012', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4539, 103, 'uni001_doc011', 33, 760, 0, 38);
INSERT INTO `create_plan` VALUES (4540, 103, 'uni001_doc010', 33, 760, 0, 38);
INSERT INTO `create_plan` VALUES (4541, 103, 'uni001_doc009', 33, 650, 0, 38);
INSERT INTO `create_plan` VALUES (4542, 103, 'uni001_cours041', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4543, 103, 'uni001_cours040', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4544, 103, 'uni001_cours039', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4545, 103, 'uni001_cours038', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4546, 103, 'uni001_cours037', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4547, 103, 'uni001_cours036', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4548, 103, 'uni001_cours035', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4549, 103, 'uni001_cours034', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4550, 103, 'uni001_cours033', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4551, 103, 'uni001_cours032', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4552, 103, 'uni001_doc008', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4553, 103, 'uni001_doc007', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4554, 103, 'uni001_doc006', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4555, 103, 'uni001_cours031', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4556, 103, 'uni001_cours030', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4557, 103, 'uni001_cours029', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4558, 103, 'uni001_cours028', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4559, 103, 'uni001_cours027', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4560, 103, 'uni001_cours026', 33, 30, 0, 38);
INSERT INTO `create_plan` VALUES (4561, 103, 'uni001_cours025', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4562, 103, 'uni001_cours024', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4563, 103, 'uni001_cours023', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4564, 103, 'uni001_doc005', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4565, 103, 'uni001_cours022', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4566, 103, 'uni001_cours021', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4567, 103, 'uni001_cours020', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4568, 103, 'uni001_cours019', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4569, 103, 'uni001_cours018', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4570, 103, 'uni001_cours017', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4571, 103, 'uni001_cours016', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4572, 103, 'uni001_cours015', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4573, 103, 'uni001_cours014', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4574, 103, 'uni001_cours013', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4575, 103, 'uni001_cours012', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4576, 103, 'uni001_doc004', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4577, 103, 'uni001_doc003', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4578, 103, 'uni001_doc002', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4579, 103, 'uni001_doc001', 33, 650, 0, 38);
INSERT INTO `create_plan` VALUES (4580, 103, 'uni001_cours011', 33, 70, 0, 38);
INSERT INTO `create_plan` VALUES (4581, 103, 'uni001_cours010', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4582, 103, 'uni001_cours009', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4583, 103, 'uni001_cours008', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4584, 103, 'uni001_cours007', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4585, 103, 'uni001_cours006', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4586, 103, 'uni001_cours005', 33, 760, 0, 38);
INSERT INTO `create_plan` VALUES (4587, 103, 'uni001_cours004', 33, 40, 0, 38);
INSERT INTO `create_plan` VALUES (4588, 103, 'uni001_cours003', 33, 50, 0, 38);
INSERT INTO `create_plan` VALUES (4589, 103, 'uni001_cours002', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4590, 103, 'uni001_cours001', 33, 60, 0, 38);
INSERT INTO `create_plan` VALUES (4591, 94, 'uni070_Course002', 34, 1, 0, 39);
INSERT INTO `create_plan` VALUES (4592, 94, 'uni070_Course001', 34, 33, 0, 39);
INSERT INTO `create_plan` VALUES (4593, 96, 'uni065_Course004', 34, 5, 0, 39);
INSERT INTO `create_plan` VALUES (4594, 96, 'uni065_Course003', 34, 4, 0, 39);
INSERT INTO `create_plan` VALUES (4595, 96, 'uni065_Course002', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4596, 96, 'uni065_Course001', 34, 5, 0, 39);
INSERT INTO `create_plan` VALUES (4597, 97, 'uni064_Course005', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4598, 97, 'uni064_Course004', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4599, 97, 'uni064_Course003', 34, 2, 0, 39);
INSERT INTO `create_plan` VALUES (4600, 97, 'uni064_Course002', 34, 3, 0, 39);
INSERT INTO `create_plan` VALUES (4601, 97, 'uni064_Course001', 34, 3, 0, 39);
INSERT INTO `create_plan` VALUES (4602, 97, 'uni063_Course005', 34, 420, 0, 39);
INSERT INTO `create_plan` VALUES (4603, 97, 'uni063_Course004', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4604, 97, 'uni063_Course003', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4605, 97, 'uni063_Course002', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4606, 97, 'uni063_Course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4607, 97, 'uni062_Course003', 34, 4, 0, 39);
INSERT INTO `create_plan` VALUES (4608, 97, 'uni062_Course002', 34, 5, 0, 39);
INSERT INTO `create_plan` VALUES (4609, 97, 'uni062_Course001', 34, 5, 0, 39);
INSERT INTO `create_plan` VALUES (4610, 98, 'uni061_Course004', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4611, 98, 'uni061_Course003', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4612, 98, 'uni061_Course002', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4613, 98, 'uni061_Course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4614, 98, 'uni060_Course008', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4615, 98, 'uni060_Course007', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4616, 98, 'uni060_Course006', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4617, 98, 'uni060_Course005', 34, 320, 0, 39);
INSERT INTO `create_plan` VALUES (4618, 98, 'uni060_Course004', 34, 120, 0, 39);
INSERT INTO `create_plan` VALUES (4619, 98, 'uni060_Course003', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4620, 98, 'uni060_Course002', 34, 10, 0, 39);
INSERT INTO `create_plan` VALUES (4621, 98, 'uni060_Course001', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4622, 98, 'uni059_Course008', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4623, 98, 'uni059_Course007', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4624, 98, 'uni059_Course006', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4625, 98, 'uni059_Course005', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4626, 98, 'uni059_Course004', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4627, 98, 'uni059_Course003', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4628, 98, 'uni059_Course002', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4629, 98, 'uni059_Course001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4630, 98, 'uni058_Course008', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4631, 98, 'uni058_Course007', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4632, 98, 'uni058_Course006', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4633, 98, 'uni058_Course005', 34, 320, 0, 39);
INSERT INTO `create_plan` VALUES (4634, 98, 'uni058_Course004', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4635, 98, 'uni058_Course003', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4636, 98, 'uni058_Course002', 34, 420, 0, 39);
INSERT INTO `create_plan` VALUES (4637, 98, 'uni058_Course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4638, 98, 'uni057_Course003', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4639, 98, 'uni057_Course002', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4640, 98, 'uni057_Course001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4641, 100, 'uni051_Course002', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4642, 100, 'uni051_Course001', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4643, 100, 'uni050_Course003', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4644, 100, 'uni050_Course002', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4645, 100, 'uni050_Course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4646, 100, 'uni049_Course001', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4647, 100, 'uni048_course003', 34, 320, 0, 39);
INSERT INTO `create_plan` VALUES (4648, 100, 'uni048_course002', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4649, 100, 'uni048_course001', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4650, 100, 'uni047_course002', 34, 320, 0, 39);
INSERT INTO `create_plan` VALUES (4651, 100, 'uni047_course001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4652, 100, 'uni046_course002', 34, 430, 0, 39);
INSERT INTO `create_plan` VALUES (4653, 100, 'uni046_course001', 34, 2340, 0, 39);
INSERT INTO `create_plan` VALUES (4654, 100, 'uni045_course003', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4655, 100, 'uni045_course002', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4656, 100, 'uni045_course001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4657, 100, 'uni044_course004', 34, 2, 0, 39);
INSERT INTO `create_plan` VALUES (4658, 100, 'uni044_course003', 34, 230, 0, 39);
INSERT INTO `create_plan` VALUES (4659, 100, 'uni044_course002', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4660, 100, 'uni044_course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4661, 100, 'uni043_course003', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4662, 100, 'uni043_course002', 34, 320, 0, 39);
INSERT INTO `create_plan` VALUES (4663, 100, 'uni043_course001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4664, 100, 'uni042_course021', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4665, 100, 'uni042_course020', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4666, 100, 'uni042_course019', 34, 240, 0, 39);
INSERT INTO `create_plan` VALUES (4667, 100, 'uni042_course018', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4668, 100, 'uni042_course017', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4669, 100, 'uni042_course016', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4670, 100, 'uni042_course015', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4671, 100, 'uni042_course014', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4672, 100, 'uni042_course013', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4673, 100, 'uni042_course012', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4674, 100, 'uni042_course011', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4675, 100, 'uni042_course010', 34, 3230, 0, 39);
INSERT INTO `create_plan` VALUES (4676, 100, 'uni042_course009', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4677, 100, 'uni042_course008', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4678, 100, 'uni042_course007', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4679, 100, 'uni042_course006', 34, 402, 0, 39);
INSERT INTO `create_plan` VALUES (4680, 100, 'uni042_course005', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4681, 100, 'uni042_course004', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4682, 100, 'uni042_course003', 34, 2340, 0, 39);
INSERT INTO `create_plan` VALUES (4683, 100, 'uni042_course002', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4684, 100, 'uni042_course001', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4685, 103, 'uni004_fac037', 34, 450, 0, 39);
INSERT INTO `create_plan` VALUES (4686, 103, 'uni004_fac036', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4687, 103, 'uni004_fac035', 34, 450, 0, 39);
INSERT INTO `create_plan` VALUES (4688, 103, 'uni004_fac041', 34, 460, 0, 39);
INSERT INTO `create_plan` VALUES (4689, 103, 'uni004_fac034', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4690, 103, 'uni004_fac033', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4691, 103, 'uni004_fac032', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4692, 103, 'uni004_fac031', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4693, 103, 'uni004_fac030', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4694, 103, 'uni004_fac029', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4695, 103, 'uni004_fac028', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4696, 103, 'uni004_fac027', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4697, 103, 'uni004_fac026', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4698, 103, 'uni004_fac025', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4699, 103, 'uni004_fac024', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4700, 103, 'uni004_fac023', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4701, 103, 'uni004_fac022', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4702, 103, 'uni004_fac021', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4703, 103, 'uni004_fac020', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4704, 103, 'uni004_fac019', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4705, 103, 'uni004_fac018', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4706, 103, 'uni004_fac017', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4707, 103, 'uni004_fac016', 34, 640, 0, 39);
INSERT INTO `create_plan` VALUES (4708, 103, 'uni004_fac015', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4709, 103, 'uni004_fac040', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4710, 103, 'uni004_fac039', 34, 5405, 0, 39);
INSERT INTO `create_plan` VALUES (4711, 103, 'uni004_fac038', 34, 540, 0, 39);
INSERT INTO `create_plan` VALUES (4712, 103, 'uni004_fac014', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4713, 103, 'uni004_fac013', 34, 540, 0, 39);
INSERT INTO `create_plan` VALUES (4714, 103, 'uni004_fac012', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4715, 103, 'uni004_fac011', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4716, 103, 'uni004_fac010', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4717, 103, 'uni004_fac009', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4718, 103, 'uni004_fac008', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4719, 103, 'uni004_fac007', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4720, 103, 'uni004_fac006', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4721, 103, 'uni004_fac005', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4722, 103, 'uni004_fac004', 34, 540, 0, 39);
INSERT INTO `create_plan` VALUES (4723, 103, 'uni004_fac003', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4724, 103, 'uni004_fac002', 34, 660, 0, 39);
INSERT INTO `create_plan` VALUES (4725, 103, 'uni004_fac001', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4726, 103, 'uni003_Course037', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4727, 103, 'uni003_course032', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4728, 103, 'uni003_course031', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4729, 103, 'uni003_course030', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4730, 103, 'uni003_course029', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4731, 103, 'uni003_course028', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4732, 103, 'uni003_Course036', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4733, 103, 'uni003_course026', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4734, 103, 'uni003_course025', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4735, 103, 'uni003_course024', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4736, 103, 'uni003_course023', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4737, 103, 'uni003_course022', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4738, 103, 'uni003_course021', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4739, 103, 'uni003_course020', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4740, 103, 'uni003_course019', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4741, 103, 'uni003_Course035', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4742, 103, 'uni003_Course034', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4743, 103, 'uni003_Course033', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4744, 103, 'uni003_course018', 34, 230, 0, 39);
INSERT INTO `create_plan` VALUES (4745, 103, 'uni003_course017', 34, 20, 0, 39);
INSERT INTO `create_plan` VALUES (4746, 103, 'uni003_course016', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4747, 103, 'uni003_course015', 34, 10, 0, 39);
INSERT INTO `create_plan` VALUES (4748, 103, 'uni003_course014', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4749, 103, 'uni003_course013', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4750, 103, 'uni003_course012', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4751, 103, 'uni003_course011', 34, 4530, 0, 39);
INSERT INTO `create_plan` VALUES (4752, 103, 'uni003_course010', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4753, 103, 'uni003_course009', 34, 30, 0, 39);
INSERT INTO `create_plan` VALUES (4754, 103, 'uni003_course008', 34, 440, 0, 39);
INSERT INTO `create_plan` VALUES (4755, 103, 'uni003_course007', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4756, 103, 'uni003_course006', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4757, 103, 'uni003_course005', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4758, 103, 'uni003_course004', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4759, 103, 'uni003_course003', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4760, 103, 'uni003_course002', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4761, 103, 'uni003_course001', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4762, 103, 'uni002_Course026', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4763, 103, 'uni002_Course025', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4764, 103, 'uni002_Course024', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4765, 103, 'uni002_Course023', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4766, 103, 'uni002_Course022', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4767, 103, 'uni002_Course039', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4768, 103, 'uni002_Course038', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4769, 103, 'uni002_Course033', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4770, 103, 'uni002_Course032', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4771, 103, 'uni002_Course021', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4772, 103, 'uni002_Course020', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4773, 103, 'uni002_Course019', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4774, 103, 'uni002_Course043', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4775, 103, 'uni002_Course042', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4776, 103, 'uni002_Course031', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4777, 103, 'uni002_Course030', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4778, 103, 'uni002_Course018', 34, 540, 0, 39);
INSERT INTO `create_plan` VALUES (4779, 103, 'uni002_Course017', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4780, 103, 'uni002_Course041', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4781, 103, 'uni002_Course040', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4782, 103, 'uni002_Course036', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4783, 103, 'uni002_Course035', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4784, 103, 'uni002_Course034', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4785, 103, 'uni002_Course016', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4786, 103, 'uni002_Course015', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4787, 103, 'uni002_Course014', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4788, 103, 'uni002_Course013', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4789, 103, 'uni002_Course012', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4790, 103, 'uni002_Course037', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4791, 103, 'uni002_Course029', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4792, 103, 'uni002_Course028', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4793, 103, 'uni002_Course027', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4794, 103, 'uni002_Course011', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4795, 103, 'uni002_Course010', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4796, 103, 'uni002_Course009', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4797, 103, 'uni002_Course008', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4798, 103, 'uni002_Course007', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4799, 103, 'uni002_Course006', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4800, 103, 'uni002_Course005', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4801, 103, 'uni002_Course004', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4802, 103, 'uni002_Course003', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4803, 103, 'uni002_Course002', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4804, 103, 'uni002_Course001', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4805, 103, 'uni001_cours043', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4806, 103, 'uni001_cours042', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4807, 103, 'uni001_doc030', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4808, 103, 'uni001_cours106', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4809, 103, 'uni001_cours105', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4810, 103, 'uni001_cours104', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4811, 103, 'uni001_cours103', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4812, 103, 'uni001_cours102', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4813, 103, 'uni001_cours101', 34, 540, 0, 39);
INSERT INTO `create_plan` VALUES (4814, 103, 'uni001_doc029', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4815, 103, 'uni001_doc028', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4816, 103, 'uni001_cours100', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4817, 103, 'uni001_cours099', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4818, 103, 'uni001_cours098', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4819, 103, 'uni001_cours097', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4820, 103, 'uni001_cours096', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4821, 103, 'uni001_cours095', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4822, 103, 'uni001_cours094', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4823, 103, 'uni001_cours093', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4824, 103, 'uni001_cours092', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4825, 103, 'uni001_cours091', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4826, 103, 'uni001_cours090', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4827, 103, 'uni001_cours089', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4828, 103, 'uni001_doc027', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4829, 103, 'uni001_cours088', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4830, 103, 'uni001_cours087', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4831, 103, 'uni001_cours086', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4832, 103, 'uni001_cours085', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4833, 103, 'uni001_cours084', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4834, 103, 'uni001_cours083', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4835, 103, 'uni001_doc026', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4836, 103, 'uni001_doc025', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4837, 103, 'uni001_cours082', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4838, 103, 'uni001_cours081', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4839, 103, 'uni001_cours080', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4840, 103, 'uni001_cours079', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4841, 103, 'uni001_cours078', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4842, 103, 'uni001_cours077', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4843, 103, 'uni001_doc024', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4844, 103, 'uni001_doc023', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4845, 103, 'uni001_doc022', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4846, 103, 'uni001_doc021', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4847, 103, 'uni001_doc020', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4848, 103, 'uni001_doc019', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4849, 103, 'uni001_doc018', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4850, 103, 'uni001_doc017', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4851, 103, 'uni001_cours076', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4852, 103, 'uni001_cours075', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4853, 103, 'uni001_cours074', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4854, 103, 'uni001_cours073', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4855, 103, 'uni001_cours072', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4856, 103, 'uni001_cours071', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4857, 103, 'uni001_cours070', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4858, 103, 'uni001_cours069', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4859, 103, 'uni001_cours068', 34, 650, 0, 39);
INSERT INTO `create_plan` VALUES (4860, 103, 'uni001_cours067', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4861, 103, 'uni001_cours066', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4862, 103, 'uni001_cours065', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4863, 103, 'uni001_cours064', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4864, 103, 'uni001_cours063', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4865, 103, 'uni001_cours062', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4866, 103, 'uni001_cours061', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4867, 103, 'uni001_cours060', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4868, 103, 'uni001_cours058', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4869, 103, 'uni001_cours057', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4870, 103, 'uni001_cours056', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4871, 103, 'uni001_cours055', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4872, 103, 'uni001_cours054', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4873, 103, 'uni001_cours053', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4874, 103, 'uni001_cours052', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4875, 103, 'uni001_cours051', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4876, 103, 'uni001_cours050', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4877, 103, 'uni001_cours049', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4878, 103, 'uni001_doc016', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4879, 103, 'uni001_doc015', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4880, 103, 'uni001_doc014', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4881, 103, 'uni001_doc013', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4882, 103, 'uni001_cours048', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4883, 103, 'uni001_cours047', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4884, 103, 'uni001_cours046', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4885, 103, 'uni001_cours045', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4886, 103, 'uni001_cours044', 34, 40, 0, 39);
INSERT INTO `create_plan` VALUES (4887, 103, 'uni001_doc012', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4888, 103, 'uni001_doc011', 34, 670, 0, 39);
INSERT INTO `create_plan` VALUES (4889, 103, 'uni001_doc010', 34, 760, 0, 39);
INSERT INTO `create_plan` VALUES (4890, 103, 'uni001_doc009', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4891, 103, 'uni001_cours041', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4892, 103, 'uni001_cours040', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4893, 103, 'uni001_cours039', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4894, 103, 'uni001_cours038', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4895, 103, 'uni001_cours037', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4896, 103, 'uni001_cours036', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4897, 103, 'uni001_cours035', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4898, 103, 'uni001_cours034', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4899, 103, 'uni001_cours033', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4900, 103, 'uni001_cours032', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4901, 103, 'uni001_doc008', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4902, 103, 'uni001_doc007', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4903, 103, 'uni001_doc006', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4904, 103, 'uni001_cours031', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4905, 103, 'uni001_cours030', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4906, 103, 'uni001_cours029', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4907, 103, 'uni001_cours028', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4908, 103, 'uni001_cours027', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4909, 103, 'uni001_cours026', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4910, 103, 'uni001_cours025', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4911, 103, 'uni001_cours024', 34, 560, 0, 39);
INSERT INTO `create_plan` VALUES (4912, 103, 'uni001_cours023', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4913, 103, 'uni001_doc005', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4914, 103, 'uni001_cours022', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4915, 103, 'uni001_cours021', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4916, 103, 'uni001_cours020', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4917, 103, 'uni001_cours019', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4918, 103, 'uni001_cours018', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4919, 103, 'uni001_cours017', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4920, 103, 'uni001_cours016', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4921, 103, 'uni001_cours015', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4922, 103, 'uni001_cours014', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4923, 103, 'uni001_cours013', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4924, 103, 'uni001_cours012', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4925, 103, 'uni001_doc004', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4926, 103, 'uni001_doc003', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4927, 103, 'uni001_doc002', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4928, 103, 'uni001_doc001', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4929, 103, 'uni001_cours011', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4930, 103, 'uni001_cours010', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4931, 103, 'uni001_cours009', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4932, 103, 'uni001_cours008', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4933, 103, 'uni001_cours007', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4934, 103, 'uni001_cours006', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4935, 103, 'uni001_cours005', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4936, 103, 'uni001_cours004', 34, 50, 0, 39);
INSERT INTO `create_plan` VALUES (4937, 103, 'uni001_cours003', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4938, 103, 'uni001_cours002', 34, 60, 0, 39);
INSERT INTO `create_plan` VALUES (4939, 103, 'uni001_cours001', 34, 70, 0, 39);
INSERT INTO `create_plan` VALUES (4940, 94, 'uni070_Course002', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4941, 94, 'uni070_Course001', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4942, 96, 'uni065_Course004', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4943, 96, 'uni065_Course003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4944, 96, 'uni065_Course002', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4945, 96, 'uni065_Course001', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4946, 97, 'uni064_Course005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4947, 97, 'uni064_Course004', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4948, 97, 'uni064_Course003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4949, 97, 'uni064_Course002', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4950, 97, 'uni064_Course001', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4951, 97, 'uni063_Course005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4952, 97, 'uni063_Course004', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4953, 97, 'uni063_Course003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4954, 97, 'uni063_Course002', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4955, 97, 'uni063_Course001', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4956, 97, 'uni062_Course003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4957, 97, 'uni062_Course002', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (4958, 97, 'uni062_Course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4959, 98, 'uni061_Course004', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4960, 98, 'uni061_Course003', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4961, 98, 'uni061_Course002', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4962, 98, 'uni061_Course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4963, 98, 'uni060_Course008', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4964, 98, 'uni060_Course007', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4965, 98, 'uni060_Course006', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4966, 98, 'uni060_Course003', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4967, 98, 'uni060_Course002', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4968, 98, 'uni060_Course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4969, 98, 'uni059_Course008', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4970, 98, 'uni059_Course007', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4971, 98, 'uni059_Course006', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4972, 98, 'uni059_Course005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4973, 98, 'uni059_Course004', 35, 650, 0, 40);
INSERT INTO `create_plan` VALUES (4974, 98, 'uni059_Course003', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4975, 98, 'uni059_Course002', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4976, 98, 'uni059_Course001', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4977, 98, 'uni058_Course008', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4978, 98, 'uni058_Course007', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4979, 98, 'uni058_Course006', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4980, 98, 'uni058_Course005', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4981, 98, 'uni058_Course004', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4982, 98, 'uni058_Course003', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4983, 98, 'uni058_Course002', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4984, 98, 'uni058_Course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4985, 98, 'uni057_Course003', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4986, 98, 'uni057_Course002', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (4987, 98, 'uni057_Course001', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (4988, 103, 'uni004_fac037', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4989, 103, 'uni004_fac036', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (4990, 103, 'uni004_fac035', 35, 90, 0, 40);
INSERT INTO `create_plan` VALUES (4991, 103, 'uni004_fac041', 35, 870, 0, 40);
INSERT INTO `create_plan` VALUES (4992, 103, 'uni004_fac034', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (4993, 103, 'uni004_fac033', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4994, 103, 'uni004_fac032', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (4995, 103, 'uni004_fac031', 35, 870, 0, 40);
INSERT INTO `create_plan` VALUES (4996, 103, 'uni004_fac030', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (4997, 103, 'uni004_fac029', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (4998, 103, 'uni004_fac028', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (4999, 103, 'uni004_fac027', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5000, 103, 'uni004_fac026', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5001, 103, 'uni004_fac025', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5002, 103, 'uni004_fac024', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5003, 103, 'uni004_fac023', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5004, 103, 'uni004_fac022', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5005, 103, 'uni004_fac021', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5006, 103, 'uni004_fac020', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5007, 103, 'uni004_fac019', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5008, 103, 'uni004_fac018', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5009, 103, 'uni004_fac017', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5010, 103, 'uni004_fac016', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5011, 103, 'uni004_fac015', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5012, 103, 'uni004_fac040', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5013, 103, 'uni004_fac039', 35, 670, 0, 40);
INSERT INTO `create_plan` VALUES (5014, 103, 'uni004_fac038', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5015, 103, 'uni004_fac014', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5016, 103, 'uni004_fac013', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5017, 103, 'uni004_fac012', 35, 90, 0, 40);
INSERT INTO `create_plan` VALUES (5018, 103, 'uni004_fac011', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5019, 103, 'uni004_fac010', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5020, 103, 'uni004_fac009', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5021, 103, 'uni004_fac008', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5022, 103, 'uni004_fac007', 35, 870, 0, 40);
INSERT INTO `create_plan` VALUES (5023, 103, 'uni004_fac006', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5024, 103, 'uni004_fac005', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5025, 103, 'uni004_fac004', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5026, 103, 'uni004_fac003', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5027, 103, 'uni004_fac002', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5028, 103, 'uni004_fac001', 35, 570, 0, 40);
INSERT INTO `create_plan` VALUES (5029, 103, 'uni003_Course037', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5030, 103, 'uni003_course032', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5031, 103, 'uni003_course031', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5032, 103, 'uni003_course030', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5033, 103, 'uni003_course029', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5034, 103, 'uni003_course028', 35, 6540, 0, 40);
INSERT INTO `create_plan` VALUES (5035, 103, 'uni003_Course036', 35, 4560, 0, 40);
INSERT INTO `create_plan` VALUES (5036, 103, 'uni003_course026', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5037, 103, 'uni003_course025', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5038, 103, 'uni003_course024', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5039, 103, 'uni003_course023', 35, 650, 0, 40);
INSERT INTO `create_plan` VALUES (5040, 103, 'uni003_course022', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5041, 103, 'uni003_course021', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5042, 103, 'uni003_course020', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5043, 103, 'uni003_course019', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5044, 103, 'uni003_Course035', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5045, 103, 'uni003_Course034', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5046, 103, 'uni003_Course033', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5047, 103, 'uni003_course018', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5048, 103, 'uni003_course017', 35, 20, 0, 40);
INSERT INTO `create_plan` VALUES (5049, 103, 'uni003_course016', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5050, 103, 'uni003_course015', 35, 10, 0, 40);
INSERT INTO `create_plan` VALUES (5051, 103, 'uni003_course014', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5052, 103, 'uni003_course013', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5053, 103, 'uni003_course012', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5054, 103, 'uni003_course011', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5055, 103, 'uni003_course010', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5056, 103, 'uni003_course009', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5057, 103, 'uni003_course008', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5058, 103, 'uni003_course007', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5059, 103, 'uni003_course006', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5060, 103, 'uni003_course005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5061, 103, 'uni003_course004', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5062, 103, 'uni003_course003', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5063, 103, 'uni003_course002', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5064, 103, 'uni003_course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5065, 103, 'uni002_Course026', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5066, 103, 'uni002_Course025', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5067, 103, 'uni002_Course024', 35, 4560, 0, 40);
INSERT INTO `create_plan` VALUES (5068, 103, 'uni002_Course023', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5069, 103, 'uni002_Course022', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5070, 103, 'uni002_Course039', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5071, 103, 'uni002_Course038', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5072, 103, 'uni002_Course033', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5073, 103, 'uni002_Course032', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5074, 103, 'uni002_Course021', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5075, 103, 'uni002_Course020', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5076, 103, 'uni002_Course019', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5077, 103, 'uni002_Course043', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5078, 103, 'uni002_Course042', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5079, 103, 'uni002_Course031', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5080, 103, 'uni002_Course030', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5081, 103, 'uni002_Course018', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5082, 103, 'uni002_Course017', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5083, 103, 'uni002_Course041', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5084, 103, 'uni002_Course040', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5085, 103, 'uni002_Course036', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5086, 103, 'uni002_Course035', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5087, 103, 'uni002_Course034', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5088, 103, 'uni002_Course016', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5089, 103, 'uni002_Course015', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5090, 103, 'uni002_Course014', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5091, 103, 'uni002_Course013', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5092, 103, 'uni002_Course012', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5093, 103, 'uni002_Course037', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5094, 103, 'uni002_Course029', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5095, 103, 'uni002_Course028', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5096, 103, 'uni002_Course027', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5097, 103, 'uni002_Course011', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5098, 103, 'uni002_Course010', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5099, 103, 'uni002_Course009', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5100, 103, 'uni002_Course008', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5101, 103, 'uni002_Course007', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5102, 103, 'uni002_Course006', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5103, 103, 'uni002_Course005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5104, 103, 'uni002_Course004', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5105, 103, 'uni002_Course003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5106, 103, 'uni002_Course002', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5107, 103, 'uni002_Course001', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5108, 103, 'uni001_cours043', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5109, 103, 'uni001_cours042', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5110, 103, 'uni001_doc030', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5111, 103, 'uni001_cours106', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5112, 103, 'uni001_cours105', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5113, 103, 'uni001_cours104', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5114, 103, 'uni001_cours103', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5115, 103, 'uni001_cours102', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5116, 103, 'uni001_cours101', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5117, 103, 'uni001_doc029', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5118, 103, 'uni001_doc028', 35, 430, 0, 40);
INSERT INTO `create_plan` VALUES (5119, 103, 'uni001_cours100', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5120, 103, 'uni001_cours099', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5121, 103, 'uni001_cours098', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5122, 103, 'uni001_cours097', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5123, 103, 'uni001_cours096', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5124, 103, 'uni001_cours095', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5125, 103, 'uni001_cours094', 35, 340, 0, 40);
INSERT INTO `create_plan` VALUES (5126, 103, 'uni001_cours093', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5127, 103, 'uni001_cours092', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5128, 103, 'uni001_cours091', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5129, 103, 'uni001_cours090', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5130, 103, 'uni001_cours089', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5131, 103, 'uni001_doc027', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5132, 103, 'uni001_cours088', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5133, 103, 'uni001_cours087', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5134, 103, 'uni001_cours086', 35, 320, 0, 40);
INSERT INTO `create_plan` VALUES (5135, 103, 'uni001_cours085', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5136, 103, 'uni001_cours084', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5137, 103, 'uni001_cours083', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5138, 103, 'uni001_doc026', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5139, 103, 'uni001_doc025', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5140, 103, 'uni001_cours082', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5141, 103, 'uni001_cours081', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5142, 103, 'uni001_cours080', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5143, 103, 'uni001_cours079', 35, 90, 0, 40);
INSERT INTO `create_plan` VALUES (5144, 103, 'uni001_cours078', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5145, 103, 'uni001_cours077', 35, 90, 0, 40);
INSERT INTO `create_plan` VALUES (5146, 103, 'uni001_doc024', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5147, 103, 'uni001_doc023', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5148, 103, 'uni001_doc022', 35, 430, 0, 40);
INSERT INTO `create_plan` VALUES (5149, 103, 'uni001_doc021', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5150, 103, 'uni001_doc020', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5151, 103, 'uni001_doc019', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5152, 103, 'uni001_doc018', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5153, 103, 'uni001_doc017', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5154, 103, 'uni001_cours076', 35, 440, 0, 40);
INSERT INTO `create_plan` VALUES (5155, 103, 'uni001_cours075', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5156, 103, 'uni001_cours074', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5157, 103, 'uni001_cours073', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5158, 103, 'uni001_cours072', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5159, 103, 'uni001_cours071', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5160, 103, 'uni001_cours070', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5161, 103, 'uni001_cours069', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5162, 103, 'uni001_cours068', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5163, 103, 'uni001_cours067', 35, 440, 0, 40);
INSERT INTO `create_plan` VALUES (5164, 103, 'uni001_cours066', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5165, 103, 'uni001_cours065', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5166, 103, 'uni001_cours064', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5167, 103, 'uni001_cours063', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5168, 103, 'uni001_cours062', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5169, 103, 'uni001_cours061', 35, 530, 0, 40);
INSERT INTO `create_plan` VALUES (5170, 103, 'uni001_cours060', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5171, 103, 'uni001_cours058', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5172, 103, 'uni001_cours057', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5173, 103, 'uni001_cours056', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5174, 103, 'uni001_cours055', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5175, 103, 'uni001_cours054', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5176, 103, 'uni001_cours053', 35, 320, 0, 40);
INSERT INTO `create_plan` VALUES (5177, 103, 'uni001_cours052', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5178, 103, 'uni001_cours051', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5179, 103, 'uni001_cours050', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5180, 103, 'uni001_cours049', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5181, 103, 'uni001_doc016', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5182, 103, 'uni001_doc015', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5183, 103, 'uni001_doc014', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5184, 103, 'uni001_doc013', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5185, 103, 'uni001_cours048', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5186, 103, 'uni001_cours047', 35, 60, 0, 40);
INSERT INTO `create_plan` VALUES (5187, 103, 'uni001_cours046', 35, 70, 0, 40);
INSERT INTO `create_plan` VALUES (5188, 103, 'uni001_cours045', 35, 90, 0, 40);
INSERT INTO `create_plan` VALUES (5189, 103, 'uni001_cours044', 35, 80, 0, 40);
INSERT INTO `create_plan` VALUES (5190, 103, 'uni001_doc012', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5191, 103, 'uni001_doc011', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5192, 103, 'uni001_doc010', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5193, 103, 'uni001_doc009', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5194, 103, 'uni001_cours041', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5195, 103, 'uni001_cours040', 35, 440, 0, 40);
INSERT INTO `create_plan` VALUES (5196, 103, 'uni001_cours039', 35, 340, 0, 40);
INSERT INTO `create_plan` VALUES (5197, 103, 'uni001_cours038', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5198, 103, 'uni001_cours037', 35, 350, 0, 40);
INSERT INTO `create_plan` VALUES (5199, 103, 'uni001_cours036', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5200, 103, 'uni001_cours035', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5201, 103, 'uni001_cours034', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5202, 103, 'uni001_cours033', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5203, 103, 'uni001_cours032', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5204, 103, 'uni001_doc008', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5205, 103, 'uni001_doc007', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5206, 103, 'uni001_doc006', 35, 430, 0, 40);
INSERT INTO `create_plan` VALUES (5207, 103, 'uni001_cours031', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5208, 103, 'uni001_cours030', 35, 5440, 0, 40);
INSERT INTO `create_plan` VALUES (5209, 103, 'uni001_cours029', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5210, 103, 'uni001_cours028', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5211, 103, 'uni001_cours027', 35, 3340, 0, 40);
INSERT INTO `create_plan` VALUES (5212, 103, 'uni001_cours026', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5213, 103, 'uni001_cours025', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5214, 103, 'uni001_cours024', 35, 3450, 0, 40);
INSERT INTO `create_plan` VALUES (5215, 103, 'uni001_cours023', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5216, 103, 'uni001_doc005', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5217, 103, 'uni001_cours022', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5218, 103, 'uni001_cours021', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5219, 103, 'uni001_cours020', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5220, 103, 'uni001_cours019', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5221, 103, 'uni001_cours018', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5222, 103, 'uni001_cours017', 35, 430, 0, 40);
INSERT INTO `create_plan` VALUES (5223, 103, 'uni001_cours016', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5224, 103, 'uni001_cours015', 35, 340, 0, 40);
INSERT INTO `create_plan` VALUES (5225, 103, 'uni001_cours014', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5226, 103, 'uni001_cours013', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5227, 103, 'uni001_cours012', 35, 450, 0, 40);
INSERT INTO `create_plan` VALUES (5228, 103, 'uni001_doc004', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5229, 103, 'uni001_doc003', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5230, 103, 'uni001_doc002', 35, 540, 0, 40);
INSERT INTO `create_plan` VALUES (5231, 103, 'uni001_doc001', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5232, 103, 'uni001_cours011', 35, 330, 0, 40);
INSERT INTO `create_plan` VALUES (5233, 103, 'uni001_cours010', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5234, 103, 'uni001_cours009', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5235, 103, 'uni001_cours008', 35, 50, 0, 40);
INSERT INTO `create_plan` VALUES (5236, 103, 'uni001_cours007', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5237, 103, 'uni001_cours006', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5238, 103, 'uni001_cours005', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5239, 103, 'uni001_cours004', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5240, 103, 'uni001_cours003', 35, 40, 0, 40);
INSERT INTO `create_plan` VALUES (5241, 103, 'uni001_cours002', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5242, 103, 'uni001_cours001', 35, 30, 0, 40);
INSERT INTO `create_plan` VALUES (5243, 94, 'uni070_Course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5244, 94, 'uni070_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5245, 96, 'uni065_Course004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5246, 96, 'uni065_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5247, 96, 'uni065_Course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5248, 96, 'uni065_Course001', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5249, 97, 'uni064_Course005', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5250, 97, 'uni064_Course004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5251, 97, 'uni064_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5252, 97, 'uni064_Course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5253, 97, 'uni064_Course001', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5254, 97, 'uni063_Course005', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5255, 97, 'uni063_Course004', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5256, 97, 'uni063_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5257, 97, 'uni063_Course002', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5258, 97, 'uni063_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5259, 97, 'uni062_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5260, 97, 'uni062_Course002', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5261, 97, 'uni062_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5262, 98, 'uni061_Course004', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5263, 98, 'uni061_Course003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5264, 98, 'uni061_Course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5265, 98, 'uni061_Course001', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5266, 98, 'uni060_Course008', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5267, 98, 'uni060_Course007', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5268, 98, 'uni060_Course006', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5269, 98, 'uni060_Course005', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5270, 98, 'uni060_Course004', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5271, 98, 'uni060_Course003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5272, 98, 'uni060_Course002', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5273, 98, 'uni060_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5274, 98, 'uni059_Course008', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5275, 98, 'uni059_Course007', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5276, 98, 'uni059_Course006', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5277, 98, 'uni059_Course005', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5278, 98, 'uni059_Course004', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5279, 98, 'uni059_Course003', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5280, 98, 'uni059_Course002', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5281, 98, 'uni059_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5282, 98, 'uni058_Course008', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5283, 98, 'uni058_Course007', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5284, 98, 'uni058_Course006', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5285, 98, 'uni058_Course005', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5286, 98, 'uni058_Course004', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5287, 98, 'uni058_Course003', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5288, 98, 'uni058_Course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5289, 98, 'uni058_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5290, 98, 'uni057_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5291, 98, 'uni057_Course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5292, 98, 'uni057_Course001', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5293, 100, 'uni051_Course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5294, 100, 'uni051_Course001', 36, 5430, 0, 41);
INSERT INTO `create_plan` VALUES (5295, 100, 'uni050_Course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5296, 100, 'uni050_Course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5297, 100, 'uni050_Course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5298, 100, 'uni049_Course001', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5299, 100, 'uni048_course003', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5300, 100, 'uni048_course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5301, 100, 'uni048_course001', 36, 5430, 0, 41);
INSERT INTO `create_plan` VALUES (5302, 100, 'uni047_course002', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5303, 100, 'uni047_course001', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5304, 100, 'uni046_course002', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5305, 100, 'uni046_course001', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5306, 100, 'uni045_course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5307, 100, 'uni045_course002', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5308, 100, 'uni045_course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5309, 100, 'uni044_course004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5310, 100, 'uni044_course003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5311, 100, 'uni044_course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5312, 100, 'uni044_course001', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5313, 100, 'uni043_course003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5314, 100, 'uni043_course002', 36, 330, 0, 41);
INSERT INTO `create_plan` VALUES (5315, 100, 'uni043_course001', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5316, 100, 'uni042_course021', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5317, 100, 'uni042_course020', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5318, 100, 'uni042_course019', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5319, 100, 'uni042_course018', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5320, 100, 'uni042_course017', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5321, 100, 'uni042_course016', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5322, 100, 'uni042_course015', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5323, 100, 'uni042_course014', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5324, 100, 'uni042_course013', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5325, 100, 'uni042_course012', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5326, 100, 'uni042_course011', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5327, 100, 'uni042_course010', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5328, 100, 'uni042_course009', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5329, 100, 'uni042_course008', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5330, 100, 'uni042_course007', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5331, 100, 'uni042_course006', 36, 10, 0, 41);
INSERT INTO `create_plan` VALUES (5332, 100, 'uni042_course005', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5333, 100, 'uni042_course004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5334, 100, 'uni042_course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5335, 100, 'uni042_course002', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5336, 100, 'uni042_course001', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5337, 103, 'uni004_fac037', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5338, 103, 'uni004_fac036', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5339, 103, 'uni004_fac035', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5340, 103, 'uni004_fac041', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5341, 103, 'uni004_fac034', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5342, 103, 'uni004_fac033', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5343, 103, 'uni004_fac032', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5344, 103, 'uni004_fac031', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5345, 103, 'uni004_fac030', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5346, 103, 'uni004_fac029', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5347, 103, 'uni004_fac028', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5348, 103, 'uni004_fac027', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5349, 103, 'uni004_fac026', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5350, 103, 'uni004_fac025', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5351, 103, 'uni004_fac024', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5352, 103, 'uni004_fac023', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5353, 103, 'uni004_fac022', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5354, 103, 'uni004_fac021', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5355, 103, 'uni004_fac020', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5356, 103, 'uni004_fac019', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5357, 103, 'uni004_fac018', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5358, 103, 'uni004_fac017', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5359, 103, 'uni004_fac016', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5360, 103, 'uni004_fac015', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5361, 103, 'uni004_fac040', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5362, 103, 'uni004_fac039', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5363, 103, 'uni004_fac038', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5364, 103, 'uni004_fac014', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5365, 103, 'uni004_fac013', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5366, 103, 'uni004_fac012', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5367, 103, 'uni004_fac011', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5368, 103, 'uni004_fac010', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5369, 103, 'uni004_fac009', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5370, 103, 'uni004_fac008', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5371, 103, 'uni004_fac007', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5372, 103, 'uni004_fac006', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5373, 103, 'uni004_fac005', 36, 450, 0, 41);
INSERT INTO `create_plan` VALUES (5374, 103, 'uni004_fac004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5375, 103, 'uni004_fac003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5376, 103, 'uni004_fac002', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5377, 103, 'uni004_fac001', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5378, 103, 'uni003_Course037', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5379, 103, 'uni003_course032', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5380, 103, 'uni003_course031', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5381, 103, 'uni003_course030', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5382, 103, 'uni003_course029', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5383, 103, 'uni003_course028', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5384, 103, 'uni003_Course036', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5385, 103, 'uni003_course026', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5386, 103, 'uni003_course025', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5387, 103, 'uni003_course024', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5388, 103, 'uni003_course023', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5389, 103, 'uni003_course022', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5390, 103, 'uni003_course021', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5391, 103, 'uni003_course020', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5392, 103, 'uni003_course019', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5393, 103, 'uni003_Course035', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5394, 103, 'uni003_Course034', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5395, 103, 'uni003_Course033', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5396, 103, 'uni003_course018', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5397, 103, 'uni003_course017', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5398, 103, 'uni003_course016', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5399, 103, 'uni003_course015', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5400, 103, 'uni003_course014', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5401, 103, 'uni003_course013', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5402, 103, 'uni003_course012', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5403, 103, 'uni003_course011', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5404, 103, 'uni003_course010', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5405, 103, 'uni003_course009', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5406, 103, 'uni003_course008', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5407, 103, 'uni003_course007', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5408, 103, 'uni003_course006', 36, 3, 0, 41);
INSERT INTO `create_plan` VALUES (5409, 103, 'uni003_course005', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5410, 103, 'uni003_course004', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5411, 103, 'uni003_course003', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5412, 103, 'uni003_course002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5413, 103, 'uni003_course001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5414, 103, 'uni002_Course026', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5415, 103, 'uni002_Course025', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5416, 103, 'uni002_Course024', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5417, 103, 'uni002_Course023', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5418, 103, 'uni002_Course022', 36, 54, 0, 41);
INSERT INTO `create_plan` VALUES (5419, 103, 'uni002_Course039', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5420, 103, 'uni002_Course038', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5421, 103, 'uni002_Course033', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5422, 103, 'uni002_Course032', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5423, 103, 'uni002_Course021', 36, 450, 0, 41);
INSERT INTO `create_plan` VALUES (5424, 103, 'uni002_Course020', 36, 450, 0, 41);
INSERT INTO `create_plan` VALUES (5425, 103, 'uni002_Course019', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5426, 103, 'uni002_Course043', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5427, 103, 'uni002_Course042', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5428, 103, 'uni002_Course031', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5429, 103, 'uni002_Course030', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5430, 103, 'uni002_Course018', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5431, 103, 'uni002_Course017', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5432, 103, 'uni002_Course041', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5433, 103, 'uni002_Course040', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5434, 103, 'uni002_Course036', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5435, 103, 'uni002_Course035', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5436, 103, 'uni002_Course034', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5437, 103, 'uni002_Course016', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5438, 103, 'uni002_Course015', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5439, 103, 'uni002_Course014', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5440, 103, 'uni002_Course013', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5441, 103, 'uni002_Course012', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5442, 103, 'uni002_Course037', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5443, 103, 'uni002_Course029', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5444, 103, 'uni002_Course028', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5445, 103, 'uni002_Course027', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5446, 103, 'uni002_Course011', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5447, 103, 'uni002_Course010', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5448, 103, 'uni002_Course009', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5449, 103, 'uni002_Course008', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5450, 103, 'uni002_Course007', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5451, 103, 'uni002_Course006', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5452, 103, 'uni002_Course005', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5453, 103, 'uni002_Course004', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5454, 103, 'uni002_Course003', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5455, 103, 'uni002_Course002', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5456, 103, 'uni002_Course001', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5457, 103, 'uni001_cours043', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5458, 103, 'uni001_cours042', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5459, 103, 'uni001_doc030', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5460, 103, 'uni001_cours106', 36, 10, 0, 41);
INSERT INTO `create_plan` VALUES (5461, 103, 'uni001_cours105', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5462, 103, 'uni001_cours104', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5463, 103, 'uni001_cours103', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5464, 103, 'uni001_cours102', 36, 1320, 0, 41);
INSERT INTO `create_plan` VALUES (5465, 103, 'uni001_cours101', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5466, 103, 'uni001_doc029', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5467, 103, 'uni001_doc028', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5468, 103, 'uni001_cours100', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5469, 103, 'uni001_cours099', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5470, 103, 'uni001_cours098', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5471, 103, 'uni001_cours097', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5472, 103, 'uni001_cours096', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5473, 103, 'uni001_cours095', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5474, 103, 'uni001_cours094', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5475, 103, 'uni001_cours093', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5476, 103, 'uni001_cours092', 36, 3340, 0, 41);
INSERT INTO `create_plan` VALUES (5477, 103, 'uni001_cours091', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5478, 103, 'uni001_cours090', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5479, 103, 'uni001_cours089', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5480, 103, 'uni001_doc027', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5481, 103, 'uni001_cours088', 36, 10, 0, 41);
INSERT INTO `create_plan` VALUES (5482, 103, 'uni001_cours087', 36, 230, 0, 41);
INSERT INTO `create_plan` VALUES (5483, 103, 'uni001_cours086', 36, 230, 0, 41);
INSERT INTO `create_plan` VALUES (5484, 103, 'uni001_cours085', 36, 3210, 0, 41);
INSERT INTO `create_plan` VALUES (5485, 103, 'uni001_cours084', 36, 330, 0, 41);
INSERT INTO `create_plan` VALUES (5486, 103, 'uni001_cours083', 36, 210, 0, 41);
INSERT INTO `create_plan` VALUES (5487, 103, 'uni001_doc026', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5488, 103, 'uni001_doc025', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5489, 103, 'uni001_cours082', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5490, 103, 'uni001_cours081', 36, 540, 0, 41);
INSERT INTO `create_plan` VALUES (5491, 103, 'uni001_cours080', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5492, 103, 'uni001_cours079', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5493, 103, 'uni001_cours078', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5494, 103, 'uni001_cours077', 36, 50, 0, 41);
INSERT INTO `create_plan` VALUES (5495, 103, 'uni001_doc024', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5496, 103, 'uni001_doc023', 36, 330, 0, 41);
INSERT INTO `create_plan` VALUES (5497, 103, 'uni001_doc022', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5498, 103, 'uni001_doc021', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5499, 103, 'uni001_doc020', 36, 3340, 0, 41);
INSERT INTO `create_plan` VALUES (5500, 103, 'uni001_doc019', 36, 440, 0, 41);
INSERT INTO `create_plan` VALUES (5501, 103, 'uni001_doc018', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5502, 103, 'uni001_doc017', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5503, 103, 'uni001_cours076', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5504, 103, 'uni001_cours075', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5505, 103, 'uni001_cours074', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5506, 103, 'uni001_cours073', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5507, 103, 'uni001_cours072', 36, 3, 0, 41);
INSERT INTO `create_plan` VALUES (5508, 103, 'uni001_cours071', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5509, 103, 'uni001_cours070', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5510, 103, 'uni001_cours069', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5511, 103, 'uni001_cours068', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5512, 103, 'uni001_cours067', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5513, 103, 'uni001_cours066', 36, 2340, 0, 41);
INSERT INTO `create_plan` VALUES (5514, 103, 'uni001_cours065', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5515, 103, 'uni001_cours064', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5516, 103, 'uni001_cours063', 36, 33, 0, 41);
INSERT INTO `create_plan` VALUES (5517, 103, 'uni001_cours062', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5518, 103, 'uni001_cours061', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5519, 103, 'uni001_cours060', 36, 230, 0, 41);
INSERT INTO `create_plan` VALUES (5520, 103, 'uni001_cours058', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5521, 103, 'uni001_cours057', 36, 10, 0, 41);
INSERT INTO `create_plan` VALUES (5522, 103, 'uni001_cours056', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5523, 103, 'uni001_cours055', 36, 120, 0, 41);
INSERT INTO `create_plan` VALUES (5524, 103, 'uni001_cours054', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5525, 103, 'uni001_cours053', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5526, 103, 'uni001_cours052', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5527, 103, 'uni001_cours051', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5528, 103, 'uni001_cours050', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5529, 103, 'uni001_cours049', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5530, 103, 'uni001_doc016', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5531, 103, 'uni001_doc015', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5532, 103, 'uni001_doc014', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5533, 103, 'uni001_doc013', 36, 10, 0, 41);
INSERT INTO `create_plan` VALUES (5534, 103, 'uni001_cours048', 36, 210, 0, 41);
INSERT INTO `create_plan` VALUES (5535, 103, 'uni001_cours047', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5536, 103, 'uni001_cours046', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5537, 103, 'uni001_cours045', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5538, 103, 'uni001_cours044', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5539, 103, 'uni001_doc012', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5540, 103, 'uni001_doc011', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5541, 103, 'uni001_doc010', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5542, 103, 'uni001_doc009', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5543, 103, 'uni001_cours041', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5544, 103, 'uni001_cours040', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5545, 103, 'uni001_cours039', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5546, 103, 'uni001_cours038', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5547, 103, 'uni001_cours037', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5548, 103, 'uni001_cours036', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5549, 103, 'uni001_cours035', 36, 430, 0, 41);
INSERT INTO `create_plan` VALUES (5550, 103, 'uni001_cours034', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5551, 103, 'uni001_cours033', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5552, 103, 'uni001_cours032', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5553, 103, 'uni001_doc008', 36, 20, 0, 41);
INSERT INTO `create_plan` VALUES (5554, 103, 'uni001_doc007', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5555, 103, 'uni001_doc006', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5556, 103, 'uni001_cours031', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5557, 103, 'uni001_cours030', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5558, 103, 'uni001_cours029', 36, 230, 0, 41);
INSERT INTO `create_plan` VALUES (5559, 103, 'uni001_cours028', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5560, 103, 'uni001_cours027', 36, 230, 0, 41);
INSERT INTO `create_plan` VALUES (5561, 103, 'uni001_cours026', 36, 4230, 0, 41);
INSERT INTO `create_plan` VALUES (5562, 103, 'uni001_cours025', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5563, 103, 'uni001_cours024', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5564, 103, 'uni001_cours023', 36, 320, 0, 41);
INSERT INTO `create_plan` VALUES (5565, 103, 'uni001_doc005', 36, 3, 0, 41);
INSERT INTO `create_plan` VALUES (5566, 103, 'uni001_cours022', 36, 330, 0, 41);
INSERT INTO `create_plan` VALUES (5567, 103, 'uni001_cours021', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5568, 103, 'uni001_cours020', 36, 440, 0, 41);
INSERT INTO `create_plan` VALUES (5569, 103, 'uni001_cours019', 36, 4420, 0, 41);
INSERT INTO `create_plan` VALUES (5570, 103, 'uni001_cours018', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5571, 103, 'uni001_cours017', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5572, 103, 'uni001_cours016', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5573, 103, 'uni001_cours015', 36, 440, 0, 41);
INSERT INTO `create_plan` VALUES (5574, 103, 'uni001_cours014', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5575, 103, 'uni001_cours013', 36, 40, 0, 41);
INSERT INTO `create_plan` VALUES (5576, 103, 'uni001_cours012', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5577, 103, 'uni001_doc004', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5578, 103, 'uni001_doc003', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5579, 103, 'uni001_doc002', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5580, 103, 'uni001_doc001', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5581, 103, 'uni001_cours011', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5582, 103, 'uni001_cours010', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5583, 103, 'uni001_cours009', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5584, 103, 'uni001_cours008', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5585, 103, 'uni001_cours007', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5586, 103, 'uni001_cours006', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5587, 103, 'uni001_cours005', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5588, 103, 'uni001_cours004', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5589, 103, 'uni001_cours003', 36, 340, 0, 41);
INSERT INTO `create_plan` VALUES (5590, 103, 'uni001_cours002', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5591, 103, 'uni001_cours001', 36, 30, 0, 41);
INSERT INTO `create_plan` VALUES (5592, 97, 'uni064_Course005', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5593, 97, 'uni064_Course004', 37, 430, 0, 42);
INSERT INTO `create_plan` VALUES (5594, 97, 'uni064_Course003', 37, 20, 0, 42);
INSERT INTO `create_plan` VALUES (5595, 97, 'uni064_Course002', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5596, 97, 'uni064_Course001', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5597, 97, 'uni063_Course005', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5598, 97, 'uni063_Course004', 37, 340, 0, 42);
INSERT INTO `create_plan` VALUES (5599, 97, 'uni063_Course003', 37, 20, 0, 42);
INSERT INTO `create_plan` VALUES (5600, 97, 'uni063_Course002', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5601, 97, 'uni063_Course001', 37, 40, 0, 42);
INSERT INTO `create_plan` VALUES (5602, 97, 'uni062_Course003', 37, 20, 0, 42);
INSERT INTO `create_plan` VALUES (5603, 97, 'uni062_Course002', 37, 30, 0, 42);
INSERT INTO `create_plan` VALUES (5604, 97, 'uni062_Course001', 37, 20, 0, 42);
INSERT INTO `create_plan` VALUES (5608, 94, 'uni070_Course002', 38, 12, 0, 43);
INSERT INTO `create_plan` VALUES (5609, 94, 'uni070_Course001', 38, 2, 0, 43);
INSERT INTO `create_plan` VALUES (5610, 96, 'uni065_Course004', 38, 2, 0, 43);
INSERT INTO `create_plan` VALUES (5611, 96, 'uni065_Course003', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5612, 96, 'uni065_Course002', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5613, 96, 'uni065_Course001', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5614, 97, 'uni064_Course005', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5615, 97, 'uni064_Course004', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5616, 97, 'uni064_Course003', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5617, 97, 'uni064_Course002', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5618, 97, 'uni064_Course001', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5619, 97, 'uni063_Course005', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5620, 97, 'uni063_Course004', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5621, 97, 'uni063_Course003', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5622, 97, 'uni063_Course002', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5623, 97, 'uni063_Course001', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5624, 97, 'uni062_Course003', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5625, 97, 'uni062_Course002', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5626, 97, 'uni062_Course001', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5627, 98, 'uni061_Course004', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5628, 98, 'uni061_Course003', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5629, 98, 'uni061_Course002', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5630, 98, 'uni061_Course001', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5631, 98, 'uni060_Course008', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5632, 98, 'uni060_Course007', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5633, 98, 'uni060_Course006', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5634, 98, 'uni060_Course005', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5635, 98, 'uni060_Course004', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5636, 98, 'uni060_Course003', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5637, 98, 'uni060_Course002', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5638, 98, 'uni060_Course001', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5639, 98, 'uni059_Course008', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5640, 98, 'uni059_Course007', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5641, 98, 'uni059_Course006', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5642, 98, 'uni059_Course005', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5643, 98, 'uni059_Course004', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5644, 98, 'uni059_Course003', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5645, 98, 'uni059_Course002', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5646, 98, 'uni059_Course001', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5647, 98, 'uni058_Course008', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5648, 98, 'uni058_Course007', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5649, 98, 'uni058_Course006', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5650, 98, 'uni058_Course005', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5651, 98, 'uni058_Course004', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5652, 98, 'uni058_Course003', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5653, 98, 'uni058_Course002', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5654, 98, 'uni058_Course001', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5655, 98, 'uni057_Course003', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5656, 98, 'uni057_Course002', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5657, 98, 'uni057_Course001', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5658, 100, 'uni051_Course002', 38, 650, 0, 43);
INSERT INTO `create_plan` VALUES (5659, 100, 'uni051_Course001', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5660, 100, 'uni050_Course003', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5661, 100, 'uni050_Course002', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5662, 100, 'uni050_Course001', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5663, 100, 'uni049_Course001', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5664, 100, 'uni048_course003', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5665, 100, 'uni048_course002', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5666, 100, 'uni048_course001', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5667, 100, 'uni047_course002', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5668, 100, 'uni047_course001', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5669, 100, 'uni046_course002', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5670, 100, 'uni046_course001', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5671, 100, 'uni045_course003', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5672, 100, 'uni045_course002', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5673, 100, 'uni045_course001', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5674, 100, 'uni044_course004', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5675, 100, 'uni044_course003', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5676, 100, 'uni044_course002', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5677, 100, 'uni044_course001', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5678, 100, 'uni043_course003', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5679, 100, 'uni043_course002', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5680, 100, 'uni043_course001', 38, 650, 0, 43);
INSERT INTO `create_plan` VALUES (5681, 100, 'uni042_course021', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5682, 100, 'uni042_course020', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5683, 100, 'uni042_course019', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5684, 100, 'uni042_course018', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5685, 100, 'uni042_course017', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5686, 100, 'uni042_course016', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5687, 100, 'uni042_course015', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5688, 100, 'uni042_course014', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5689, 100, 'uni042_course013', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5690, 100, 'uni042_course012', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5691, 100, 'uni042_course011', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5692, 100, 'uni042_course010', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5693, 100, 'uni042_course009', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5694, 100, 'uni042_course008', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5695, 100, 'uni042_course007', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5696, 100, 'uni042_course006', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5697, 100, 'uni042_course005', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5698, 100, 'uni042_course004', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5699, 100, 'uni042_course003', 38, 450, 0, 43);
INSERT INTO `create_plan` VALUES (5700, 100, 'uni042_course002', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5701, 100, 'uni042_course001', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5702, 103, 'uni004_fac037', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5703, 103, 'uni004_fac036', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5704, 103, 'uni004_fac035', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5705, 103, 'uni004_fac041', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5706, 103, 'uni004_fac034', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5707, 103, 'uni004_fac033', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5708, 103, 'uni004_fac032', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5709, 103, 'uni004_fac031', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5710, 103, 'uni004_fac030', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5711, 103, 'uni004_fac029', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5712, 103, 'uni004_fac028', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5713, 103, 'uni004_fac027', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5714, 103, 'uni004_fac026', 38, 230, 0, 43);
INSERT INTO `create_plan` VALUES (5715, 103, 'uni004_fac025', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5716, 103, 'uni004_fac024', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5717, 103, 'uni004_fac023', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5718, 103, 'uni004_fac022', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5719, 103, 'uni004_fac021', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5720, 103, 'uni004_fac020', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5721, 103, 'uni004_fac019', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5722, 103, 'uni004_fac018', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5723, 103, 'uni004_fac017', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5724, 103, 'uni004_fac016', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5725, 103, 'uni004_fac015', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5726, 103, 'uni004_fac040', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5727, 103, 'uni004_fac039', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5728, 103, 'uni004_fac038', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5729, 103, 'uni004_fac014', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5730, 103, 'uni004_fac013', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5731, 103, 'uni004_fac012', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5732, 103, 'uni004_fac011', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5733, 103, 'uni004_fac010', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5734, 103, 'uni004_fac009', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5735, 103, 'uni004_fac008', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5736, 103, 'uni004_fac007', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5737, 103, 'uni004_fac006', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5738, 103, 'uni004_fac005', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5739, 103, 'uni004_fac004', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5740, 103, 'uni004_fac003', 38, 870, 0, 43);
INSERT INTO `create_plan` VALUES (5741, 103, 'uni004_fac002', 38, 870, 0, 43);
INSERT INTO `create_plan` VALUES (5742, 103, 'uni004_fac001', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5743, 103, 'uni003_Course037', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5744, 103, 'uni003_course032', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5745, 103, 'uni003_course031', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5746, 103, 'uni003_course030', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5747, 103, 'uni003_course029', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5748, 103, 'uni003_course028', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5749, 103, 'uni003_Course036', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5750, 103, 'uni003_course026', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5751, 103, 'uni003_course025', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5752, 103, 'uni003_course024', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5753, 103, 'uni003_course023', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5754, 103, 'uni003_course022', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5755, 103, 'uni003_course021', 38, 870, 0, 43);
INSERT INTO `create_plan` VALUES (5756, 103, 'uni003_course020', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5757, 103, 'uni003_course019', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5758, 103, 'uni003_Course035', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5759, 103, 'uni003_Course034', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5760, 103, 'uni003_Course033', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5761, 103, 'uni003_course018', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5762, 103, 'uni003_course017', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5763, 103, 'uni003_course016', 38, 540, 0, 43);
INSERT INTO `create_plan` VALUES (5764, 103, 'uni003_course015', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5765, 103, 'uni003_course014', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5766, 103, 'uni003_course013', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5767, 103, 'uni003_course012', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5768, 103, 'uni003_course011', 38, 470, 0, 43);
INSERT INTO `create_plan` VALUES (5769, 103, 'uni003_course010', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5770, 103, 'uni003_course009', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5771, 103, 'uni003_course008', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5772, 103, 'uni003_course007', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5773, 103, 'uni003_course006', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5774, 103, 'uni003_course005', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5775, 103, 'uni003_course004', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5776, 103, 'uni003_course003', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5777, 103, 'uni003_course002', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5778, 103, 'uni003_course001', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5779, 103, 'uni002_Course026', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5780, 103, 'uni002_Course025', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5781, 103, 'uni002_Course024', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5782, 103, 'uni002_Course023', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5783, 103, 'uni002_Course022', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5784, 103, 'uni002_Course039', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5785, 103, 'uni002_Course038', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5786, 103, 'uni002_Course033', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5787, 103, 'uni002_Course032', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5788, 103, 'uni002_Course021', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5789, 103, 'uni002_Course020', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5790, 103, 'uni002_Course019', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5791, 103, 'uni002_Course043', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5792, 103, 'uni002_Course042', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5793, 103, 'uni002_Course031', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5794, 103, 'uni002_Course030', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5795, 103, 'uni002_Course018', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5796, 103, 'uni002_Course017', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5797, 103, 'uni002_Course041', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5798, 103, 'uni002_Course040', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5799, 103, 'uni002_Course036', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5800, 103, 'uni002_Course035', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5801, 103, 'uni002_Course034', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5802, 103, 'uni002_Course016', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5803, 103, 'uni002_Course015', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5804, 103, 'uni002_Course014', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5805, 103, 'uni002_Course013', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5806, 103, 'uni002_Course012', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5807, 103, 'uni002_Course037', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5808, 103, 'uni002_Course029', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5809, 103, 'uni002_Course028', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5810, 103, 'uni002_Course027', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5811, 103, 'uni002_Course011', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5812, 103, 'uni002_Course010', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5813, 103, 'uni002_Course009', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5814, 103, 'uni002_Course008', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5815, 103, 'uni002_Course007', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5816, 103, 'uni002_Course006', 38, 80, 0, 43);
INSERT INTO `create_plan` VALUES (5817, 103, 'uni002_Course005', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5818, 103, 'uni002_Course004', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5819, 103, 'uni002_Course003', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5820, 103, 'uni002_Course002', 38, 70, 0, 43);
INSERT INTO `create_plan` VALUES (5821, 103, 'uni002_Course001', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5822, 103, 'uni001_cours043', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5823, 103, 'uni001_cours042', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5824, 103, 'uni001_doc030', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5825, 103, 'uni001_cours106', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5826, 103, 'uni001_cours105', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5827, 103, 'uni001_cours104', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5828, 103, 'uni001_cours103', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5829, 103, 'uni001_cours102', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5830, 103, 'uni001_cours101', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5831, 103, 'uni001_doc029', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5832, 103, 'uni001_doc028', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5833, 103, 'uni001_cours100', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5834, 103, 'uni001_cours099', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5835, 103, 'uni001_cours098', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5836, 103, 'uni001_cours097', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5837, 103, 'uni001_cours096', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5838, 103, 'uni001_cours095', 38, 430, 0, 43);
INSERT INTO `create_plan` VALUES (5839, 103, 'uni001_cours094', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5840, 103, 'uni001_cours093', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5841, 103, 'uni001_cours092', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5842, 103, 'uni001_cours091', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5843, 103, 'uni001_cours090', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5844, 103, 'uni001_cours089', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5845, 103, 'uni001_doc027', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5846, 103, 'uni001_cours088', 38, 430, 0, 43);
INSERT INTO `create_plan` VALUES (5847, 103, 'uni001_cours087', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5848, 103, 'uni001_cours086', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5849, 103, 'uni001_cours085', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5850, 103, 'uni001_cours084', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5851, 103, 'uni001_cours083', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5852, 103, 'uni001_doc026', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5853, 103, 'uni001_doc025', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5854, 103, 'uni001_cours082', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5855, 103, 'uni001_cours081', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5856, 103, 'uni001_cours080', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5857, 103, 'uni001_cours079', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5858, 103, 'uni001_cours078', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5859, 103, 'uni001_cours077', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5860, 103, 'uni001_doc024', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5861, 103, 'uni001_doc023', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5862, 103, 'uni001_doc022', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5863, 103, 'uni001_doc021', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5864, 103, 'uni001_doc020', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5865, 103, 'uni001_doc019', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5866, 103, 'uni001_doc018', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5867, 103, 'uni001_doc017', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5868, 103, 'uni001_cours076', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5869, 103, 'uni001_cours075', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5870, 103, 'uni001_cours074', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5871, 103, 'uni001_cours073', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5872, 103, 'uni001_cours072', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5873, 103, 'uni001_cours071', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5874, 103, 'uni001_cours070', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5875, 103, 'uni001_cours069', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5876, 103, 'uni001_cours068', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5877, 103, 'uni001_cours067', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5878, 103, 'uni001_cours066', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5879, 103, 'uni001_cours065', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5880, 103, 'uni001_cours064', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5881, 103, 'uni001_cours063', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5882, 103, 'uni001_cours062', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5883, 103, 'uni001_cours061', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5884, 103, 'uni001_cours060', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5885, 103, 'uni001_cours058', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5886, 103, 'uni001_cours057', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5887, 103, 'uni001_cours056', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5888, 103, 'uni001_cours055', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5889, 103, 'uni001_cours054', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5890, 103, 'uni001_cours053', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5891, 103, 'uni001_cours052', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5892, 103, 'uni001_cours051', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5893, 103, 'uni001_cours050', 38, 340, 0, 43);
INSERT INTO `create_plan` VALUES (5894, 103, 'uni001_cours049', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5895, 103, 'uni001_doc016', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5896, 103, 'uni001_doc015', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5897, 103, 'uni001_doc014', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5898, 103, 'uni001_doc013', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5899, 103, 'uni001_cours048', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5900, 103, 'uni001_cours047', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5901, 103, 'uni001_cours046', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5902, 103, 'uni001_cours045', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5903, 103, 'uni001_cours044', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5904, 103, 'uni001_doc012', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5905, 103, 'uni001_doc011', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5906, 103, 'uni001_doc010', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5907, 103, 'uni001_doc009', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5908, 103, 'uni001_cours041', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5909, 103, 'uni001_cours040', 38, 20, 0, 43);
INSERT INTO `create_plan` VALUES (5910, 103, 'uni001_cours039', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5911, 103, 'uni001_cours038', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5912, 103, 'uni001_cours037', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5913, 103, 'uni001_cours036', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5914, 103, 'uni001_cours035', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5915, 103, 'uni001_cours034', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5916, 103, 'uni001_cours033', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5917, 103, 'uni001_cours032', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5918, 103, 'uni001_doc008', 38, 550, 0, 43);
INSERT INTO `create_plan` VALUES (5919, 103, 'uni001_doc007', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5920, 103, 'uni001_doc006', 38, 450, 0, 43);
INSERT INTO `create_plan` VALUES (5921, 103, 'uni001_cours031', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5922, 103, 'uni001_cours030', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5923, 103, 'uni001_cours029', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5924, 103, 'uni001_cours028', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5925, 103, 'uni001_cours027', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5926, 103, 'uni001_cours026', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5927, 103, 'uni001_cours025', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5928, 103, 'uni001_cours024', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5929, 103, 'uni001_cours023', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5930, 103, 'uni001_doc005', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5931, 103, 'uni001_cours022', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5932, 103, 'uni001_cours021', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5933, 103, 'uni001_cours020', 38, 430, 0, 43);
INSERT INTO `create_plan` VALUES (5934, 103, 'uni001_cours019', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5935, 103, 'uni001_cours018', 38, 60, 0, 43);
INSERT INTO `create_plan` VALUES (5936, 103, 'uni001_cours017', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5937, 103, 'uni001_cours016', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5938, 103, 'uni001_cours015', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5939, 103, 'uni001_cours014', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5940, 103, 'uni001_cours013', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5941, 103, 'uni001_cours012', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5942, 103, 'uni001_doc004', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5943, 103, 'uni001_doc003', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5944, 103, 'uni001_doc002', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5945, 103, 'uni001_doc001', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5946, 103, 'uni001_cours011', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5947, 103, 'uni001_cours010', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5948, 103, 'uni001_cours009', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5949, 103, 'uni001_cours008', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5950, 103, 'uni001_cours007', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5951, 103, 'uni001_cours006', 38, 50, 0, 43);
INSERT INTO `create_plan` VALUES (5952, 103, 'uni001_cours005', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5953, 103, 'uni001_cours004', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5954, 103, 'uni001_cours003', 38, 40, 0, 43);
INSERT INTO `create_plan` VALUES (5955, 103, 'uni001_cours002', 38, 30, 0, 43);
INSERT INTO `create_plan` VALUES (5956, 103, 'uni001_cours001', 38, 30, 0, 43);

-- ----------------------------
-- Table structure for demand_user
-- ----------------------------
DROP TABLE IF EXISTS `demand_user`;
CREATE TABLE `demand_user`  (
  `demand_id` int(11) NOT NULL AUTO_INCREMENT,
  `demand_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `p_m_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`demand_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `p_m_id`(`p_m_id`) USING BTREE,
  CONSTRAINT `demand_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `demand_user_ibfk_2` FOREIGN KEY (`p_m_id`) REFERENCES `province_ministry` (`p_m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demand_user
-- ----------------------------
INSERT INTO `demand_user` VALUES (15, 'VTE', 'demand', 'ຊາຍ', '-', 'vte@mod.com', '202cb962ac59075b964b07152d234b70', 6, 1);
INSERT INTO `demand_user` VALUES (16, 'BKE', 'demand', 'ຊາຍ', '-', 'bke@mod.com', '202cb962ac59075b964b07152d234b70', 10, 20);
INSERT INTO `demand_user` VALUES (17, 'BLK', 'demand', 'ຊາຍ', '-', 'blk@mod.com', '202cb962ac59075b964b07152d234b70', 11, 21);
INSERT INTO `demand_user` VALUES (18, 'CPS', 'demand', 'ຊາຍ', '-', 'cps@mod.com', '202cb962ac59075b964b07152d234b70', 27, 22);
INSERT INTO `demand_user` VALUES (19, 'HPH', 'demand', 'ຊາຍ', '-', 'hph@mod.com', '202cb962ac59075b964b07152d234b70', 36, 23);
INSERT INTO `demand_user` VALUES (20, 'KHM', 'demand', 'ຊາຍ', '-', 'khm@mod.com', '202cb962ac59075b964b07152d234b70', 35, 24);
INSERT INTO `demand_user` VALUES (21, 'LNT', 'demand', 'ຊາຍ', '-', 'lnt@mod.com', '202cb962ac59075b964b07152d234b70', 28, 25);
INSERT INTO `demand_user` VALUES (22, 'LPB', 'demand', 'ຊາຍ', '-', 'lpb@mod.com', '202cb962ac59075b964b07152d234b70', 29, 26);
INSERT INTO `demand_user` VALUES (23, 'ODX', 'demand', 'ຊາຍ', '-', 'odx@mod.com', '202cb962ac59075b964b07152d234b70', 31, 27);
INSERT INTO `demand_user` VALUES (24, 'PSL', 'demand', 'ຊາຍ', '-', 'psl@mod.com', '202cb962ac59075b964b07152d234b70', 30, 28);
INSERT INTO `demand_user` VALUES (25, 'SLV', 'demand', 'ຊາຍ', '-', 'slv@mod.com', '202cb962ac59075b964b07152d234b70', 34, 29);
INSERT INTO `demand_user` VALUES (26, 'SVK', 'demand', 'ຊາຍ', '-', 'svk@mod.com', '202cb962ac59075b964b07152d234b70', 32, 30);
INSERT INTO `demand_user` VALUES (27, 'VTEP', 'demand', 'ຊາຍ', '-', 'vtep@mod.com', '202cb962ac59075b964b07152d234b70', 33, 31);
INSERT INTO `demand_user` VALUES (28, 'SYB', 'demand', 'ຊາຍ', '-', 'syb@mod.com', '202cb962ac59075b964b07152d234b70', 37, 32);
INSERT INTO `demand_user` VALUES (29, 'SKG', 'demand', 'ຊາຍ', '-', 'skg@mod.com', '202cb962ac59075b964b07152d234b70', 38, 33);
INSERT INTO `demand_user` VALUES (30, 'XSB', 'demand', 'ຊາຍ', '-', 'xsb@mod.com', '202cb962ac59075b964b07152d234b70', 39, 34);
INSERT INTO `demand_user` VALUES (31, 'XKG', 'demand', 'ຊາຍ', '-', 'xkg@mod.com', '202cb962ac59075b964b07152d234b70', 40, 35);
INSERT INTO `demand_user` VALUES (32, 'APT', 'demand', 'ຊາຍ', '-', 'apt@mod.com', '202cb962ac59075b964b07152d234b70', 41, 36);
INSERT INTO `demand_user` VALUES (33, 'SSK', 'demand', 'ຊາຍ', '-', 'ssk@mod.com', '202cb962ac59075b964b07152d234b70', 42, 37);
INSERT INTO `demand_user` VALUES (34, 'ENG', 'demand', 'ຊາຍ', '-', 'eng@mod.com', '202cb962ac59075b964b07152d234b70', 43, 38);
INSERT INTO `demand_user` VALUES (35, 'test', 'ts', 'ຊາຍ', '-', 'vte2@mod.com', '202cb962ac59075b964b07152d234b70', 44, 1);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `dept_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('001', 'ກົມການສຶກສາຊັ້ນສູງ ');
INSERT INTO `department` VALUES ('Dep_002', 'ກົມສ້າງຄູ');
INSERT INTO `department` VALUES ('Dep_003', 'ກົມອາຊີວະສຶກສາ');
INSERT INTO `department` VALUES ('Dep_004', 'ກະຊວງສາທາລະນະສຸກ');
INSERT INTO `department` VALUES ('Dep_005', 'ກະຊວງຖະແຫຼງຂ່າວ, ວັດທະນະທຳ ແລະ ທ່ອງທ່ຽວ');
INSERT INTO `department` VALUES ('Dep_006', 'ກະຊວງກະສິກຳ ແລະ ປ່າໄມ້');
INSERT INTO `department` VALUES ('Dep_007', 'ກະຊວງການເງິນ');
INSERT INTO `department` VALUES ('Dep_008', 'ທະນາຄານແຫ່ງ ສປປ ລາວ');
INSERT INTO `department` VALUES ('Dep_009', 'ກະຊວງຍຸຕິທຳ');
INSERT INTO `department` VALUES ('Dep_010', 'ກະຊວງໄປສະນີ, ໂທລະຄົມມະນາຄົມ ແລະ ການສືສານ');
INSERT INTO `department` VALUES ('HRD001', 'ສູນກາງແບ່ງປັນທຶນ');

-- ----------------------------
-- Table structure for document_type
-- ----------------------------
DROP TABLE IF EXISTS `document_type`;
CREATE TABLE `document_type`  (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_type
-- ----------------------------
INSERT INTO `document_type` VALUES (8, 'ນິຕິກຳ');
INSERT INTO `document_type` VALUES (9, 'ແຈ້ງການ');

-- ----------------------------
-- Table structure for document_upload
-- ----------------------------
DROP TABLE IF EXISTS `document_upload`;
CREATE TABLE `document_upload`  (
  `up_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NULL DEFAULT NULL,
  `fy_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `up_date` date NULL DEFAULT NULL,
  `file_upload` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`up_id`) USING BTREE,
  INDEX `doc_id`(`doc_id`) USING BTREE,
  INDEX `fy_id`(`fy_id`) USING BTREE,
  CONSTRAINT `document_upload_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `document_type` (`doc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `document_upload_ibfk_2` FOREIGN KEY (`fy_id`) REFERENCES `fy` (`fy_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_upload
-- ----------------------------
INSERT INTO `document_upload` VALUES (21, 8, '2021-2022', 'ແຈ້ງການຈຳນວນນັກສືກສາປີ 2022', 'Cover_6163a84b4d584.jpg', '2021-10-13', 'pdf_6163a84b4dba4.pdf');
INSERT INTO `document_upload` VALUES (22, 9, '2021-2022', 'Description: 99', 'Cover_6163a84b4d584.jpg', '2021-10-13', '');
INSERT INTO `document_upload` VALUES (23, 8, '2021-2022', 'ລາຍລະອຽດ', 'Cover_6163a84b4d584.jpg', '2021-10-13', '');
INSERT INTO `document_upload` VALUES (24, 8, '2021-2022', 'Description: 97', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (25, 8, '2021-2022', 'Description: 96', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (26, 8, '2021-2022', 'Description: 95', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (27, 8, '2021-2022', 'Description: 94', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (28, 8, '2021-2022', 'Description: 93', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (29, 8, '2021-2022', 'Description: 92', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (30, 8, '2021-2022', 'Description: 91', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (31, 8, '2021-2022', 'Description: 90', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (32, 8, '2021-2022', 'Description: 89', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (33, 8, '2021-2022', 'Description: 88', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (34, 8, '2021-2022', 'Description: 87', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (35, 8, '2021-2022', 'Description: 86', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (36, 8, '2021-2022', 'Description: 85', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (37, 8, '2021-2022', 'Description: 84', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (38, 8, '2021-2022', 'Description: 83', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (39, 8, '2021-2022', 'Description: 82', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (40, 8, '2021-2022', 'Description: 81', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (41, 8, '2021-2022', 'Description: 80', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (42, 8, '2021-2022', 'Description: 79', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (43, 8, '2021-2022', 'Description: 78', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (44, 8, '2021-2022', 'Description: 77', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (45, 8, '2021-2022', 'Description: 76', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (46, 8, '2021-2022', 'Description: 75', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (47, 8, '2021-2022', 'Description: 74', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (48, 8, '2021-2022', 'Description: 73', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (49, 8, '2021-2022', 'Description: 72', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (50, 8, '2021-2022', 'Description: 71', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (51, 8, '2021-2022', 'Description: 70', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (52, 8, '2021-2022', 'Description: 69', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (53, 8, '2021-2022', 'Description: 68', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (54, 8, '2021-2022', 'Description: 67', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (55, 8, '2021-2022', 'Description: 66', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (56, 8, '2021-2022', 'Description: 65', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (57, 8, '2021-2022', 'Description: 64', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (58, 8, '2021-2022', 'Description: 63', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (59, 8, '2021-2022', 'Description: 62', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (60, 8, '2021-2022', 'Description: 61', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (61, 8, '2021-2022', 'Description: 60', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (62, 8, '2021-2022', 'Description: 59', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (63, 8, '2021-2022', 'Description: 58', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (64, 8, '2021-2022', 'Description: 57', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (65, 8, '2021-2022', 'Description: 56', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (66, 8, '2021-2022', 'Description: 55', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (67, 8, '2021-2022', 'Description: 54', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (68, 8, '2021-2022', 'Description: 53', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (69, 8, '2021-2022', 'Description: 52', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (70, 8, '2021-2022', 'Description: 51', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (71, 8, '2021-2022', 'Description: 50', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (72, 8, '2021-2022', 'Description: 49', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (73, 8, '2021-2022', 'Description: 48', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (74, 8, '2021-2022', 'Description: 47', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (75, 8, '2021-2022', 'Description: 46', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (76, 8, '2021-2022', 'Description: 45', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (77, 8, '2021-2022', 'Description: 44', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (78, 8, '2021-2022', 'Description: 43', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (79, 8, '2021-2022', 'Description: 42', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (80, 8, '2021-2022', 'Description: 41', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (81, 8, '2021-2022', 'Description: 40', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (82, 8, '2021-2022', 'Description: 39', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (83, 8, '2021-2022', 'Description: 38', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (84, 8, '2021-2022', 'Description: 37', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (85, 8, '2021-2022', 'Description: 36', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (86, 8, '2021-2022', 'Description: 35', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (87, 8, '2021-2022', 'Description: 34', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (88, 8, '2021-2022', 'Description: 33', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (89, 8, '2021-2022', 'Description: 32', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (90, 8, '2021-2022', 'Description: 31', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (91, 8, '2021-2022', 'Description: 30', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (92, 8, '2021-2022', 'Description: 29', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (93, 8, '2021-2022', 'Description: 28', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (94, 8, '2021-2022', 'Description: 27', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (95, 8, '2021-2022', 'Description: 26', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (96, 8, '2021-2022', 'Description: 25', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (97, 8, '2021-2022', 'Description: 24', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (98, 8, '2021-2022', 'Description: 23', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (99, 8, '2021-2022', 'Description: 22', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (100, 8, '2021-2022', 'Description: 21', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (101, 8, '2021-2022', 'Description: 20', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (102, 8, '2021-2022', 'Description: 19', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (103, 8, '2021-2022', 'Description: 18', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (104, 8, '2021-2022', 'Description: 17', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (105, 8, '2021-2022', 'Description: 16', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (106, 8, '2021-2022', 'Description: 15', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (107, 8, '2021-2022', 'Description: 14', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (108, 8, '2021-2022', 'Description: 13', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (109, 8, '2021-2022', 'Description: 12', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (110, 8, '2021-2022', 'Description: 11', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (111, 8, '2021-2022', 'Description: 10', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (112, 8, '2021-2022', 'Description: 9', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (113, 8, '2021-2022', 'Description: 8', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (114, 8, '2021-2022', 'Description: 7', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (115, 8, '2021-2022', 'Description: 6', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (116, 8, '2021-2022', 'Description: 5', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (117, 8, '2021-2022', 'Description: 4', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (118, 8, '2021-2022', 'Description: 3', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (119, 8, '2021-2022', 'Description: 2', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (120, 8, '2021-2022', 'Description: 1', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (121, 8, '2021-2022', 'Description: 0', 'Cover_6163a84b4d584.jpg', '2021-10-13', NULL);
INSERT INTO `document_upload` VALUES (122, 8, '2021-2022', 'ແຈ້ງການຈຳນວນນັກສືກສາປີ 2022', 'Cover_616659e88946c.jpg', '2021-10-13', 'pdf_616659e889849.pdf');

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `fac_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fac_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uni_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fac_id`) USING BTREE,
  INDEX `uni_id`(`uni_id`) USING BTREE,
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`uni_id`) REFERENCES `university` (`uni_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES ('uni001_fac001', 'ຄະນະສຶກສາສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac002', 'ຄະນະອັກສອນສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac003', 'ຄະນະວິທະຍາສາດສັງຄົມ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac004', 'ຄະນະເສດຖະສາດ ແລະ ບໍລິຫານທຸລະກິດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac005', 'ຄະນະນິຕິສາດ ແລະ ລັດຖະສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac006', 'ຄະນະວິທະຍາສາດທຳມະຊາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac007', 'ຄະນະວິສະວະກຳສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac008', 'ຄະນະກະເສດສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac009', 'ຄະນະວິທະຍາສາດປ່າໄມ້', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac010', 'ຄະນະສະຖາປັດຕະຍະກຳສາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac011', 'ຄະນະວິທະຍາສາດສິ່ງແວດລ້ອມ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac012', 'ຄະນະວິສະວະກຳ ຊັບພະຍາກອນນ້ຳ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac013', 'ຄະນະວິທະຍາສາດການກິລາ-ກາຍະກຳ', 'uni001');
INSERT INTO `faculty` VALUES ('uni001_fac014', 'ຫຼັກສູດລາວນາໆຊາດ', 'uni001');
INSERT INTO `faculty` VALUES ('uni002_fac001', 'ຄະນະສຶກສາສາດ', 'uni002');
INSERT INTO `faculty` VALUES ('uni002_fac002', 'ຄະນະເສດຖະສາດ ແລະ ການຄຸ້ມຄອງ', 'uni002');
INSERT INTO `faculty` VALUES ('uni002_fac003', 'ຄະນະເສດຖະສາດ ແລະ ປ່າໄມ້', 'uni002');
INSERT INTO `faculty` VALUES ('uni002_fac004', 'ຄະນະນິຕິສາດ ແລະ ລັດຖະສາດ', 'uni002');
INSERT INTO `faculty` VALUES ('uni002_fac005', 'ຄະນະວິສະວະກຳສາດ', 'uni002');
INSERT INTO `faculty` VALUES ('uni002_fac006', 'ຄະນະວິທະຍາສາດທຳມະຊາດ', 'uni002');
INSERT INTO `faculty` VALUES ('uni003_Fac001', 'ຄະນະສຶກສາສາດ', 'uni003');
INSERT INTO `faculty` VALUES ('uni003_Fac002', 'ຄະນະເສດຖະສາດ ແລະ ການທ່ອງທ່ຽວ', 'uni003');
INSERT INTO `faculty` VALUES ('uni003_Fac003', 'ຄະນະກະເສດສາດ ແລະ ຊັບພະຍາກອນປ່າໄມ້', 'uni003');
INSERT INTO `faculty` VALUES ('uni003_Fac004', 'ສະຖາບັນປັດຕະຍາກຳສາດ', 'uni003');
INSERT INTO `faculty` VALUES ('uni003_Fac005', 'ວິສະວະກຳສາດ', 'uni003');
INSERT INTO `faculty` VALUES ('uni003_Fac006', 'ຄະນະພາສາສາດ', 'uni003');
INSERT INTO `faculty` VALUES ('uni004_fac001', 'ຄະນະກະເສດສາດ ແລະ ສີ່ງແວດລ້ອມ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac002', 'ຄະນະບໍລິຫານທຸລະກິດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac003', 'ຄະນະພາສາສາດ ແລະ ມະນຸດສາດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac004', 'ສູນເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac005', 'ຄະນະວິທະຍາສາດອາຫານ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac006', 'ຄະນະສຶກສາສາດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac007', 'ຄະນະວິທະຍາສາດທຳມະຊາດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac008', 'ຄະນະກະກຽມຄະນະວິສະວະກຳສາດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni004_fac009', 'ຫຼັກສູດລາວນາໆຊາດ', 'uni004');
INSERT INTO `faculty` VALUES ('uni042_fac001', 'ທົ່ວໄປ', 'uni042');
INSERT INTO `faculty` VALUES ('uni043_fac001', 'ທົ່ວໄປ', 'uni043');
INSERT INTO `faculty` VALUES ('uni044_fac001', 'ທົ່ວໄປ', 'uni044');
INSERT INTO `faculty` VALUES ('uni045_fac001', 'ທົ່ວໄປ', 'uni045');
INSERT INTO `faculty` VALUES ('uni046_fac001', 'ທົ່ວໄປ', 'uni046');
INSERT INTO `faculty` VALUES ('uni047_fac001', 'ທົ່ວໄປ', 'uni047');
INSERT INTO `faculty` VALUES ('uni048_fac001', 'ທົ່ວໄປ', 'uni048');
INSERT INTO `faculty` VALUES ('uni049_fac001', 'ຄະນະທົ່ວໄປ', 'uni049');
INSERT INTO `faculty` VALUES ('uni050_fac001', 'ຄະນະທົ່ວໄປ', 'uni050');
INSERT INTO `faculty` VALUES ('uni051_fac001', 'ຄະນະທົ່ວໄປ', 'uni051');
INSERT INTO `faculty` VALUES ('uni057_fac001', 'ຄະນະທົ່ວໄປ', 'uni057');
INSERT INTO `faculty` VALUES ('uni058_fac001', 'ຄະນະທົ່ວໄປ', 'uni058');
INSERT INTO `faculty` VALUES ('uni059_fac001', 'ຄະນະທົ່ວໄປ', 'uni059');
INSERT INTO `faculty` VALUES ('uni060_fac001', 'ຄະນະທົ່ວໄປ', 'uni060');
INSERT INTO `faculty` VALUES ('uni061_fac001', 'ຄະນະທົ່ວໄປ', 'uni061');
INSERT INTO `faculty` VALUES ('uni062_fac001', 'ຄະນະທົ່ວໄປ', 'uni062');
INSERT INTO `faculty` VALUES ('uni063_fac_001', 'ຄະນະທົ່ວໄປ', 'uni063');
INSERT INTO `faculty` VALUES ('uni064_fac001', 'ຄະນະທົ່ວໄປ', 'uni064');
INSERT INTO `faculty` VALUES ('uni065_fac_001', 'ຄະນະທົ່ວໄປ', 'uni065');
INSERT INTO `faculty` VALUES ('uni070_fac001', 'ຄະນະທົ່ວໄປ', 'uni070');

-- ----------------------------
-- Table structure for fy
-- ----------------------------
DROP TABLE IF EXISTS `fy`;
CREATE TABLE `fy`  (
  `fy_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `qty_student` int(11) NULL DEFAULT NULL,
  `qty_con` int(11) NULL DEFAULT NULL,
  `qty_student_inside` int(11) NULL DEFAULT NULL,
  `qty_collegue_con` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`fy_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fy
-- ----------------------------
INSERT INTO `fy` VALUES ('2021-2022', '', 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for hrd_user
-- ----------------------------
DROP TABLE IF EXISTS `hrd_user`;
CREATE TABLE `hrd_user`  (
  `hrd_id` int(11) NOT NULL AUTO_INCREMENT,
  `hrd_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `uni_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hrd_id`) USING BTREE,
  INDEX `uni_id`(`uni_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `hrd_user_ibfk_1` FOREIGN KEY (`uni_id`) REFERENCES `university` (`uni_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hrd_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hrd_user
-- ----------------------------
INSERT INTO `hrd_user` VALUES (3, 'admin', 'admin', 'ຊາຍ', '02099999999', 'admin@mod.com', '202cb962ac59075b964b07152d234b70', 7, 'HRD1');
INSERT INTO `hrd_user` VALUES (8, 'hrd_central', 'test', 'ຊາຍ', '12345678', 'hrd@mod.com', '202cb962ac59075b964b07152d234b70', 23, 'HRD1');
INSERT INTO `hrd_user` VALUES (11, 'Parkpasak', 'Hrd', 'ຊາຍ', '12345678', 'parkpasak@mod.com', '202cb962ac59075b964b07152d234b70', 2, 'uni019');
INSERT INTO `hrd_user` VALUES (12, 'noul', 'hrd', 'ຊາຍ', '12345678', 'noul_hrd@mod.com', '202cb962ac59075b964b07152d234b70', 24, 'uni001');

-- ----------------------------
-- Table structure for province_ministry
-- ----------------------------
DROP TABLE IF EXISTS `province_ministry`;
CREATE TABLE `province_ministry`  (
  `p_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_m_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`p_m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province_ministry
-- ----------------------------
INSERT INTO `province_ministry` VALUES (1, 'ນະຄອນຫຼວງວຽງຈັນ');
INSERT INTO `province_ministry` VALUES (20, 'ແຂວງບໍແກ້ວ');
INSERT INTO `province_ministry` VALUES (21, 'ແຂວງບໍລິຄຳໄຊ');
INSERT INTO `province_ministry` VALUES (22, 'ແຂວງຈຳປາຊັກ');
INSERT INTO `province_ministry` VALUES (23, 'ແຂວງຫົວພັນ\r\n');
INSERT INTO `province_ministry` VALUES (24, 'ແຂວງຄຳມວນ\r\n');
INSERT INTO `province_ministry` VALUES (25, 'ແຂວງຫຼວງນ້ຳທາ\r\n');
INSERT INTO `province_ministry` VALUES (26, 'ແຂວງຫຼວງພະບາງ\r\n');
INSERT INTO `province_ministry` VALUES (27, 'ແຂວງອຸດົມໄຊ\r\n');
INSERT INTO `province_ministry` VALUES (28, 'ແຂວງຜົງສາລີ\r\n');
INSERT INTO `province_ministry` VALUES (29, 'ແຂວງສາລະວັນ\r\n');
INSERT INTO `province_ministry` VALUES (30, 'ແຂວງສະຫວັນນະເຂດ\r\n');
INSERT INTO `province_ministry` VALUES (31, 'ແຂວງວຽງຈັນ\r\n');
INSERT INTO `province_ministry` VALUES (32, 'ແຂວງໄຊຍະບູລີ\r\n');
INSERT INTO `province_ministry` VALUES (33, 'ແຂວງເຊກອງ\r\n');
INSERT INTO `province_ministry` VALUES (34, 'ແຂວງໄຊສົມບູນ\r\n');
INSERT INTO `province_ministry` VALUES (35, 'ແຂວງຊຽງຂວາງ\r\n');
INSERT INTO `province_ministry` VALUES (36, 'ແຂວງອັດຕະປື\r\n');
INSERT INTO `province_ministry` VALUES (37, 'ກະຊວງແຮງງານ\r\n');
INSERT INTO `province_ministry` VALUES (38, 'ກະຊວງພະລັງງານ\r\n');

-- ----------------------------
-- Table structure for quota_distribute
-- ----------------------------
DROP TABLE IF EXISTS `quota_distribute`;
CREATE TABLE `quota_distribute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `p_m_id` int(11) NOT NULL,
  `std_qty` int(11) NOT NULL,
  `emp_qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `d_id`(`d_id`) USING BTREE,
  INDEX `p_m_id`(`p_m_id`) USING BTREE,
  CONSTRAINT `quota_distribute_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `adjustdetail` (`d_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `quota_distribute_ibfk_2` FOREIGN KEY (`p_m_id`) REFERENCES `province_ministry` (`p_m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quota_distribute
-- ----------------------------
INSERT INTO `quota_distribute` VALUES (15, 69, 38, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (16, 69, 37, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (17, 69, 36, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (18, 69, 35, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (19, 69, 34, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (20, 69, 33, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (21, 69, 32, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (22, 69, 31, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (23, 69, 30, 0, 0, 24);
INSERT INTO `quota_distribute` VALUES (24, 69, 29, 4, 0, 24);
INSERT INTO `quota_distribute` VALUES (25, 69, 28, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (26, 69, 27, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (27, 69, 26, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (28, 69, 25, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (29, 69, 22, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (30, 69, 20, 3, 0, 24);
INSERT INTO `quota_distribute` VALUES (31, 69, 1, 2, 0, 24);

-- ----------------------------
-- Table structure for supply_user
-- ----------------------------
DROP TABLE IF EXISTS `supply_user`;
CREATE TABLE `supply_user`  (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `uni_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sup_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `uni_id`(`uni_id`) USING BTREE,
  CONSTRAINT `supply_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `supply_user_ibfk_2` FOREIGN KEY (`uni_id`) REFERENCES `university` (`uni_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supply_user
-- ----------------------------
INSERT INTO `supply_user` VALUES (9, 'NOUL', 'supply', 'ຊາຍ', '-', 'noul@mod.com', '202cb962ac59075b964b07152d234b70', 1, 'uni001');
INSERT INTO `supply_user` VALUES (10, 'NCPS', 'supply', 'ຊາຍ', '-', 'ncps@mod.com', '202cb962ac59075b964b07152d234b70', 12, 'uni002');
INSERT INTO `supply_user` VALUES (11, 'NSPN', 'supply', 'ຊາຍ', '-', 'nspn@mod.com', '202cb962ac59075b964b07152d234b70', 26, 'uni003');
INSERT INTO `supply_user` VALUES (12, 'nsvk', 'supply', 'ຊາຍ', '-', 'nsvk@mod.com', '202cb962ac59075b964b07152d234b70', 13, 'uni004');
INSERT INTO `supply_user` VALUES (13, 'mvs', 'supply', 'ຊາຍ', '-', 'mvs@mod.com', '202cb962ac59075b964b07152d234b70', 64, 'uni042');
INSERT INTO `supply_user` VALUES (14, 'vsr', 'supply', 'ຊາຍ', '-', 'vsr@mod.com', '202cb962ac59075b964b07152d234b70', 63, 'uni043');
INSERT INTO `supply_user` VALUES (15, 'vss', 'supply', 'ຊາຍ', '-', 'vss@mod.com', '202cb962ac59075b964b07152d234b70', 62, 'uni044');
INSERT INTO `supply_user` VALUES (16, 'vsj', 'supply', 'ຊາຍ', '-', 'vsj@mod.com', '202cb962ac59075b964b07152d234b70', 61, 'uni045');
INSERT INTO `supply_user` VALUES (17, 'hssk', 'supply', 'ຊາຍ', '-', 'hssk@mod.com', '202cb962ac59075b964b07152d234b70', 60, 'uni046');
INSERT INTO `supply_user` VALUES (18, 'hhudom', 'supply', 'ຊາຍ', '-', 'hhudom@mod.com', '202cb962ac59075b964b07152d234b70', 59, 'uni047');
INSERT INTO `supply_user` VALUES (19, 'hpbt', 'supply', 'ຊາຍ', '-', 'hpbt@mod.com', '202cb962ac59075b964b07152d234b70', 58, 'uni048');
INSERT INTO `supply_user` VALUES (20, 'hhkmg', 'supply', 'ຊາຍ', '-', 'hhkmg@mod.com', '202cb962ac59075b964b07152d234b70', 57, 'uni049');
INSERT INTO `supply_user` VALUES (21, 'hsk', 'supply', 'ຊາຍ', '-', 'hsk@mod.com', '202cb962ac59075b964b07152d234b70', 56, 'uni050');
INSERT INTO `supply_user` VALUES (22, 'svse', 'supply', 'ຊາຍ', '-', 'svse@mod.com', '202cb962ac59075b964b07152d234b70', 55, 'uni051');
INSERT INTO `supply_user` VALUES (23, 'vijidsin', 'supply', 'ຊາຍ', '-', 'vijidsin@mod.com', '202cb962ac59075b964b07152d234b70', 54, 'uni052');
INSERT INTO `supply_user` VALUES (24, 'art', 'supply', 'ຊາຍ', '-', 'art@mod.com', '202cb962ac59075b964b07152d234b70', 53, 'uni053');
INSERT INTO `supply_user` VALUES (25, 'vjsl', 'supply', 'ຊາຍ', '-', 'vjsl@mod.com', '202cb962ac59075b964b07152d234b70', 45, 'uni054');
INSERT INTO `supply_user` VALUES (26, 'vjss', 'supply', 'ຊາຍ', '-', 'vjss@mod.com', '202cb962ac59075b964b07152d234b70', 52, 'uni055');
INSERT INTO `supply_user` VALUES (27, 'vjsc', 'supply', 'ຊາຍ', '-', 'vjsc@mod.com', '202cb962ac59075b964b07152d234b70', 46, 'uni056');
INSERT INTO `supply_user` VALUES (28, 'bionorth', 'supply', 'ຊາຍ', '-', 'bionorth@mod.com', '202cb962ac59075b964b07152d234b70', 47, 'uni057');
INSERT INTO `supply_user` VALUES (29, 'bioblk', 'supply', 'ຊາຍ', '-', 'bioblk@mod.com', '202cb962ac59075b964b07152d234b70', 48, 'uni058');
INSERT INTO `supply_user` VALUES (30, 'biosvk', 'supply', 'ຊາຍ', '-', 'biosvk@mod.com', '202cb962ac59075b964b07152d234b70', 49, 'uni059');
INSERT INTO `supply_user` VALUES (31, 'biocps', 'supply', 'ຊາຍ', '-', 'biocps@mod.com', '202cb962ac59075b964b07152d234b70', 50, 'uni060');
INSERT INTO `supply_user` VALUES (32, 'finanlpb', 'supply', 'ຊາຍ', '-', 'finanlpb@mod.com', '202cb962ac59075b964b07152d234b70', 51, 'uni062');
INSERT INTO `supply_user` VALUES (33, 'ecodks', 'supply', 'ຊາຍ', '-', 'ecodks@mod.com', '202cb962ac59075b964b07152d234b70', 70, 'uni063');
INSERT INTO `supply_user` VALUES (34, 'financps', 'supply', 'ຊາຍ', '-', 'financps@mod.com', '202cb962ac59075b964b07152d234b70', 65, 'uni064');
INSERT INTO `supply_user` VALUES (35, 'bank', 'supply', 'ຊາຍ', '-', 'bank@mod.com', '202cb962ac59075b964b07152d234b70', 69, 'uni065');
INSERT INTO `supply_user` VALUES (36, 'lawlpb', 'supply', 'ຊາຍ', '-', 'lawlpb@mod.com', '202cb962ac59075b964b07152d234b70', 66, 'uni066');
INSERT INTO `supply_user` VALUES (37, 'lawcps', 'supply', 'ຊາຍ', '-', 'lawcps@mod.com', '202cb962ac59075b964b07152d234b70', 67, 'uni067');
INSERT INTO `supply_user` VALUES (38, 'lawsvk', 'supply', 'ຊາຍ', '-', 'lawsvk@mod.com', '202cb962ac59075b964b07152d234b70', 68, 'uni068');
INSERT INTO `supply_user` VALUES (39, 'lawvte', 'supply', 'ຊາຍ', '-', 'lawvte@mod.com', '202cb962ac59075b964b07152d234b70', 71, 'uni069');
INSERT INTO `supply_user` VALUES (40, 'lawcom', 'supply', 'ຊາຍ', '-', 'lawcom@mod.com', '202cb962ac59075b964b07152d234b70', 72, 'uni070');
INSERT INTO `supply_user` VALUES (41, 'sontangon', 'supply', 'ຊາຍ', '-', 'sontangon@mod.com', '202cb962ac59075b964b07152d234b70', 73, 'uni061');

-- ----------------------------
-- Table structure for university
-- ----------------------------
DROP TABLE IF EXISTS `university`;
CREATE TABLE `university`  (
  `uni_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uni_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dept_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uni_id`) USING BTREE,
  INDEX `dept_id`(`dept_id`) USING BTREE,
  CONSTRAINT `university_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of university
-- ----------------------------
INSERT INTO `university` VALUES ('HRD1', 'ສູນກາງ', 'HRD001');
INSERT INTO `university` VALUES ('uni001', 'ມະຫາວິທະຍາໄລແຫ່ງຊາດ', '001');
INSERT INTO `university` VALUES ('uni002', 'ມະຫາວິທະຍາໄລຈຳປາສັກ', '001');
INSERT INTO `university` VALUES ('uni003', 'ມະຫາວິທະຍາໄລ ສຸພານຸວົງ', '001');
INSERT INTO `university` VALUES ('uni004', 'ມະຫາວິທະຍາໄລສະຫວັນນະເຂດ', '001');
INSERT INTO `university` VALUES ('uni005', 'ວິທະຍາໄລຄູຫຼວງນ້ຳທາ', 'Dep_002');
INSERT INTO `university` VALUES ('uni006', 'ວິທະຍາໄລຄູຫຼວງພະບາງ', 'Dep_002');
INSERT INTO `university` VALUES ('uni007', 'ວິທະຍາໄລຄູຄັງໄຂ', 'Dep_002');
INSERT INTO `university` VALUES ('uni008', 'ວິທະຍາໄລຄູບ້ານເກິນ', 'Dep_002');
INSERT INTO `university` VALUES ('uni009', 'ວິທະຍາໄລຄູດົງຄຳຊ້າງ', 'Dep_002');
INSERT INTO `university` VALUES ('uni010', 'ວິທະຍາໄລຄູສະຫວັນ', 'Dep_002');
INSERT INTO `university` VALUES ('uni011', 'ວິທະຍາໄລຄູປາກເຊ', 'Dep_002');
INSERT INTO `university` VALUES ('uni012', 'ວິທະຍາໄລຄູສາລະວັນ', 'Dep_002');
INSERT INTO `university` VALUES ('uni013', 'ວິທະຍາໄລພະລະສຶກສາ', 'Dep_002');
INSERT INTO `university` VALUES ('uni014', 'ວິທະຍາໄລ ສິລະປະສຶກສາ', 'Dep_002');
INSERT INTO `university` VALUES ('uni015', 'ວິທະຍາໄລສົງອົງຕື້', 'Dep_002');
INSERT INTO `university` VALUES ('uni016', 'ວິທະຍາໄລສົງຈຳປາສັກ', 'Dep_002');
INSERT INTO `university` VALUES ('uni017', 'ສະຖາບັນພັດທະນາອາຊີວະສຶກສາ', 'Dep_003');
INSERT INTO `university` VALUES ('uni018', 'ວິທະຍາໄລເຕັກນິກຊັບພະວິຊາ', 'Dep_003');
INSERT INTO `university` VALUES ('uni019', 'ວິທະຍາໄລເຕັກນິກປາກປ່າສັກ', 'Dep_003');
INSERT INTO `university` VALUES ('uni020', 'ຮຮ. ຕນ. ລາວ-ເຢຍລະມັນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni021', 'ຮຮ.ຕນ. ກະສິກຳດົງຄຳຊ້າງ', 'Dep_003');
INSERT INTO `university` VALUES ('uni022', 'ວິທະຍາໄລ ວິຊາຊີບ ມິດຕະພາບ ວຽງຈັນ-ຮ່າໂນ້ຍ', 'Dep_003');
INSERT INTO `university` VALUES ('uni023', 'ວິທະຍາໄລ ເຕັກນິກ ແຂວງວຽງຈັນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni024', 'ວິທະຍາໄລ ເຕັກນິກ ວິຊາຊີບ ແຂວງຄຳມ່ວນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni025', 'ວິທະຍາໄລ ເຕັກນິກ ວິຊາຊີບ ແຂວງຈຳປາສັກ', 'Dep_003');
INSERT INTO `university` VALUES ('uni026', 'ຮຮ.ຕນ.ວິຊາຊີບແບບປະສົມ ແຂວງຜົ່ງສາລີ', 'Dep_003');
INSERT INTO `university` VALUES ('uni027', 'ຮຮ.ຕນ.ວິຊາຊີບ ບປປສ ແຂວງຫຼວງນ້ຳທາ', 'Dep_003');
INSERT INTO `university` VALUES ('uni028', 'ຮຮ.ຕນ. ວິຊາຊີບ ບປສ ແຂວງອຸດົມໄຊ', 'Dep_003');
INSERT INTO `university` VALUES ('uni029', 'ຮຮ.ຕນ. ວິຊາຊີບ ແຂວງບໍ່ແກ້ວ', 'Dep_003');
INSERT INTO `university` VALUES ('uni030', 'ຮຮ. ຕນ ວິຊາຊີບ ແບບປະສົມແຂວງ ຊຽງຂວາງ', 'Dep_003');
INSERT INTO `university` VALUES ('uni031', 'ຮຮ. ຕນ ວິຊາຊີບ ແບບປະສົມ ແຂວງຫົວພັນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni032', 'ຮຮ.ຕນ.ວິຊາຊີບ ບປສ ແຂວງໄຊຍະບູລີ', 'Dep_003');
INSERT INTO `university` VALUES ('uni033', 'ຮຮ.ຕນ.ວິຊາຊີບ ຫຼວງພະບາງ', 'Dep_003');
INSERT INTO `university` VALUES ('uni034', 'ຮຮ.ຕນ. ວິຊາຊີບ ບໍລິຄຳໄຊ', 'Dep_003');
INSERT INTO `university` VALUES ('uni035', 'ຮຮ. ຕນ.ວິຊາຊີບ ສະຫວັນນະເຂດ', 'Dep_003');
INSERT INTO `university` VALUES ('uni036', 'ຮຮ. ຕນ.ວິຊາຊີບ ແຂວງເຊກອງ', 'Dep_003');
INSERT INTO `university` VALUES ('uni037', 'ຮຮ. ຕນ.ວິຊາຊີບ ແຂວງສາລະວັນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni038', 'ຮຮ. ຕນ.ວິຊາຊີບ ແຂວງອັດຕະປື', 'Dep_003');
INSERT INTO `university` VALUES ('uni039', 'ສະຖາບັນໂຮງແຮມ ແລະ ການທ່ອງທ່ຽວແຫ່ງຊາດ', 'Dep_003');
INSERT INTO `university` VALUES ('uni040', 'ຮຮ. ຕນ.ວິຊາຊີບ ໄຊສົມບູນ', 'Dep_003');
INSERT INTO `university` VALUES ('uni041', 'ຮຮ. ຕນ.ວິຊາຊີບ ນ້ຳບາກ', 'Dep_003');
INSERT INTO `university` VALUES ('uni042', 'ມະຫາວິທະຍາໄລ ວິທະຍາສາດ ສຸຂະພາບ (ມວສ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni043', 'ວິທະຍາໄລ ວິທະຍາສາດ ສຸຂະພາບ ຫຼວງພະບາງ (ວສຫຼ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni044', 'ວິທະຍາໄລ ວິທະຍາສາດ ສຸຂະພາບ ສະຫວັນນະເຂດ (ວສສ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni045', 'ວິທະຍາໄລ ວິທະຍາສາດ ສຸຂະພາບ ຈຳປາສັກ (ວສຈ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni046', 'ໂຮງຮຽນສາທາລະນະສຸກຊຽງຂວາງ (ຮສຊຂ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni047', 'ໂຮງຮຽນສາທາລະນະສຸກ ອຸດົມໄຊ', 'Dep_004');
INSERT INTO `university` VALUES ('uni048', 'ໂຮງຮຽນພະຍາບານເຕັກນິກແຂວງວຽງຈັນ (ຮພບຕ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni049', 'ໂຮງຮຽນສາທາລະນະສຸກຄຳມ່ວນ', 'Dep_004');
INSERT INTO `university` VALUES ('uni050', 'ສູນຝຶກອົບຮົມ ຮສຂ ແຂວງສາລະວັນ', 'Dep_004');
INSERT INTO `university` VALUES ('uni051', 'ສູນກໍ່ສ້າງ ແລະ ຝຶກອົບຮົມສາທາລະນະສຸກອັດຕະປື (ສວສອ)', 'Dep_004');
INSERT INTO `university` VALUES ('uni052', 'ສະຖາບັນວິຈິດສິນແຫ່ງຊາດ', 'Dep_005');
INSERT INTO `university` VALUES ('uni053', 'ໂຮງຮຽນ ສິລະປະແຫ່ງຊາດ', 'Dep_005');
INSERT INTO `university` VALUES ('uni054', 'ວິທະຍາໄລ ວິຈິດສິນ ຫຼວງພະບາງ', 'Dep_005');
INSERT INTO `university` VALUES ('uni055', 'ໂຮງຮຽນ ວິຈິດສິນ ສະຫວັນນະເຂດ', 'Dep_005');
INSERT INTO `university` VALUES ('uni056', 'ໂຮງຮຽນ ວິຈິດສິນ ຈຳປາສັກ', 'Dep_005');
INSERT INTO `university` VALUES ('uni057', 'ວິທະຍາໄລກະສິກຳ ແລະ ປ່າໄມ້ ພາກເໜືອ', 'Dep_006');
INSERT INTO `university` VALUES ('uni058', 'ວິທະຍາໄລກະສິກຳ ແລະ ປ່າໄມ້ ບໍລິຄຳໄຊ', 'Dep_006');
INSERT INTO `university` VALUES ('uni059', 'ວິທະຍາໄລກະສິກຳ ແລະ ປ່າໄມ້ ສະຫວັນນະເຂດ', 'Dep_006');
INSERT INTO `university` VALUES ('uni060', 'ວິທະຍາໄລກະສິກຳ ແລະ ປ່າໄມ້ ຈຳປາສັກ', 'Dep_006');
INSERT INTO `university` VALUES ('uni061', 'ໂຮງຮຽນຊົນລະປະທານຊັ້ນສູງທ່າງ່ອນ', 'Dep_006');
INSERT INTO `university` VALUES ('uni062', 'ວິທະຍາໄລການເງິນ ພາກເໜືອ (ຫຼວງພະບາງ)', 'Dep_007');
INSERT INTO `university` VALUES ('uni063', 'ສະຖາບັນເສດຖະກິດການເງິນ (ດົງຄຳຊ້າງ)', 'Dep_007');
INSERT INTO `university` VALUES ('uni064', 'ວິທະຍາໄລການເງິນ ພາກໃຕ້ (ຈຳປາສັກ)', 'Dep_007');
INSERT INTO `university` VALUES ('uni065', 'ສະຖາບັນການທະນາຄານ', 'Dep_008');
INSERT INTO `university` VALUES ('uni066', 'ວິທະຍາໄລກົດໝາຍ ພາກເໜືອ ຫຼວງພະບາງ', 'Dep_009');
INSERT INTO `university` VALUES ('uni067', 'ວິທະຍາໄລກົດໝາຍ ພາກໃຕ້ ແຂວງຈຳປາສັກ', 'Dep_009');
INSERT INTO `university` VALUES ('uni068', 'ວິທະຍາໄລກົດໝາຍ ພາກກາງ ສະຫວັນນະເຂດ', 'Dep_009');
INSERT INTO `university` VALUES ('uni069', 'ວິທະຍາໄລກົດໝາຍ ພາກກາງ ນະຄອນຫຼວງວຽງຈັນ', 'Dep_009');
INSERT INTO `university` VALUES ('uni070', 'ສະຖາບັນ ໄປສະນີ ໂທລະຄົມ ແລະ ການສື່ສານ', 'Dep_010');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `stt_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `stt_id`(`stt_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`stt_id`) REFERENCES `user_status` (`stt_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 1);
INSERT INTO `user` VALUES (23, 1);
INSERT INTO `user` VALUES (24, 1);
INSERT INTO `user` VALUES (6, 2);
INSERT INTO `user` VALUES (10, 2);
INSERT INTO `user` VALUES (11, 2);
INSERT INTO `user` VALUES (27, 2);
INSERT INTO `user` VALUES (28, 2);
INSERT INTO `user` VALUES (29, 2);
INSERT INTO `user` VALUES (30, 2);
INSERT INTO `user` VALUES (31, 2);
INSERT INTO `user` VALUES (32, 2);
INSERT INTO `user` VALUES (33, 2);
INSERT INTO `user` VALUES (34, 2);
INSERT INTO `user` VALUES (35, 2);
INSERT INTO `user` VALUES (36, 2);
INSERT INTO `user` VALUES (37, 2);
INSERT INTO `user` VALUES (38, 2);
INSERT INTO `user` VALUES (39, 2);
INSERT INTO `user` VALUES (40, 2);
INSERT INTO `user` VALUES (41, 2);
INSERT INTO `user` VALUES (42, 2);
INSERT INTO `user` VALUES (43, 2);
INSERT INTO `user` VALUES (44, 2);
INSERT INTO `user` VALUES (1, 3);
INSERT INTO `user` VALUES (12, 3);
INSERT INTO `user` VALUES (13, 3);
INSERT INTO `user` VALUES (26, 3);
INSERT INTO `user` VALUES (45, 3);
INSERT INTO `user` VALUES (46, 3);
INSERT INTO `user` VALUES (47, 3);
INSERT INTO `user` VALUES (48, 3);
INSERT INTO `user` VALUES (49, 3);
INSERT INTO `user` VALUES (50, 3);
INSERT INTO `user` VALUES (51, 3);
INSERT INTO `user` VALUES (52, 3);
INSERT INTO `user` VALUES (53, 3);
INSERT INTO `user` VALUES (54, 3);
INSERT INTO `user` VALUES (55, 3);
INSERT INTO `user` VALUES (56, 3);
INSERT INTO `user` VALUES (57, 3);
INSERT INTO `user` VALUES (58, 3);
INSERT INTO `user` VALUES (59, 3);
INSERT INTO `user` VALUES (60, 3);
INSERT INTO `user` VALUES (61, 3);
INSERT INTO `user` VALUES (62, 3);
INSERT INTO `user` VALUES (63, 3);
INSERT INTO `user` VALUES (64, 3);
INSERT INTO `user` VALUES (65, 3);
INSERT INTO `user` VALUES (66, 3);
INSERT INTO `user` VALUES (67, 3);
INSERT INTO `user` VALUES (68, 3);
INSERT INTO `user` VALUES (69, 3);
INSERT INTO `user` VALUES (70, 3);
INSERT INTO `user` VALUES (71, 3);
INSERT INTO `user` VALUES (72, 3);
INSERT INTO `user` VALUES (73, 3);
INSERT INTO `user` VALUES (7, 4);

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS `user_status`;
CREATE TABLE `user_status`  (
  `stt_id` int(11) NOT NULL,
  `stt_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`stt_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO `user_status` VALUES (1, 'HRD');
INSERT INTO `user_status` VALUES (2, 'Demand');
INSERT INTO `user_status` VALUES (3, 'Supply');
INSERT INTO `user_status` VALUES (4, 'Admin');

-- ----------------------------
-- Procedure structure for adjust_detail
-- ----------------------------
DROP PROCEDURE IF EXISTS `adjust_detail`;
delimiter ;;
CREATE PROCEDURE `adjust_detail`(IN `items` TEXT)
BEGIN
	START TRANSACTION;
	SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		UPDATE adjustdetail SET univer=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.univer') as `univer`),prov=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.prov') as `prov`),intv=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.intv') as `intv`),ad_test=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.ad_test') as `ad_test`),emp=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp') as `emp`),std_handi=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_handi') as `std_handi`),std_lan=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_lan') as `std_lan`),ssk=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.ssk') as `ssk`),std=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std') as `std`),emp_gov=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_gov') as `emp_gov`),test=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.test') as `test`),std_con=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_con') as `std_con`),std_2lan=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_2lan') as `std_2lan`),std_inter=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_inter') as `std_inter`),emp_private=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_private') as `emp_private`),remark_hrd=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.remark_hrd') as `remark_hrd`) WHERE d_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.d_id') as `d_id`);
    END WHILE;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for clear_data;
-- ----------------------------
DROP PROCEDURE IF EXISTS `clear_data;`;
delimiter ;;
CREATE PROCEDURE `clear_data;`()
BEGIN
	START TRANSACTION;
		DELETE FROM quota_distribute;
		DELETE FROM adjustdetail;
		DELETE FROM create_plan;
		DELETE FROM adjust;
		DELETE FROM document_upload;
		DELETE FROM document_type;
		DELETE FROM fy;
		DELETE FROM course;
		DELETE FROM course_level;
		DELETE FROM faculty;
		
-- 		DELETE FROM department;
		DELETE FROM hrd_user WHERE uni_id!='HRD1';
		DELETE FROM demand_user;
		DELETE FROM supply_user;
		DELETE FROM university WHERE uni_id!='HRD1';
		DELETE FROM province_ministry;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_course
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_course`;
delimiter ;;
CREATE PROCEDURE `delete_course`(IN `course_ids` VARCHAR(50))
BEGIN
DELETE FROM course WHERE course_id=course_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_department
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_department`;
delimiter ;;
CREATE PROCEDURE `delete_department`(IN `dept_ids` VARCHAR(20))
BEGIN
DELETE FROM department WHERE dept_id=dept_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_documentType
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_documentType`;
delimiter ;;
CREATE PROCEDURE `delete_documentType`(IN `doc_ids` INT(11))
BEGIN
DELETE FROM document_type WHERE doc_id=doc_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_documentUpload
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_documentUpload`;
delimiter ;;
CREATE PROCEDURE `delete_documentUpload`(IN `up_ids` INT(11))
BEGIN
DELETE FROM document_upload WHERE up_id=up_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_faculty
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_faculty`;
delimiter ;;
CREATE PROCEDURE `delete_faculty`(IN `fac_ids` VARCHAR(30))
BEGIN
DELETE FROM faculty WHERE fac_id=fac_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_hrd
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_hrd`;
delimiter ;;
CREATE PROCEDURE `delete_hrd`(IN `user_ids` INT(11))
BEGIN
DELETE FROM hrd_user WHERE user_id=user_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_level
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_level`;
delimiter ;;
CREATE PROCEDURE `delete_level`(IN `level_ids` INT(11))
BEGIN
	DELETE FROM course_level WHERE level_id=level_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_province
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_province`;
delimiter ;;
CREATE PROCEDURE `delete_province`(IN `p_m_ids` INT(11))
BEGIN
	START TRANSACTION;
		DELETE FROM province_ministry WHERE p_m_id=p_m_ids;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_university
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_university`;
delimiter ;;
CREATE PROCEDURE `delete_university`(IN `uni_ids` VARCHAR(20))
BEGIN
DELETE FROM university WHERE uni_id=uni_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_user`;
delimiter ;;
CREATE PROCEDURE `delete_user`(IN `user_ids` INT(11))
BEGIN
DELETE FROM user WHERE user_id=user_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_userDemand
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_userDemand`;
delimiter ;;
CREATE PROCEDURE `delete_userDemand`(IN `user_ids` INT(11))
BEGIN
DELETE FROM demand_user WHERE user_id=user_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for delete_userSupply
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_userSupply`;
delimiter ;;
CREATE PROCEDURE `delete_userSupply`(IN `user_ids` INT(11))
BEGIN
DELETE FROM supply_user WHERE user_id=user_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_course
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_course`;
delimiter ;;
CREATE PROCEDURE `insert_course`(IN `course_ids` VARCHAR(50), IN `course_names` VARCHAR(50), IN `fac_ids` VARCHAR(30), IN `level_ids` INT(11))
BEGIN
INSERT INTO course SET course_id=course_ids,course_name=course_names,fac_id=fac_ids,level_id=level_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_createPlan
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_createPlan`;
delimiter ;;
CREATE PROCEDURE `insert_createPlan`(IN `items` TEXT)
BEGIN
START TRANSACTION;
SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 IF(EXISTS(SELECT * FROM create_plan WHERE adj_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.adj_id') as `adj_id`) AND course_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.course_id') as `course_id`) AND user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`))) THEN
		 SELECT "" as msg;
		 ELSE
		INSERT INTO create_plan SET adj_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.adj_id') as `adj_id`),course_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.course_id') as `course_id`),p_m_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.p_m_id') as `p_m_id`),std_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_qty') as `std_qty`),emp_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_qty') as `emp_qty`),user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`);
		END IF;
    END WHILE;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_department
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_department`;
delimiter ;;
CREATE PROCEDURE `insert_department`(IN `dept_ids` VARCHAR(20), IN `dept_names` VARCHAR(50))
BEGIN
INSERT INTO department SET dept_id=dept_ids, dept_name=dept_names;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_documentType
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_documentType`;
delimiter ;;
CREATE PROCEDURE `insert_documentType`(IN `doc_names` VARCHAR(50))
BEGIN
INSERT INTO document_type SET doc_name=doc_names;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_documentUpload
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_documentUpload`;
delimiter ;;
CREATE PROCEDURE `insert_documentUpload`(IN `doc_ids` INT(11), IN `fy_ids` VARCHAR(10), IN `descriptions` TEXT, IN `covers` VARCHAR(100), IN `up_dates` DATE, IN `file_uploads` TEXT)
BEGIN
INSERT INTO document_upload SET doc_id=doc_ids,fy_id=fy_ids,description=descriptions,cover=covers,up_date=up_dates,file_upload=file_uploads;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_faculty
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_faculty`;
delimiter ;;
CREATE PROCEDURE `insert_faculty`(IN `fac_ids` VARCHAR(30), IN `fac_names` VARCHAR(50), IN `uni_ids` VARCHAR(20))
BEGIN
INSERT INTO faculty SET fac_id=fac_ids,fac_name=fac_names,uni_id=uni_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_fy
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_fy`;
delimiter ;;
CREATE PROCEDURE `insert_fy`(IN `file_paths` VARCHAR(100), IN `statuss` TINYINT(1), IN `fy_ids` VARCHAR(10), IN `qty_s` INT(11), IN `qty_c` INT(11), IN `qty_i` INT(11), IN `qty_q` INT(11))
BEGIN
DECLARE json TEXT DEFAULT '';
START TRANSACTION;
INSERT INTO fy SET fy_id=fy_ids,file_path=file_paths,status=statuss,qty_student=qty_s,qty_con=qty_c,qty_student_inside=qty_i,qty_collegue_con=qty_q;
SET json = (SELECT JSON_ARRAYAGG(JSON_OBJECT('dept_id', dept_id)) from department);
SET @i = (SELECT Json_Length(json));
    WHILE @i > 0 DO
        SET @i = @i - 1;
					INSERT INTO adjust SET fy_id=fy_ids,dept_id=(SELECT JSON_VALUE(JSON_QUERY(json,CONCAT('$[',@i,']')), '$.dept_id') as `dept_id`);
    END WHILE;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_getplan
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_getplan`;
delimiter ;;
CREATE PROCEDURE `insert_getplan`(IN `items` TEXT)
BEGIN
START TRANSACTION;
SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 IF EXISTS(SELECT * FROM adjustdetail WHERE adj_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.adj_id') as `adj_id`) AND course_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.course_id') as `course_id`)) THEN
			SELECT "" AS msg;
		 ELSE
				INSERT INTO adjustdetail SET adj_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.adj_id') as `adj_id`),course_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.course_id') as `course_id`),get_plan=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.get_plan') as `get_plan`),user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`);
    END IF;
		END WHILE;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_hrd
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_hrd`;
delimiter ;;
CREATE PROCEDURE `insert_hrd`(IN `hrd_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `user_ids` INT(11), IN `uni_ids` VARCHAR(20))
BEGIN
INSERT INTO hrd_user SET
hrd_name=hrd_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,user_id=user_ids,uni_id=uni_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_level
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_level`;
delimiter ;;
CREATE PROCEDURE `insert_level`(IN `level_ids` INT(11),IN `level_names` VARCHAR(50))
BEGIN
	START TRANSACTION;
		IF EXISTS(SELECT * FROM course_level WHERE level_id=level_ids) THEN
			SELECT "same-id" as msg;
		ELSEIF EXISTS(SELECT * FROM course_level WHERE level_name=level_names) THEN
			SELECT "same-name" as msg;
		ELSE
			INSERT INTO course_level SET level_id=level_ids,level_name=level_names;
			SELECT "success" as msg;
		END IF;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_province
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_province`;
delimiter ;;
CREATE PROCEDURE `insert_province`(IN `p_m_names` VARCHAR(50))
BEGIN
	START TRANSACTION;
		IF EXISTS(SELECT * FROM province_ministry WHERE p_m_name=p_m_names) THEN
			SELECT "same" as msg;
		ELSE
			INSERT INTO province_ministry SET p_m_name=p_m_names;
			SELECT "success" as msg;
		END IF;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_quota_distribute
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_quota_distribute`;
delimiter ;;
CREATE PROCEDURE `insert_quota_distribute`(IN `items` TEXT)
BEGIN
	START TRANSACTION;
SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 IF EXISTS(SELECT * FROM quota_distribute WHERE d_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.d_id') as `d_id`) AND p_m_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.p_m_id') as `p_m_id`)) THEN
			SELECT "" AS msg;
		 ELSE
				INSERT INTO quota_distribute SET d_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.d_id') as `d_id`),p_m_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.p_m_id') as `p_m_id`),std_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_qty') as `std_qty`),emp_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_qty') as `emp_qty`),user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`);
    END IF;
		END WHILE;
COMMIT;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_university
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_university`;
delimiter ;;
CREATE PROCEDURE `insert_university`(IN `uni_ids` VARCHAR(20), IN `uni_names` VARCHAR(50), IN `dept_ids` VARCHAR(20))
BEGIN
INSERT INTO university SET uni_id=uni_ids,uni_name=uni_names,dept_id=dept_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_user`;
delimiter ;;
CREATE PROCEDURE `insert_user`(IN `stt_ids` INT(11))
BEGIN
INSERT INTO user SET stt_id=stt_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_userDemand
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_userDemand`;
delimiter ;;
CREATE PROCEDURE `insert_userDemand`(IN `demand_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `user_ids` INT(11), IN `p_m_ids` INT(11))
BEGIN
INSERT INTO demand_user SET demand_name=demand_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,user_id=user_ids,p_m_id=p_m_ids; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert_userSupply
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_userSupply`;
delimiter ;;
CREATE PROCEDURE `insert_userSupply`(IN `sup_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `user_ids` INT(11), IN `uni_ids` VARCHAR(20))
BEGIN
INSERT INTO supply_user SET sup_name=sup_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,user_id=user_ids,uni_id=uni_ids; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for loop_insert_file
-- ----------------------------
DROP PROCEDURE IF EXISTS `loop_insert_file`;
delimiter ;;
CREATE PROCEDURE `loop_insert_file`()
BEGIN
	SET @i = 100;
	WHILE @i > 0 DO
        SET @i = @i - 1;
					INSERT INTO document_upload SET doc_id='8',fy_id='2021-2022',description=CONCAT('Description: ',@i),cover='Cover_6163a84b4d584.jpg';
   END WHILE;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_course
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_course`;
delimiter ;;
CREATE PROCEDURE `select_course`(IN `uni_ids` VARCHAR(20))
BEGIN
SELECT course_id,course_name,c.fac_id,fac_name,uni_name,c.level_id,level_name FROM course c
LEFT JOIN faculty f ON c.fac_id=f.fac_id
LEFT JOIN university u ON f.uni_id=u.uni_id
LEFT JOIN course_level cl ON c.level_id=cl.level_id
WHERE f.uni_id=uni_ids ORDER BY course_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_createPlan
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_createPlan`;
delimiter ;;
CREATE PROCEDURE `select_createPlan`(IN `dept_names` VARCHAR(50))
BEGIN
SELECT cre_id,cp.adj_id,cp.course_id,p_m_id,std_qty,emp_qty,cp.user_id,course_name,c.fac_id,fac_name,f.uni_id,uni_name,u.dept_id,dept_name FROM create_plan cp LEFT JOIN course c on cp.course_id=c.course_id LEFT JOIN faculty f ON c.fac_id=f.fac_id LEFT JOIN university u on f.uni_id=u.uni_id LEFT JOIN department d ON u.dept_id=d.dept_id WHERE dept_name=dept_names ORDER BY uni_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_department
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_department`;
delimiter ;;
CREATE PROCEDURE `select_department`()
BEGIN
SELECT dept_id,dept_name FROM department ORDER BY dept_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_documentType
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_documentType`;
delimiter ;;
CREATE PROCEDURE `select_documentType`()
BEGIN
SELECT doc_id,doc_name FROM document_type ORDER BY doc_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_document_Upload
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_document_Upload`;
delimiter ;;
CREATE PROCEDURE `select_document_Upload`()
BEGIN
SELECT up_id,du.doc_id,doc_name,du.fy_id,description,cover,up_date,file_path,status,doc_name,file_upload FROM document_upload du LEFT JOIN fy f ON du.fy_id=f.fy_id LEFT JOIN document_type dt on du.doc_id=dt.doc_id ORDER BY doc_name ASC; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_faculty
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_faculty`;
delimiter ;;
CREATE PROCEDURE `select_faculty`(IN `uni_ids` VARCHAR(20))
BEGIN
SELECT fac_id,fac_name,f.uni_id,uni_name,dept_name FROM faculty f LEFT JOIN university u ON f.uni_id=u.uni_id LEFT JOIN department d ON u.dept_id=d.dept_id WHERE f.uni_id=uni_ids ORDER BY fac_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_fy
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_fy`;
delimiter ;;
CREATE PROCEDURE `select_fy`()
BEGIN
SELECT * FROM fy ORDER BY fy_id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_hrd
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_hrd`;
delimiter ;;
CREATE PROCEDURE `select_hrd`(IN `emails` VARCHAR(100), IN `passed` VARCHAR(100))
BEGIN
SELECT hrd_id,hrd_name,email,pass,hu.user_id,uni_id,u.stt_id FROM hrd_user hu 
LEFT JOIN `user` u ON hu.user_id=u.user_id
WHERE email=emails AND BINARY pass=passed ORDER BY hrd_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_level
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_level`;
delimiter ;;
CREATE PROCEDURE `select_level`()
BEGIN
		SELECT * FROM course_level;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_package_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_package_user`;
delimiter ;;
CREATE PROCEDURE `select_package_user`()
  NO SQL 
Begin
SELECT u.user_id,u.stt_id,stt_name FROM user u left join user_status us on u.stt_id=us.stt_id
WHERE u.user_id NOT IN (SELECT h.user_id FROM hrd_user h) and u.user_id NOT IN (SELECT s.user_id FROM supply_user s) and u.user_id NOT IN (SELECT d.user_id FROM demand_user d) order by u.user_id ASC;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_province
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_province`;
delimiter ;;
CREATE PROCEDURE `select_province`()
BEGIN
	SELECT * FROM province_ministry;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_university
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_university`;
delimiter ;;
CREATE PROCEDURE `select_university`()
BEGIN
SELECT uni_id,uni_name,u.dept_id,dept_name FROM university u LEFT JOIN department d ON u.dept_id=d.dept_id ORDER BY uni_name ASC; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_uni_adjust
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_uni_adjust`;
delimiter ;;
CREATE PROCEDURE `select_uni_adjust`(IN `adj_ids` INT(11), IN `dept_ids` VARCHAR(20), IN `uni_ids` TEXT)
BEGIN
	SELECT u.uni_id,uni_name,dept_name,sum(get_plan) AS total_uni FROM adjustdetail ad
  LEFT JOIN course c ON ad.course_id=c.course_id
  LEFT JOIN faculty f ON c.fac_id=f.fac_id
  LEFT JOIN university u ON f.uni_id=u.uni_id
  LEFT JOIN department d ON u.dept_id=d.dept_id
  LEFT JOIN adjust a ON ad.adj_id=a.adj_id
  WHERE ad.adj_id=adj_ids AND d.dept_id=dept_ids AND u.uni_id NOT IN (uni_ids) GROUP BY u.uni_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_user`;
delimiter ;;
CREATE PROCEDURE `select_user`()
BEGIN
SELECT user_id,u.stt_id,stt_name FROM user u LEFT JOIN user_status us ON u.stt_id=us.stt_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_userDemand
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_userDemand`;
delimiter ;;
CREATE PROCEDURE `select_userDemand`(IN `emails` VARCHAR(100), IN `passed` VARCHAR(100))
BEGIN
SELECT demand_id,demand_name,surname,gender,tel,email,pass,du.user_id,du.p_m_id,p_m_name,u.stt_id,us.stt_name FROM demand_user du LEFT JOIN province_ministry pm ON du.p_m_id=pm.p_m_id LEFT JOIN user u ON  du.user_id=u.user_id LEFT JOIN user_status us ON u.stt_id=us.stt_id WHERE email=emails AND BINARY pass=passed ORDER BY demand_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_userSupply
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_userSupply`;
delimiter ;;
CREATE PROCEDURE `select_userSupply`(IN `emails` VARCHAR(100), IN `passed` VARCHAR(100))
BEGIN
SELECT sup_id,sup_name,surname,gender,tel,email,pass,su.user_id,su.uni_id,u.stt_id,us.stt_name,uni.uni_name,uni.dept_id FROM supply_user su LEFT JOIN user u ON su.user_id=u.user_id LEFT JOIN user_status us ON u.stt_id=us.stt_id LEFT JOIN university uni ON su.uni_id=uni.uni_id WHERE email=emails AND BINARY pass=passed ORDER BY sup_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_course
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_course`;
delimiter ;;
CREATE PROCEDURE `update_course`(IN `course_ids` VARCHAR(50), IN `course_names` VARCHAR(50), IN `fac_ids` VARCHAR(30), IN `level_ids` INT(11))
BEGIN
UPDATE course SET course_name=course_names,fac_id=fac_ids,level_id=level_ids WHERE course_id=course_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_createPlan
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_createPlan`;
delimiter ;;
CREATE PROCEDURE `update_createPlan`(IN `items` TEXT)
BEGIN
	START TRANSACTION;
	SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 
		UPDATE create_plan SET std_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_qty') as `std_qty`),emp_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_qty') as `emp_qty`) WHERE cre_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.cre_id') as `cre_id`);
    END WHILE;
	COMMIT;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_department
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_department`;
delimiter ;;
CREATE PROCEDURE `update_department`(IN `dept_ids` VARCHAR(20), IN `dept_names` VARCHAR(50))
BEGIN
UPDATE department SET dept_name=dept_names WHERE dept_id=dept_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_documentType
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_documentType`;
delimiter ;;
CREATE PROCEDURE `update_documentType`(IN `doc_names` VARCHAR(50), IN `doc_ids` INT(11))
BEGIN
UPDATE document_type SET doc_name=doc_names WHERE doc_id=doc_ids; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_documentUpload
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_documentUpload`;
delimiter ;;
CREATE PROCEDURE `update_documentUpload`(IN `doc_ids` INT(11), IN `fy_ids` VARCHAR(10), IN `descriptions` TEXT, IN `covers` VARCHAR(100), IN `up_dates` DATE, IN `file_uploads` TEXT, IN `up_ids` INT(11))
BEGIN
UPDATE document_upload SET doc_id=doc_ids,fy_id=fy_ids,description=descriptions,cover=covers,up_date=up_dates,file_upload=file_uploads WHERE up_id=up_ids; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_faculty
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_faculty`;
delimiter ;;
CREATE PROCEDURE `update_faculty`(IN `fac_ids` VARCHAR(30), IN `fac_names` VARCHAR(50), IN `uni_ids` VARCHAR(20))
BEGIN
UPDATE faculty SET fac_name=fac_names,uni_id=uni_ids WHERE fac_id=fac_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_fy
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_fy`;
delimiter ;;
CREATE PROCEDURE `update_fy`(IN `file_paths` VARCHAR(100), IN `statuss` TINYINT(1), IN `qty_s` INT(11), IN `qty_c` INT(11), IN `qty_i` INT(11), IN `qty_q` INT(11), IN `fy_ids` VARCHAR(10))
BEGIN
UPDATE fy SET status=statuss,file_path=file_paths,qty_student=qty_s,qty_con=qty_c,qty_student_inside=qty_i,qty_collegue_con=qty_q WHERE fy_id=fy_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_getplan
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_getplan`;
delimiter ;;
CREATE PROCEDURE `update_getplan`(IN `items` TEXT)
BEGIN
DECLARE get_plans INT DEFAULT 0;
START TRANSACTION;
SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 SET get_plans = (SELECT get_plan FROM adjustdetail WHERE d_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.d_id') as `d_id`));
			 IF(get_plans = (SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.get_plan') as `get_plan`)) THEN
					SELECT "" AS msg;
			 ELSE
					UPDATE adjustdetail SET get_plan=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.get_plan') as `get_plan`),user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`) WHERE d_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.d_id') as `d_id`);	
			END IF;
		END WHILE;
COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_hrd
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_hrd`;
delimiter ;;
CREATE PROCEDURE `update_hrd`(IN `hrd_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `uni_ids` VARCHAR(20), IN `hrd_ids` INT(11))
BEGIN
UPDATE hrd_user SET
hrd_name=hrd_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,uni_id=uni_ids WHERE hrd_id=hrd_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_level
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_level`;
delimiter ;;
CREATE PROCEDURE `update_level`(IN `level_ids` INT(11),IN `level_names` VARCHAR(50))
BEGIN
	START TRANSACTION;
		IF EXISTS(SELECT * FROM course_level WHERE level_name=level_names) THEN
			SELECT "same-name" as msg;
		ELSE
			UPDATE course_level SET level_name=level_names WHERE level_id=level_ids;
			SELECT "success" as msg;
		END IF;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_province
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_province`;
delimiter ;;
CREATE PROCEDURE `update_province`(IN `p_m_ids` INT(11),IN `p_m_names` VARCHAR(50))
BEGIN
	START TRANSACTION;
		IF EXISTS(SELECT * FROM province_ministry WHERE p_m_name=p_m_names) THEN
			SELECT "same" as msg;
		ELSE
			UPDATE province_ministry SET p_m_name=p_m_names WHERE p_m_id=p_m_ids;
			SELECT "success" as msg;
		END IF;
	COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_quota_distribute
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_quota_distribute`;
delimiter ;;
CREATE PROCEDURE `update_quota_distribute`(IN `items` TEXT)
BEGIN
	START TRANSACTION;
SET @i = (SELECT Json_Length(items));
	WHILE @i > 0 DO
     SET @i = @i - 1;
		 IF EXISTS(SELECT * FROM quota_distribute WHERE id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.id') as `id`) AND std_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_qty') as `std_qty`) AND emp_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_qty') as `emp_qty`)) THEN
			SELECT "" AS msg;
		 ELSE
				UPDATE quota_distribute SET std_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.std_qty') as `std_qty`),emp_qty=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.emp_qty') as `emp_qty`),user_id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.user_id') as `user_id`) WHERE id=(SELECT JSON_VALUE(JSON_QUERY(items,CONCAT('$[',@i,']')), '$.id') as `id`);
    END IF;
		END WHILE;
COMMIT;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_university
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_university`;
delimiter ;;
CREATE PROCEDURE `update_university`(IN `uni_ids` VARCHAR(20), IN `uni_names` VARCHAR(50), IN `dept_ids` VARCHAR(20))
BEGIN
UPDATE university SET uni_name=uni_names,dept_id=dept_ids WHERE uni_id=uni_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_user`;
delimiter ;;
CREATE PROCEDURE `update_user`(IN `user_ids` INT(11), IN `stt_ids` INT(11))
BEGIN
UPDATE user SET stt_id=stt_ids where user_id=user_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_userDemand
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_userDemand`;
delimiter ;;
CREATE PROCEDURE `update_userDemand`(IN `demand_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `p_m_ids` INT(11), IN `demand_ids` INT(11))
BEGIN
UPDATE demand_user SET demand_name=demand_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,p_m_id=p_m_ids WHERE demand_id=demand_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for update_userSupply
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_userSupply`;
delimiter ;;
CREATE PROCEDURE `update_userSupply`(IN `sup_ids` INT(11), IN `sup_names` VARCHAR(50), IN `surnames` VARCHAR(50), IN `genders` VARCHAR(10), IN `tels` VARCHAR(30), IN `emails` VARCHAR(100), IN `passs` VARCHAR(100), IN `uni_ids` VARCHAR(20))
BEGIN
UPDATE supply_user SET sup_name=sup_names,surname=surnames,gender=genders,tel=tels,email=emails,pass=passs,uni_id=uni_ids WHERE sup_id=sup_ids;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `userAdmin`;
delimiter ;;
CREATE PROCEDURE `userAdmin`()
  NO SQL 
BEGIN
SELECT u.user_id,u.stt_id,stt_name,hrd_name FROM user u LEFT JOIN user_status us ON u.stt_id=us.stt_id LEFT JOIN hrd_user h ON u.user_id=h.user_id WHERE u.stt_id = 4 ORDER BY u.user_id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userDemand
-- ----------------------------
DROP PROCEDURE IF EXISTS `userDemand`;
delimiter ;;
CREATE PROCEDURE `userDemand`()
  NO SQL 
BEGIN
SELECT demand_id,demand_name,surname,gender,tel,email,pass,du.user_id,du.p_m_id,p_m_name,u.stt_id,us.stt_name FROM demand_user du LEFT JOIN province_ministry pm ON du.p_m_id=pm.p_m_id LEFT JOIN user u ON  du.user_id=u.user_id LEFT JOIN user_status us ON u.stt_id=us.stt_id ORDER BY demand_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userHRD
-- ----------------------------
DROP PROCEDURE IF EXISTS `userHRD`;
delimiter ;;
CREATE PROCEDURE `userHRD`()
  NO SQL 
BEGIN
SELECT hrd_id,hrd_name,surname,gender,tel,email,pass,hu.user_id,hu.uni_id,uni_name,uni.dept_id,u.stt_id,us.stt_name,dept_name FROM hrd_user hu LEFT JOIN user u ON hu.user_id=u.user_id LEFT JOIN user_status us ON u.stt_id=us.stt_id LEFT JOIN university uni ON hu.uni_id=uni.uni_id LEFT JOIN department d ON uni.dept_id=d.dept_id ORDER BY hrd_name ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for userSupply
-- ----------------------------
DROP PROCEDURE IF EXISTS `userSupply`;
delimiter ;;
CREATE PROCEDURE `userSupply`()
  NO SQL 
BEGIN
SELECT sup_id,sup_name,surname,gender,tel,email,pass,su.user_id,su.uni_id,u.stt_id,us.stt_name,uni.uni_name,uni.dept_id FROM supply_user su LEFT JOIN user u ON su.user_id=u.user_id LEFT JOIN user_status us ON u.stt_id=us.stt_id LEFT JOIN university uni ON su.uni_id=uni.uni_id ORDER BY sup_id ASC;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
