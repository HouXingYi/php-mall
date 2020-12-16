/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/12/2020 16:22:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_user`;
CREATE TABLE `mall_admin_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后端用户主键id\r\n',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态码 1正常 0待审核 99删除',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_login_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最后登录ip',
  `operate_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人',
  PRIMARY KEY (`id`, `username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_admin_user
-- ----------------------------
INSERT INTO `mall_admin_user` VALUES (1, 'admin', '505a130cef02004784f8c252dbde0d83', 1, 0, 0, 0, '127.0.0.1', 'admin');

-- ----------------------------
-- Table structure for mall_demo
-- ----------------------------
DROP TABLE IF EXISTS `mall_demo`;
CREATE TABLE `mall_demo`  (
  `id` int(11) NULL DEFAULT NULL,
  `title` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `content` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `category_id` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `update_time` date NULL DEFAULT NULL,
  `status` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_demo
-- ----------------------------
INSERT INTO `mall_demo` VALUES (1, '我是标题', '我是内容', '1', '2020-12-09', '2020-12-09', '1');

SET FOREIGN_KEY_CHECKS = 1;
