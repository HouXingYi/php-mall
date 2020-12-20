/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/12/2020 18:12:27
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
INSERT INTO `mall_admin_user` VALUES (1, 'admin', '1b0f8e5f4c799fb07b8aa4e1b5de2aca', 1, 0, 1608381636, 1608381636, '127.0.0.1', 'admin');

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

-- ----------------------------
-- Table structure for mall_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_user`;
CREATE TABLE `mall_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ltype` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录方式 默认0 手机号码登录 1用户名密码登录',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '会话保存天数',
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `operate_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usernme`(`username`) USING BTREE,
  INDEX `phone_number`(`phone_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
