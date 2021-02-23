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

 Date: 23/02/2021 17:23:47
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
INSERT INTO `mall_admin_user` VALUES (1, 'admin', '1b0f8e5f4c799fb07b8aa4e1b5de2aca', 1, 0, 1614070080, 1614070080, '127.0.0.1', 'admin');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_goods
-- ----------------------------
INSERT INTO `mall_goods` VALUES (1, '测试商品', 108, '100,107,108', '快来买，不买不是人', '1', '买', '副标题', 10, 0.00, 0.00, 1, 1, '2021-01-28', 2, '/upload/image/20210128\\a03013e67fa6dc080231f1c799c1e1b1.jpg', '/upload/image/20210128\\c30b39a16df49adbcd7dc8592a532e8a.jpg', '/upload/image/20210128\\1b30c9ab89dfae12224228fc663c3aba.jpg,/upload/image/20210128\\7bee33288de25ae72172100d8c06a833.jpeg', '1312412412<img src=\"/upload/image/20210128\\bc2e2ca8739d338468d3376ded2fcbec.jpg\" alt=\"undefined\">', 1, '', 1611819337, 1611819337, '', 1, 0);
INSERT INTO `mall_goods` VALUES (2, '12131', 108, '100,107,108', '432141', '11', '34214', '43214231', 574, 0.00, 0.00, 5, 1, '2021-02-03', 2, '/upload/image/20210203\\3d3e83b5181c5d41146e80c4ce3259a0.jpg', '/upload/image/20210203\\493fec678b8f55606fb64ca030928a36.jpg', '/upload/image/20210203\\0e84079666db0515d1deff86d3a640f0.jpeg,/upload/image/20210203\\eda01bee8f10b2d40bf5a27f7bf3f368.jpg,/upload/image/20210203\\68691296e961677eba6b86f22abba472.jpg', '14564515416<img src=\"/upload/image/20210203\\9ffc5dfcd734b2d70ad912a3f8801671.jpg\" alt=\"undefined\">', 0, '', 1612323033, 1612323033, '', 1, 0);
INSERT INTO `mall_goods` VALUES (3, '111', 108, '100,107,108', '法务范围', '发个', '非法收', '达瓦大哇', 99, 0.00, 0.00, 9, 1, '2021-02-03', 2, '/upload/image/20210203\\9bf053add6a2734489dda952befbfdfb.jpeg', '/upload/image/20210203\\98b7037580e1713c335bcf4e1879e1ba.jpg', '/upload/image/20210203\\092c42328e26a1c78af73fae034368f9.jpg', '22234344556661', 0, '', 1612336934, 1612336934, '', 1, 0);
INSERT INTO `mall_goods` VALUES (4, '222', 110, '101,109,110', '444', '666', '555', '333', 266, 0.00, 0.00, 11, 1, '2021-02-03', 2, '/upload/image/20210203\\f2a1cbc98d5cdb70a2a73900fc4ec478.jpg', '/upload/image/20210203\\8ff860c6efff568fd31c161d0bff891e.jpg', '/upload/image/20210203\\ef5f69674e82f7c89fae4323fc9dfb46.jpg', '2131321232134<img src=\"/upload/image/20210203\\57047d8c2bf045f4868026a4b3ba907f.jpg\" alt=\"undefined\">', 0, '', 1612337144, 1612337144, '', 1, 0);
INSERT INTO `mall_goods` VALUES (5, '测试商品2', 108, '100,107,108', '测试商品222222', '1', '冬打', '测试商品222222', 153, 0.00, 0.00, 13, 1, '2021-02-21', 2, '/upload/image/20210221\\9508f0a4c8fb615e4de31a6fcef26881.png', '/upload/image/20210221\\eaf5e22414a70210d2b1effb25a66752.png', '/upload/image/20210221\\c16a03423e2eb0075fce85007e297319.png,/upload/image/20210221\\9baa2e8f47251296daeaf26808588aef.png,/upload/image/20210221\\787d861315c2e894b583c2830c995b54.png,/upload/image/20210221\\f5a0024db64094f6d00202020bfde96b.png,/upload/image/20210221\\1c701df72081c2fb61b03c58a4fdac9e.png', '<p>大大是<img src=\"/upload/image/20210221\\943e5e9e7ea292766b3890068a45b9d8.png\" alt=\"undefined\"></p><p><br></p><p><br></p><p><img src=\"/upload/image/20210221\\b0320ac604d24ee5a64ed3f3f7ed9fbb.png\" alt=\"undefined\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><img src=\"/upload/image/20210221\\891af62804b78584d57ba916b2096590.png\" alt=\"undefined\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 0, '', 1613907347, 1613907347, '', 1, 0);
INSERT INTO `mall_goods` VALUES (6, '价格测试商品', 108, '100,107,108', '测试下商品价格', '商品价格单位', '关键词', '测试下商品价格', 162, 30.00, 0.00, 17, 1, '2021-02-23', 2, '/upload/image/20210223\\417f26f47a1fa6b4dc8d99d6bb5682d2.jpg', '/upload/image/20210223\\6e4f3cfe4094e0abc5cc714b7c9c024d.jpg', '/upload/image/20210223\\ab9255de0d9cfe77badc0df7820f5cca.jpg,/upload/image/20210223\\a3ec74367558776069a8fdcc58c5f979.jpg,/upload/image/20210223\\a1cba4711076ce68c17446bb02dd96c0.jpg', '121313213', 0, '', 1614066742, 1614066743, '', 1, 0);
INSERT INTO `mall_goods` VALUES (8, '价格测试商品2', 108, '100,107,108', '33', '55', '44', '11', 640, 11.00, 11.00, 23, 1, '2021-02-23', 2, '/upload/image/20210223\\61313964a692cb254fafb7092910fab3.jpg', '/upload/image/20210223\\d143d3e16621e74d6a51996a576ea93c.jpg', '/upload/image/20210223\\fa77adc99fd68c957ea97f52c0283161.jpg,/upload/image/20210223\\90207b2827bfff0e4156567c076edc3c.jpg,/upload/image/20210223\\3d9693ecadf738eee174dace59ffd4a8.jpg', '<p>321321312</p><p><br></p><p><img src=\"/upload/image/20210223\\11d551b19f2b8c5a9da375ffa4bbb575.jpg\" alt=\"undefined\"><br></p><p><br></p><p><br></p><p><img src=\"/upload/image/20210223\\476fff6d9cf0567fad388713a49135f7.jpg\" alt=\"undefined\"><br></p><p><br></p><p><br></p><p><img src=\"/upload/image/20210223\\69c966cafa6447b8363682b53d21d20b.jpg\" alt=\"undefined\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 0, '', 1614072185, 1614072185, '', 1, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `mall_goods_sku` VALUES (13, 5, '1,3,8', 0.00, 0.00, 22, 1, 1613907347, 1613907347);
INSERT INTO `mall_goods_sku` VALUES (14, 5, '1,4,8', 0.00, 0.00, 32, 1, 1613907347, 1613907347);
INSERT INTO `mall_goods_sku` VALUES (15, 5, '2,3,8', 0.00, 0.00, 55, 1, 1613907347, 1613907347);
INSERT INTO `mall_goods_sku` VALUES (16, 5, '2,4,8', 0.00, 0.00, 44, 1, 1613907347, 1613907347);
INSERT INTO `mall_goods_sku` VALUES (17, 6, '2,3,6', 40.00, 0.00, 21, 1, 1614066742, 1614066742);
INSERT INTO `mall_goods_sku` VALUES (18, 6, '2,3,7', 30.00, 0.00, 52, 1, 1614066743, 1614066743);
INSERT INTO `mall_goods_sku` VALUES (19, 6, '2,4,6', 20.00, 0.00, 44, 1, 1614066743, 1614066743);
INSERT INTO `mall_goods_sku` VALUES (20, 6, '2,4,7', 10.00, 0.00, 45, 1, 1614066743, 1614066743);
INSERT INTO `mall_goods_sku` VALUES (23, 8, '1,4,6', 11.00, 11.00, 343, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (24, 8, '1,4,7', 22.00, 22.00, 22, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (25, 8, '1,5,6', 33.00, 33.00, 33, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (26, 8, '1,5,7', 44.00, 44.00, 44, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (27, 8, '2,4,6', 55.00, 55.00, 66, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (28, 8, '2,4,7', 66.00, 66.00, 55, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (29, 8, '2,5,6', 77.00, 77.00, 44, 1, 1614072185, 1614072185);
INSERT INTO `mall_goods_sku` VALUES (30, 8, '2,5,7', 44.00, 44.00, 33, 1, 1614072185, 1614072185);

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
