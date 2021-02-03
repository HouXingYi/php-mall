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

 Date: 03/02/2021 16:00:30
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
INSERT INTO `mall_admin_user` VALUES (1, 'admin', '1b0f8e5f4c799fb07b8aa4e1b5de2aca', 1, 0, 1612333480, 1612333480, '127.0.0.1', 'admin');

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父类ID',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '路径 1,2,5',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `operate_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category
-- ----------------------------
INSERT INTO `mall_category` VALUES (93, '111', 0, '', '', 1609589973, 1610435282, '', 99, 0);
INSERT INTO `mall_category` VALUES (94, '222', 0, '', '', 1609589983, 1610435279, '', 99, 0);
INSERT INTO `mall_category` VALUES (95, '第一个分类', 0, '', '', 1610435295, 1610435295, '', 1, 0);
INSERT INTO `mall_category` VALUES (96, '第二个分类', 0, '', '', 1610435308, 1610435308, '', 1, 0);
INSERT INTO `mall_category` VALUES (97, '222', 0, '', '', 1610443040, 1610443040, '', 1, 0);
INSERT INTO `mall_category` VALUES (98, '测试分类', 0, '', '', 1610443052, 1610506045, '', 1, 0);
INSERT INTO `mall_category` VALUES (99, '第五个菜单', 0, '', '', 1610507283, 1610507283, '', 1, 0);
INSERT INTO `mall_category` VALUES (100, '999', 0, '', '', 1610507295, 1610520570, '', 1, 2);
INSERT INTO `mall_category` VALUES (101, '发发威', 0, '', '', 1610507306, 1610520568, '', 1, 1);
INSERT INTO `mall_category` VALUES (102, '999的子栏目', 100, '', '', 1610527526, 1610527526, '', 1, 0);
INSERT INTO `mall_category` VALUES (103, '222', 100, '', '', 1610609897, 1610609897, '', 1, 0);
INSERT INTO `mall_category` VALUES (104, '444', 100, '', '', 1610609909, 1610609909, '', 1, 0);
INSERT INTO `mall_category` VALUES (105, '4453', 100, '', '', 1610609920, 1610609920, '', 1, 0);
INSERT INTO `mall_category` VALUES (106, '54343', 100, '', '', 1610609931, 1610609931, '', 1, 0);
INSERT INTO `mall_category` VALUES (107, '432423', 100, '', '', 1610609989, 1610609989, '', 1, 0);
INSERT INTO `mall_category` VALUES (108, '第三级的分类', 107, '', '', 1610610255, 1610610255, '', 1, 0);
INSERT INTO `mall_category` VALUES (109, '达瓦大哇', 101, '', '', 1612336975, 1612336975, '', 1, 0);
INSERT INTO `mall_category` VALUES (110, '分分啊', 109, '', '', 1612336988, 1612336988, '', 1, 0);
INSERT INTO `mall_category` VALUES (111, '达瓦大哇', 101, '', '', 1612337011, 1612337011, '', 1, 0);

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
-- Table structure for mall_goods
-- ----------------------------
DROP TABLE IF EXISTS `mall_goods`;
CREATE TABLE `mall_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品标题',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品分类',
  `category_path_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目ID path',
  `promotion_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品促销语',
  `goods_unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品单位',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `sub_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '副标题',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '现价',
  `cost_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '原价',
  `sku_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品默认的sku_id',
  `is_show_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否显示库存',
  `production_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '生产日期',
  `goods_specs_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品规则 1统一，2多规格',
  `big_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '大图',
  `recommend_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品推荐图',
  `carousel_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详情页轮播图',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情',
  `is_index_recommend` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否首页推荐大图商品',
  `goods_specs_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所有规则属性存放json',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `operate_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `category_path_id`(`category_path_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_goods
-- ----------------------------
INSERT INTO `mall_goods` VALUES (1, '测试商品', 108, '100,107,108', '快来买，不买不是人', '1', '买', '副标题', 10, 0.00, 0.00, 1, 1, '2021-01-28', 2, '/upload/image/20210128\\a03013e67fa6dc080231f1c799c1e1b1.jpg', '/upload/image/20210128\\c30b39a16df49adbcd7dc8592a532e8a.jpg', '/upload/image/20210128\\1b30c9ab89dfae12224228fc663c3aba.jpg,/upload/image/20210128\\7bee33288de25ae72172100d8c06a833.jpeg', '1312412412<img src=\"/upload/image/20210128\\bc2e2ca8739d338468d3376ded2fcbec.jpg\" alt=\"undefined\">', 1, '', 1611819337, 1611819337, '', 1, 0);
INSERT INTO `mall_goods` VALUES (2, '12131', 108, '100,107,108', '432141', '11', '34214', '43214231', 574, 0.00, 0.00, 5, 1, '2021-02-03', 2, '/upload/image/20210203\\3d3e83b5181c5d41146e80c4ce3259a0.jpg', '/upload/image/20210203\\493fec678b8f55606fb64ca030928a36.jpg', '/upload/image/20210203\\0e84079666db0515d1deff86d3a640f0.jpeg,/upload/image/20210203\\eda01bee8f10b2d40bf5a27f7bf3f368.jpg,/upload/image/20210203\\68691296e961677eba6b86f22abba472.jpg', '14564515416<img src=\"/upload/image/20210203\\9ffc5dfcd734b2d70ad912a3f8801671.jpg\" alt=\"undefined\">', 0, '', 1612323033, 1612323033, '', 1, 0);
INSERT INTO `mall_goods` VALUES (3, '111', 108, '100,107,108', '法务范围', '发个', '非法收', '达瓦大哇', 99, 0.00, 0.00, 9, 1, '2021-02-03', 2, '/upload/image/20210203\\9bf053add6a2734489dda952befbfdfb.jpeg', '/upload/image/20210203\\98b7037580e1713c335bcf4e1879e1ba.jpg', '/upload/image/20210203\\092c42328e26a1c78af73fae034368f9.jpg', '22234344556661', 0, '', 1612336934, 1612336934, '', 1, 0);
INSERT INTO `mall_goods` VALUES (4, '222', 110, '101,109,110', '444', '666', '555', '333', 266, 0.00, 0.00, 11, 1, '2021-02-03', 2, '/upload/image/20210203\\f2a1cbc98d5cdb70a2a73900fc4ec478.jpg', '/upload/image/20210203\\8ff860c6efff568fd31c161d0bff891e.jpg', '/upload/image/20210203\\ef5f69674e82f7c89fae4323fc9dfb46.jpg', '2131321232134<img src=\"/upload/image/20210203\\57047d8c2bf045f4868026a4b3ba907f.jpg\" alt=\"undefined\">', 0, '', 1612337144, 1612337144, '', 1, 0);

-- ----------------------------
-- Table structure for mall_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `mall_goods_sku`;
CREATE TABLE `mall_goods_sku`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品Id',
  `specs_value_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '每行规则属性ID 按逗号连接',
  `price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '现价',
  `cost_price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '库存',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_goods_sku
-- ----------------------------
INSERT INTO `mall_goods_sku` VALUES (1, 1, '1,3', 0.00, 0.00, 23, 1, 1611819337, 1611819337);
INSERT INTO `mall_goods_sku` VALUES (2, 1, '1,4', 0.00, 0.00, 44, 1, 1611819337, 1611819337);
INSERT INTO `mall_goods_sku` VALUES (3, 1, '2,3', 0.00, 0.00, 32, 1, 1611819337, 1611819337);
INSERT INTO `mall_goods_sku` VALUES (4, 1, '2,4', 0.00, 0.00, 100, 1, 1611819337, 1611819337);
INSERT INTO `mall_goods_sku` VALUES (5, 2, '1,6,8', 0.00, 0.00, 434, 1, 1612323033, 1612323033);
INSERT INTO `mall_goods_sku` VALUES (6, 2, '1,6,10', 0.00, 0.00, 34, 1, 1612323033, 1612323033);
INSERT INTO `mall_goods_sku` VALUES (7, 2, '1,7,8', 0.00, 0.00, 53, 1, 1612323033, 1612323033);
INSERT INTO `mall_goods_sku` VALUES (8, 2, '1,7,10', 0.00, 0.00, 53, 1, 1612323033, 1612323033);
INSERT INTO `mall_goods_sku` VALUES (9, 3, '6,11', 0.00, 0.00, 44, 1, 1612336934, 1612336934);
INSERT INTO `mall_goods_sku` VALUES (10, 3, '7,11', 0.00, 0.00, 55, 1, 1612336934, 1612336934);
INSERT INTO `mall_goods_sku` VALUES (11, 4, '11,3', 0.00, 0.00, 44, 1, 1612337144, 1612337144);
INSERT INTO `mall_goods_sku` VALUES (12, 4, '11,4', 0.00, 0.00, 222, 1, 1612337144, 1612337144);

-- ----------------------------
-- Table structure for mall_specs_value
-- ----------------------------
DROP TABLE IF EXISTS `mall_specs_value`;
CREATE TABLE `mall_specs_value`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `specs_id` int(10) UNSIGNED NOT NULL COMMENT '规格ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规格属性名',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `operate_user` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specs_id`(`specs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_specs_value
-- ----------------------------
INSERT INTO `mall_specs_value` VALUES (1, 1, '红色', 1611300678, 1611300678, '', 1);
INSERT INTO `mall_specs_value` VALUES (2, 1, '绿色', 1611300822, 1611300822, '', 1);
INSERT INTO `mall_specs_value` VALUES (3, 2, 'L', 1611300849, 1611300849, '', 1);
INSERT INTO `mall_specs_value` VALUES (4, 2, 'S', 1611300851, 1611300851, '', 1);
INSERT INTO `mall_specs_value` VALUES (5, 2, 'M', 1611300854, 1611300854, '', 1);
INSERT INTO `mall_specs_value` VALUES (6, 3, '64G', 1611300868, 1611300868, '', 1);
INSERT INTO `mall_specs_value` VALUES (7, 3, '128G', 1611300872, 1611300872, '', 1);
INSERT INTO `mall_specs_value` VALUES (8, 5, '大号', 1611300891, 1611300891, '', 1);
INSERT INTO `mall_specs_value` VALUES (9, 5, '中号', 1611300897, 1611300897, '', 1);
INSERT INTO `mall_specs_value` VALUES (10, 5, '小号', 1611300901, 1611300901, '', 1);
INSERT INTO `mall_specs_value` VALUES (11, 4, '17寸', 1611302208, 1611302208, '', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_user
-- ----------------------------
INSERT INTO `mall_user` VALUES (1, 'singwa粉-18005009673', '18005009673', '', 0, 1, 0, 1608863334, 1608863334, 1, '');

SET FOREIGN_KEY_CHECKS = 1;
