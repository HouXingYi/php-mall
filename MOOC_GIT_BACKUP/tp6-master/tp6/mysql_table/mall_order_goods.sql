/*
 Navicat Premium Data Transfer

 Source Server         : 132.232.40.159
 Source Server Type    : MySQL
 Source Server Version : 50647
 Source Host           : 132.232.40.159:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50647
 File Encoding         : 65001

 Date: 09/11/2020 15:56:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mall_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `mall_order_goods`;
CREATE TABLE `mall_order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `sku_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品sku_id',
  `sku` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'sku文案',
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品ID',
  `num` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品数量',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '商品单价',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品标题',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品图片',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
