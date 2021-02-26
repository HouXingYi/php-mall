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

 Date: 09/11/2020 15:56:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mall_order
-- ----------------------------
DROP TABLE IF EXISTS `mall_order`;
CREATE TABLE `mall_order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `total_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式',
  `logistics` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物流名称',
  `logistics_order` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物流订单号',
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '购买者信息',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邮寄地址',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单修改时间',
  `pay_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付时间',
  `consignment_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发货时间',
  `end_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '交易完成时间',
  `close_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单关闭时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1：待支付；2：已付款；3：已发货；4：已收货；5：退货退款；7：已取消',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`, `order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
