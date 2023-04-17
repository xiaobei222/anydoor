/*
 Navicat Premium Data Transfer

 Source Server         : test_anydoor
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 45.77.206.193:3306
 Source Schema         : anydoor_test

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 17/04/2023 10:05:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add captcha store', 6, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (22, 'Can change captcha store', 6, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (23, 'Can delete captcha store', 6, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (24, 'Can view captcha store', 6, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (25, 'Can add task result', 7, 'add_taskresult');
INSERT INTO `auth_permission` VALUES (26, 'Can change task result', 7, 'change_taskresult');
INSERT INTO `auth_permission` VALUES (27, 'Can delete task result', 7, 'delete_taskresult');
INSERT INTO `auth_permission` VALUES (28, 'Can view task result', 7, 'view_taskresult');
INSERT INTO `auth_permission` VALUES (29, 'Can add chord counter', 8, 'add_chordcounter');
INSERT INTO `auth_permission` VALUES (30, 'Can change chord counter', 8, 'change_chordcounter');
INSERT INTO `auth_permission` VALUES (31, 'Can delete chord counter', 8, 'delete_chordcounter');
INSERT INTO `auth_permission` VALUES (32, 'Can view chord counter', 8, 'view_chordcounter');
INSERT INTO `auth_permission` VALUES (33, 'Can add group result', 9, 'add_groupresult');
INSERT INTO `auth_permission` VALUES (34, 'Can change group result', 9, 'change_groupresult');
INSERT INTO `auth_permission` VALUES (35, 'Can delete group result', 9, 'delete_groupresult');
INSERT INTO `auth_permission` VALUES (36, 'Can view group result', 9, 'view_groupresult');
INSERT INTO `auth_permission` VALUES (37, 'Can add crontab', 10, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (38, 'Can change crontab', 10, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (39, 'Can delete crontab', 10, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (40, 'Can view crontab', 10, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (41, 'Can add interval', 11, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (42, 'Can change interval', 11, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (43, 'Can delete interval', 11, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (44, 'Can view interval', 11, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (45, 'Can add periodic task', 12, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (46, 'Can change periodic task', 12, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (47, 'Can delete periodic task', 12, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (48, 'Can view periodic task', 12, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (49, 'Can add periodic tasks', 13, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (50, 'Can change periodic tasks', 13, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (51, 'Can delete periodic tasks', 13, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (52, 'Can view periodic tasks', 13, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (53, 'Can add solar event', 14, 'add_solarschedule');
INSERT INTO `auth_permission` VALUES (54, 'Can change solar event', 14, 'change_solarschedule');
INSERT INTO `auth_permission` VALUES (55, 'Can delete solar event', 14, 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES (56, 'Can view solar event', 14, 'view_solarschedule');
INSERT INTO `auth_permission` VALUES (57, 'Can add clocked', 15, 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES (58, 'Can change clocked', 15, 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES (59, 'Can delete clocked', 15, 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES (60, 'Can view clocked', 15, 'view_clockedschedule');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户表', 16, 'add_users');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户表', 16, 'change_users');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户表', 16, 'delete_users');
INSERT INTO `auth_permission` VALUES (64, 'Can view 用户表', 16, 'view_users');
INSERT INTO `auth_permission` VALUES (65, 'Can add 部门表', 17, 'add_dept');
INSERT INTO `auth_permission` VALUES (66, 'Can change 部门表', 17, 'change_dept');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 部门表', 17, 'delete_dept');
INSERT INTO `auth_permission` VALUES (68, 'Can view 部门表', 17, 'view_dept');
INSERT INTO `auth_permission` VALUES (69, 'Can add 字典表', 18, 'add_dictionary');
INSERT INTO `auth_permission` VALUES (70, 'Can change 字典表', 18, 'change_dictionary');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 字典表', 18, 'delete_dictionary');
INSERT INTO `auth_permission` VALUES (72, 'Can view 字典表', 18, 'view_dictionary');
INSERT INTO `auth_permission` VALUES (73, 'Can add 菜单表', 19, 'add_menu');
INSERT INTO `auth_permission` VALUES (74, 'Can change 菜单表', 19, 'change_menu');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 菜单表', 19, 'delete_menu');
INSERT INTO `auth_permission` VALUES (76, 'Can view 菜单表', 19, 'view_menu');
INSERT INTO `auth_permission` VALUES (77, 'Can add 菜单权限表', 20, 'add_menubutton');
INSERT INTO `auth_permission` VALUES (78, 'Can change 菜单权限表', 20, 'change_menubutton');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 菜单权限表', 20, 'delete_menubutton');
INSERT INTO `auth_permission` VALUES (80, 'Can view 菜单权限表', 20, 'view_menubutton');
INSERT INTO `auth_permission` VALUES (81, 'Can add 字典详细表', 21, 'add_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (82, 'Can change 字典详细表', 21, 'change_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 字典详细表', 21, 'delete_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (84, 'Can view 字典详细表', 21, 'view_sysdictionarylist');
INSERT INTO `auth_permission` VALUES (85, 'Can add 角色表', 22, 'add_role');
INSERT INTO `auth_permission` VALUES (86, 'Can change 角色表', 22, 'change_role');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 角色表', 22, 'delete_role');
INSERT INTO `auth_permission` VALUES (88, 'Can view 角色表', 22, 'view_role');
INSERT INTO `auth_permission` VALUES (89, 'Can add 岗位表', 23, 'add_post');
INSERT INTO `auth_permission` VALUES (90, 'Can change 岗位表', 23, 'change_post');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 岗位表', 23, 'delete_post');
INSERT INTO `auth_permission` VALUES (92, 'Can view 岗位表', 23, 'view_post');
INSERT INTO `auth_permission` VALUES (93, 'Can add 操作日志', 24, 'add_operationlog');
INSERT INTO `auth_permission` VALUES (94, 'Can change 操作日志', 24, 'change_operationlog');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 操作日志', 24, 'delete_operationlog');
INSERT INTO `auth_permission` VALUES (96, 'Can view 操作日志', 24, 'view_operationlog');
INSERT INTO `auth_permission` VALUES (97, 'Can add 登录日志', 25, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (98, 'Can change 登录日志', 25, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 登录日志', 25, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (100, 'Can view 登录日志', 25, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (101, 'Can add 权限标识表', 26, 'add_button');
INSERT INTO `auth_permission` VALUES (102, 'Can change 权限标识表', 26, 'change_button');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 权限标识表', 26, 'delete_button');
INSERT INTO `auth_permission` VALUES (104, 'Can view 权限标识表', 26, 'view_button');
INSERT INTO `auth_permission` VALUES (105, 'Can add 消息中心', 27, 'add_mymessage');
INSERT INTO `auth_permission` VALUES (106, 'Can change 消息中心', 27, 'change_mymessage');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 消息中心', 27, 'delete_mymessage');
INSERT INTO `auth_permission` VALUES (108, 'Can view 消息中心', 27, 'view_mymessage');
INSERT INTO `auth_permission` VALUES (109, 'Can add 消息模板', 28, 'add_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (110, 'Can change 消息模板', 28, 'change_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 消息模板', 28, 'delete_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (112, 'Can view 消息模板', 28, 'view_mymessagetemplate');
INSERT INTO `auth_permission` VALUES (113, 'Can add 用户消息', 29, 'add_mymessageuser');
INSERT INTO `auth_permission` VALUES (114, 'Can change 用户消息', 29, 'change_mymessageuser');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 用户消息', 29, 'delete_mymessageuser');
INSERT INTO `auth_permission` VALUES (116, 'Can view 用户消息', 29, 'view_mymessageuser');
INSERT INTO `auth_permission` VALUES (117, 'Can add 用户地址', 30, 'add_address');
INSERT INTO `auth_permission` VALUES (118, 'Can change 用户地址', 30, 'change_address');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 用户地址', 30, 'delete_address');
INSERT INTO `auth_permission` VALUES (120, 'Can view 用户地址', 30, 'view_address');
INSERT INTO `auth_permission` VALUES (121, 'Can add 省市区', 31, 'add_area');
INSERT INTO `auth_permission` VALUES (122, 'Can change 省市区', 31, 'change_area');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 省市区', 31, 'delete_area');
INSERT INTO `auth_permission` VALUES (124, 'Can view 省市区', 31, 'view_area');
INSERT INTO `auth_permission` VALUES (125, 'Can add 酒店', 32, 'add_hotel');
INSERT INTO `auth_permission` VALUES (126, 'Can change 酒店', 32, 'change_hotel');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 酒店', 32, 'delete_hotel');
INSERT INTO `auth_permission` VALUES (128, 'Can view 酒店', 32, 'view_hotel');
INSERT INTO `auth_permission` VALUES (129, 'Can add 酒店品牌', 33, 'add_hotelbrand');
INSERT INTO `auth_permission` VALUES (130, 'Can change 酒店品牌', 33, 'change_hotelbrand');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 酒店品牌', 33, 'delete_hotelbrand');
INSERT INTO `auth_permission` VALUES (132, 'Can view 酒店品牌', 33, 'view_hotelbrand');
INSERT INTO `auth_permission` VALUES (133, 'Can add 酒店枚举', 34, 'add_hotelenum');
INSERT INTO `auth_permission` VALUES (134, 'Can change 酒店枚举', 34, 'change_hotelenum');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 酒店枚举', 34, 'delete_hotelenum');
INSERT INTO `auth_permission` VALUES (136, 'Can view 酒店枚举', 34, 'view_hotelenum');
INSERT INTO `auth_permission` VALUES (137, 'Can add 酒店枚举详细信息', 35, 'add_hotelenumdetail');
INSERT INTO `auth_permission` VALUES (138, 'Can change 酒店枚举详细信息', 35, 'change_hotelenumdetail');
INSERT INTO `auth_permission` VALUES (139, 'Can delete 酒店枚举详细信息', 35, 'delete_hotelenumdetail');
INSERT INTO `auth_permission` VALUES (140, 'Can view 酒店枚举详细信息', 35, 'view_hotelenumdetail');
INSERT INTO `auth_permission` VALUES (141, 'Can add 酒店集团', 36, 'add_hotelgroup');
INSERT INTO `auth_permission` VALUES (142, 'Can change 酒店集团', 36, 'change_hotelgroup');
INSERT INTO `auth_permission` VALUES (143, 'Can delete 酒店集团', 36, 'delete_hotelgroup');
INSERT INTO `auth_permission` VALUES (144, 'Can view 酒店集团', 36, 'view_hotelgroup');
INSERT INTO `auth_permission` VALUES (145, 'Can add 微信登录用户数据', 37, 'add_oauthwxuser');
INSERT INTO `auth_permission` VALUES (146, 'Can change 微信登录用户数据', 37, 'change_oauthwxuser');
INSERT INTO `auth_permission` VALUES (147, 'Can delete 微信登录用户数据', 37, 'delete_oauthwxuser');
INSERT INTO `auth_permission` VALUES (148, 'Can view 微信登录用户数据', 37, 'view_oauthwxuser');
INSERT INTO `auth_permission` VALUES (149, 'Can add 用户反馈', 38, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (150, 'Can change 用户反馈', 38, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (151, 'Can delete 用户反馈', 38, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (152, 'Can view 用户反馈', 38, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (153, 'Can add 参数设置', 39, 'add_othermanage');
INSERT INTO `auth_permission` VALUES (154, 'Can change 参数设置', 39, 'change_othermanage');
INSERT INTO `auth_permission` VALUES (155, 'Can delete 参数设置', 39, 'delete_othermanage');
INSERT INTO `auth_permission` VALUES (156, 'Can view 参数设置', 39, 'view_othermanage');
INSERT INTO `auth_permission` VALUES (157, 'Can add 轮播图设置', 40, 'add_lunbotumanage');
INSERT INTO `auth_permission` VALUES (158, 'Can change 轮播图设置', 40, 'change_lunbotumanage');
INSERT INTO `auth_permission` VALUES (159, 'Can delete 轮播图设置', 40, 'delete_lunbotumanage');
INSERT INTO `auth_permission` VALUES (160, 'Can view 轮播图设置', 40, 'view_lunbotumanage');
INSERT INTO `auth_permission` VALUES (161, 'Can add 系统配置表', 41, 'add_systemconfig');
INSERT INTO `auth_permission` VALUES (162, 'Can change 系统配置表', 41, 'change_systemconfig');
INSERT INTO `auth_permission` VALUES (163, 'Can delete 系统配置表', 41, 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES (164, 'Can view 系统配置表', 41, 'view_systemconfig');
INSERT INTO `auth_permission` VALUES (165, 'Can add 用户持券表', 42, 'add_couponrecord');
INSERT INTO `auth_permission` VALUES (166, 'Can change 用户持券表', 42, 'change_couponrecord');
INSERT INTO `auth_permission` VALUES (167, 'Can delete 用户持券表', 42, 'delete_couponrecord');
INSERT INTO `auth_permission` VALUES (168, 'Can view 用户持券表', 42, 'view_couponrecord');
INSERT INTO `auth_permission` VALUES (169, 'Can add 商品品牌', 43, 'add_goodsbrand');
INSERT INTO `auth_permission` VALUES (170, 'Can change 商品品牌', 43, 'change_goodsbrand');
INSERT INTO `auth_permission` VALUES (171, 'Can delete 商品品牌', 43, 'delete_goodsbrand');
INSERT INTO `auth_permission` VALUES (172, 'Can view 商品品牌', 43, 'view_goodsbrand');
INSERT INTO `auth_permission` VALUES (173, 'Can add 商品类别', 44, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (174, 'Can change 商品类别', 44, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (175, 'Can delete 商品类别', 44, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (176, 'Can view 商品类别', 44, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (177, 'Can add 商品优惠券', 45, 'add_goodscoupon');
INSERT INTO `auth_permission` VALUES (178, 'Can change 商品优惠券', 45, 'change_goodscoupon');
INSERT INTO `auth_permission` VALUES (179, 'Can delete 商品优惠券', 45, 'delete_goodscoupon');
INSERT INTO `auth_permission` VALUES (180, 'Can view 商品优惠券', 45, 'view_goodscoupon');
INSERT INTO `auth_permission` VALUES (181, 'Can add 商品规格模板', 46, 'add_goodsspectemplate');
INSERT INTO `auth_permission` VALUES (182, 'Can change 商品规格模板', 46, 'change_goodsspectemplate');
INSERT INTO `auth_permission` VALUES (183, 'Can delete 商品规格模板', 46, 'delete_goodsspectemplate');
INSERT INTO `auth_permission` VALUES (184, 'Can view 商品规格模板', 46, 'view_goodsspectemplate');
INSERT INTO `auth_permission` VALUES (185, 'Can add 订单商品', 47, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (186, 'Can change 订单商品', 47, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (187, 'Can delete 订单商品', 47, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (188, 'Can view 订单商品', 47, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (189, 'Can add 订单基本信息', 48, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (190, 'Can change 订单基本信息', 48, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (191, 'Can delete 订单基本信息', 48, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (192, 'Can view 订单基本信息', 48, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (193, 'Can add 商城订单退款', 49, 'add_orderrefunds');
INSERT INTO `auth_permission` VALUES (194, 'Can change 商城订单退款', 49, 'change_orderrefunds');
INSERT INTO `auth_permission` VALUES (195, 'Can delete 商城订单退款', 49, 'delete_orderrefunds');
INSERT INTO `auth_permission` VALUES (196, 'Can view 商城订单退款', 49, 'view_orderrefunds');
INSERT INTO `auth_permission` VALUES (197, 'Can add 商品SKU', 50, 'add_sku');
INSERT INTO `auth_permission` VALUES (198, 'Can change 商品SKU', 50, 'change_sku');
INSERT INTO `auth_permission` VALUES (199, 'Can delete 商品SKU', 50, 'delete_sku');
INSERT INTO `auth_permission` VALUES (200, 'Can view 商品SKU', 50, 'view_sku');
INSERT INTO `auth_permission` VALUES (201, 'Can add SKU图片', 51, 'add_skuimage');
INSERT INTO `auth_permission` VALUES (202, 'Can change SKU图片', 51, 'change_skuimage');
INSERT INTO `auth_permission` VALUES (203, 'Can delete SKU图片', 51, 'delete_skuimage');
INSERT INTO `auth_permission` VALUES (204, 'Can view SKU图片', 51, 'view_skuimage');
INSERT INTO `auth_permission` VALUES (205, 'Can add SKU规格', 52, 'add_skuspecification');
INSERT INTO `auth_permission` VALUES (206, 'Can change SKU规格', 52, 'change_skuspecification');
INSERT INTO `auth_permission` VALUES (207, 'Can delete SKU规格', 52, 'delete_skuspecification');
INSERT INTO `auth_permission` VALUES (208, 'Can view SKU规格', 52, 'view_skuspecification');
INSERT INTO `auth_permission` VALUES (209, 'Can add 商品SPU', 53, 'add_spu');
INSERT INTO `auth_permission` VALUES (210, 'Can change 商品SPU', 53, 'change_spu');
INSERT INTO `auth_permission` VALUES (211, 'Can delete 商品SPU', 53, 'delete_spu');
INSERT INTO `auth_permission` VALUES (212, 'Can view 商品SPU', 53, 'view_spu');
INSERT INTO `auth_permission` VALUES (213, 'Can add 商品SPU规格', 54, 'add_spuspecification');
INSERT INTO `auth_permission` VALUES (214, 'Can change 商品SPU规格', 54, 'change_spuspecification');
INSERT INTO `auth_permission` VALUES (215, 'Can delete 商品SPU规格', 54, 'delete_spuspecification');
INSERT INTO `auth_permission` VALUES (216, 'Can view 商品SPU规格', 54, 'view_spuspecification');
INSERT INTO `auth_permission` VALUES (217, 'Can add 规格选项', 55, 'add_spuspecificationoption');
INSERT INTO `auth_permission` VALUES (218, 'Can change 规格选项', 55, 'change_spuspecificationoption');
INSERT INTO `auth_permission` VALUES (219, 'Can delete 规格选项', 55, 'delete_spuspecificationoption');
INSERT INTO `auth_permission` VALUES (220, 'Can view 规格选项', 55, 'view_spuspecificationoption');
INSERT INTO `auth_permission` VALUES (221, 'Can add 服务监控', 56, 'add_monitormanage');
INSERT INTO `auth_permission` VALUES (222, 'Can change 服务监控', 56, 'change_monitormanage');
INSERT INTO `auth_permission` VALUES (223, 'Can delete 服务监控', 56, 'delete_monitormanage');
INSERT INTO `auth_permission` VALUES (224, 'Can view 服务监控', 56, 'view_monitormanage');
INSERT INTO `auth_permission` VALUES (225, 'Can add 终端服务器列表', 57, 'add_terminalserver');
INSERT INTO `auth_permission` VALUES (226, 'Can change 终端服务器列表', 57, 'change_terminalserver');
INSERT INTO `auth_permission` VALUES (227, 'Can delete 终端服务器列表', 57, 'delete_terminalserver');
INSERT INTO `auth_permission` VALUES (228, 'Can view 终端服务器列表', 57, 'view_terminalserver');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (1, '4*7=', '28', '523bc0bb0cc6e94183aebe5bf2e0552b569c0f17', '2023-04-05 19:17:23.660494');
INSERT INTO `captcha_captchastore` VALUES (4, '9+7=', '16', '86f2fcb409b2c998b13773ce0a124caba55b46f4', '2023-04-06 09:36:26.840475');
INSERT INTO `captcha_captchastore` VALUES (5, '1*8=', '8', '81c32ee0a702d4eb92c8bab7e30561360a54e84a', '2023-04-06 09:41:02.059757');
INSERT INTO `captcha_captchastore` VALUES (6, '3-2=', '1', '468d4e3145552c12ea646abe667b2ea44fa017df', '2023-04-06 09:41:25.656554');
INSERT INTO `captcha_captchastore` VALUES (7, '8+1=', '9', '4c541be4ceaa3c221f46460bd3e700a74262441c', '2023-04-06 09:41:48.524783');
INSERT INTO `captcha_captchastore` VALUES (8, '10+10=', '20', '95317eb92e98b5e35bb6aa5e989ee4b20152c017', '2023-04-06 09:41:49.220772');
INSERT INTO `captcha_captchastore` VALUES (9, '7*6=', '42', '48b159d538e4071a0f33474f147c737352ce6e8d', '2023-04-06 09:41:49.961042');
INSERT INTO `captcha_captchastore` VALUES (10, '5+10=', '15', '3082fafb157f7c0ab62da2908f7c4c5ad55f2319', '2023-04-06 09:41:50.622849');
INSERT INTO `captcha_captchastore` VALUES (11, '10-1=', '9', '43925102bff781cc7a2a0b93abf940785ca186f8', '2023-04-06 09:41:51.306299');
INSERT INTO `captcha_captchastore` VALUES (12, '7-1=', '6', '5cc6e7b55caa42ca8b6465d4cff06202f12b6250', '2023-04-06 09:41:51.923455');
INSERT INTO `captcha_captchastore` VALUES (13, '10-10=', '0', 'e4f99da512857f579cd0db211224b2defaac01f9', '2023-04-06 09:41:52.448517');
INSERT INTO `captcha_captchastore` VALUES (14, '3*3=', '9', '34dc8a027e47c4c8245230c7cda2e19189a87dcd', '2023-04-06 09:41:53.108654');
INSERT INTO `captcha_captchastore` VALUES (15, '1*4=', '4', '7abd9ff20d52fbb9dce56197906d8bf5d223de42', '2023-04-06 09:41:53.747718');
INSERT INTO `captcha_captchastore` VALUES (16, '6+2=', '8', '09b56a58e3588574dd2f3e77593a63c68db16798', '2023-04-06 09:41:54.370133');
INSERT INTO `captcha_captchastore` VALUES (17, '3*9=', '27', 'aab529797a0d5cb3b0b74e972fe030cad1ed3465', '2023-04-06 09:41:54.901382');
INSERT INTO `captcha_captchastore` VALUES (18, '7+10=', '17', '90e9f87f2be754744b219f5c74132c7871b26f02', '2023-04-06 09:41:55.266902');
INSERT INTO `captcha_captchastore` VALUES (19, '8*4=', '32', 'd1d4e96fb8c2b90e82b7147a8b7a278054ff30ee', '2023-04-06 09:41:55.591608');
INSERT INTO `captcha_captchastore` VALUES (20, '7*6=', '42', 'ed8825e4a79319df45a59310d78a24caaa2f06d9', '2023-04-06 09:41:55.907563');
INSERT INTO `captcha_captchastore` VALUES (21, '4+10=', '14', '891ae3d33eab4ab4ce247d69f23112fa21f7286b', '2023-04-06 09:41:56.131420');
INSERT INTO `captcha_captchastore` VALUES (22, '2+8=', '10', '1a81b1fd1164f49e596bdc7aec855edbd7b12ad6', '2023-04-06 09:41:56.408510');
INSERT INTO `captcha_captchastore` VALUES (23, '8*7=', '56', '0dbfb40767d6039f2595f051325b04d83e1f270b', '2023-04-06 09:41:56.682012');
INSERT INTO `captcha_captchastore` VALUES (24, '4+9=', '13', '633736c9439faca28ce5df17936344aed0855788', '2023-04-06 09:41:56.952611');
INSERT INTO `captcha_captchastore` VALUES (25, '5-3=', '2', 'e8c4e5a24e61dd11ac0df8bdac2294634a1cb118', '2023-04-06 09:41:57.220660');
INSERT INTO `captcha_captchastore` VALUES (26, '10+8=', '18', 'ef4876304558495c54863eed17062487d7421448', '2023-04-06 09:41:57.488415');
INSERT INTO `captcha_captchastore` VALUES (27, '5*4=', '20', '9ee0189aedb611475ce88236b08128fa8a622a6d', '2023-04-06 09:41:57.756940');
INSERT INTO `captcha_captchastore` VALUES (28, '8*10=', '80', 'fb2cda7c0a6375d0ce2395c90deb9e8bdbf07878', '2023-04-06 09:41:58.029227');
INSERT INTO `captcha_captchastore` VALUES (29, '2+1=', '3', '16d2aa41393847b743f83952bb6f40e1c133d899', '2023-04-06 09:41:58.304125');
INSERT INTO `captcha_captchastore` VALUES (30, '6*9=', '54', 'b2473fbded17f806bd3605423120d497e9c4e197', '2023-04-06 09:41:58.593967');
INSERT INTO `captcha_captchastore` VALUES (31, '8+2=', '10', 'ec27a8f6cb0a2fb1497cf8184d702e2a1d57f050', '2023-04-06 09:41:58.856308');
INSERT INTO `captcha_captchastore` VALUES (32, '1+10=', '11', '158fbd5f21234f55b2afa04c79d5c6b35eeb5b04', '2023-04-06 09:41:59.122259');
INSERT INTO `captcha_captchastore` VALUES (33, '8*1=', '8', '82b4d5e94a324f97fac14d3bc0f3939fa7d88b36', '2023-04-06 09:41:59.395389');
INSERT INTO `captcha_captchastore` VALUES (34, '9+3=', '12', '2b94a70b5248dba78ff2be0b1aa001a66778ca3c', '2023-04-06 09:41:59.728158');
INSERT INTO `captcha_captchastore` VALUES (35, '4*2=', '8', '960cdf2d16178f6343b9d307e7c9cd444958df4b', '2023-04-06 09:41:59.997833');
INSERT INTO `captcha_captchastore` VALUES (36, '6-4=', '2', 'b32ae8681658450ed79d28aaf94c6839ae43ee13', '2023-04-06 09:42:00.277458');
INSERT INTO `captcha_captchastore` VALUES (37, '8*10=', '80', '56d78559fc71f47b261e7847dedb977703eb6fe9', '2023-04-06 09:42:00.560648');
INSERT INTO `captcha_captchastore` VALUES (38, '6+8=', '14', '8b101d872e4077f79285725c06d372061cf25abf', '2023-04-06 09:42:00.834979');
INSERT INTO `captcha_captchastore` VALUES (39, '9-7=', '2', 'aca7b0546f7e9f49dc9a2b217180b835959652d2', '2023-04-06 09:42:11.611647');
INSERT INTO `captcha_captchastore` VALUES (43, '6*8=', '48', 'd44db752532776f3aab1b543dd82f8f1aae94205', '2023-04-06 09:58:47.306692');
INSERT INTO `captcha_captchastore` VALUES (47, '3+5=', '8', 'e1fc442e4ce1167cff0a5d615c0c1555f47c937a', '2023-04-10 11:31:32.033440');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_clockedschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_clockedschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_crontabschedule
-- ----------------------------
INSERT INTO `django_celery_beat_crontabschedule` VALUES (6, '*/2', '*', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO `django_celery_beat_crontabschedule` VALUES (7, '0', '4', '*', '*', '*', 'Asia/Shanghai');
INSERT INTO `django_celery_beat_crontabschedule` VALUES (8, '1-2', '*/5', '*', '*', '*', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for django_celery_beat_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `every` int(0) NOT NULL,
  `period` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_intervalschedule
-- ----------------------------
INSERT INTO `django_celery_beat_intervalschedule` VALUES (1, 20, 'seconds');
INSERT INTO `django_celery_beat_intervalschedule` VALUES (5, 20, 'seconds');
INSERT INTO `django_celery_beat_intervalschedule` VALUES (6, 2, 'hours');

-- ----------------------------
-- Table structure for django_celery_beat_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `task` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int(0) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `crontab_id` int(0) NULL DEFAULT NULL,
  `interval_id` int(0) NULL DEFAULT NULL,
  `solar_id` int(0) NULL DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `priority` int(0) UNSIGNED NULL DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `clocked_id` int(0) NULL DEFAULT NULL,
  `expire_seconds` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce`(`crontab_id`) USING BTREE,
  INDEX `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce`(`interval_id`) USING BTREE,
  INDEX `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce`(`solar_id`) USING BTREE,
  INDEX `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce`(`clocked_id`) USING BTREE,
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_periodictask
-- ----------------------------
INSERT INTO `django_celery_beat_periodictask` VALUES (1, '测试任务', 'apps.lycrontab.tasks.lytask_test', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 182, '2023-03-31 13:57:20.271741', '测试任务', 6, NULL, NULL, 0, NULL, 1, '{\"periodic_task_name\": \"\\u6d4b\\u8bd5\\u4efb\\u52a1\", \"task_name\": \"apps.lycrontab.tasks.lytask_test\"}', NULL, NULL);
INSERT INTO `django_celery_beat_periodictask` VALUES (2, 'celery.backend_cleanup', 'celery.backend_cleanup', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-11-04 11:03:11.442926', '', 7, NULL, NULL, 0, NULL, NULL, '{}', NULL, 43200);
INSERT INTO `django_celery_beat_periodictask` VALUES (3, '测试间隔任务', 'apps.lycrontab.tasks.lytask_test', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 4, '2023-03-31 15:03:28.764348', '测试间隔任务', NULL, 1, NULL, 0, NULL, NULL, '{}', NULL, NULL);
INSERT INTO `django_celery_beat_periodictask` VALUES (7, '2342342', 'apps.lycrontab.tasks.lytask_test2', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2023-03-31 14:53:38.930711', '213', 8, NULL, NULL, 0, NULL, NULL, '{}', NULL, NULL);
INSERT INTO `django_celery_beat_periodictask` VALUES (8, '1111111', 'apps.lycrontab.tasks.lytask_test2', '[]', '{}', NULL, NULL, NULL, NULL, 1, NULL, 0, '2023-03-31 15:01:14.217435', '', NULL, 5, NULL, 0, NULL, NULL, '{}', NULL, NULL);
INSERT INTO `django_celery_beat_periodictask` VALUES (9, 'test22222', 'apps.lycrontab.tasks.lytask_test2', '[]', '{}', NULL, NULL, NULL, NULL, 0, NULL, 0, '2023-03-31 17:04:02.794140', 'test2222', NULL, 6, NULL, 0, NULL, NULL, '{}', NULL, NULL);

-- ----------------------------
-- Table structure for django_celery_beat_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks`  (
  `ident` smallint(0) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_periodictasks
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_solarschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` decimal(9, 6) NOT NULL,
  `longitude` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq`(`event`, `latitude`, `longitude`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_solarschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_chordcounter
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
CREATE TABLE `django_celery_results_chordcounter`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sub_tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `count` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_chordcounter
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_groupresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_groupresult`;
CREATE TABLE `django_celery_results_groupresult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `django_cele_date_cr_bd6c1d_idx`(`date_created`) USING BTREE,
  INDEX `django_cele_date_do_caae0e_idx`(`date_done`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_groupresult
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `task_args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `task_kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `worker` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `django_cele_task_na_08aec9_idx`(`task_name`) USING BTREE,
  INDEX `django_cele_status_9b6201_idx`(`status`) USING BTREE,
  INDEX `django_cele_worker_d54dd8_idx`(`worker`) USING BTREE,
  INDEX `django_cele_date_cr_f04a50_idx`(`date_created`) USING BTREE,
  INDEX `django_cele_date_do_f59aad_idx`(`date_done`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_taskresult
-- ----------------------------
INSERT INTO `django_celery_results_taskresult` VALUES (175, 'e5763b89-7ffd-4e83-bf0e-03dd58d52ff4', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-10-25 23:00:00.038914', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-10-25 23:00:00.038914', '测试任务');
INSERT INTO `django_celery_results_taskresult` VALUES (176, 'f599fc36-6f0e-45ef-840a-28c637347a45', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-10-25 23:02:00.032690', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-10-25 23:02:00.032690', '测试任务');
INSERT INTO `django_celery_results_taskresult` VALUES (177, 'fd2cb51a-d717-4103-a1dd-235efad01259', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-10-25 23:04:00.024369', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-10-25 23:04:00.024369', '测试任务');
INSERT INTO `django_celery_results_taskresult` VALUES (178, '2cb746cd-5bd5-4253-bfa7-51220177ad7d', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-10-25 23:06:00.022733', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-10-25 23:06:00.022733', '测试任务');
INSERT INTO `django_celery_results_taskresult` VALUES (179, '35dbfa39-b419-4480-a176-99adf5e313df', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-10-25 23:08:00.024386', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-10-25 23:08:00.024386', '测试任务');
INSERT INTO `django_celery_results_taskresult` VALUES (180, 'e90764b6-0617-4ba1-bd82-cceeeeab4c13', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-11-04 11:03:31.477433', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-11-04 11:03:31.477433', '测试间隔任务');
INSERT INTO `django_celery_results_taskresult` VALUES (181, '121329e3-0668-46e8-9edf-bbfb79377395', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-11-04 11:03:51.457615', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-11-04 11:03:51.457615', '测试间隔任务');
INSERT INTO `django_celery_results_taskresult` VALUES (182, '29981133-a9e4-4e4f-a683-f5842bcf4a49', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-11-04 11:04:11.461721', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-11-04 11:04:11.461721', '测试间隔任务');
INSERT INTO `django_celery_results_taskresult` VALUES (183, '4273ab03-fa31-424e-8b35-bdfc92308259', 'SUCCESS', 'application/json', 'utf-8', '\"django-vue-lyadmin lycrontab running\"', '2022-11-04 11:04:31.472743', NULL, '{\"children\": []}', '\"()\"', '\"{}\"', 'apps.lycrontab.tasks.lytask_test', 'celery@lybbn', '2022-11-04 11:04:31.472743', '测试间隔任务');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (30, 'address', 'address');
INSERT INTO `django_content_type` VALUES (31, 'address', 'area');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (6, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES (10, 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (11, 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (12, 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES (13, 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES (14, 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES (8, 'django_celery_results', 'chordcounter');
INSERT INTO `django_content_type` VALUES (9, 'django_celery_results', 'groupresult');
INSERT INTO `django_content_type` VALUES (7, 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES (32, 'hotel', 'hotel');
INSERT INTO `django_content_type` VALUES (33, 'hotel', 'hotelbrand');
INSERT INTO `django_content_type` VALUES (34, 'hotel', 'hotelenum');
INSERT INTO `django_content_type` VALUES (35, 'hotel', 'hotelenumdetail');
INSERT INTO `django_content_type` VALUES (36, 'hotel', 'hotelgroup');
INSERT INTO `django_content_type` VALUES (27, 'lymessages', 'mymessage');
INSERT INTO `django_content_type` VALUES (28, 'lymessages', 'mymessagetemplate');
INSERT INTO `django_content_type` VALUES (29, 'lymessages', 'mymessageuser');
INSERT INTO `django_content_type` VALUES (56, 'lymonitor', 'monitormanage');
INSERT INTO `django_content_type` VALUES (57, 'lywebsocket', 'terminalserver');
INSERT INTO `django_content_type` VALUES (42, 'mall', 'couponrecord');
INSERT INTO `django_content_type` VALUES (43, 'mall', 'goodsbrand');
INSERT INTO `django_content_type` VALUES (44, 'mall', 'goodscategory');
INSERT INTO `django_content_type` VALUES (45, 'mall', 'goodscoupon');
INSERT INTO `django_content_type` VALUES (46, 'mall', 'goodsspectemplate');
INSERT INTO `django_content_type` VALUES (47, 'mall', 'ordergoods');
INSERT INTO `django_content_type` VALUES (48, 'mall', 'orderinfo');
INSERT INTO `django_content_type` VALUES (49, 'mall', 'orderrefunds');
INSERT INTO `django_content_type` VALUES (50, 'mall', 'sku');
INSERT INTO `django_content_type` VALUES (51, 'mall', 'skuimage');
INSERT INTO `django_content_type` VALUES (52, 'mall', 'skuspecification');
INSERT INTO `django_content_type` VALUES (53, 'mall', 'spu');
INSERT INTO `django_content_type` VALUES (54, 'mall', 'spuspecification');
INSERT INTO `django_content_type` VALUES (55, 'mall', 'spuspecificationoption');
INSERT INTO `django_content_type` VALUES (26, 'mysystem', 'button');
INSERT INTO `django_content_type` VALUES (17, 'mysystem', 'dept');
INSERT INTO `django_content_type` VALUES (18, 'mysystem', 'dictionary');
INSERT INTO `django_content_type` VALUES (25, 'mysystem', 'loginlog');
INSERT INTO `django_content_type` VALUES (19, 'mysystem', 'menu');
INSERT INTO `django_content_type` VALUES (20, 'mysystem', 'menubutton');
INSERT INTO `django_content_type` VALUES (24, 'mysystem', 'operationlog');
INSERT INTO `django_content_type` VALUES (23, 'mysystem', 'post');
INSERT INTO `django_content_type` VALUES (22, 'mysystem', 'role');
INSERT INTO `django_content_type` VALUES (21, 'mysystem', 'sysdictionarylist');
INSERT INTO `django_content_type` VALUES (16, 'mysystem', 'users');
INSERT INTO `django_content_type` VALUES (37, 'oauth', 'oauthwxuser');
INSERT INTO `django_content_type` VALUES (40, 'platformsettings', 'lunbotumanage');
INSERT INTO `django_content_type` VALUES (39, 'platformsettings', 'othermanage');
INSERT INTO `django_content_type` VALUES (41, 'platformsettings', 'systemconfig');
INSERT INTO `django_content_type` VALUES (38, 'platformsettings', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-04-05 19:08:51.385907');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2023-04-05 19:08:51.596860');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2023-04-05 19:08:52.345975');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2023-04-05 19:08:52.523168');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2023-04-05 19:08:52.541981');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2023-04-05 19:08:52.557866');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2023-04-05 19:08:52.573933');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2023-04-05 19:08:52.582891');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2023-04-05 19:08:52.596571');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2023-04-05 19:08:52.613477');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2023-04-05 19:08:52.628000');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2023-04-05 19:08:52.685705');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2023-04-05 19:08:52.707070');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2023-04-05 19:08:52.726974');
INSERT INTO `django_migrations` VALUES (15, 'mysystem', '0001_initial', '2023-04-05 19:08:57.621485');
INSERT INTO `django_migrations` VALUES (16, 'address', '0001_initial', '2023-04-05 19:08:58.102159');
INSERT INTO `django_migrations` VALUES (17, 'address', '0002_initial', '2023-04-05 19:08:58.934246');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0001_initial', '2023-04-05 19:08:59.295046');
INSERT INTO `django_migrations` VALUES (19, 'admin', '0002_logentry_remove_auto_add', '2023-04-05 19:08:59.335249');
INSERT INTO `django_migrations` VALUES (20, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-05 19:08:59.384946');
INSERT INTO `django_migrations` VALUES (21, 'captcha', '0001_initial', '2023-04-05 19:08:59.436053');
INSERT INTO `django_migrations` VALUES (22, 'captcha', '0002_alter_captchastore_id', '2023-04-05 19:08:59.449277');
INSERT INTO `django_migrations` VALUES (23, 'django_celery_beat', '0001_initial', '2023-04-05 19:09:00.252308');
INSERT INTO `django_migrations` VALUES (24, 'django_celery_beat', '0002_auto_20161118_0346', '2023-04-05 19:09:00.593738');
INSERT INTO `django_migrations` VALUES (25, 'django_celery_beat', '0003_auto_20161209_0049', '2023-04-05 19:09:00.704667');
INSERT INTO `django_migrations` VALUES (26, 'django_celery_beat', '0004_auto_20170221_0000', '2023-04-05 19:09:00.721662');
INSERT INTO `django_migrations` VALUES (27, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2023-04-05 19:09:00.746946');
INSERT INTO `django_migrations` VALUES (28, 'django_celery_beat', '0006_auto_20180322_0932', '2023-04-05 19:09:01.077585');
INSERT INTO `django_migrations` VALUES (29, 'django_celery_beat', '0007_auto_20180521_0826', '2023-04-05 19:09:01.328967');
INSERT INTO `django_migrations` VALUES (30, 'django_celery_beat', '0008_auto_20180914_1922', '2023-04-05 19:09:01.385929');
INSERT INTO `django_migrations` VALUES (31, 'django_celery_beat', '0006_auto_20180210_1226', '2023-04-05 19:09:01.412407');
INSERT INTO `django_migrations` VALUES (32, 'django_celery_beat', '0006_periodictask_priority', '2023-04-05 19:09:01.805933');
INSERT INTO `django_migrations` VALUES (33, 'django_celery_beat', '0009_periodictask_headers', '2023-04-05 19:09:02.190975');
INSERT INTO `django_migrations` VALUES (34, 'django_celery_beat', '0010_auto_20190429_0326', '2023-04-05 19:09:02.441836');
INSERT INTO `django_migrations` VALUES (35, 'django_celery_beat', '0011_auto_20190508_0153', '2023-04-05 19:09:02.828809');
INSERT INTO `django_migrations` VALUES (36, 'django_celery_beat', '0012_periodictask_expire_seconds', '2023-04-05 19:09:03.057703');
INSERT INTO `django_migrations` VALUES (37, 'django_celery_beat', '0013_auto_20200609_0727', '2023-04-05 19:09:03.075321');
INSERT INTO `django_migrations` VALUES (38, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2023-04-05 19:09:03.155114');
INSERT INTO `django_migrations` VALUES (39, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2023-04-05 19:09:03.172468');
INSERT INTO `django_migrations` VALUES (40, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2023-04-05 19:09:03.192372');
INSERT INTO `django_migrations` VALUES (41, 'django_celery_beat', '0017_alter_crontabschedule_month_of_year', '2023-04-05 19:09:03.211537');
INSERT INTO `django_migrations` VALUES (42, 'django_celery_beat', '0018_improve_crontab_helptext', '2023-04-05 19:09:03.226152');
INSERT INTO `django_migrations` VALUES (43, 'django_celery_results', '0001_initial', '2023-04-05 19:09:03.337404');
INSERT INTO `django_migrations` VALUES (44, 'django_celery_results', '0002_add_task_name_args_kwargs', '2023-04-05 19:09:03.504919');
INSERT INTO `django_migrations` VALUES (45, 'django_celery_results', '0003_auto_20181106_1101', '2023-04-05 19:09:03.516329');
INSERT INTO `django_migrations` VALUES (46, 'django_celery_results', '0004_auto_20190516_0412', '2023-04-05 19:09:03.842333');
INSERT INTO `django_migrations` VALUES (47, 'django_celery_results', '0005_taskresult_worker', '2023-04-05 19:09:03.970505');
INSERT INTO `django_migrations` VALUES (48, 'django_celery_results', '0006_taskresult_date_created', '2023-04-05 19:09:04.152188');
INSERT INTO `django_migrations` VALUES (49, 'django_celery_results', '0007_remove_taskresult_hidden', '2023-04-05 19:09:04.270505');
INSERT INTO `django_migrations` VALUES (50, 'django_celery_results', '0008_chordcounter', '2023-04-05 19:09:04.321917');
INSERT INTO `django_migrations` VALUES (51, 'django_celery_results', '0009_groupresult', '2023-04-05 19:09:05.567286');
INSERT INTO `django_migrations` VALUES (52, 'django_celery_results', '0010_remove_duplicate_indices', '2023-04-05 19:09:05.607469');
INSERT INTO `django_migrations` VALUES (53, 'django_celery_results', '0011_taskresult_periodic_task_name', '2023-04-05 19:09:05.700370');
INSERT INTO `django_migrations` VALUES (54, 'hotel', '0001_initial', '2023-04-05 19:09:06.077733');
INSERT INTO `django_migrations` VALUES (55, 'hotel', '0002_initial', '2023-04-05 19:09:07.713927');
INSERT INTO `django_migrations` VALUES (56, 'lymessages', '0001_initial', '2023-04-05 19:09:08.288631');
INSERT INTO `django_migrations` VALUES (57, 'lymessages', '0002_initial', '2023-04-05 19:09:09.261398');
INSERT INTO `django_migrations` VALUES (58, 'lymonitor', '0001_initial', '2023-04-05 19:09:09.312390');
INSERT INTO `django_migrations` VALUES (59, 'lymonitor', '0002_initial', '2023-04-05 19:09:09.446595');
INSERT INTO `django_migrations` VALUES (60, 'lywebsocket', '0001_initial', '2023-04-05 19:09:09.504347');
INSERT INTO `django_migrations` VALUES (61, 'lywebsocket', '0002_initial', '2023-04-05 19:09:09.660911');
INSERT INTO `django_migrations` VALUES (62, 'mall', '0001_initial', '2023-04-05 19:09:10.539030');
INSERT INTO `django_migrations` VALUES (63, 'mall', '0002_initial', '2023-04-05 19:09:18.507917');
INSERT INTO `django_migrations` VALUES (64, 'oauth', '0001_initial', '2023-04-05 19:09:19.238963');
INSERT INTO `django_migrations` VALUES (65, 'platformsettings', '0001_initial', '2023-04-05 19:09:20.305164');
INSERT INTO `django_migrations` VALUES (66, 'sessions', '0001_initial', '2023-04-05 19:09:20.410509');
INSERT INTO `django_migrations` VALUES (67, 'hotel', '0003_hotelbrand_group', '2023-04-06 10:16:54.563005');
INSERT INTO `django_migrations` VALUES (68, 'hotel', '0004_alter_hotelbrand_brand_code_and_more', '2023-04-06 10:44:54.196893');
INSERT INTO `django_migrations` VALUES (69, 'hotel', '0005_rename_name_hotelenum_enum_name', '2023-04-06 10:52:05.665958');
INSERT INTO `django_migrations` VALUES (70, 'hotel', '0006_hotel_hotel_logo', '2023-04-06 14:15:42.023819');
INSERT INTO `django_migrations` VALUES (71, 'hotel', '0007_hotelenum_sort_hotelenumdetail_sort', '2023-04-07 18:25:03.848703');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_button
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_button`;
CREATE TABLE `lyadmin_button`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_button_creator_id_8ed6f8c5`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_button
-- ----------------------------
INSERT INTO `lyadmin_button` VALUES ('09134d7643504804a6c7cc3d16e06684', NULL, '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, '2022-10-25 23:09:53.863898', '2022-10-25 23:09:53.863898', '日志', 'Logs', '456b688c-8ad5-46de-bc2e-d41d8047bd42');
INSERT INTO `lyadmin_button` VALUES ('2d763a6d6dcf409d87056efd06aace0a', NULL, NULL, NULL, '2022-06-27 13:56:06.159513', '2022-06-27 13:56:06.159513', '修改密码', 'Changepassword', NULL);
INSERT INTO `lyadmin_button` VALUES ('43d89c33967545a387a3ac27c02460b6', NULL, '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, '2022-08-01 23:16:24.046679', '2022-08-01 23:16:24.046679', '统计', 'Statistics', '456b688c-8ad5-46de-bc2e-d41d8047bd42');
INSERT INTO `lyadmin_button` VALUES ('4547b93a-36b9-410d-987c-3c52a9b51156', NULL, NULL, NULL, '2022-06-27 13:56:06.149563', '2022-06-27 13:56:06.149563', '编辑', 'Update', NULL);
INSERT INTO `lyadmin_button` VALUES ('4a410769-6b0a-4ed3-90f0-b5d89a6f802c', NULL, NULL, NULL, '2022-06-27 13:56:06.151529', '2022-06-27 13:56:06.151529', '删除', 'Delete', NULL);
INSERT INTO `lyadmin_button` VALUES ('5bf695439e9d4c4d9601bf4fb558b3a2', NULL, '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, '2022-10-26 00:05:18.024132', '2022-10-26 00:05:18.024132', '任务列表', 'Tasklist', '456b688c-8ad5-46de-bc2e-d41d8047bd42');
INSERT INTO `lyadmin_button` VALUES ('644e9c34-e3d6-4518-b795-a603a6e9a137', NULL, NULL, NULL, '2022-06-27 13:56:06.153525', '2022-06-27 13:56:06.153525', '单例', 'Retrieve', NULL);
INSERT INTO `lyadmin_button` VALUES ('6e0a41e5308c44a8b0d2785e05b2c07a', NULL, NULL, NULL, '2022-06-27 13:56:06.161507', '2022-06-27 13:56:06.161507', '禁用', 'Disable', NULL);
INSERT INTO `lyadmin_button` VALUES ('80cb145b-5035-4517-a28a-7d59426f73f8', NULL, NULL, NULL, '2022-06-27 13:56:06.154522', '2022-06-27 13:56:06.154522', '新增', 'Create', NULL);
INSERT INTO `lyadmin_button` VALUES ('83a9b774-4669-4d2f-b61d-8ee4944c2316', NULL, NULL, NULL, '2022-06-27 13:56:06.158517', '2022-06-27 13:56:06.158517', '保存', 'Save', NULL);
INSERT INTO `lyadmin_button` VALUES ('c66a0ab23a6044189ae0beb530ac68cf', NULL, '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, '2022-08-01 23:16:11.387119', '2022-08-01 23:16:11.387119', '发货', 'Deliver', '456b688c-8ad5-46de-bc2e-d41d8047bd42');
INSERT INTO `lyadmin_button` VALUES ('ccc3f35f-c80c-4929-b8cc-67531698f397', NULL, NULL, NULL, '2022-06-27 13:56:06.156517', '2022-06-27 13:56:06.156517', '查询', 'Search', NULL);
INSERT INTO `lyadmin_button` VALUES ('f3f365e9bfab44f587cbd91e3691ef0f', NULL, '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, '2022-07-18 10:33:33.017933', '2022-07-18 10:33:33.017933', '终端', 'Terminal', '456b688c-8ad5-46de-bc2e-d41d8047bd42');

-- ----------------------------
-- Table structure for lyadmin_dept
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dept`;
CREATE TABLE `lyadmin_dept`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `owner` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_dept_creator_id_bb4dafb6`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dept_parent_id_c856ab90`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dept
-- ----------------------------
INSERT INTO `lyadmin_dept` VALUES ('cae96ade-7483-4827-bb0d-d2bd63ec1cc4', NULL, NULL, NULL, '2022-06-27 13:56:06.141286', '2022-06-27 13:56:06.141286', '财务部门', 1, NULL, NULL, NULL, 1, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_dept` VALUES ('d2c03bd9-dad0-4262-88ca-c3681d224fc3', NULL, NULL, NULL, '2022-06-27 13:56:06.144084', '2022-06-27 13:56:06.144084', 'lyadmin团队', 1, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `lyadmin_dept` VALUES ('fd8230ca-67bd-4347-8a9b-57eb19be5d9e', NULL, NULL, NULL, '2022-06-27 13:56:06.146078', '2022-06-27 13:56:06.146078', '研发部门', 2, NULL, NULL, NULL, 1, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');

-- ----------------------------
-- Table structure for lyadmin_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dictionary`;
CREATE TABLE `lyadmin_dictionary`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `lyadmin_dictionary_creator_id_f75d1c0b`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dictionary_parent_id_9d47f813`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_dictionary_detail
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_dictionary_detail`;
CREATE TABLE `lyadmin_dictionary_detail`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dict_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_dictionary_detail_creator_id_6422260d`(`creator_id`) USING BTREE,
  INDEX `lyadmin_dictionary_detail_dict_id_418a11f9`(`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_dictionary_detail
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_login_log`;
CREATE TABLE `lyadmin_login_log`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agent` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `browser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `os` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_type` int(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_login_log_creator_id_2aae8b60`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_login_log
-- ----------------------------
INSERT INTO `lyadmin_login_log` VALUES ('0b68834bc80343888239a4612f566e40', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:46:10.096834', '2023-04-06 09:46:10.096888', 'admin', '116.7.215.72', 'PC / Windows 10 / Chrome 111.0.0', 'Chrome 111.0.0', 'Windows 10', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_login_log` VALUES ('474fd26e31ac4324b6435da0fe59b9a3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:08:52.248591', '2023-04-07 11:08:52.248667', 'admin', '116.7.215.72', 'PC / Windows 10 / Chrome 111.0.0', 'Chrome 111.0.0', 'Windows 10', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_login_log` VALUES ('4c3e16e525c248ae9a29bce1f2c69f58', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:45:28.038656', '2023-04-06 09:45:28.038706', 'admin', '104.156.250.10', 'Other / Other / PostmanRuntime 7.31.1', 'PostmanRuntime 7.31.1', 'Other', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_login_log` VALUES ('6e3e17416a784fb98670bd2b083ba604', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:34:47.717573', '2023-04-07 11:34:47.717631', 'admin', '116.7.215.72', 'PC / Windows 10 / Chrome 111.0.0', 'Chrome 111.0.0', 'Windows 10', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_login_log` VALUES ('ac2a1587434b4cd686d80dd120d0f597', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:03:06.397205', '2023-04-06 14:03:06.397274', 'admin', '116.7.215.72', 'PC / Windows 10 / Chrome 111.0.0', 'Chrome 111.0.0', 'Windows 10', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_login_log` VALUES ('c50568470b9a4b03a2b128062a943170', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-13 18:12:44.732388', '2023-04-13 18:12:44.732439', 'admin', '104.156.250.10', 'Other / Other / PostmanRuntime 7.31.1', 'PostmanRuntime 7.31.1', 'Other', 1, 'd1431450-5068-4461-b57e-7862c005a547');

-- ----------------------------
-- Table structure for lyadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_menu`;
CREATE TABLE `lyadmin_menu`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `is_link` smallint(0) NOT NULL,
  `web_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `component_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `isautopm` smallint(0) NOT NULL,
  `cache` smallint(0) NOT NULL,
  `visible` smallint(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_menu_creator_id_39b95522`(`creator_id`) USING BTREE,
  INDEX `lyadmin_menu_parent_id_4a6f3129`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_menu
-- ----------------------------
INSERT INTO `lyadmin_menu` VALUES ('02c24003527546359b5a77ae07adc7d5', NULL, NULL, NULL, '2023-03-16 15:54:58.787906', '2023-03-16 15:54:58.787930', '', '地区管理', 7, 0, 'areaManage', NULL, NULL, 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('09a42810d4dd4b2eb939f8eb0b01d9d1', NULL, NULL, NULL, '2023-03-16 15:54:58.811307', '2023-03-16 15:54:58.811329', '', '计划任务', 20, 0, 'crontab', NULL, NULL, 1, 0, 0, 1, NULL, '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_menu` VALUES ('151035da-77a3-4a62-b474-fce6824571fb', NULL, NULL, NULL, '2023-03-16 15:54:58.782950', '2023-03-16 15:54:58.783009', '', '按钮管理', 6, 0, 'buttonManage', 'system/button', 'buttonManage', 1, 0, 0, 0, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('15c9ebc5-d12f-470a-a560-938a7dc57570', NULL, NULL, NULL, '2023-03-16 15:54:58.774862', '2023-03-16 15:54:58.774883', '', '角色管理', 3, 0, 'roleManage', 'system/role', 'role', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('244b28685cd14a39a383189981510d4a', NULL, NULL, NULL, '2023-03-16 15:54:58.721700', '2023-03-16 15:54:58.721724', 'user-filled', '用户管理', 5, 0, 'userManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('25735adb-d051-4b7b-bbb7-1154526f3e4c', NULL, NULL, NULL, '2023-03-16 15:54:58.794474', '2023-03-16 15:54:58.794499', 'user', '个人中心', 13, 0, 'personalCenter', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('2a7c0142f7514dacb7999383e4e67aca', NULL, NULL, NULL, '2023-03-16 15:54:58.839816', '2023-03-16 15:54:58.839838', 'WalletFilled', '财务管理', 299, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('2e07b715d5e24e2ca45997527430e9d3', NULL, NULL, NULL, '2023-03-16 15:54:58.836336', '2023-03-16 15:54:58.836360', '', '商城订单', 1, 0, 'mallOrderManage', NULL, NULL, 1, 0, 0, 1, NULL, 'a524f17e9ac74be3baf9d113f014184c');
INSERT INTO `lyadmin_menu` VALUES ('2e3438c8-3ddc-43ff-b8d8-cca328e4856e', NULL, NULL, NULL, '2023-03-16 15:54:58.714988', '2023-03-16 15:54:58.715009', 'avatar', '管理员管理', 3, 0, 'adminManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('3171db16eda048ae92b16536fc1241b6', NULL, NULL, NULL, '2023-03-16 15:54:58.743517', '2023-03-16 15:54:58.743539', '', '平台公告', 5, 0, 'messagNotice', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('3c13161f70f1469a913d539e7616c577', NULL, NULL, NULL, '2023-03-16 15:54:58.847271', '2023-03-16 15:54:58.847294', '', '意见反馈', 8, 0, 'userFeekback', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('4236eb70-1558-43a0-9cf2-037230c547f9', NULL, NULL, NULL, '2023-03-16 15:54:58.757316', '2023-03-16 15:54:58.757341', '', '部门管理', 1, 0, 'departmentManage', 'system/dept', 'dept', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('49160b589f004e44b3920c82583c2581', NULL, NULL, NULL, '2023-03-16 15:54:58.751780', '2023-03-16 15:54:58.751802', '', '系统配置', 15, 0, 'systemConfig', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('49f82c65c3dd4419a5af7da765d6abcf', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-31 17:54:27.065869', '2023-03-31 17:49:55.025703', 'Apple', '33ddddasdddd', 4, 0, 'dasdasd', NULL, NULL, 1, 1, 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu` VALUES ('4ba07859-8b73-4524-a1a6-bbff36d98337', NULL, NULL, NULL, '2023-03-16 15:54:58.761801', '2023-03-16 15:54:58.761823', '', '操作日志', 1, 0, 'journalManage', 'system/log/operationLog', 'operationLog', 1, 0, 0, 1, NULL, 'c236fb6b-ddaa-4deb-b79b-16e42d9f347f');
INSERT INTO `lyadmin_menu` VALUES ('54f769b0-3dff-416c-8102-e55ec44827cc', NULL, NULL, NULL, '2023-03-16 15:54:58.791193', '2023-03-16 15:54:58.791213', 'tools', '系统管理', 990, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('56c3f341-4f46-4b04-9cfc-c8a14701707e', NULL, NULL, NULL, '2023-03-16 15:54:58.765664', '2023-03-16 15:54:58.765685', '', '菜单管理', 2, 0, 'menuManage', 'system/menu', 'menu', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('718daec1b94b456c96d773889648173e', NULL, NULL, NULL, '2023-03-16 15:54:58.814742', '2023-03-16 15:54:58.814763', '', '终端服务', 30, 0, 'terminal', NULL, NULL, 1, 0, 0, 1, NULL, '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_menu` VALUES ('77edf447326b4e0dbc6f9719c1de8a12', NULL, NULL, NULL, '2023-03-16 15:54:58.801984', '2023-03-16 15:54:58.802032', 'TrendCharts', '系统监控', 888, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('80a340eae92b430abe17635468c2df1d', NULL, NULL, NULL, '2023-03-16 15:54:58.747589', '2023-03-16 15:54:58.747612', '', '参数设置', 12, 0, 'platformSettingsother', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('9065cb5445ac42ef93eb9e75e6287792', NULL, NULL, NULL, '2023-03-16 15:54:58.710955', '2023-03-16 15:54:58.711013', 'DataLine', 'DashBoard', 1, 0, 'analysis', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('a28f8ca682d04c8fb2953fdeb3d9e2e6', NULL, NULL, NULL, '2023-03-16 15:54:58.818362', '2023-03-16 15:54:58.818383', 'GoodsFilled', '商城管理', 188, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('a524f17e9ac74be3baf9d113f014184c', NULL, NULL, NULL, '2023-03-16 15:54:58.832271', '2023-03-16 15:54:58.832294', 'List', '订单管理', 199, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('a607e820-36e5-45c0-aabf-85a8e4e2c7ac', NULL, NULL, NULL, '2023-03-16 15:54:58.779074', '2023-03-16 15:54:58.779096', '', '权限管理', 4, 0, 'authorityManage', 'system/rolePermission', 'rolePermission', 1, 0, 0, 1, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_menu` VALUES ('ae5629946df4497cbec10419e8375dd9', NULL, NULL, NULL, '2023-03-16 15:54:58.739332', '2023-03-16 15:54:58.739354', '', '轮播图设置', 1, 0, 'carouselSettingsimg', NULL, NULL, 1, 0, 0, 1, NULL, 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_menu` VALUES ('b999c50996864465b851575e378c5aea', NULL, NULL, NULL, '2023-03-16 15:54:58.826054', '2023-03-16 15:54:58.826082', '', '商品分类', 2, 0, 'goodsType', NULL, NULL, 1, 0, 0, 1, NULL, 'a28f8ca682d04c8fb2953fdeb3d9e2e6');
INSERT INTO `lyadmin_menu` VALUES ('bcbeeee5c91a4e2ea2c2a31237e33616', NULL, NULL, NULL, '2023-03-16 15:54:58.807406', '2023-03-16 15:54:58.807443', '', '服务监控', 10, 0, 'server', NULL, NULL, 1, 0, 0, 1, NULL, '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_menu` VALUES ('c236fb6b-ddaa-4deb-b79b-16e42d9f347f', NULL, NULL, NULL, '2023-03-16 15:54:58.798359', '2023-03-16 15:54:58.798382', 'info-filled', '日志管理', 999, 0, 'journalManage', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('d470ab18859a4472b525e605ae96c325', NULL, NULL, NULL, '2023-03-16 15:54:58.822568', '2023-03-16 15:54:58.822590', '', '商品管理', 1, 0, 'goodsManage', NULL, NULL, 1, 0, 0, 1, NULL, 'a28f8ca682d04c8fb2953fdeb3d9e2e6');
INSERT INTO `lyadmin_menu` VALUES ('d4e2fe169a8b40f3846421ac04e4fccb', NULL, NULL, NULL, '2023-03-16 15:54:58.734937', '2023-03-16 15:54:58.734959', 'platform', '平台设置', 9, 0, '', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('d73f73a399af48cea6a8490ac508d7a0', NULL, NULL, NULL, '2023-03-16 15:54:58.731295', '2023-03-16 15:54:58.731344', 'user-filled', '用户管理CRUD', 7, 0, 'userManageCrud', NULL, NULL, 1, 0, 0, 1, NULL, NULL);
INSERT INTO `lyadmin_menu` VALUES ('d88d1121bd8c46c9b5dbc6a7523556c1', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-17 14:51:18.607627', '2023-03-17 14:51:18.607658', '', 'ansdjkas', 99, 0, 'ajsjj', NULL, NULL, 1, 1, 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu` VALUES ('dc8c173b425048e7a8c9b59513596c7f', NULL, NULL, NULL, '2023-03-16 15:54:58.843555', '2023-03-16 15:54:58.843576', '', '商品财务流水', 1, 0, 'financeStatisticsGoods', NULL, NULL, 1, 0, 0, 1, NULL, '2a7c0142f7514dacb7999383e4e67aca');
INSERT INTO `lyadmin_menu` VALUES ('e0f53902-e901-490c-83f3-331e60b97fcf', NULL, NULL, NULL, '2023-03-16 15:54:58.771716', '2023-03-16 15:54:58.771739', '', '按钮配置', 2, 0, 'buttonConfig/:id/:name', 'system/ menuButton', NULL, 1, 0, 0, 0, NULL, '54f769b0-3dff-416c-8102-e55ec44827cc');

-- ----------------------------
-- Table structure for lyadmin_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_menu_button`;
CREATE TABLE `lyadmin_menu_button`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `api` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `method` smallint(0) NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_menu_button_creator_id_e2b5a076`(`creator_id`) USING BTREE,
  INDEX `lyadmin_menu_button_menu_id_74205633`(`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_menu_button
-- ----------------------------
INSERT INTO `lyadmin_menu_button` VALUES ('0088e172566f4ee388092ec2be3584ee', NULL, NULL, NULL, '2023-03-16 15:54:59.163252', '2023-03-16 15:54:59.163274', '删除', 'Delete', '/api/platformsettings/lunboimg/{id}/', 3, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('0209de89-6b9f-4d8a-84d3-ccfc3cc8b4da', NULL, NULL, NULL, '2023-03-16 15:54:58.861876', '2023-03-16 15:54:58.861897', '编辑', 'Update', '/api/system/button/{id}/', 2, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('04896a47-0f3a-4e2f-a111-bfe15f9e31c5', NULL, NULL, NULL, '2023-03-16 15:54:58.865507', '2023-03-16 15:54:58.865570', '编辑', 'Update', '/api/system/menu/{id}/', 2, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('05932c39ad444ac5aaf880d281620611', NULL, NULL, NULL, '2023-03-16 15:54:59.009844', '2023-03-16 15:54:59.009867', '查询', 'Search', '/api/platformsettings/userfeeckback/', 0, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('0b5bf0f1caac45beabf54fb5d930187b', NULL, NULL, NULL, '2023-03-16 15:54:59.277047', '2023-03-16 15:54:59.277069', '日志', 'Search', '/api/crontab/taskresult/', 0, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('0ce04d99cbd249a9af88fe1496591a89', NULL, NULL, NULL, '2023-03-16 15:54:59.258641', '2023-03-16 15:54:59.258663', '禁用', 'Disable', '/api/crontab/periodictask/enabled/{id}/', 2, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('0d931efc-2f80-418f-b4a0-5251f0a88f69', NULL, NULL, NULL, '2023-03-16 15:54:59.026676', '2023-03-16 15:54:59.026699', '新增', 'Create', '/api/system/operation_log/', 1, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('103d4310b98e4ff1ba71336af8d4c6c2', NULL, NULL, NULL, '2023-03-16 15:54:59.077644', '2023-03-16 15:54:59.077667', '新增', 'Create', '/api/platformsettings/sysconfig/', 1, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('10610c56-cec2-4774-9468-e1c763e59e70', NULL, NULL, NULL, '2023-03-16 15:54:59.029680', '2023-03-16 15:54:59.029702', '新增', 'Create', '/api/system/dept/', 1, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('118ce77cc07140a08d9a92ab8800f2cf', NULL, NULL, NULL, '2023-03-16 15:54:59.141616', '2023-03-16 15:54:59.141637', '单例', 'Retrieve', '/api/mall/goodstype/{id}/', 0, NULL, 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_menu_button` VALUES ('11d334fcadf1490e85e6a045126dea78', NULL, NULL, NULL, '2023-03-16 15:54:59.153187', '2023-03-16 15:54:59.153208', '单例', 'Retrieve', '/api/platformsettings/userfeeckback/{id}/', 0, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('140166e2-471e-455e-9dcd-05cebbbab95d', NULL, NULL, NULL, '2023-03-16 15:54:58.937167', '2023-03-16 15:54:58.937190', '查询', 'Search', '/api/system/role/', 0, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('14514da3c11441c2b63f2331e3f897d0', NULL, NULL, NULL, '2023-03-16 15:54:59.159808', '2023-03-16 15:54:59.159830', '单例', 'Retrieve', '/api/platformsettings/sysconfig/{id}/', 0, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('14e7088f-a39b-47ae-bd67-b9bbcabae96b', NULL, NULL, NULL, '2023-03-16 15:54:59.088310', '2023-03-16 15:54:59.088333', '单例', 'Retrieve', '/api/users/users/{id}/', 0, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('14e7088fa39b47aebd67b9bbcabae96b', NULL, NULL, NULL, '2023-03-16 15:54:59.091703', '2023-03-16 15:54:59.091725', '单例', 'Retrieve', '/api/users/users/{id}/', 0, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('19d01a929bc9414cac1a8defd48597c9', NULL, NULL, NULL, '2023-03-16 15:54:59.073420', '2023-03-16 15:54:59.073441', '新增', 'Create', '/api/crontab/periodictask/', 1, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('1a0c96cf-09a6-43b4-b08a-0c5b6e2f7bb8', NULL, NULL, NULL, '2023-03-16 15:54:59.236774', '2023-03-16 15:54:59.236796', '保存', 'Save', '/api/system/permission/{id}/', 2, NULL, 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_menu_button` VALUES ('1b4f27a7-8ab8-4388-ae57-46e29976cf0e', NULL, NULL, NULL, '2023-03-16 15:54:59.032990', '2023-03-16 15:54:59.033012', '新增', 'Create', '/api/system/button/', 1, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('1d4441fdc418499f856c23aa4e1be2c0', NULL, NULL, NULL, '2023-03-16 15:54:59.085160', '2023-03-16 15:54:59.085181', '单例', 'Retrieve', '/api/platformsettings/other/{id}/', 0, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('1f630046c3d44000a82381e0e8bccc49', NULL, NULL, NULL, '2023-03-31 17:49:55.049513', '2023-03-31 17:49:55.049581', '编辑', 'Update', '', 0, NULL, '49f82c65c3dd4419a5af7da765d6abcf');
INSERT INTO `lyadmin_menu_button` VALUES ('220fa39fd56e47e1ab9558c6bd10106e', NULL, NULL, NULL, '2023-03-16 15:54:59.066380', '2023-03-16 15:54:59.066403', '新增', 'Create', '/api/mall/goodsspu/', 1, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('2235160bd56c423880572f5450b94f16', NULL, NULL, NULL, '2023-03-16 15:54:59.138787', '2023-03-16 15:54:59.138808', '单例', 'Retrieve', '/api/mall/goodsspu/{id}/', 0, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('264cc3d69f7a46d5a117997e9c78506c', NULL, NULL, NULL, '2023-03-16 15:54:59.167297', '2023-03-16 15:54:59.167354', '删除', 'Delete', '/api/platformsettings/other/{id}/', 3, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('281ad1aad421441a965f7bc6b397eb30', NULL, NULL, NULL, '2023-03-16 15:54:59.203588', '2023-03-16 15:54:59.203610', '删除', 'Delete', '/api/terminal/terminal/{id}/', 3, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('2a3d4756-4d51-4129-b3c4-b2c7a00dbb8a', NULL, NULL, NULL, '2023-03-16 15:54:59.036094', '2023-03-16 15:54:59.036117', '新增', 'Create', '/api/system/role/', 1, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('2c53efc8-e6a4-4192-8688-03baed0874a4', NULL, NULL, NULL, '2023-03-16 15:54:59.171770', '2023-03-16 15:54:59.171792', '删除', 'Delete', '/api/system/user/{id}/', 3, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('2c5b748c5dce4f34bd24b1201faf09c2', NULL, NULL, NULL, '2023-03-16 15:54:58.998650', '2023-03-16 15:54:58.998694', '查询', 'Search', '/api/mall/goodstype/', 0, NULL, 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_menu_button` VALUES ('306a78f6eef44c6f822f9f74a8a9cfe4', NULL, NULL, NULL, '2023-03-17 14:51:18.615225', '2023-03-17 14:51:18.615233', '查询', 'Search', '', 0, NULL, 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu_button` VALUES ('3114d15ef1c14e72ad92c6137e708ff3', NULL, NULL, NULL, '2023-03-17 14:51:18.615255', '2023-03-17 14:51:18.615262', '新增', 'Create', '', 0, NULL, 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu_button` VALUES ('324776a3-48ec-4bca-bdd9-1838e2b6f7cc', NULL, NULL, NULL, '2023-03-16 15:54:58.941527', '2023-03-16 15:54:58.941551', '查询', 'Search', '/api/system/user/', 0, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('353595a28cb1463b830cfbf79fea60b5', NULL, NULL, NULL, '2023-03-16 15:54:59.243045', '2023-03-16 15:54:59.243067', '禁用', 'Disable', '/api/users/users/disableuser/{id}/', 2, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('3688b715-4689-468f-bf3e-6f910259f837', NULL, NULL, NULL, '2023-03-16 15:54:58.945252', '2023-03-16 15:54:58.945274', '查询', 'Search', '/api/system/user/user_info/', 0, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('3737d4afa1e2437b93e8cdcd7116180a', NULL, NULL, NULL, '2023-03-16 15:54:59.144996', '2023-03-16 15:54:59.145017', '单例', 'Retrieve', '/api/mall/goodsorder/{id}/', 0, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('37462e31-3cdf-4576-af10-5958f53b1bef', NULL, NULL, NULL, '2023-03-16 15:54:58.949295', '2023-03-16 15:54:58.949316', '查询', 'Search', '/api/system/operation_log/', 0, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('3ad46208339e4631921b71c75de86c39', NULL, NULL, NULL, '2023-03-31 17:49:55.049706', '2023-03-31 17:49:55.049724', '单例', 'Retrieve', '', 0, NULL, '49f82c65c3dd4419a5af7da765d6abcf');
INSERT INTO `lyadmin_menu_button` VALUES ('3cadf44d739b45d4a94ad23939e19716', NULL, NULL, NULL, '2023-03-16 15:54:59.218533', '2023-03-16 15:54:59.218567', '删除', 'Delete', '/api/mall/goodsorder/{id}/', 3, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('3e11db64-b8e8-4558-963b-71d063a7db16', NULL, NULL, NULL, '2023-03-16 15:54:58.870017', '2023-03-16 15:54:58.870043', '编辑', 'Update', '/api/system/dept/{id}/', 2, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('3fd6ae6c-fd76-4465-b2b6-db672f4bd79e', NULL, NULL, NULL, '2023-03-16 15:54:59.174413', '2023-03-16 15:54:59.174432', '删除', 'Delete', '/api/system/role/{id}/', 3, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('4281eaced4e943ababeefb66a6a7f13d', NULL, NULL, NULL, '2023-03-16 15:54:58.914015', '2023-03-16 15:54:58.914038', '编辑', 'Update', '/api/mall/goodsspu/{id}/', 2, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('42ad6e05-7c84-444f-bcae-09de84f4988b', NULL, NULL, NULL, '2023-03-16 15:54:58.955029', '2023-03-16 15:54:58.955052', '查询', 'Search', '/api/system/menu/', 0, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('43696212-ecba-4e66-8678-33c9bc935c76', NULL, NULL, NULL, '2023-03-16 15:54:58.958390', '2023-03-16 15:54:58.958412', '查询', 'Search', '/api/users/users/', 0, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('43696212ecba4e66867833c9bc935c76', NULL, NULL, NULL, '2023-03-16 15:54:58.961533', '2023-03-16 15:54:58.961556', '查询', 'Search', '/api/users/users/', 0, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('43a779c3e1634e84bb1a32c675b5f744', NULL, NULL, NULL, '2023-03-16 15:54:58.994530', '2023-03-16 15:54:58.994552', '查询', 'Search', '/api/mall/goodsspu/', 0, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('4450d80871eb44a1aaa4fbb5429885f0', NULL, NULL, NULL, '2023-03-16 15:54:59.013375', '2023-03-16 15:54:59.013395', '查询', 'Search', '/api/crontab/periodictask/', 0, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('4b73b1669e49495f93de36d63cc2c0d8', NULL, NULL, NULL, '2023-03-16 15:54:58.923483', '2023-03-16 15:54:58.923506', '编辑', 'Update', '/api/mall/goodsorder/{id}/', 2, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('4fe4b7f5-0bc8-4375-9f39-747e06ec285a', NULL, NULL, NULL, '2023-03-16 15:54:59.177483', '2023-03-16 15:54:59.177504', '删除', 'Delete', '/api/system/menu_button/{id}/', 3, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('51085c21-2279-490f-8878-594f059f7616', NULL, NULL, NULL, '2023-03-16 15:54:59.180615', '2023-03-16 15:54:59.180638', '删除', 'Delete', '/api/system/button/{id}/', 3, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('53e6d5a4192c4f0f8bdd7f5647124147', NULL, NULL, NULL, '2023-03-16 15:54:59.270256', '2023-03-16 15:54:59.270277', '统计', 'Statistics', '/api/mall/goodsforderinfo/orderstatistics/', 0, NULL, 'dc8c173b425048e7a8c9b59513596c7f');
INSERT INTO `lyadmin_menu_button` VALUES ('566c03c4d45f4fe39f614b7dcaed692e', NULL, NULL, NULL, '2023-03-31 17:49:55.049663', '2023-03-31 17:49:55.049674', '新增', 'Create', '', 0, NULL, '49f82c65c3dd4419a5af7da765d6abcf');
INSERT INTO `lyadmin_menu_button` VALUES ('576008b6046f4afcb88d8139ff34e228', NULL, NULL, NULL, '2023-03-16 15:54:59.228563', '2023-03-16 15:54:59.228587', '删除', 'Delete', '/api/crontab/periodictask/{id}/', 3, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('59db5099a03f44c8adb883faa340c15a', NULL, NULL, NULL, '2023-03-16 15:54:58.929194', '2023-03-16 15:54:58.929221', '查询', 'Search', '/api/platformsettings/lunboimg/', 0, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('5aac29b0-5a32-45fb-81c5-437b48f4a5df', NULL, NULL, NULL, '2023-03-16 15:54:58.965161', '2023-03-16 15:54:58.965183', '查询', 'Search', '/api/system/menu_button/', 0, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('5d77d14e-b199-481f-a97d-6e4c0e84fe71', NULL, NULL, NULL, '2023-03-16 15:54:58.873900', '2023-03-16 15:54:58.873921', '修改密码', 'Changepassword', '/api/system/user/change_password/{id}/', 2, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('6208f412-6bca-4d7b-a5a0-0103b7ba6091', NULL, NULL, NULL, '2023-03-16 15:54:59.094982', '2023-03-16 15:54:59.095003', '单例', 'Retrieve', '/api/system/button/{id}/', 0, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('6300774a-d19c-43ad-8102-d7bf341eff33', NULL, NULL, NULL, '2023-03-16 15:54:59.098762', '2023-03-16 15:54:59.098783', '单例', 'Retrieve', '/api/system/dept/{id}/', 0, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('63e87ee28a524c72ae8f96e1522ba1bd', NULL, NULL, NULL, '2023-03-17 14:51:18.615284', '2023-03-17 14:51:18.615291', '单例', 'Retrieve', '', 0, NULL, 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu_button` VALUES ('646e9790-24f5-4606-abc4-0b5eede12f66', NULL, NULL, NULL, '2023-03-16 15:54:58.970164', '2023-03-16 15:54:58.970190', '查询', 'Search', '/api/system/dept/', 0, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('676e32850165441cad01782e453de925', NULL, NULL, NULL, '2023-03-16 15:54:59.069895', '2023-03-16 15:54:59.069915', '新增', 'Create', '/api/mall/goodstype/', 1, NULL, 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_menu_button` VALUES ('6a21329f0dcd4781a64fc4f62324e4c0', NULL, NULL, NULL, '2023-03-16 15:54:59.006420', '2023-03-16 15:54:59.006441', '查询', 'Search', '/api/mall/goodsforderinfo/', 0, NULL, 'dc8c173b425048e7a8c9b59513596c7f');
INSERT INTO `lyadmin_menu_button` VALUES ('6af0929440a345238c28ee9b1fe341ba', NULL, NULL, NULL, '2023-03-16 15:54:59.262203', '2023-03-16 15:54:59.262225', '终端', 'Terminal', '/ws/webssh/', 5, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('6b88361b326a4e55a8a5135c08ba66f1', NULL, NULL, NULL, '2023-03-16 15:54:59.122161', '2023-03-16 15:54:59.122183', '单例', 'Retrieve', '/api/messages/messagenotice/{id}/', 0, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('6d6b6689d1224900b09c8101b3344f42', NULL, NULL, NULL, '2023-03-16 15:54:59.125645', '2023-03-16 15:54:59.125669', '单例', 'Retrieve', '/api/system/role_id_to_menu/{id}/', 0, NULL, 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_menu_button` VALUES ('6e27757847c64e228934b60ae81baedf', NULL, NULL, NULL, '2023-03-16 15:54:59.156777', '2023-03-16 15:54:59.156799', '单例', 'Retrieve', '/api/crontab/periodictask/{id}/', 0, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('6e4251a948f348ccaa419a777a118048', NULL, NULL, NULL, '2023-03-16 15:54:58.858306', '2023-03-16 15:54:58.858329', '编辑', 'Update', '/api/platformsettings/other/{id}/', 2, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('6e9d454742f74437928959c02be42456', NULL, NULL, NULL, '2023-03-16 15:54:59.149399', '2023-03-16 15:54:59.149423', '单例', 'Retrieve', '/api/mall/goodsforderinfo/{id}/', 0, NULL, 'dc8c173b425048e7a8c9b59513596c7f');
INSERT INTO `lyadmin_menu_button` VALUES ('716480cd8ac645239405763834326f7e', NULL, NULL, NULL, '2023-03-16 15:54:58.918596', '2023-03-16 15:54:58.918702', '编辑', 'Update', '/api/mall/goodstype/{id}/', 2, NULL, 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_menu_button` VALUES ('77096cd56a6441699345e6e4f22d0ec3', NULL, NULL, NULL, '2023-03-16 15:54:59.023676', '2023-03-16 15:54:59.023697', '新增', 'Create', '/api/platformsettings/other/', 1, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('7aef1da4647844e3944a2745cef1bc6d', NULL, NULL, NULL, '2023-03-16 15:54:59.020775', '2023-03-16 15:54:59.020797', '新增', 'Create', '/api/platformsettings/lunboimg/', 1, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('80c8eb6939a245e9890dede241b5d1d6', NULL, NULL, NULL, '2023-03-16 15:54:59.246039', '2023-03-16 15:54:59.246060', '禁用', 'Disable', '/api/users/users/disableuser/{id}/', 2, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('80efc041695a42e4a9a04c010c6c7004', NULL, NULL, NULL, '2023-03-16 15:54:58.932655', '2023-03-16 15:54:58.932703', '查询', 'Search', '/api/platformsettings/other/', 0, NULL, '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_menu_button` VALUES ('8228955d67bc4dc89638b523f58108ee', NULL, NULL, NULL, '2023-03-16 15:54:59.062603', '2023-03-16 15:54:59.062648', '新增', 'Create', '/api/address/area/', 1, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('875bdfeb-0c34-441d-8ee3-bb93c21e17dd', NULL, NULL, NULL, '2023-03-16 15:54:58.877022', '2023-03-16 15:54:58.877045', '编辑', 'Update', '/api/users/users/{id}/', 2, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('875bdfeb0c34441d8ee3bb93c21e17dd', NULL, NULL, NULL, '2023-03-16 15:54:58.880491', '2023-03-16 15:54:58.880552', '编辑', 'Update', '/api/users/users/{id}/', 2, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('8ae924bd-576c-4ae1-92eb-b0a98148baae', NULL, NULL, NULL, '2023-03-16 15:54:59.183915', '2023-03-16 15:54:59.183938', '删除', 'Delete', '/api/system/menu/{id}/', 3, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('8b7a0e79-a6ef-4946-87c6-8c042b887e1c', NULL, NULL, NULL, '2023-03-16 15:54:59.102670', '2023-03-16 15:54:59.102693', '单例', 'Retrieve', '/api/system/operation_log/{id}/', 0, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('8d65733d401c40f8b27cc6bcfed78bc3', NULL, NULL, NULL, '2023-03-16 15:54:59.058911', '2023-03-16 15:54:59.058992', '新增', 'Create', '/api/terminal/terminal/', 1, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('8f465aa674744313890cc8c59d3d0fd2', NULL, NULL, NULL, '2023-03-16 15:54:58.991287', '2023-03-16 15:54:58.991308', '查询', 'Search', '/api/address/area/area_root/', 0, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('9565c5888bd4414c84ecede7af7d1554', NULL, NULL, NULL, '2023-03-16 15:54:59.232639', '2023-03-16 15:54:59.232662', '删除', 'Delete', '/api/platformsettings/sysconfig/{id}/', 3, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('96022ae5-6425-47b9-8f89-01edc33eb2b7', NULL, NULL, NULL, '2023-03-16 15:54:59.106832', '2023-03-16 15:54:59.106854', '单例', 'Retrieve', '/api/system/role/{id}/', 0, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('989ad685ce654dd1b367f41dedfdd0b9', NULL, NULL, NULL, '2023-03-16 15:54:59.224853', '2023-03-16 15:54:59.224873', '删除', 'Delete', '/api/platformsettings/userfeeckback/{id}/', 3, NULL, '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_menu_button` VALUES ('98c953b2d74d4d9d83d18433a7fc85ba', NULL, NULL, NULL, '2023-03-16 15:54:59.213963', '2023-03-16 15:54:59.213985', '删除', 'Delete', '/api/mall/goodstype/{id}/', 3, NULL, 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_menu_button` VALUES ('9e6b2376-1ab0-4966-8d5d-4ad4f911d13c', NULL, NULL, NULL, '2023-03-16 15:54:59.039012', '2023-03-16 15:54:59.039059', '新增', 'Create', '/api/system/user/', 1, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('9fc8436a-1996-478f-a155-5de7939a54dc', NULL, NULL, NULL, '2023-03-16 15:54:59.042074', '2023-03-16 15:54:59.042096', '新增', 'Create', '/api/users/users/', 1, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('9fc8436a1996478fa1555de7939a54dc', NULL, NULL, NULL, '2023-03-16 15:54:59.045228', '2023-03-16 15:54:59.045249', '新增', 'Create', '/api/users/users/', 1, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('a20a200c721c489b9925cdd5b5e6708c', NULL, NULL, NULL, '2023-03-16 15:54:59.207000', '2023-03-16 15:54:59.207022', '删除', 'Delete', '/api/address/area/{id}/', 3, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('a3088120763d49ad93498eb515c7c244', NULL, NULL, NULL, '2023-03-16 15:54:59.081348', '2023-03-16 15:54:59.081373', '单例', 'Retrieve', '/api/platformsettings/lunboimg/{id}/', 0, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('a45559c4cc6f48e2b7194c2dc577af3a', NULL, NULL, NULL, '2023-03-16 15:54:59.254673', '2023-03-16 15:54:59.254813', '禁用', 'Disable', '/api/mall/goodsspu/islaunched/{id}/', 2, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('a69fb746c0aa4bd0b31b1480c9e4dcc0', NULL, NULL, NULL, '2023-03-16 15:54:58.983673', '2023-03-16 15:54:58.983700', '查询', 'Search', '/api/monitor/getsysteminfo/', 0, NULL, 'bcbeeee5c91a4e2ea2c2a31237e33616');
INSERT INTO `lyadmin_menu_button` VALUES ('abe5c07f-0cab-4053-ac24-e782792e9d7f', NULL, NULL, NULL, '2023-03-16 15:54:59.048568', '2023-03-16 15:54:59.048589', '新增', 'Create', '/api/system/menu/', 1, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('ac302c9907b94ab59ac3c40975add57b', NULL, NULL, NULL, '2023-03-16 15:54:59.210834', '2023-03-16 15:54:59.210856', '删除', 'Delete', '/api/mall/goodsspu/{id}/', 3, NULL, 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_menu_button` VALUES ('acfde861-1872-47e2-a1f1-abeda5175b7f', NULL, NULL, NULL, '2023-03-16 15:54:59.187293', '2023-03-16 15:54:59.187316', '删除', 'Delete', '/api/system/operation_log/{id}/', 3, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('af60d628-73b1-4c5d-b34e-7c70ab9bd87e', NULL, NULL, NULL, '2023-03-16 15:54:58.973857', '2023-03-16 15:54:58.973878', '查询', 'Search', '/api/system/button/', 0, NULL, '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_menu_button` VALUES ('b10f7d08-2592-4b54-8557-b5ca864a029a', NULL, NULL, NULL, '2023-03-16 15:54:59.189962', '2023-03-16 15:54:59.189983', '删除', 'Delete', '/api/system/dept/{id}/', 3, NULL, '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_menu_button` VALUES ('b4cbe8ed35a04155b14c7809fad6b2ef', NULL, NULL, NULL, '2023-03-16 15:54:58.906997', '2023-03-16 15:54:58.907019', '编辑', 'Update', '/api/terminal/terminal/{id}/', 2, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('b6effb01d73d4d10a3b0427f51a20ee2', NULL, NULL, NULL, '2023-03-17 14:51:18.615171', '2023-03-17 14:51:18.615195', '编辑', 'Update', '', 0, NULL, 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu_button` VALUES ('bb7de9ee-5fd1-46f5-9849-088c522f49c7', NULL, NULL, NULL, '2023-03-16 15:54:59.192221', '2023-03-16 15:54:59.192241', '删除', 'Delete', '/api/users/users/{id}/', 3, NULL, '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_menu_button` VALUES ('bb7de9ee5fd146f59849088c522f49c7', NULL, NULL, NULL, '2023-03-16 15:54:59.195786', '2023-03-16 15:54:59.195809', '删除', 'Delete', '/api/users/users/{id}/', 3, NULL, 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_menu_button` VALUES ('bc114580-e62d-4e08-b707-843759817344', NULL, NULL, NULL, '2023-03-16 15:54:58.884197', '2023-03-16 15:54:58.884219', '编辑', 'Update', '/api/system/user/{id}/', 2, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('bc6104a0-f487-4dfd-a368-fb587d6d57d8', NULL, NULL, NULL, '2023-03-16 15:54:58.888653', '2023-03-16 15:54:58.888675', '编辑', 'Update', '/api/system/menu_button/{id}/', 2, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('bec59f93068a4d7aaaf5b4ccfbc12265', NULL, NULL, NULL, '2023-03-16 15:54:59.266574', '2023-03-16 15:54:59.266599', '统计', 'Statistics', '/api/mall/goodsorder/orderstatistics/', 0, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('c2490dfba1644cae8f8ff85e2d6f1d3d', NULL, NULL, NULL, '2023-03-16 15:54:58.980383', '2023-03-16 15:54:58.980405', '查询', 'Search', '', 0, NULL, '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_menu_button` VALUES ('c28461a142d7464f8865752c969d82de', NULL, NULL, NULL, '2023-03-16 15:54:59.273271', '2023-03-16 15:54:59.273292', '发货', 'Deliver', '/api/mall/goodsorder/sendoutgoods/', 1, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('c2cac9993f9142cca5f531565a14f840', NULL, NULL, NULL, '2023-03-16 15:54:59.222112', '2023-03-16 15:54:59.222133', '删除', 'Delete', '/api/mall/goodsforderinfo/{id}/', 3, NULL, 'dc8c173b425048e7a8c9b59513596c7f');
INSERT INTO `lyadmin_menu_button` VALUES ('c8eee7f68c1845169b8d2af946502077', NULL, NULL, NULL, '2023-03-16 15:54:59.199626', '2023-03-16 15:54:59.199655', '删除', 'Delete', '/api/messages/messagenotice/{id}/', 3, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('ca69833045ed4cf78c8586f7e55ba6db', NULL, NULL, NULL, '2023-03-16 15:54:58.902116', '2023-03-16 15:54:58.902139', '编辑', 'Update', '/api/messages/messagenotice/{id}/', 2, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('cf50028007164569a136fbdeaff7619c', NULL, NULL, NULL, '2023-03-16 15:54:58.910216', '2023-03-16 15:54:58.910243', '编辑', 'Update', '/api/address/area/{id}/', 2, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('d1b3c15f0c664857aeca1d9065d9c499', NULL, NULL, NULL, '2023-03-16 15:54:58.977004', '2023-03-16 15:54:58.977056', '查询', 'Search', '/api/messages/messagenotice/', 0, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('d22c0176-96e0-48b3-b81e-13443f306af5', NULL, NULL, NULL, '2023-03-16 15:54:58.891711', '2023-03-16 15:54:58.891733', '编辑', 'Update', '/api/system/role/{id}/', 2, NULL, '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_menu_button` VALUES ('d2e0608b5b4941ef8c3ff834977caeef', NULL, NULL, NULL, '2023-03-16 15:54:59.055201', '2023-03-16 15:54:59.055223', '新增', 'Create', '/api/messages/messagenotice/', 1, NULL, '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_menu_button` VALUES ('d419393d77e34f8e9c1eda5893f3bc87', NULL, NULL, NULL, '2023-03-16 15:54:58.926287', '2023-03-16 15:54:58.926308', '编辑', 'Update', '/api/platformsettings/sysconfig/{id}/', 2, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('dcc58831-08d1-4469-8b01-fca71e0f497f', NULL, NULL, NULL, '2023-03-16 15:54:58.894956', '2023-03-16 15:54:58.894978', '编辑', 'Update', '/api/system/user/user_info/', 2, NULL, '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_menu_button` VALUES ('e1ddf86666364a39be76c963c277b009', NULL, NULL, NULL, '2023-03-16 15:54:58.987391', '2023-03-16 15:54:58.987413', '查询', 'Search', '/api/terminal/terminal/', 0, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('e6b93920-2236-46ec-841b-cff6f63ce788', NULL, NULL, NULL, '2023-03-16 15:54:58.898252', '2023-03-16 15:54:58.898274', '编辑', 'Update', '/api/system/operation_log/{id}/', 2, NULL, '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_menu_button` VALUES ('e7fa30290d37447585ea7583d9d01f1b', NULL, NULL, NULL, '2023-03-16 15:54:58.852440', '2023-03-16 15:54:58.852464', '编辑', 'Update', '/api/platformsettings/lunboimg/{id}/', 2, NULL, 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_menu_button` VALUES ('ea18bb51400b482a8aad5dc18357bcab', NULL, NULL, NULL, '2023-03-16 15:54:59.132489', '2023-03-16 15:54:59.132512', '单例', 'Retrieve', '/api/terminal/terminal/{id}/', 0, NULL, '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_menu_button` VALUES ('ee331576846c47d1abae53d10da4c3b0', NULL, NULL, NULL, '2023-03-31 17:49:55.049755', '2023-03-31 17:49:55.049766', '删除', 'Delete', '', 0, NULL, '49f82c65c3dd4419a5af7da765d6abcf');
INSERT INTO `lyadmin_menu_button` VALUES ('efcbf104971a4266a26d9469e58c1327', NULL, NULL, NULL, '2023-03-16 15:54:59.135454', '2023-03-16 15:54:59.135477', '单例', 'Retrieve', '/api/address/area/{id}/', 0, NULL, '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_menu_button` VALUES ('f0e080c0-275d-4085-b56c-735b49510eff', NULL, NULL, NULL, '2023-03-16 15:54:59.110286', '2023-03-16 15:54:59.110308', '单例', 'Retrieve', '/api/system/user/{id}/', 0, NULL, '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_menu_button` VALUES ('f19826f7df9842089cee94a795681b2e', NULL, NULL, NULL, '2023-03-16 15:54:59.128622', '2023-03-16 15:54:59.128699', '单例', 'Retrieve', '', 0, NULL, '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_menu_button` VALUES ('f4e0b4aa230b4afba10a7ba58af3c454', NULL, NULL, NULL, '2023-03-16 15:54:59.239717', '2023-03-16 15:54:59.239739', '保存', 'Save', '/api/platformsettings/sysconfig/save_content/{id}/', 2, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('f5818e4cd46947daabe046c511dfbd63', NULL, NULL, NULL, '2023-03-16 15:54:59.002662', '2023-03-16 15:54:59.002685', '查询', 'Search', '/api/mall/goodsorder/', 0, NULL, '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_menu_button` VALUES ('f77647ec24c14880a6c251e7065f9d44', NULL, NULL, NULL, '2023-03-31 17:49:55.049620', '2023-03-31 17:49:55.049632', '查询', 'Search', '', 0, NULL, '49f82c65c3dd4419a5af7da765d6abcf');
INSERT INTO `lyadmin_menu_button` VALUES ('fa4de16b07194882a07c949b402bc537', NULL, NULL, NULL, '2023-03-17 14:51:18.615311', '2023-03-17 14:51:18.615318', '删除', 'Delete', '', 0, NULL, 'd88d1121bd8c46c9b5dbc6a7523556c1');
INSERT INTO `lyadmin_menu_button` VALUES ('fa7c32c9397c46b8821b62aae5512af0', NULL, NULL, NULL, '2023-03-16 15:54:59.016757', '2023-03-16 15:54:59.016778', '查询', 'Search', '/api/platformsettings/sysconfig/', 0, NULL, '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_menu_button` VALUES ('fa8d945124b74379aba32bcf34ea5383', NULL, NULL, NULL, '2023-03-16 15:54:59.280506', '2023-03-16 15:54:59.280533', '任务列表', 'Search', '/api/crontab/periodictask/tasklist/', 0, NULL, '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_menu_button` VALUES ('fc71b446-fde1-439f-ab41-c38f30230caa', NULL, NULL, NULL, '2023-03-16 15:54:59.051691', '2023-03-16 15:54:59.051713', '新增', 'Create', '/api/system/menu_button/', 1, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');
INSERT INTO `lyadmin_menu_button` VALUES ('fcbe4cec-cc2d-436d-92ba-023f8c9ad31c', NULL, NULL, NULL, '2023-03-16 15:54:59.114267', '2023-03-16 15:54:59.114289', '单例', 'Retrieve', '/api/system/menu/{id}/', 0, NULL, '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_menu_button` VALUES ('fe96f32c-6124-4b24-b809-4964186f5163', NULL, NULL, NULL, '2023-03-16 15:54:59.118300', '2023-03-16 15:54:59.118321', '单例', 'Retrieve', '/api/system/menu_button/{id}/', 0, NULL, 'e0f53902-e901-490c-83f3-331e60b97fcf');

-- ----------------------------
-- Table structure for lyadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_operation_log`;
CREATE TABLE `lyadmin_operation_log`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `request_modular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_path` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `response_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_operation_log_creator_id_7b08f4e1`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_operation_log
-- ----------------------------
INSERT INTO `lyadmin_operation_log` VALUES ('0006136cfff145f9a345aa8e43bceab4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:47:44.750033', '2023-04-06 11:47:44.750077', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/26b3ba48f93341658c27292ae7d9bece/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 11:46:29\', \'update_datetime\': \'2023-04-06 11:46:29\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'key\': \'1\', \'value\': \'2222\', \'is_delete\': False, \'status\': True, \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'enum\': \'aaa11e31c0c146b8bcfa65eabe9e5951\'}', 'PUT', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('00a03dfd0b7f4e1a85031b17336b730e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:22:30.993298', '2023-04-06 10:22:30.993349', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'223323223242\', \'brand_code\': \'12312223123\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'brand_code:请确保该值小于或者等于 2147483647。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('01325672fffc4621b7e659a4505f957c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:34.939040', '2023-04-06 17:20:34.939096', '酒店品牌', '/api/hotel/hotelbrand/b6cd5fd57b924ef6acdd902952f09d1a/', '{\'data\': \'b6cd5fd57b924ef6acdd902952f09d1a/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('013c13febc76424b8b93b8f616ea6f1b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:51:04.711350', '2023-04-07 13:51:04.711382', '酒店枚举', '/api/hotel/hotelenum/', '{}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \"JSON parse error - Expecting \',\' delimiter: line 3 column 5 (char 29)\"}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('01663f9ca20541fa999bb612a20f26e8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 15:55:52.916860', '2023-04-06 15:55:52.917857', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('01b96e9aec6d4a6b9fadec6aee138bef', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:18:11.743341', '2023-04-06 16:18:11.743392', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'2233323223242\', \'brand_code\': \'12313\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\', \'description\': \'test\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('07f9230044ef4441928a570c2338e9a5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:49.903971', '2023-04-06 10:14:49.904021', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('08d093ca54cd422fa39b656e5156bf78', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:16:43.645738', '2023-04-06 14:16:43.645774', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试222酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjk2ajsdndja\', \'hotel_logo\': \'123\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdla2ksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'5573d22e1f904031b1844f14a7f09b74\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('0bf095d4146b423dab2695f51c440090', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:37:52.961486', '2023-04-06 11:37:52.961533', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'223323223242\', \'brand_code\': \'1231223\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('0d21753d32df478b81f4173c969a4630', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:50.095497', '2023-04-06 10:14:50.095553', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('0ffb0b9d685f412bb8f67f9a3e3b1401', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:00:50.045431', '2023-04-07 10:00:50.045476', '酒店', '/api/hotel/hotel/', '{\'address\': \'3453\', \'code\': \'345\', \'facility\': \'5345\', \'latitude\': 345, \'longitude\': 345, \'name_cn\': \'34534\', \'name_en\': \'345\', \'opened_time_c\': 345, \'summary\': \'45345\', \'tag\': \'453\', \'phone\': \'345\', \'pay_type\': \'453\', \'room_type\': \'34535\', \'add_by\': \'345\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182449_494.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182447_129.jpg\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'(1048, \"Column \\\'brand_id\\\' cannot be null\")\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1076bdbf98c14a39ae09fdfc74620c54', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:04.820061', '2023-04-06 10:14:04.820104', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'2233323242\', \'brand_code\': \'123123123\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('123355ac948c4ce497bcffee933a33a2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:51.526389', '2023-04-06 10:14:51.526419', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('13332031d7c4440782bd3d97b6f57e1e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:41.852249', '2023-04-06 10:14:41.852279', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('141890a9dbaa4ccba7d3c6e6a6277b4f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:45:52.856835', '2023-04-07 13:45:52.856871', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'测试2\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('15b8d3ec7e034c229d54a7944aace0df', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:23:43.450751', '2023-04-06 16:23:43.450797', '酒店品牌', '/api/hotel/hotelbrand/ece386073040487dbf889d63c6dda1c2/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1624caaea81544738c20410f64d6ee71', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:17:54.705610', '2023-04-06 16:17:54.705660', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'2233323223242\', \'brand_code\': \'12313\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\', \'description\': \'test\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'group:无效主键 “8f04bafedc0e4d39b1582c087c00c3eb” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('16461ec8b7154b1dacbc70b8a7cad2e5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:24:40.388481', '2023-04-06 17:24:40.388514', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172423_975.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172425_628.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'code:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('165a6be0e73d4b07b3e64fd7f29632dc', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:54.927861', '2023-04-06 10:14:54.927889', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('16f5c73d66a74f92a0ed672f74435fa0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:32:23.899637', '2023-04-06 14:32:23.899670', '酒店集团', '/api/hotel/hotelgroup/36ef24c5e4d743e995edb0c2981445fa/', '{\'name\': \'集团一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg\', \'group_code\': \'001\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('181bcdfce19d4335937d8a108f4bf9fb', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:47.723778', '2023-04-06 16:27:47.723814', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'4\', \'brand_name\': \'4\', \'description\': \'4\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406162746_353.jpg\', \'brand_code\': \'4\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1960e8ea72c44cc9adc95d023eb9c8d7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:43:46.985530', '2023-04-06 17:43:46.985584', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('19949f74f015476f80a555e9b414f60f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:32:44.152292', '2023-04-06 10:32:44.152333', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdla2ksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'f1f828e4c0c3407a9c6cb90d8f597d90\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1a4a4545dd2f446ea2c91eb0c2ca41b3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:28:30.109568', '2023-04-06 10:28:30.109614', '酒店集团', '/api/hotel/hotelgroup/7b9dfbb1d3d94a41a3668c23a0cf109e/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1b36619291b84be69948ceb30beb7dc0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:49.720165', '2023-04-06 10:14:49.720227', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1b56a2fa6f014195807162ea17f49ca6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:47.576871', '2023-04-06 18:24:47.576902', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1c3485acabd84b4e9bc9ae266ebbadd2', NULL, NULL, NULL, '2023-04-06 09:34:54.423510', '2023-04-06 09:34:54.423580', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'8\', \'captchaKey\': 2}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'图片验证码错误\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('1dd36037760a425d978bff455d23c81b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:03:32.526580', '2023-04-07 11:03:32.526644', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1ee03c8ace8148c397b4f322f4971a3b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:08.679465', '2023-04-06 16:16:08.679508', '酒店品牌', '/api/hotel/hotelbrand/cbb2c3bd7a2343dc968d074b66cf1925/', '{\'data\': \'cbb2c3bd7a2343dc968d074b66cf1925/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1fb6a5ef52c34ebb86df5e8ade59c605', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:30:34.250825', '2023-04-07 11:30:34.250856', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'123\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1fc4a84c9ef744c69f668b98ea2b5103', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:02:27.799175', '2023-04-06 16:02:27.799206', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'223323223242\', \'brand_code\': \'1231223\', \'group\': \'9163f54849d84b7ba8255ddc8072b921\'}', 'POST', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('1fcb7000173a4a6887a07bc12079c121', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:04:54.844265', '2023-04-06 16:04:54.844299', '酒店品牌', '/api/hotel/hotelbrand/474f7a2aaf724b4bbcc99ca6c58a7800/', '{\'data\': \'474f7a2aaf724b4bbcc99ca6c58a7800/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('20f1b3b8911041329aee5ddb4589c9b0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:48.346888', '2023-04-06 10:14:48.346922', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('226de16abf024b72a86e6697054ae786', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:15:18.147092', '2023-04-07 11:15:18.147184', '酒店', '/api/hotel/hotel/b9c2b76dfc754592bd7baa5f2ca1ae6a/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 10:31:48\', \'update_datetime\': \'2023-04-06 10:31:48\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'code\': \'11211131111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdlaksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'brand\': \'f1f828e4c0c3407a9c6cb90d8f597d90\'}', 'PUT', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '404', 'Other', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2283718bc2254663889485ae78acc34a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:12:34.030570', '2023-04-06 10:12:34.030691', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('232e7a46354347d2b57a17d8a85e67d5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:24:01.161491', '2023-04-07 10:24:01.161585', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': \'3416.46\', \'longitude\': \'1634.164\', \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': \'11111\', \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': {\'label\': \'正常\', \'value\': 0, \'key\': 0}, \'brand\': {\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \"brand:无效主键 “{\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}” － 对象不存在。\"}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2348e441e87847a1ac38c299d6e130ba', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:05:21.745064', '2023-04-06 16:05:21.745122', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('23d7bdc544164b2cb43d3f11a0969bdd', NULL, NULL, NULL, '2023-04-06 11:35:34.530236', '2023-04-06 11:35:34.530322', '酒店枚举', '/api/hotel/hotelenum/', '{\'query\': \'\\n    query IntrospectionQuery {\\n      __schema {\\n        \\n        queryType { name }\\n        mutationType { name }\\n        subscriptionType { name }\\n        types {\\n          ...FullType\\n        }\\n        directives {\\n          name\\n          description\\n          \\n          locations\\n          args {\\n            ...InputValue\\n          }\\n        }\\n      }\\n    }\\n\\n    fragment FullType on __Type {\\n      kind\\n      name\\n      description\\n      \\n      fields(includeDeprecated: true) {\\n        name\\n        description\\n        args {\\n          ...InputValue\\n        }\\n        type {\\n          ...TypeRef\\n        }\\n        isDeprecated\\n        deprecationReason\\n      }\\n      inputFields {\\n        ...InputValue\\n      }\\n      interfaces {\\n        ...TypeRef\\n      }\\n      enumValues(includeDeprecated: true) {\\n        name\\n        description\\n        isDeprecated\\n        deprecationReason\\n      }\\n      possibleTypes {\\n        ...TypeRef\\n      }\\n    }\\n\\n    fragment InputValue on __InputValue {\\n      name\\n      description\\n      type { ...TypeRef }\\n      defaultValue\\n      \\n      \\n    }\\n\\n    fragment TypeRef on __Type {\\n      kind\\n      name\\n      ofType {\\n        kind\\n        name\\n        ofType {\\n          kind\\n          name\\n          ofType {\\n            kind\\n            name\\n            ofType {\\n              kind\\n              name\\n              ofType {\\n                kind\\n                name\\n                ofType {\\n                  kind\\n                  name\\n                  ofType {\\n                    kind\\n                    name\\n                  }\\n                }\\n              }\\n            }\\n          }\\n        }\\n      }\\n    }\\n  \'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4001', 'Other', '{\'code\': 4001, \'msg\': ErrorDetail(string=\'身份认证信息未提供。\', code=\'not_authenticated\')}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('24d41a7b34ec410d9a8d92d955d23833', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:50:20.306824', '2023-04-06 09:50:20.306861', '酒店', '/api/hotel/hotel/', '{\'name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406095018_122.jpg\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('259b79889a504de58bed91e7f63d0208', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:14:10.878511', '2023-04-06 16:14:10.878570', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('26cea80a177944f2b4d7c2c67215fc77', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:55.119549', '2023-04-06 10:14:55.119596', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('26dacf7d7358493a89c6f3e7f5b86e8d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:02:26.485671', '2023-04-07 11:02:26.485712', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'11112222\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('271b248446364a8ba055897a6957f0ae', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:51.078307', '2023-04-06 10:14:51.078338', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('27b5bbbaf3664e8b9b96a5a6848ff33a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:19:01.951178', '2023-04-06 17:19:01.951241', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('29458b81dd1b41eab985b7a2ff6edeb8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:53:58.585284', '2023-04-06 13:53:58.585327', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('29ffb0241e35439ca45347a74b0ca8cc', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:41.500761', '2023-04-06 10:14:41.500803', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2bb5f9ba47784d149e5215322489eaca', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:05:23.287868', '2023-04-06 16:05:23.287898', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'001\', \'brand_name\': \'xxx品牌酒店\', \'brand_desc\': \'xxx描述\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406160521_652.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2bbe90744e7b48ad98fe8d4a277680bf', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:05.996646', '2023-04-06 16:16:05.996692', '酒店品牌', '/api/hotel/hotelbrand/72191d94a638420bb79b3ba184ca1845/', '{\'data\': \'72191d94a638420bb79b3ba184ca1845/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2c2332e70d624b18bb2371c5d4355a89', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:34:21.398247', '2023-04-06 11:34:21.398279', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'测试\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2e03bea17ccd4b188938a3254e5fc535', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:37.060036', '2023-04-06 10:49:37.060068', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'测试酒店二\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406104935_374.jpg\', \'brand_chain\': \'222\', \'brand_code\': \'222\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2f6c1170648541cba7fbc1c17ef39e3d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:51.313950', '2023-04-06 10:14:51.313980', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('2fd64126844e40799b499bf6cbc4ec8a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:24.484445', '2023-04-06 16:27:24.484488', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'1\', \'brand_name\': \'1\', \'description\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406162723_362.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('329f09905a0e4ec4826fa4f237f71fcb', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 15:55:56.437201', '2023-04-06 15:55:56.437240', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'123\', \'brand_desc\': \'奈斯\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406155552_866.jpg\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand_name:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('33e9ca26f3bd4edc99f2956c582205ce', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:10.130474', '2023-04-06 18:24:10.130510', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3474be0c9b654258852b2002f1c8cd44', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:27:47.470398', '2023-04-06 10:27:47.470427', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'22333232423222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'123123\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('34ddefe8439346849309ebcc9da54e0b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:12.358991', '2023-04-06 10:49:12.359034', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406104910_538.jpg\', \'brand_chain\': \'101\', \'brand_code\': \'111\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('34f4091df64b4aa9a873124cc795f037', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:19:00.650316', '2023-04-07 11:19:00.650380', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'123\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('354d1198304141f08ca62dc45c0e5607', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:23:53.783620', '2023-04-06 18:23:53.783655', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3586a18e1bbd483c9a032d7cc15691fd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:23:43.754042', '2023-04-06 18:23:43.754083', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('35cf8da3c2d0468795fa325483fbfd37', NULL, NULL, NULL, '2023-04-06 09:35:04.409423', '2023-04-06 09:35:04.409471', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'3\', \'captchaKey\': 3}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'账号/密码不正确\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('39bfac97ff8b489a843aa6d8274e773d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:27.567751', '2023-04-06 17:20:27.567816', '酒店品牌', '/api/hotel/hotelbrand/0084f79c95554ebeb3231f2a4a64f59d/', '{\'data\': \'0084f79c95554ebeb3231f2a4a64f59d/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('39e072d766df45018e36ef7bfd1cf9c5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:49.326614', '2023-04-06 18:24:49.326641', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3b26e7f7c1874ff8be0bf68688d0a94a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:33:01.956297', '2023-04-06 17:33:01.956354', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3b35342df18b4461919f758f85e8bfe2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:31.719130', '2023-04-06 18:18:31.719223', '酒店品牌', '/api/hotel/hotelbrand/084cd9aad7c94a2b88e5fe537908db0c/', '{\'data\': \'084cd9aad7c94a2b88e5fe537908db0c/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3bb2e061735343a29b91c3ffed63d397', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:51.892176', '2023-04-06 10:14:51.892300', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3d088f58552847d580005c0e2e0ce01e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:33:04.923852', '2023-04-06 17:33:04.923892', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173301_621.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173245_713.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3d125a303cbf4c45b0791ca6b39b4a51', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:46:12.673006', '2023-04-06 17:46:12.673036', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406174345_763.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406174346_420.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3daf4e793d2746a59f2b604d1edfd1a2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:46.470692', '2023-04-06 10:14:46.470735', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3dbaa9c6685245dd9636d0caf9895264', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:05.146643', '2023-04-06 16:16:05.146689', '酒店品牌', '/api/hotel/hotelbrand/72191d94a638420bb79b3ba184ca1845/', '{\'data\': \'72191d94a638420bb79b3ba184ca1845/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3dce6ada825f4119a843246c29eb022a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:53.556278', '2023-04-06 18:18:53.556318', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3ebdec396ead47d08513971217a4d361', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:13:46.784798', '2023-04-06 10:13:46.784850', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'2233323242\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'brand_code:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3ec53bc5cf084abfbdc027250bc7ccb9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:21:57.769475', '2023-04-06 17:21:57.769509', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3f78015ca19343e6b1015bf71d85ecd2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:33.386347', '2023-04-06 16:27:33.386379', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'2\', \'brand_name\': \'2\', \'description\': \'2\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406162732_544.jpg\', \'brand_code\': \'2\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('3fe166497f5446f9bad46c4ce0610688', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:37:43.832511', '2023-04-06 11:37:43.832569', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdla2ksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'f1f828e4c0c3407a9c6cb90d8f597d90\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'brand:无效主键 “f1f828e4c0c3407a9c6cb90d8f597d90” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4032638c478147afb2672306f2039928', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:46.930435', '2023-04-06 10:14:46.930470', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('40c05a9a65884683b8a24a0587866c81', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:24:23.262383', '2023-04-06 17:24:23.262438', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('43e1d680bbb8413faa8ab5b772633a2a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:03:06.417962', '2023-04-06 14:03:06.418001', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'8\', \'captchaKey\': 44}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('44308ed7e9444f5d996eb794e7d7b737', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:24:12.091282', '2023-04-06 10:24:12.091325', '酒店品牌', '/api/hotel/hotelbrand/067ee2ed772b4a85b1aba841d240cf90/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('444121ea387c41a989850862b05ed8c6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:22:19.255640', '2023-04-06 18:22:19.255685', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('462e275448d54a47a67ae7a0bb3324f2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:40:52.284113', '2023-04-06 13:40:52.284191', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': \'正常\', \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'status:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('47457cf4210640b78e6cf3f42aeb5bda', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:34:54.220426', '2023-04-06 17:34:54.220456', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173301_621.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173245_713.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4a33f50a60134e30b95c17b9dbd676dd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:41:22.980376', '2023-04-06 13:41:22.980451', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': \'正常\', \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'status:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4b5f1005717d4613914d6d828935d64c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:36:49.698949', '2023-04-06 11:36:49.698980', '酒店枚举', '/api/hotel/hotelenum/84075118886e45e5a7c9b6fe739f0639/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 11:35:53\', \'update_datetime\': \'2023-04-06 11:35:53\', \'description\': \'ffff\', \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'enum_name\': \'测试1\', \'is_delete\': False, \'status\': True, \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'hotel\': None}', 'PUT', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4c922587d9bc40d48652154b30be41ac', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:13:39.982739', '2023-04-07 11:13:39.982782', '酒店', '/api/hotel/hotel/undefined/', '{\'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4cdc8cb8d5f24d57a7f2e0ac7f4a820a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:19:38.730665', '2023-04-06 18:19:38.730709', '酒店品牌', '/api/hotel/hotelbrand/f93851a9eb7646f39d746578bf71a06c/', '{\'data\': \'f93851a9eb7646f39d746578bf71a06c/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4d652aac2b14486e9f1942f37b311034', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:17:23.230594', '2023-04-07 11:17:23.230633', '酒店', '/api/hotel/hotel/4c3df/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 18:23:48\', \'update_datetime\': \'2023-04-06 18:23:48\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'code\': \'12\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'address\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'facility\': \'1\', \'tag\': \'1\', \'summary\': \'11\', \'longitude\': 1.0, \'latitude\': 1.0, \'status\': 1, \'add_by\': \'1\', \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '404', 'Other', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4e35d4e73e954ea7a3d79592a7d13db3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:20:16.307953', '2023-04-06 10:20:16.307998', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'223332324232222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'22332323242\', \'brand_code\': \'1231223123\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4eecbde4e2714efbbc71d54ba5ebfa90', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:47.646145', '2023-04-06 10:14:47.646174', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4f32eaed245a4d7eae5ea2fa05487152', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:47.796993', '2023-04-06 10:14:47.797024', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('4fe30f4b04494ee489dbc688073bd6dc', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:51.714949', '2023-04-06 10:14:51.714995', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('50d8455dea484c0396e12947d6b2f80b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:20:24.473296', '2023-04-06 18:20:24.473406', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'sq\', \'brand_name\': \'mysql\', \'description\': \'i love mysql\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182023_921.jpg\', \'brand_code\': \'10000\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5317114f1da94da6a437e1e5ca91b830', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:51:41.512659', '2023-04-07 13:51:41.512703', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'支付方式_test\', \'hotel\': \'4c3d06e32db74fe9b2bffbfe21f0a80f\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5378bae854b44d0ea01c2bd74f54c71b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:46:10.133327', '2023-04-06 09:46:10.133360', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'6\', \'captchaKey\': 42}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('53e6157ca62a4c05a76f9e574148a9b9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:46:58.530198', '2023-04-06 10:46:58.530255', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('57324417eb06423c8dfab66c43065950', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:23:48.972198', '2023-04-06 18:23:48.972234', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('583bae20b4034a12a0b9dadd5e961914', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:47.212887', '2023-04-06 10:14:47.212917', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('59f5961e19124ae196242b524389e2a1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:41.888625', '2023-04-06 10:14:41.888684', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5a43db68ea4e4ff1aa39bda5e7e189a3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:18:46.857628', '2023-04-07 10:18:46.857677', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5d42917b10ff413fbb84f559e7a4d8d5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:55.310681', '2023-04-06 10:14:55.310713', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5f56f01f52974009a4b0557ce6a7a6ff', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:33:10.645547', '2023-04-07 11:33:10.645577', '酒店', '/api/hotel/hotel/692b5713d5c34771b26e34d5193cec6d/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'1\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5fcfac85fd7a4eacaed513366736bf0d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:33:05.504725', '2023-04-06 10:33:05.504758', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('5fe611c6418a400b82ebc08179685742', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:24:24.871405', '2023-04-06 14:24:24.871457', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'data\': \'77f1d9b5dad3452f84510b1ed3e83f6a/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('632cdb60149a4f8493d04cdceb19a0d0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:10:34.772665', '2023-04-07 11:10:34.772735', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'111\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('63447cecc0ab4a5f8c427823706e1c44', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:40.960457', '2023-04-06 10:14:40.960497', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('63f7653f653d4be0a6985a374e1c35ab', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:29:41.241313', '2023-04-06 14:29:41.241347', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'集团一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg\', \'group_code\': \'123123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('64ad065f72dc4096a0e838eeed5ebd4e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:47:55.817557', '2023-04-07 13:47:55.817592', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/', '{\'enum\': \'5ed8e58e2ca341139502c2aa621d15da\', \'key\': \'1\', \'value\': \'标准间\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('653cb5fe2bb646a68e46024edc9d428b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-13 18:12:44.750747', '2023-04-13 18:12:44.750783', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'13\', \'captchaKey\': 48}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('65f251d105654e47b59ee73773960326', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:50:18.081803', '2023-04-06 09:50:18.081858', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('663fee0f2d39415ab4ad97d354846acd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:22:17.306602', '2023-04-06 17:22:17.306640', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'084cd9aad7c94a2b88e5fe537908db0c\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172157_113.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172200_153.jpg\', \'status\': 1, \'brand\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand:无效主键 “e4d3cc0ba3e346aa8eb0046c2e9ce37c” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6655f6d3da80415881f3b15b109c8687', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:43:02.282552', '2023-04-06 13:43:02.282609', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': 0, \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'(1048, \"Column \\\'brand_id\\\' cannot be null\")\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('67319455087141febf3794d8e5cdea66', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:47:42.821753', '2023-04-07 13:47:42.821784', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/', '{\'enum\': \'5ed8e58e2ca341139502c2aa621d15da\', \'key\': \'0\', \'value\': \'大床房\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('67aca62a685e4852bdfeb9f0a1929032', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:21:13.033093', '2023-04-06 18:21:13.033138', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('67e69389d9d54a24bd8e2ab1f95e7890', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:10.969665', '2023-04-06 16:16:10.969698', '酒店品牌', '/api/hotel/hotelbrand/de4259eeadc749a093c2c1998ae0aa45/', '{\'data\': \'de4259eeadc749a093c2c1998ae0aa45/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('68f42d6dd35e4aca902fa5f037a59d8e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:59.076834', '2023-04-06 18:18:59.076869', '酒店品牌', '/api/hotel/hotelbrand/e250ec4f887c404b900f799b0cd600a5/', '{\'data\': \'e250ec4f887c404b900f799b0cd600a5/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('69803f3c9e6c4d5492821bc852381c39', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:36.331272', '2023-04-06 16:16:36.331306', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'001\', \'brand_name\': \'xx酒店\', \'brand_desc\': \'最好的\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406161635_950.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6a9fc6f6c53a4f1a9206f1a9379478aa', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:42:39.322696', '2023-04-06 13:42:39.322736', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': \'正常\', \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'status:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6cf072136a22487b814e247c49bc1576', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:19:03.251153', '2023-04-06 10:19:03.251196', '酒店', '/api/hotel/hotel/', '{\'brand_name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6de375ce91374e7c8aa6fa6a94a13bd8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:23:36.565602', '2023-04-06 18:23:36.565651', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6f020a95902e48338fe90dfb6690120e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:32:45.188569', '2023-04-06 17:32:45.188606', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('6f4147a88adb4b0486f485fabe636f57', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:53:33.788190', '2023-04-06 13:53:33.788239', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('70068f141e2141ba8c2e176f6d0e4eca', NULL, NULL, NULL, '2023-04-13 18:12:10.549202', '2023-04-13 18:12:10.549251', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'2\', \'captchaKey\': 41}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'图片验证码错误\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('709bf85f629848b69d949e04ff570c8d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:28:35.885343', '2023-04-06 10:28:35.885371', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'223332324232222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'1231223\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('721dfe2bfb9f4dd9a91dacaa98291aea', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:13:22.493700', '2023-04-06 10:13:22.493747', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'brand_chain:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7273f31d11d44213a18d4d8d2bc2d935', NULL, NULL, NULL, '2023-04-06 11:35:35.633591', '2023-04-06 11:35:35.633641', '酒店枚举', '/api/hotel/hotelenum/', '{\'query\': \'\\n    query IntrospectionQuery {\\n      __schema {\\n        \\n        queryType { name }\\n        mutationType { name }\\n        subscriptionType { name }\\n        types {\\n          ...FullType\\n        }\\n        directives {\\n          name\\n          description\\n          \\n          locations\\n          args {\\n            ...InputValue\\n          }\\n        }\\n      }\\n    }\\n\\n    fragment FullType on __Type {\\n      kind\\n      name\\n      description\\n      \\n      fields(includeDeprecated: true) {\\n        name\\n        description\\n        args {\\n          ...InputValue\\n        }\\n        type {\\n          ...TypeRef\\n        }\\n        isDeprecated\\n        deprecationReason\\n      }\\n      inputFields {\\n        ...InputValue\\n      }\\n      interfaces {\\n        ...TypeRef\\n      }\\n      enumValues(includeDeprecated: true) {\\n        name\\n        description\\n        isDeprecated\\n        deprecationReason\\n      }\\n      possibleTypes {\\n        ...TypeRef\\n      }\\n    }\\n\\n    fragment InputValue on __InputValue {\\n      name\\n      description\\n      type { ...TypeRef }\\n      defaultValue\\n      \\n      \\n    }\\n\\n    fragment TypeRef on __Type {\\n      kind\\n      name\\n      ofType {\\n        kind\\n        name\\n        ofType {\\n          kind\\n          name\\n          ofType {\\n            kind\\n            name\\n            ofType {\\n              kind\\n              name\\n              ofType {\\n                kind\\n                name\\n                ofType {\\n                  kind\\n                  name\\n                  ofType {\\n                    kind\\n                    name\\n                  }\\n                }\\n              }\\n            }\\n          }\\n        }\\n      }\\n    }\\n  \'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4001', 'Other', '{\'code\': 4001, \'msg\': ErrorDetail(string=\'身份认证信息未提供。\', code=\'not_authenticated\')}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('73232845f20846e4a4998611568516dc', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:19:26.865356', '2023-04-07 11:19:26.865403', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('732efc2e5e4f4e008d947bad7b8563e6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:21.179191', '2023-04-06 10:49:21.179248', '酒店品牌', '/api/hotel/hotelbrand/f1f828e4c0c3407a9c6cb90d8f597d90/', '{\'data\': \'f1f828e4c0c3407a9c6cb90d8f597d90/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('734b0022d4e943b98af13d449b0c000f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:21:41.804548', '2023-04-06 17:21:41.804614', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('74026ac6f13440aab0f7ba69b6d823d7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:02:12.420590', '2023-04-06 16:02:12.420631', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'223332324232222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'1231223\'}', 'POST', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('75546076087d4ced82914848b348efd4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:46.679571', '2023-04-06 10:14:46.679602', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('763461b888b24ee0b193d3ad930514c5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:24:04.279668', '2023-04-07 11:24:04.279700', '酒店', '/api/hotel/hotel/692b5713d5c34771b26e34d5193cec6d/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'1\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('77d169a113c44b59aba8ce2e150616bd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:24:21.492752', '2023-04-06 14:24:21.492799', '酒店品牌', '/api/hotel/hotelbrand/5573d22e1f904031b1844f14a7f09b74/', '{\'data\': \'5573d22e1f904031b1844f14a7f09b74/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('787adea11a784defa3d05997adf28ff4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:48:28.880387', '2023-04-06 11:48:28.880438', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/26b3ba48f93341658c27292ae7d9bece/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('799dd9330be6492a918420e1bd54ebad', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:57.401873', '2023-04-06 16:27:57.401912', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'5\', \'brand_name\': \'5\', \'description\': \'5\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406162756_594.jpg\', \'brand_code\': \'5\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7a4379d99dd5473faa0e009541e2c13d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:30:27.901404', '2023-04-06 10:30:27.901455', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7af808dc7ec14d468691d69c8e54c18d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:16:32.385425', '2023-04-07 11:16:32.385461', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 18:23:48\', \'update_datetime\': \'2023-04-06 18:23:48\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'code\': \'12\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'address\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'facility\': \'1\', \'tag\': \'1\', \'summary\': \'11\', \'longitude\': 1.0, \'latitude\': 1.0, \'status\': 1, \'add_by\': \'1\', \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7b651e4dad9046938f4ceefff6098408', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:37.788349', '2023-04-06 17:20:37.788398', '酒店品牌', '/api/hotel/hotelbrand/ece386073040487dbf889d63c6dda1c2/', '{\'data\': \'ece386073040487dbf889d63c6dda1c2/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7bb159548e8147bebce883587b815993', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:50.665822', '2023-04-06 10:14:50.665874', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7cd98958b80f4e5db8897738325199df', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:46:16.082853', '2023-04-06 11:46:16.082890', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/', '{\'enum\': \'aaa11e31c0c146b8bcfa65eabe9e5951\', \'key\': \'0\', \'value\': \'111\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7ea062e3fc8c4ad3abf0bc1a5f5c43eb', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:35.792347', '2023-04-06 10:49:35.792387', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('7f6e21c3fd284f58b0abf0dc9b4fa33c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:11:48.228874', '2023-04-06 16:11:48.228917', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('82aaa10efeef4dc9b7592eb9ecae7405', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:08:52.269839', '2023-04-07 11:08:52.269875', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'3\', \'captchaKey\': 45}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('82ef0d2c6fc54d88a4b0d89524dd280c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:20:49.020847', '2023-04-07 10:20:49.020887', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': \'3416.46\', \'longitude\': \'1634.164\', \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': \'11111\', \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': {\'label\': \'正常\', \'value\': 0, \'key\': 0}, \'brand\': {\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \"brand:无效主键 “{\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}” － 对象不存在。\"}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('832fae1d7aad4272b24fe6b0b67ed6f3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:25:15.931864', '2023-04-06 16:25:15.931908', '酒店品牌', '/api/hotel/hotelbrand/ece386073040487dbf889d63c6dda1c2/', '{\'brand_chain\': \'222\', \'brand_name\': \'333\', \'description\': \'444\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_code\': \'111\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('834011cddb1b49d1a5d73be221679fbe', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:53:38.642299', '2023-04-06 17:53:38.642345', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('846614206b424e17bc448e0f4f2ca792', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:46.121067', '2023-04-06 18:18:46.121107', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'1\', \'brand_name\': \'1\', \'description\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406181845_679.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('846795df4a2c4a4796e7a59c430bc1d1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:50:28.661305', '2023-04-06 13:50:28.661377', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': 0, \'brand\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand:无效主键 “e4d3cc0ba3e346aa8eb0046c2e9ce37c” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('84940dfa555b40689fe7f59dacb3f8a5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:34:52.728983', '2023-04-06 11:34:52.729044', '酒店枚举', '/api/hotel/hotelenum/ef7010e8cb9040d3b0ac187b09611db2/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('84d621b4f33b4c1ea53ed3e225057278', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:29:46.690082', '2023-04-07 11:29:46.690139', '酒店', '/api/hotel/hotel/692b5713d5c34771b26e34d5193cec6d/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'1\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8820b901eca24beab555cd8996e852a3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:02:03.331309', '2023-04-06 16:02:03.331367', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'223323223242\', \'brand_code\': \'1231223\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '4000', 'Other', '{\'code\': 4000, \'msg\': \'group:无效主键 “8f04bafedc0e4d39b1582c087c00c3eb” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8970413529de4ce5817576b37280fea9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:26:17.532953', '2023-04-06 17:26:17.533002', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172423_975.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172425_628.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('89b1af229b6147b89b166568c1603f22', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:48.168843', '2023-04-06 10:14:48.168893', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8a54c26ff60f4ab8bd072c90232afd28', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:25:18.268579', '2023-04-06 14:25:18.268659', '酒店品牌', '/api/hotel/hotelbrand/', '{\'name\': \'集团一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg\', \'group_code\': \'trip001\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8bef7a1764584b99b8286ddcca3070ec', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:47.490416', '2023-04-06 10:14:47.490459', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8ca05356a778454f93b99a01521b1643', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:03.923341', '2023-04-06 18:24:03.923371', '酒店', '/api/hotel/hotel/', '{\'address\': \'3\', \'code\': \'2\', \'facility\': \'3\', \'latitude\': \'3\', \'longitude\': \'3\', \'name_cn\': \'3\', \'name_en\': \'3\', \'opened_time_c\': \'3\', \'summary\': \'3\', \'tag\': \'3\', \'phone\': \'3\', \'pay_type\': \'3\', \'room_type\': \'3\', \'add_by\': \'3\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182353_901.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182359_208.jpg\', \'status\': 0, \'brand\': \'196d5cc4b64e4faa8609faaebf89f500\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8cac03741c304cae918d072c9d51033c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:31:10.162840', '2023-04-07 11:31:10.162882', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'123\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8cfb917636414405829cc62d42804673', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:14:13.382788', '2023-04-06 16:14:13.382817', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'2\', \'brand_name\': \'3\', \'brand_desc\': \'4\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406161410_296.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('8d2835544c414d2d82324ecef1a20211', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:22:05.283561', '2023-04-07 11:22:05.283679', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('901554fb0aa24a3cbbdc84542dd60790', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:31:28.458638', '2023-04-06 14:31:28.458671', '酒店集团', '/api/hotel/hotelgroup/8f04bafedc0e4d39b1582c087c00c3eb/', '{\'data\': \'8f04bafedc0e4d39b1582c087c00c3eb/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('90470ad533c4452983cf7375a3a32882', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:31:48.514972', '2023-04-06 10:31:48.515007', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdlaksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'f1f828e4c0c3407a9c6cb90d8f597d90\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('90ab719653744a659773a492053d1bdf', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:34.348784', '2023-04-06 18:24:34.348812', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('914b83610055458186ec1eb07672c99b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:53:37.906272', '2023-04-06 17:53:37.906322', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('91df42771baf40a39d45afcce387fb1c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:32:56.894777', '2023-04-06 18:32:56.894819', '酒店', '/api/hotel/hotel/cbf2e7cd9a6e4cb7815bd6daf2ae28ef/', '{\'data\': \'cbf2e7cd9a6e4cb7815bd6daf2ae28ef/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('921540a107b842f7949ffc330291e3bf', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:05:03.385382', '2023-04-07 11:05:03.385444', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'123\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9262c359b75c4ba196f6c0b812fd0920', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 15:56:10.236433', '2023-04-06 15:56:10.236482', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'123\', \'brand_desc\': \'奈斯\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406155552_866.jpg\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand_name:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('92c2ad6f5498497aa5dc6937a98e76e0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:29.730395', '2023-04-06 17:20:29.730440', '酒店品牌', '/api/hotel/hotelbrand/6bb5dcae28654336861b2939d08a267b/', '{\'data\': \'6bb5dcae28654336861b2939d08a267b/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('933defcf1a564ea295eed89b4d4beb33', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:54:43.580810', '2023-04-06 13:54:43.580872', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'fb747a8ede5644a58b04ed3c42abaed9\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406135358_739.jpg\', \'status\': 1, \'brand\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand:无效主键 “e4d3cc0ba3e346aa8eb0046c2e9ce37c” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9346b436c8f8410ba0419048f1712cae', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:47:02.034672', '2023-04-06 10:47:02.034732', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'xxx酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406104658_273.jpg\', \'brand_chain\': \'101\', \'brand_code\': \'test001\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand_code:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('968119ce28d544e7abbb83657c83ed04', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:32:57.340455', '2023-04-06 10:32:57.340500', '酒店', '/api/hotel/hotel/b9c2b76dfc754592bd7baa5f2ca1ae6a/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9692a7d5270149d88f9b56984f49ba78', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:32:21.728682', '2023-04-06 10:32:21.728720', '酒店', '/api/hotel/hotel/b9c2b76dfc754592bd7baa5f2ca1ae6a/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 10:31:48\', \'update_datetime\': \'2023-04-06 10:31:48\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'code\': \'1121111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdlaksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'brand\': \'f1f828e4c0c3407a9c6cb90d8f597d90\'}', 'PUT', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('96b9c36d54704809a1efaaace981786c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:46:40.055017', '2023-04-07 13:46:40.055077', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'房屋类型\', \'hotel\': \'4c3d06e32db74fe9b2bffbfe21f0a80f\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('96bd266c41744b7491ec6d2219d3d0c9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:22:16.278218', '2023-04-07 11:22:16.278267', '酒店', '/api/hotel/hotel/undefined/', '{\'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('96c61a39b6b3461bad709f11baf72b89', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:39.572293', '2023-04-06 10:14:39.572357', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('972aac6bccbb44f082c14b821aae668e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:51:13.889959', '2023-04-07 13:51:13.890007', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'支付方式\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9739e90a42604ba6805c6daed788b5da', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:14:08.915599', '2023-04-07 11:14:08.915632', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('973da7c49e0b432b94b0e6429b0b730e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:22:34.488915', '2023-04-07 11:22:34.488970', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'123\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9d7b4f8041d94a41a4594aa1075d8500', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:29:38.292997', '2023-04-06 17:29:38.293056', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9f01586444f842fda35534a4576175a9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:29:50.681925', '2023-04-06 10:29:50.681956', '酒店集团', '/api/hotel/hotelgroup/8f04bafedc0e4d39b1582c087c00c3eb/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 10:19:46\', \'update_datetime\': \'2023-04-06 10:19:46\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'group_code\': 1231223123, \'name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'status\': True, \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\'}', 'PUT', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9f3df31befa148078780d06f9445ae75', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:33:36.325224', '2023-04-06 17:33:36.325259', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173301_621.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173245_713.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('9fc8589bfe894ad38770ea782ba2384a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:47.979401', '2023-04-06 10:14:47.979430', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a01a74835aa44bf28e1ae3577fe94909', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:13:33.356867', '2023-04-07 11:13:33.356930', '酒店', '/api/hotel/hotel/f0a0844db2c043ccbbbcbb98210e97b7/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': 3416.46, \'longitude\': 1634.164, \'name_cn\': \'xx酒店\', \'name_en\': \'123321\', \'opened_time_c\': 11111, \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '404', 'Windows 10', '{\'code\': 404, \'msg\': \'404错误：您访问的地址不存在\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a2d788014eaf468291c126ba61d469a0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:15:52.006920', '2023-04-06 10:15:52.006962', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a4cb76d54b684a26b2fa171182f8cc16', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:19:31.895707', '2023-04-06 18:19:31.895743', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a537b2deedf840a5883d85a4148345d3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:32:51.700673', '2023-04-06 18:32:51.700764', '酒店', '/api/hotel/hotel/1668e8f8e2ce4771928a346b5438d3df/', '{\'data\': \'1668e8f8e2ce4771928a346b5438d3df/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a5f18a008a9d4785b8ddda724061665f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:43:45.546393', '2023-04-06 17:43:45.546438', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a68a4548bc69478e97b32c06fd2fa753', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:18:45.401563', '2023-04-07 10:18:45.401616', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a83a93ab983648c181bb21d493ccedb4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:20:02.113737', '2023-04-06 10:20:02.113780', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'2233323242\', \'brand_code\': \'123123123\', \'group_id\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a85f74a49315439da8d42f3f0de20d4f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:34:47.728749', '2023-04-07 11:34:47.728795', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'8\', \'captchaKey\': 46}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a89e027386b240108d390e5990905cee', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:46.728428', '2023-04-06 16:27:46.728461', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('a956df03526c4ba4bf82965d3a66a13c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:19:48.078728', '2023-04-06 18:19:48.078762', '酒店品牌', '/api/hotel/hotelbrand/46896e2de21840d490f6f78fd3cc2b20/', '{\'data\': \'46896e2de21840d490f6f78fd3cc2b20/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('aac6fe2717de43719cad6555d045f0db', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:19:04.237477', '2023-04-06 17:19:04.237556', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ab3743baf140448d9f76d22cb83ac9a1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:38:17.511425', '2023-04-06 11:38:17.511461', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'测试1\', \'hotel\': \'5eb47adbc2954f008142139ea6c9fc49\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('abd3fc1812594625af66bb615934d1f6', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:50:19.772837', '2023-04-07 13:50:19.772917', '酒店枚举', '/api/hotel/hotelenum/8aa64c12c93c451f906904543b79ecba/', '{}', 'DELETE', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ad05a641517c4490b0b03849dfe07fb7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:52:56.609783', '2023-04-06 13:52:56.609877', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'dict\' object has no attribute \'getlist\'\"}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ad95b13c20734e4f80cc88df7af36a2c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:01:05.803080', '2023-04-06 11:01:05.803147', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ae0f6a6629a24608ac890291d213cf5f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:42:52.336847', '2023-04-06 10:42:52.336922', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('aff935f61c4945628a8b7818c98fbf92', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:23.484188', '2023-04-06 16:27:23.484229', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b0944af8a6644f9dae64039b35f897b4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:21:45.162906', '2023-04-06 17:21:45.162951', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'Ae\', \'brand_name\': \'Ae精品酒店\', \'description\': \'创立于于1920年\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172141_577.jpg\', \'brand_code\': \'1001\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b1514f780f7c4297a38e49ee616db191', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:42:30.207093', '2023-04-06 13:42:30.207165', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': \'正常\', \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'status:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b1b47841eb0a44d5bf7451ea8e0b2942', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:04:33.498933', '2023-04-06 16:04:33.498986', '酒店集团', '/api/hotel/hotelgroup/9163f54849d84b7ba8255ddc8072b921/', '{\'data\': \'9163f54849d84b7ba8255ddc8072b921/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b560f7fd121e4dcdb13dabe8393349a5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:21:14.312508', '2023-04-06 18:21:14.312556', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'java\', \'brand_name\': \'java--\', \'description\': \'java的世界\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182113_348.jpg\', \'brand_code\': \'10001\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b5ebe1a427164988b4a64a6f976a8d5f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 15:57:38.431053', '2023-04-06 15:57:38.431100', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'123\', \'brand_name\': \'xx酒店\', \'brand_desc\': \'奈斯\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406155552_866.jpg\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand_code:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b6dc19ba2adb4430828a423b72bd6908', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:31.419063', '2023-04-06 17:20:31.419106', '酒店品牌', '/api/hotel/hotelbrand/8fd958bedad746e19feb68293c59e27b/', '{\'data\': \'8fd958bedad746e19feb68293c59e27b/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b72dbbaf1cb84c3aaf032a3a64027f91', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:19:32.898669', '2023-04-06 18:19:32.898700', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'1\', \'brand_name\': \'1\', \'description\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406181931_370.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b9212531965c4f00bce69073349e7292', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:29:39.924319', '2023-04-06 17:29:39.924348', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b98764fd9d974acaaa0b95da6dca9fb4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:42:54.079243', '2023-04-06 10:42:54.079271', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406104252_840.jpg\', \'brand_chain\': \'101\', \'brand_code\': \'test001\', \'group\': \'trip1\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:无效主键 “trip1” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('b9f51874d5824f779ac6610708b2f649', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:29:00.507652', '2023-04-06 14:29:00.507687', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'1231223\'}', 'POST', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ba0b50f87b6e41f18508c12f9b20006c', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:31:35.765695', '2023-04-06 14:31:35.765735', '酒店集团', '/api/hotel/hotelgroup/9e74a024810c4d22829c081aac2ff834/', '{\'data\': \'9e74a024810c4d22829c081aac2ff834/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ba874cc145ff45459bb667cfa0072242', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:53:41.679430', '2023-04-07 10:53:41.679490', '酒店', '/api/hotel/hotel/', '{\'address\': \'7\', \'code\': \'1\', \'latitude\': \'4\', \'longitude\': \'3\', \'name_cn\': \'5\', \'name_en\': \'2\', \'opened_time_c\': \'6\', \'summary\': \'10\', \'tag\': \'8\', \'pay_type\': \'9\', \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('baccfc82ac7a435686094896a9c917a1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:21:00.164856', '2023-04-07 10:21:00.164902', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': \'3416.46\', \'longitude\': \'1634.164\', \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': \'11111\', \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': {\'label\': \'正常\', \'value\': 0, \'key\': 0}, \'brand\': {\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \"brand:无效主键 “{\'label\': \'java--\', \'value\': \'f0a0844db2c043ccbbbcbb98210e97b7\', \'key\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}” － 对象不存在。\"}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('baf24ad394a84bfaae99659d5ef80227', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 12:00:37.613221', '2023-04-06 12:00:37.613288', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('baf2b134a05b40c49366e783e3023bef', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:24:59.019280', '2023-04-07 10:24:59.019312', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'102001\', \'facility\': \'测试,浴室\', \'latitude\': \'3416.46\', \'longitude\': \'1634.164\', \'name_cn\': \'xx酒店\', \'name_en\': \'tipx\', \'opened_time_c\': \'11111\', \'summary\': \'建立于1947年\', \'tag\': \'5星,地图旁,风景好\', \'phone\': \'0756-1543\', \'pay_type\': \'微信,支付宝,银行卡\', \'room_type\': \'三房,两厅\', \'add_by\': \'张三\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg\', \'status\': 0, \'brand\': \'f0a0844db2c043ccbbbcbb98210e97b7\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bb53992addaf4260afa435b4c4dee4f4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:25.292593', '2023-04-06 10:49:25.292652', '酒店品牌', '/api/hotel/hotelbrand/ffba21eb03254cad84c08ff8476508ee/', '{\'data\': \'ffba21eb03254cad84c08ff8476508ee/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bb60109e0e484f21a8fc58f5c272d7a1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:40.279610', '2023-04-06 18:24:40.279646', '酒店', '/api/hotel/hotel/', '{\'address\': \'345\', \'code\': \'5345\', \'facility\': \'345\', \'latitude\': \'345\', \'longitude\': \'345\', \'name_cn\': \'345\', \'name_en\': \'345\', \'opened_time_c\': \'345\', \'summary\': \'3453\', \'tag\': \'354\', \'phone\': \'345\', \'pay_type\': \'345\', \'room_type\': \'345\', \'add_by\': \'345\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182428_739.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182434_904.jpg\', \'status\': 0, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bc3fea6f8c604dfc9aca31d7bdf9e2f7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:53:46.551563', '2023-04-06 17:53:46.551609', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'10000\', \'facility\': \'1\', \'latitude\': \'2222\', \'longitude\': \'1111\', \'name_cn\': \'世界那么美好酒店\', \'name_en\': \'xxxappppbbbb\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406175337_310.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406175338_321.jpg\', \'status\': 0, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bd128852c26f4d1d8d207b52a54db8de', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:31:24.534688', '2023-04-06 14:31:24.534747', '酒店集团', '/api/hotel/hotelgroup/6ddb19ffa5da4985864d45e5662f7c81/', '{\'data\': \'6ddb19ffa5da4985864d45e5662f7c81/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bd8b0498c7be45a989c185fda0913a94', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:11:38.081259', '2023-04-06 10:11:38.081304', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('be4f52edeea74b4e97f8cd67798b98fe', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:38:03.899969', '2023-04-06 11:38:03.900005', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjkajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdla2ksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'5573d22e1f904031b1844f14a7f09b74\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bf22303b08124eebade07e284f1b0fec', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:45.154362', '2023-04-06 18:18:45.154408', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('bf69205da975477995e0e34c54121866', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:11.853241', '2023-04-06 18:24:11.853283', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c171bbe3cab2460e99f03862849dd046', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:11:49.602489', '2023-04-06 16:11:49.602535', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'1\', \'brand_name\': \'1\', \'brand_desc\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406161148_120.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c26d177f81d44bc58050826a0fe325f2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:26:10.937786', '2023-04-06 10:26:10.937832', '酒店品牌', '/api/hotel/hotelbrand/ffba21eb03254cad84c08ff8476508ee/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 10:14:04\', \'update_datetime\': \'2023-04-06 10:14:04\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'brand_code\': 123123123, \'brand_chain\': \'2233323242\', \'brand_name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'status\': True, \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'PUT', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c4425f831926480ca0ba84d067a80ba8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:18:54.513177', '2023-04-06 18:18:54.513221', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'1\', \'brand_name\': \'1\', \'description\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406181853_419.jpg\', \'brand_code\': \'1\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c5003a28c9c14830b9ad0edda33a85cc', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:34:35.857975', '2023-04-06 17:34:35.858004', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173301_621.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406173245_713.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c5906a8130c84b91842a5140c85f3f7b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:25:58.379779', '2023-04-06 14:25:58.379854', '酒店品牌', '/api/hotel/hotelbrand/', '{\'name\': \'集团一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg\', \'group_code\': \'123123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c659d584cc024e8d80a5247152029765', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:55.465680', '2023-04-06 10:14:55.465711', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c750e3fdc86141d088e66f4989796ebd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:50.329766', '2023-04-06 10:14:50.329809', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('c75e5a742ece49d5be576a93ce30bebf', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:18:36.528452', '2023-04-06 10:18:36.528551', '酒店', '/api/hotel/hotel/', '{\'brand_name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ca73ee9182674a6690cb89e3cdcf26b3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:51:21.947337', '2023-04-07 10:51:21.947414', '酒店', '/api/hotel/hotel/', '{\'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ca9d0fd7434a40acbefe5e9b591e2bfe', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:22:05.358444', '2023-04-06 10:22:05.358489', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323234232222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'22332123323242\', \'brand_code\': \'12312223123\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('cd2a32baf2cc49aa98d8f20fb9c8d3ed', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:49:10.597412', '2023-04-06 10:49:10.597469', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('cdb8308b64d746eda8ce183574dab70f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:24:28.340132', '2023-04-06 14:24:28.340171', '酒店品牌', '/api/hotel/hotelbrand/fb747a8ede5644a58b04ed3c42abaed9/', '{\'data\': \'fb747a8ede5644a58b04ed3c42abaed9/\'}', 'DELETE', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ce0c713fc2254004b86239659fa4928e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:50.854355', '2023-04-06 10:14:50.854394', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ceaff4c1f192482cb6ba88c8046ec5c4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:26:48.763778', '2023-04-07 11:26:48.763842', '酒店', '/api/hotel/hotel/', '{\'address\': \'\', \'code\': \'\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'\', \'summary\': \'\', \'tag\': \'\', \'phone\': \'1\', \'pay_type\': \'\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'summary:该字段不能为空。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('cef380af7a7546d38b3a8b1f15c7136b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:19:29.333371', '2023-04-06 17:19:29.333406', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'8fd958bedad746e19feb68293c59e27b\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406171901_188.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406171904_356.jpg\', \'status\': 1, \'brand\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'brand:无效主键 “e4d3cc0ba3e346aa8eb0046c2e9ce37c” － 对象不存在。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d3460f0be38745d6b8507603e2778c0f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:45:28.097271', '2023-04-06 09:45:28.097306', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'2\', \'captchaKey\': 41}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d3bf519bf10d4a0a8fc0744d566c6a26', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:23:59.995227', '2023-04-06 18:23:59.995286', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d41b56e64ee243e686a9c29c79e134d3', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:24:25.583136', '2023-04-06 17:24:25.583169', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d43d068ea908410d80be485d7d04d33f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:38:57.145513', '2023-04-06 13:38:57.145615', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'2022-10-10\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': \'正常\', \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'opened_time_c:请填写合法的整数值。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d5b74fc3ebfa4262901439f3c3b267a7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:31:15.856640', '2023-04-06 10:31:15.856683', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'酒店测试一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406103114_738.jpg\', \'brand_chain\': \'101\', \'brand_code\': \'123\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d64b9edc8d7049709f1140f2e09c795b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:12:52.793787', '2023-04-06 10:12:52.793867', '酒店品牌', '/api/hotel/hotelbrand/', '{\'name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'brand_name:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d7c75ec18e574e339e3d2b7985fb517f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 10:51:30.613994', '2023-04-07 10:51:30.614034', '酒店', '/api/hotel/hotel/', '{\'status\': 0, \'brand\': \'196d5cc4b64e4faa8609faaebf89f500\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d8d2b0b38bf547d0bd4f7ae393eaade9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:27:38.169671', '2023-04-06 10:27:38.169720', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'22333232423222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'12312322123\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'group_code:请确保该值小于或者等于 2147483647。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d9cbd5c5fd894470930372633838d1ca', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:14:41.329703', '2023-04-06 10:14:41.329735', '酒店', '/api/hotel/hotel/', '{\'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406101128_853.jpg\', \'brand_chain\': \'1\', \'brand_code\': \'123321123\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('d9f5dc79a1754ac38beef56e262bdfe0', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:48:44.164016', '2023-04-06 10:48:44.164071', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'1\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'1\', \'brand_code\': \'1\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('da8f3865257448f38665ae13b23c57a7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:17:29.097687', '2023-04-07 11:17:29.097718', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'modifier_name\': \'管理员\', \'creator_name\': \'管理员\', \'create_datetime\': \'2023-04-06 18:23:48\', \'update_datetime\': \'2023-04-06 18:23:48\', \'description\': None, \'modifier\': \'d1431450-5068-4461-b57e-7862c005a547\', \'dept_belong_id\': \'d2c03bd9-dad0-4262-88ca-c3681d224fc3\', \'code\': \'12\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'address\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'facility\': \'1\', \'tag\': \'1\', \'summary\': \'11\', \'longitude\': 1.0, \'latitude\': 1.0, \'status\': 1, \'add_by\': \'1\', \'creator\': \'d1431450-5068-4461-b57e-7862c005a547\', \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '54.86.50.139', 'PostmanRuntime 7.31.3', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('dd9d2f2733c440df89775442ff1a9010', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:16:35.182840', '2023-04-06 16:16:35.182873', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('de47d50826494573a0c63b701e01c8f8', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:28.066396', '2023-04-06 18:24:28.066433', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('dea40de5db1747a3bbab5909490ac76f', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:25:09.093512', '2023-04-06 14:25:09.093599', '酒店品牌', '/api/hotel/hotelbrand/', '{\'name\': \'集团一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg\', \'group_code\': \'trip001\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('deb150428b6c4872adbf805af54cd724', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:22:22.036704', '2023-04-06 18:22:22.036744', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_chain\': \'Harmony\', \'brand_name\': \'HarmonyOs\', \'description\': \'新一代系统\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182219_902.jpg\', \'brand_code\': \'10002\', \'group\': \'36ef24c5e4d743e995edb0c2981445fa\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('dfaa916851f34403a0db34d0c88ccc0b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:19:46.782401', '2023-04-06 10:19:46.782452', '酒店集团', '/api/hotel/hotelgroup/', '{\'name\': \'2233323242322222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'group_code\': \'123123123\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('e107bfa6ea114a7ca955d190ca419fe4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:32:29.180533', '2023-04-07 11:32:29.180563', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'123\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('e2224e2753014cce9b8d468fe2952932', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:35:53.682734', '2023-04-06 11:35:53.682775', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'测试1\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('e47e264413db4290b9a2eaad383bb1f1', NULL, NULL, NULL, '2023-04-06 09:41:53.685780', '2023-04-06 09:41:53.685835', '登录模块', '/api/token/', '{\'username\': \'admin\', \'password\': \'******\', \'captcha\': \'50\', \'captchaKey\': 40}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'账号/密码不正确\'}', 0, NULL);
INSERT INTO `lyadmin_operation_log` VALUES ('e5a32a69c6a6480ebee1ace4d428285b', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:22:00.316785', '2023-04-06 17:22:00.316828', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('e83f08a8d7b24710a470971bee3e74a4', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:45:17.521825', '2023-04-06 11:45:17.521920', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/', '{}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '4000', 'Other', '{\'code\': 4000, \'msg\': \'enum:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('e9f24bf9c0ed483fbf384e83324212e2', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:20:36.346027', '2023-04-06 17:20:36.346064', '酒店品牌', '/api/hotel/hotelbrand/c3ee2b27c23d4102b4b827486cb2f822/', '{\'data\': \'c3ee2b27c23d4102b4b827486cb2f822/\'}', 'DELETE', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ebbbc24577a041fa9bc3d271b5c17742', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:56.039441', '2023-04-06 18:24:56.039486', '酒店', '/api/hotel/hotel/', '{\'address\': \'3453\', \'code\': \'345\', \'facility\': \'5345\', \'latitude\': \'345\', \'longitude\': \'345\', \'name_cn\': \'34534\', \'name_en\': \'345\', \'opened_time_c\': \'345\', \'summary\': \'45345\', \'tag\': \'453\', \'phone\': \'345\', \'pay_type\': \'453\', \'room_type\': \'34535\', \'add_by\': \'345\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182449_494.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182447_129.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ec4d56a0fc97494fb26f5360607aeb8d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:46:29.332363', '2023-04-06 11:46:29.332396', '酒店枚举详细信息', '/api/hotel/hotelenumdetail/', '{\'enum\': \'aaa11e31c0c146b8bcfa65eabe9e5951\', \'key\': \'1\', \'value\': \'222\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('edc3fd1bab5c4c16996bfae79ddb4ec1', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:33:07.526596', '2023-04-06 10:33:07.526628', '酒店品牌', '/api/hotel/hotelbrand/77f1d9b5dad3452f84510b1ed3e83f6a/', '{\'brand_name\': \'酒店测试一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406103305_209.jpg\', \'brand_chain\': \'101\', \'brand_code\': \'test001\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'group:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f128c486895e4214994e983bd9cf0e4a', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 09:50:30.546513', '2023-04-06 09:50:30.546588', '酒店', '/api/hotel/hotel/', '{\'name\': \'测试酒店一\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406095018_122.jpg\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'add_by:该字段是必填项。\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f1aec4f739964f9eb45c093392fee555', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:25:52.005285', '2023-04-07 11:25:52.005330', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f33b0d6fb2304bc2b2399fe48aa7c370', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:33:59.618467', '2023-04-06 11:33:59.618545', '酒店枚举', '/api/hotel/hotelenum/', '{\'enum_name\': \'支付方式\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f45d620080504a7a8cad0c6665df78ef', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:32.013453', '2023-04-06 16:27:32.013494', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f62f29bb46c14d469c5308ff4c718ad5', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:43:39.391707', '2023-04-06 13:43:39.391753', '酒店', '/api/hotel/hotel/', '{\'address\': \'广东珠海\', \'code\': \'77f1d9b5dad3452f84510b1ed3e83f6a\', \'facility\': \'aef,efaefa,efaq\', \'latitude\': \'22.22\', \'longitude\': \'11.11\', \'name_cn\': \'trip酒店\', \'name_en\': \'tripHotel\', \'opened_time_c\': \'111\', \'summary\': \'好\', \'tag\': \'地铁旁边,小学旁\', \'phone\': \'0756-1413464\', \'pay_type\': \'微信,支付宝\', \'room_type\': \'风景好,服务好,\', \'add_by\': \'张三\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406120037_413.jpg\', \'status\': 0, \'typeid\': \'e4d3cc0ba3e346aa8eb0046c2e9ce37c\'}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'(1048, \"Column \\\'brand_id\\\' cannot be null\")\'}', 0, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f67bfa45944442ff9fffa1800e45708d', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:31:14.327808', '2023-04-06 10:31:14.327852', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f691e28a015e4a3b9cd0cf0e505d88ac', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:22.799880', '2023-04-06 18:24:22.799937', '酒店', '/api/hotel/hotel/', '{\'address\': \'44\', \'code\': \'12\', \'facility\': \'234\', \'latitude\': \'3123\', \'longitude\': \'32\', \'name_cn\': \'312\', \'name_en\': \'1231\', \'opened_time_c\': \'231423\', \'summary\': \'242\', \'tag\': \'3\', \'phone\': \'234\', \'pay_type\': \'234\', \'room_type\': \'24\', \'add_by\': \'234\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182410_844.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182411_540.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f913fb6f287942428c2b01932941a1ef', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:11:28.880786', '2023-04-06 10:11:28.880878', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('f9fb07b414b9494a954366aaafb244a9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 10:22:40.996308', '2023-04-06 10:22:40.996344', '酒店品牌', '/api/hotel/hotelbrand/', '{\'brand_name\': \'2233323242322222222\', \'logo_img\': \'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png\', \'brand_chain\': \'223323223242\', \'brand_code\': \'1231223\', \'group\': \'8f04bafedc0e4d39b1582c087c00c3eb\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fa131e6b3dee4626875d79330c55571e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:25:24.286873', '2023-04-07 11:25:24.286903', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fb913124a05c424b8362c64ceca2524e', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 17:29:48.664232', '2023-04-06 17:29:48.664261', '酒店', '/api/hotel/hotel/', '{\'address\': \'1\', \'code\': \'1\', \'facility\': \'1\', \'latitude\': \'1\', \'longitude\': \'1\', \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': \'1\', \'summary\': \'1\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172938_616.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406172939_668.jpg\', \'status\': 1, \'brand\': \'084cd9aad7c94a2b88e5fe537908db0c\'}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fbfd189df79f493aa4371d342be1db09', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:29:20.478226', '2023-04-07 11:29:20.478256', '酒店', '/api/hotel/hotel/4c3d06e32db74fe9b2bffbfe21f0a80f/', '{\'address\': \'1\', \'code\': \'12\', \'facility\': \'1\', \'latitude\': 1, \'longitude\': 1, \'name_cn\': \'1\', \'name_en\': \'1\', \'opened_time_c\': 1, \'summary\': \'11\', \'tag\': \'1\', \'phone\': \'1\', \'pay_type\': \'1\', \'room_type\': \'1\', \'add_by\': \'1\', \'hotel_logo\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg\', \'hotel_img\': \'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg\', \'status\': 1, \'brand\': \'92d1548a71664d7aafb783a6ec2d8da2\'}', 'PUT', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fc5da79b814849cdb1228d5f809822da', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:25:06.803825', '2023-04-06 14:25:06.804361', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fdef6f1d5e34428c8147c899774950b7', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 13:48:02.599062', '2023-04-06 13:48:02.599114', '酒店', '/api/hotel/hotel/', '{\'code\': \'111111111\', \'name_cn\': \'测试2酒店\', \'name_en\': \'test hotel\', \'opened_time_c\': 12312321, \'address\': \'asodjiadihas\', \'phone\': \'0182-12398123\', \'pay_type\': \'alipay,wechat\', \'room_type\': \'a,b,c,d,e,f\', \'hotel_img\': \'kasdjk2ajsdndja\', \'facility\': \'any,jdjdj\', \'tag\': \'first,second,third\', \'summary\': \'askdla2ksd\', \'longitude\': 122.349332, \'latitude\': 23.328421, \'status\': 0, \'add_by\': \'test1\', \'creator\': None, \'brand\': \'5573d22e1f904031b1844f14a7f09b74\'}', 'POST', NULL, '104.156.250.10', 'PostmanRuntime 7.31.1', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('fe07c134425d4570a7b629e77b4b7bcd', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 16:27:56.373461', '2023-04-06 16:27:56.373507', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '116.7.215.72', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');
INSERT INTO `lyadmin_operation_log` VALUES ('ffd14a30ee6a47d28032238b2453b2a9', NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:20:23.201004', '2023-04-06 18:20:23.201048', '图片上传', '/api/platformsettings/uploadplatformimg/', '{}', 'POST', NULL, '47.242.183.130', 'Chrome 111.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'上传成功\'}', 1, 'd1431450-5068-4461-b57e-7862c005a547');

-- ----------------------------
-- Table structure for lyadmin_post
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_post`;
CREATE TABLE `lyadmin_post`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `status` int(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_post_creator_id_15f90961`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_post
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_role
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role`;
CREATE TABLE `lyadmin_role`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `status` smallint(0) NOT NULL,
  `admin` smallint(0) NOT NULL,
  `data_range` smallint(0) NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lyadmin_role_creator_id_858b8a61`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role
-- ----------------------------
INSERT INTO `lyadmin_role` VALUES ('35b58d98-b506-4f93-be79-ed1e109da071', NULL, NULL, NULL, '2023-03-16 15:54:59.317482', '2023-03-16 15:54:59.317507', '普通用户', 'public', 2, 1, 0, 4, NULL, NULL);
INSERT INTO `lyadmin_role` VALUES ('36001d1a-1b3e-4413-bdfe-b3bc04375f46', NULL, NULL, NULL, '2023-03-16 15:54:59.285113', '2023-03-16 15:54:59.285136', '管理员', 'admin', 1, 1, 1, 3, NULL, NULL);
INSERT INTO `lyadmin_role` VALUES ('f9876b6abda84c4ab234cb7faf56b4c0', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-31 17:46:34.023798', '2023-03-17 14:12:48.186317', 'ttt1', 'tttt1', 3, 1, 0, 4, NULL, 'd1431450-5068-4461-b57e-7862c005a547');

-- ----------------------------
-- Table structure for lyadmin_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_dept`;
CREATE TABLE `lyadmin_role_dept`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_dept_role_id_dept_id_75a8409d_uniq`(`role_id`, `dept_id`) USING BTREE,
  INDEX `lyadmin_role_dept_role_id_bf2e0106`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_dept_dept_id_4efa5a2b`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_dept
-- ----------------------------
INSERT INTO `lyadmin_role_dept` VALUES (1, '35b58d98-b506-4f93-be79-ed1e109da071', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_role_dept` VALUES (2, '35b58d98-b506-4f93-be79-ed1e109da071', 'fd8230ca-67bd-4347-8a9b-57eb19be5d9e');

-- ----------------------------
-- Table structure for lyadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_menu`;
CREATE TABLE `lyadmin_role_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_menu_role_id_menu_id_ee3d26d9_uniq`(`role_id`, `menu_id`) USING BTREE,
  INDEX `lyadmin_role_menu_role_id_68ec079a`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_menu_menu_id_27af6f62`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_menu
-- ----------------------------
INSERT INTO `lyadmin_role_menu` VALUES (17, '35b58d98-b506-4f93-be79-ed1e109da071', '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_role_menu` VALUES (21, '35b58d98-b506-4f93-be79-ed1e109da071', '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_role_menu` VALUES (20, '35b58d98-b506-4f93-be79-ed1e109da071', '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_role_menu` VALUES (19, '35b58d98-b506-4f93-be79-ed1e109da071', '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_role_menu` VALUES (18, '35b58d98-b506-4f93-be79-ed1e109da071', '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_role_menu` VALUES (27, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '02c24003527546359b5a77ae07adc7d5');
INSERT INTO `lyadmin_role_menu` VALUES (36, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '09a42810d4dd4b2eb939f8eb0b01d9d1');
INSERT INTO `lyadmin_role_menu` VALUES (9, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '151035da-77a3-4a62-b474-fce6824571fb');
INSERT INTO `lyadmin_role_menu` VALUES (6, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '15c9ebc5-d12f-470a-a560-938a7dc57570');
INSERT INTO `lyadmin_role_menu` VALUES (16, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '244b28685cd14a39a383189981510d4a');
INSERT INTO `lyadmin_role_menu` VALUES (8, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '25735adb-d051-4b7b-bbb7-1154526f3e4c');
INSERT INTO `lyadmin_role_menu` VALUES (34, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2a7c0142f7514dacb7999383e4e67aca');
INSERT INTO `lyadmin_role_menu` VALUES (29, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2e07b715d5e24e2ca45997527430e9d3');
INSERT INTO `lyadmin_role_menu` VALUES (1, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2e3438c8-3ddc-43ff-b8d8-cca328e4856e');
INSERT INTO `lyadmin_role_menu` VALUES (4, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3171db16eda048ae92b16536fc1241b6');
INSERT INTO `lyadmin_role_menu` VALUES (32, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3c13161f70f1469a913d539e7616c577');
INSERT INTO `lyadmin_role_menu` VALUES (15, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4236eb70-1558-43a0-9cf2-037230c547f9');
INSERT INTO `lyadmin_role_menu` VALUES (37, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '49160b589f004e44b3920c82583c2581');
INSERT INTO `lyadmin_role_menu` VALUES (3, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4ba07859-8b73-4524-a1a6-bbff36d98337');
INSERT INTO `lyadmin_role_menu` VALUES (13, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '54f769b0-3dff-416c-8102-e55ec44827cc');
INSERT INTO `lyadmin_role_menu` VALUES (11, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '56c3f341-4f46-4b04-9cfc-c8a14701707e');
INSERT INTO `lyadmin_role_menu` VALUES (26, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '718daec1b94b456c96d773889648173e');
INSERT INTO `lyadmin_role_menu` VALUES (25, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '77edf447326b4e0dbc6f9719c1de8a12');
INSERT INTO `lyadmin_role_menu` VALUES (5, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80a340eae92b430abe17635468c2df1d');
INSERT INTO `lyadmin_role_menu` VALUES (23, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9065cb5445ac42ef93eb9e75e6287792');
INSERT INTO `lyadmin_role_menu` VALUES (33, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a28f8ca682d04c8fb2953fdeb3d9e2e6');
INSERT INTO `lyadmin_role_menu` VALUES (35, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a524f17e9ac74be3baf9d113f014184c');
INSERT INTO `lyadmin_role_menu` VALUES (12, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a607e820-36e5-45c0-aabf-85a8e4e2c7ac');
INSERT INTO `lyadmin_role_menu` VALUES (7, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ae5629946df4497cbec10419e8375dd9');
INSERT INTO `lyadmin_role_menu` VALUES (28, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'b999c50996864465b851575e378c5aea');
INSERT INTO `lyadmin_role_menu` VALUES (24, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bcbeeee5c91a4e2ea2c2a31237e33616');
INSERT INTO `lyadmin_role_menu` VALUES (2, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c236fb6b-ddaa-4deb-b79b-16e42d9f347f');
INSERT INTO `lyadmin_role_menu` VALUES (31, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd470ab18859a4472b525e605ae96c325');
INSERT INTO `lyadmin_role_menu` VALUES (14, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd4e2fe169a8b40f3846421ac04e4fccb');
INSERT INTO `lyadmin_role_menu` VALUES (22, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd73f73a399af48cea6a8490ac508d7a0');
INSERT INTO `lyadmin_role_menu` VALUES (30, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'dc8c173b425048e7a8c9b59513596c7f');
INSERT INTO `lyadmin_role_menu` VALUES (10, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e0f53902-e901-490c-83f3-331e60b97fcf');

-- ----------------------------
-- Table structure for lyadmin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_role_permission`;
CREATE TABLE `lyadmin_role_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menubutton_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_role_permission_role_id_menubutton_id_dfd195d1_uniq`(`role_id`, `menubutton_id`) USING BTREE,
  INDEX `lyadmin_role_permission_role_id_610a95e1`(`role_id`) USING BTREE,
  INDEX `lyadmin_role_permission_menubutton_id_539eb394`(`menubutton_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_role_permission
-- ----------------------------
INSERT INTO `lyadmin_role_permission` VALUES (102, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0088e172566f4ee388092ec2be3584ee');
INSERT INTO `lyadmin_role_permission` VALUES (81, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0209de89-6b9f-4d8a-84d3-ccfc3cc8b4da');
INSERT INTO `lyadmin_role_permission` VALUES (22, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '04896a47-0f3a-4e2f-a111-bfe15f9e31c5');
INSERT INTO `lyadmin_role_permission` VALUES (103, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '05932c39ad444ac5aaf880d281620611');
INSERT INTO `lyadmin_role_permission` VALUES (79, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0b5bf0f1caac45beabf54fb5d930187b');
INSERT INTO `lyadmin_role_permission` VALUES (36, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0ce04d99cbd249a9af88fe1496591a89');
INSERT INTO `lyadmin_role_permission` VALUES (30, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '0d931efc-2f80-418f-b4a0-5251f0a88f69');
INSERT INTO `lyadmin_role_permission` VALUES (95, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '103d4310b98e4ff1ba71336af8d4c6c2');
INSERT INTO `lyadmin_role_permission` VALUES (1, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '10610c56-cec2-4774-9468-e1c763e59e70');
INSERT INTO `lyadmin_role_permission` VALUES (111, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '118ce77cc07140a08d9a92ab8800f2cf');
INSERT INTO `lyadmin_role_permission` VALUES (39, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '11d334fcadf1490e85e6a045126dea78');
INSERT INTO `lyadmin_role_permission` VALUES (86, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '140166e2-471e-455e-9dcd-05cebbbab95d');
INSERT INTO `lyadmin_role_permission` VALUES (12, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14514da3c11441c2b63f2331e3f897d0');
INSERT INTO `lyadmin_role_permission` VALUES (61, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14e7088f-a39b-47ae-bd67-b9bbcabae96b');
INSERT INTO `lyadmin_role_permission` VALUES (83, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '14e7088fa39b47aebd67b9bbcabae96b');
INSERT INTO `lyadmin_role_permission` VALUES (14, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '19d01a929bc9414cac1a8defd48597c9');
INSERT INTO `lyadmin_role_permission` VALUES (84, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1a0c96cf-09a6-43b4-b08a-0c5b6e2f7bb8');
INSERT INTO `lyadmin_role_permission` VALUES (42, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1b4f27a7-8ab8-4388-ae57-46e29976cf0e');
INSERT INTO `lyadmin_role_permission` VALUES (43, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '1d4441fdc418499f856c23aa4e1be2c0');
INSERT INTO `lyadmin_role_permission` VALUES (57, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '220fa39fd56e47e1ab9558c6bd10106e');
INSERT INTO `lyadmin_role_permission` VALUES (91, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2235160bd56c423880572f5450b94f16');
INSERT INTO `lyadmin_role_permission` VALUES (52, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '264cc3d69f7a46d5a117997e9c78506c');
INSERT INTO `lyadmin_role_permission` VALUES (50, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '281ad1aad421441a965f7bc6b397eb30');
INSERT INTO `lyadmin_role_permission` VALUES (8, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2a3d4756-4d51-4129-b3c4-b2c7a00dbb8a');
INSERT INTO `lyadmin_role_permission` VALUES (60, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2c53efc8-e6a4-4192-8688-03baed0874a4');
INSERT INTO `lyadmin_role_permission` VALUES (64, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '2c5b748c5dce4f34bd24b1201faf09c2');
INSERT INTO `lyadmin_role_permission` VALUES (108, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '324776a3-48ec-4bca-bdd9-1838e2b6f7cc');
INSERT INTO `lyadmin_role_permission` VALUES (6, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '353595a28cb1463b830cfbf79fea60b5');
INSERT INTO `lyadmin_role_permission` VALUES (58, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3688b715-4689-468f-bf3e-6f910259f837');
INSERT INTO `lyadmin_role_permission` VALUES (71, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3737d4afa1e2437b93e8cdcd7116180a');
INSERT INTO `lyadmin_role_permission` VALUES (11, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '37462e31-3cdf-4576-af10-5958f53b1bef');
INSERT INTO `lyadmin_role_permission` VALUES (41, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3cadf44d739b45d4a94ad23939e19716');
INSERT INTO `lyadmin_role_permission` VALUES (113, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3e11db64-b8e8-4558-963b-71d063a7db16');
INSERT INTO `lyadmin_role_permission` VALUES (9, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '3fd6ae6c-fd76-4465-b2b6-db672f4bd79e');
INSERT INTO `lyadmin_role_permission` VALUES (46, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4281eaced4e943ababeefb66a6a7f13d');
INSERT INTO `lyadmin_role_permission` VALUES (106, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '42ad6e05-7c84-444f-bcae-09de84f4988b');
INSERT INTO `lyadmin_role_permission` VALUES (116, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '43696212-ecba-4e66-8678-33c9bc935c76');
INSERT INTO `lyadmin_role_permission` VALUES (110, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '43696212ecba4e66867833c9bc935c76');
INSERT INTO `lyadmin_role_permission` VALUES (68, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '43a779c3e1634e84bb1a32c675b5f744');
INSERT INTO `lyadmin_role_permission` VALUES (16, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4450d80871eb44a1aaa4fbb5429885f0');
INSERT INTO `lyadmin_role_permission` VALUES (13, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4b73b1669e49495f93de36d63cc2c0d8');
INSERT INTO `lyadmin_role_permission` VALUES (34, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '4fe4b7f5-0bc8-4375-9f39-747e06ec285a');
INSERT INTO `lyadmin_role_permission` VALUES (28, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '51085c21-2279-490f-8878-594f059f7616');
INSERT INTO `lyadmin_role_permission` VALUES (48, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '53e6d5a4192c4f0f8bdd7f5647124147');
INSERT INTO `lyadmin_role_permission` VALUES (100, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '576008b6046f4afcb88d8139ff34e228');
INSERT INTO `lyadmin_role_permission` VALUES (66, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '59db5099a03f44c8adb883faa340c15a');
INSERT INTO `lyadmin_role_permission` VALUES (54, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '5aac29b0-5a32-45fb-81c5-437b48f4a5df');
INSERT INTO `lyadmin_role_permission` VALUES (23, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '5d77d14e-b199-481f-a97d-6e4c0e84fe71');
INSERT INTO `lyadmin_role_permission` VALUES (85, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6208f412-6bca-4d7b-a5a0-0103b7ba6091');
INSERT INTO `lyadmin_role_permission` VALUES (59, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6300774a-d19c-43ad-8102-d7bf341eff33');
INSERT INTO `lyadmin_role_permission` VALUES (117, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '646e9790-24f5-4606-abc4-0b5eede12f66');
INSERT INTO `lyadmin_role_permission` VALUES (2, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '676e32850165441cad01782e453de925');
INSERT INTO `lyadmin_role_permission` VALUES (78, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6a21329f0dcd4781a64fc4f62324e4c0');
INSERT INTO `lyadmin_role_permission` VALUES (76, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6af0929440a345238c28ee9b1fe341ba');
INSERT INTO `lyadmin_role_permission` VALUES (40, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6b88361b326a4e55a8a5135c08ba66f1');
INSERT INTO `lyadmin_role_permission` VALUES (53, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6d6b6689d1224900b09c8101b3344f42');
INSERT INTO `lyadmin_role_permission` VALUES (33, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6e27757847c64e228934b60ae81baedf');
INSERT INTO `lyadmin_role_permission` VALUES (69, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6e4251a948f348ccaa419a777a118048');
INSERT INTO `lyadmin_role_permission` VALUES (27, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '6e9d454742f74437928959c02be42456');
INSERT INTO `lyadmin_role_permission` VALUES (10, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '716480cd8ac645239405763834326f7e');
INSERT INTO `lyadmin_role_permission` VALUES (75, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '77096cd56a6441699345e6e4f22d0ec3');
INSERT INTO `lyadmin_role_permission` VALUES (37, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '7aef1da4647844e3944a2745cef1bc6d');
INSERT INTO `lyadmin_role_permission` VALUES (107, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80c8eb6939a245e9890dede241b5d1d6');
INSERT INTO `lyadmin_role_permission` VALUES (74, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '80efc041695a42e4a9a04c010c6c7004');
INSERT INTO `lyadmin_role_permission` VALUES (44, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8228955d67bc4dc89638b523f58108ee');
INSERT INTO `lyadmin_role_permission` VALUES (94, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '875bdfeb-0c34-441d-8ee3-bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (51, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '875bdfeb0c34441d8ee3bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (112, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8ae924bd-576c-4ae1-92eb-b0a98148baae');
INSERT INTO `lyadmin_role_permission` VALUES (92, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8b7a0e79-a6ef-4946-87c6-8c042b887e1c');
INSERT INTO `lyadmin_role_permission` VALUES (105, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8d65733d401c40f8b27cc6bcfed78bc3');
INSERT INTO `lyadmin_role_permission` VALUES (70, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '8f465aa674744313890cc8c59d3d0fd2');
INSERT INTO `lyadmin_role_permission` VALUES (38, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9565c5888bd4414c84ecede7af7d1554');
INSERT INTO `lyadmin_role_permission` VALUES (90, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '96022ae5-6425-47b9-8f89-01edc33eb2b7');
INSERT INTO `lyadmin_role_permission` VALUES (88, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '989ad685ce654dd1b367f41dedfdd0b9');
INSERT INTO `lyadmin_role_permission` VALUES (99, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '98c953b2d74d4d9d83d18433a7fc85ba');
INSERT INTO `lyadmin_role_permission` VALUES (55, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9e6b2376-1ab0-4966-8d5d-4ad4f911d13c');
INSERT INTO `lyadmin_role_permission` VALUES (114, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9fc8436a-1996-478f-a155-5de7939a54dc');
INSERT INTO `lyadmin_role_permission` VALUES (77, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', '9fc8436a1996478fa1555de7939a54dc');
INSERT INTO `lyadmin_role_permission` VALUES (18, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a20a200c721c489b9925cdd5b5e6708c');
INSERT INTO `lyadmin_role_permission` VALUES (3, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a3088120763d49ad93498eb515c7c244');
INSERT INTO `lyadmin_role_permission` VALUES (101, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a45559c4cc6f48e2b7194c2dc577af3a');
INSERT INTO `lyadmin_role_permission` VALUES (67, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'a69fb746c0aa4bd0b31b1480c9e4dcc0');
INSERT INTO `lyadmin_role_permission` VALUES (87, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'abe5c07f-0cab-4053-ac24-e782792e9d7f');
INSERT INTO `lyadmin_role_permission` VALUES (96, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ac302c9907b94ab59ac3c40975add57b');
INSERT INTO `lyadmin_role_permission` VALUES (62, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'acfde861-1872-47e2-a1f1-abeda5175b7f');
INSERT INTO `lyadmin_role_permission` VALUES (29, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'af60d628-73b1-4c5d-b34e-7c70ab9bd87e');
INSERT INTO `lyadmin_role_permission` VALUES (32, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'b10f7d08-2592-4b54-8557-b5ca864a029a');
INSERT INTO `lyadmin_role_permission` VALUES (31, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'b4cbe8ed35a04155b14c7809fad6b2ef');
INSERT INTO `lyadmin_role_permission` VALUES (72, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bb7de9ee-5fd1-46f5-9849-088c522f49c7');
INSERT INTO `lyadmin_role_permission` VALUES (26, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bb7de9ee5fd146f59849088c522f49c7');
INSERT INTO `lyadmin_role_permission` VALUES (109, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bc114580-e62d-4e08-b707-843759817344');
INSERT INTO `lyadmin_role_permission` VALUES (45, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bc6104a0-f487-4dfd-a368-fb587d6d57d8');
INSERT INTO `lyadmin_role_permission` VALUES (118, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'bec59f93068a4d7aaaf5b4ccfbc12265');
INSERT INTO `lyadmin_role_permission` VALUES (82, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c2490dfba1644cae8f8ff85e2d6f1d3d');
INSERT INTO `lyadmin_role_permission` VALUES (93, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c28461a142d7464f8865752c969d82de');
INSERT INTO `lyadmin_role_permission` VALUES (89, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c2cac9993f9142cca5f531565a14f840');
INSERT INTO `lyadmin_role_permission` VALUES (19, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'c8eee7f68c1845169b8d2af946502077');
INSERT INTO `lyadmin_role_permission` VALUES (97, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ca69833045ed4cf78c8586f7e55ba6db');
INSERT INTO `lyadmin_role_permission` VALUES (7, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'cf50028007164569a136fbdeaff7619c');
INSERT INTO `lyadmin_role_permission` VALUES (47, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd1b3c15f0c664857aeca1d9065d9c499');
INSERT INTO `lyadmin_role_permission` VALUES (49, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd22c0176-96e0-48b3-b81e-13443f306af5');
INSERT INTO `lyadmin_role_permission` VALUES (63, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd2e0608b5b4941ef8c3ff834977caeef');
INSERT INTO `lyadmin_role_permission` VALUES (80, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'd419393d77e34f8e9c1eda5893f3bc87');
INSERT INTO `lyadmin_role_permission` VALUES (35, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'dcc58831-08d1-4469-8b01-fca71e0f497f');
INSERT INTO `lyadmin_role_permission` VALUES (4, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e1ddf86666364a39be76c963c277b009');
INSERT INTO `lyadmin_role_permission` VALUES (15, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e6b93920-2236-46ec-841b-cff6f63ce788');
INSERT INTO `lyadmin_role_permission` VALUES (56, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'e7fa30290d37447585ea7583d9d01f1b');
INSERT INTO `lyadmin_role_permission` VALUES (20, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'ea18bb51400b482a8aad5dc18357bcab');
INSERT INTO `lyadmin_role_permission` VALUES (65, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'efcbf104971a4266a26d9469e58c1327');
INSERT INTO `lyadmin_role_permission` VALUES (17, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f0e080c0-275d-4085-b56c-735b49510eff');
INSERT INTO `lyadmin_role_permission` VALUES (25, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f19826f7df9842089cee94a795681b2e');
INSERT INTO `lyadmin_role_permission` VALUES (5, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f4e0b4aa230b4afba10a7ba58af3c454');
INSERT INTO `lyadmin_role_permission` VALUES (73, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'f5818e4cd46947daabe046c511dfbd63');
INSERT INTO `lyadmin_role_permission` VALUES (21, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fa7c32c9397c46b8821b62aae5512af0');
INSERT INTO `lyadmin_role_permission` VALUES (24, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fa8d945124b74379aba32bcf34ea5383');
INSERT INTO `lyadmin_role_permission` VALUES (98, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fc71b446-fde1-439f-ab41-c38f30230caa');
INSERT INTO `lyadmin_role_permission` VALUES (115, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fcbe4cec-cc2d-436d-92ba-023f8c9ad31c');
INSERT INTO `lyadmin_role_permission` VALUES (104, '36001d1a-1b3e-4413-bdfe-b3bc04375f46', 'fe96f32c-6124-4b24-b809-4964186f5163');
INSERT INTO `lyadmin_role_permission` VALUES (153, 'f9876b6abda84c4ab234cb7faf56b4c0', '14e7088fa39b47aebd67b9bbcabae96b');
INSERT INTO `lyadmin_role_permission` VALUES (144, 'f9876b6abda84c4ab234cb7faf56b4c0', '43696212ecba4e66867833c9bc935c76');
INSERT INTO `lyadmin_role_permission` VALUES (160, 'f9876b6abda84c4ab234cb7faf56b4c0', '80c8eb6939a245e9890dede241b5d1d6');
INSERT INTO `lyadmin_role_permission` VALUES (161, 'f9876b6abda84c4ab234cb7faf56b4c0', '875bdfeb-0c34-441d-8ee3-bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (151, 'f9876b6abda84c4ab234cb7faf56b4c0', '875bdfeb0c34441d8ee3bb93c21e17dd');
INSERT INTO `lyadmin_role_permission` VALUES (152, 'f9876b6abda84c4ab234cb7faf56b4c0', '9fc8436a1996478fa1555de7939a54dc');
INSERT INTO `lyadmin_role_permission` VALUES (157, 'f9876b6abda84c4ab234cb7faf56b4c0', 'bb7de9ee5fd146f59849088c522f49c7');

-- ----------------------------
-- Table structure for lyadmin_system_config
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_system_config`;
CREATE TABLE `lyadmin_system_config`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` json NULL,
  `sort` int(0) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `data_options` json NULL,
  `form_item_type` smallint(0) NOT NULL,
  `rule` json NULL,
  `placeholder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `setting` json NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_system_config_key_parent_id_97f056cc_uniq`(`key`, `parent_id`) USING BTREE,
  INDEX `lyadmin_system_config_key_7aeced64`(`key`) USING BTREE,
  INDEX `lyadmin_system_config_creator_id_bd4f327e`(`creator_id`) USING BTREE,
  INDEX `lyadmin_system_config_parent_id_2c3a27d0`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_system_config
-- ----------------------------
INSERT INTO `lyadmin_system_config` VALUES ('0e5ed3b69fd94a6daabff47d08244eb0', NULL, NULL, NULL, '2023-03-16 15:54:59.394113', '2023-03-16 15:54:59.394165', '客服电话', 'phone', '\"1888888888x\"', 1, 1, NULL, 0, NULL, '请输入电话号码', NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');
INSERT INTO `lyadmin_system_config` VALUES ('9c3e3670d4ee4898a1374cf780bcdc42', NULL, NULL, NULL, '2023-03-16 15:54:59.389496', '2023-03-16 15:54:59.389518', '基础配置', 'base', NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `lyadmin_system_config` VALUES ('ae2987ded9d04dd7bc6a3aebfaf83f5f', NULL, NULL, NULL, '2023-03-16 15:54:59.400489', '2023-03-16 15:54:59.400543', '隐私协议', 'privatexy', '\"<p>隐私内容</p>\"', 2, 1, NULL, 14, NULL, '请输入内容', NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');
INSERT INTO `lyadmin_system_config` VALUES ('bbcabe17837d4233ac2a24a907dd27c3', NULL, NULL, NULL, '2023-03-16 15:54:59.406793', '2023-03-16 15:54:59.406816', 'logo', 'logo', '\"http://127.0.0.1:8000/media/platform/2022-04-07/20220407120605_298.png\"', 3, 1, NULL, 7, NULL, NULL, NULL, NULL, '9c3e3670d4ee4898a1374cf780bcdc42');

-- ----------------------------
-- Table structure for lyadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users`;
CREATE TABLE `lyadmin_users`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` smallint(0) NULL DEFAULT NULL,
  `identity` smallint(0) NULL DEFAULT NULL,
  `balance` decimal(10, 2) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_distribution` tinyint(1) NOT NULL,
  `distribution_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `lyadmin_users_creator_id_92824513`(`creator_id`) USING BTREE,
  INDEX `lyadmin_users_dept_id_ba5fbf41`(`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users
-- ----------------------------
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$8z1Gs5CvC4kIxbfGrdWr8R$WQchL3wWG7vkMadBGROzIUbvKXS3OpRd3JgPP6lOYeQ=', NULL, 0, '', '', 0, 1, '2023-03-28 09:58:37.388552', '1e66c355ed7d424e9f6be7633f3c52de', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 09:58:37.389965', '2023-03-28 09:58:37.390000', 'distribution11', NULL, '11111111111', '', 'distribution', 'distribution22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$260000$oivECWOjB0GJyMjPsrqb3t$9FvnYtXtsNWDva2P3A/eIg6cRMLOp7kiIOuwfLKyDAY=', NULL, 0, '', '', 0, 1, '2023-03-16 15:54:59.356723', '244b28685cd14a39a383189981510d4a', NULL, NULL, NULL, '2023-03-16 15:54:59.357064', '2023-03-16 15:54:59.357075', 'test', NULL, '18888888888', NULL, '测试用户', '测试用户', NULL, 2, 0.00, 0, 1, NULL, NULL, '');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$KaVPnbzr5jkRCYeCm4QkAr$+LPj/iJ0kuk0d6pRX/Z5qvWRZ5zSbPvYgqnZ3s+H9v4=', NULL, 0, '', '', 0, 1, '2023-03-31 15:54:14.008252', '28f6c1b18ea94bacb99ff3dbf61ae83a', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-31 15:54:14.009120', '2023-03-31 15:54:14.009134', '123123', NULL, '123123123', 'http://45.77.206.193:8000/media/platform/2023-03-31/20230331155305_303.png', '啊实打实的', '12312313', NULL, 2, 0.00, 0, 1, '63QGVC', 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$haDkLRFCw7ei05LQwWW5vt$PeUTkLME0XmR8pyQ7gynaZoChjMSMjXmFTBXcrelPSU=', NULL, 0, '', '', 0, 1, '2023-03-28 11:09:39.566246', '2c8b84ecdbde434ea5b2f6ef86ea2385', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 11:09:39.566979', '2023-03-28 11:09:39.566994', '233355dt2222n11', NULL, '11111111111', '', 'd4523t22u3tion', 'ibu23234332ti2', NULL, 2, 0.00, 0, 1, 'B1R73X', 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$hzu3tOwgpojY6VZOx4Tn82$n5HYVYBRcERbnq7Mqdfkmsq2BBHoTb7dYKwl4xcdWRw=', NULL, 0, '', '', 0, 1, '2023-03-17 13:45:38.423356', '3c60c763ff8f4ffa95d6fa26a50fef57', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-17 13:45:38.424262', '2023-03-17 13:45:38.424278', '1111', NULL, '11111111122', '', '1111', '1111', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$W8MecabRQdHqNCNHrUTbBS$r8MgcsMqCGexJdLgqnYLBBACdr0A/OOTRRMOnytJ5uc=', NULL, 0, '', '', 0, 1, '2023-03-28 10:16:32.547175', '3ddd005c208c44888ff4f684725bda0d', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:16:32.548196', '2023-03-28 10:16:32.548219', 'dri222but22ion11', NULL, '11111111111', '', 'dt22ri2b22ution', 'ditr22ibu22tio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$260000$oE0tnjC7PRIV6aCEah0J1F$scZo6l2/kekoClW8jZ6bM4PmSXevb4qzqHLro8PvzLc=', NULL, 1, '', '', 1, 1, '2023-03-16 15:54:59.339063', '456b688c-8ad5-46de-bc2e-d41d8047bd42', NULL, NULL, NULL, '2023-03-16 15:54:59.339413', '2023-03-16 15:54:59.339423', 'superadmin', NULL, NULL, NULL, '超级管理员', '', NULL, 0, 0.00, 0, 1, NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$toP4Tr6plhxMAL45KtQ28a$UCL3aITJ2zBjJ1IQhPrjYTF66tiENeNvy5Bwu5ZXMfM=', NULL, 0, '', '', 0, 1, '2023-03-28 10:06:41.217387', '46d6cf2955074b63bcac0cb48844f3d7', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:06:41.218235', '2023-03-28 10:06:41.218250', 'distri2bution11', NULL, '11111111111', '', 'distri2bution', 'distributio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$jUnrPBBqaiNFA9K6SYPRhY$saEti/VLK6wI82VPQCX0U0jI173Bp6pg2YAmjn+6XV0=', NULL, 0, '', '', 0, 1, '2023-03-17 11:32:41.258411', '4d1a240d29b34bb4be7161aea5bfa5ba', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-17 11:32:41.259327', '2023-03-17 11:32:41.259341', 'test1', NULL, '11111111111', '', '12', '3213', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$j1wzKFcQb18ntySLG5mHpx$hQ6JeuDmzees+7U86jfbdAJXjxkXrP1PAPNTABavFCo=', NULL, 0, '', '', 0, 1, '2023-03-28 11:11:02.849883', '5cce2a33bb3b473caca8046ef3f67bf7', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 11:11:02.850704', '2023-03-28 11:11:02.850733', '2333222n11', NULL, '11111111111', '', 'd452u3tion', 'i23234332ti2', NULL, 2, 0.00, 0, 1, '71H9B8', 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$HmKUy8xJqpzKHYzSptHNkI$HsOFBAdxRWzwlvkq5zhZsaNAZsvmmHSTONEcgzDa3+E=', NULL, 0, '', '', 0, 1, '2023-03-28 10:10:28.378231', '6d170a27107347739b3d5a89dda9db37', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:10:28.379057', '2023-03-28 10:10:28.379072', 'distri2but22ion11', NULL, '11111111111', '', 'distri2b22ution', 'distribu22tio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$oYXfJqqabG9TajHjbrlkGQ$YJ8xCmFrvXmlSLxZJCiQQ4jH3pOSiG5Vef8RQt7AT5s=', NULL, 0, '', '', 0, 1, '2023-03-28 10:16:03.210688', 'a6c3a5eca88447059e8d9ff3ba618c28', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:16:03.211572', '2023-03-28 10:16:03.211585', 'distri222but22ion11', NULL, '11111111111', '', 'dist22ri2b22ution', 'distr22ibu22tio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$XR9vwy6q4Zr4f6j6THzBgF$cyiKBGcm4gYkDPtCFTok95kSXimgijHu9ZwrniDk/9Y=', NULL, 0, '', '', 1, 1, '2023-03-17 13:46:47.797426', 'b51acd9d8ae74573a1d1a3a4f87915a1', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-17 13:46:47.797828', '2023-03-17 13:46:47.797840', 'wzh', NULL, NULL, NULL, 'wzh', 'wzh', NULL, 1, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$Yqt9OGzMXAjrkyJRmtZUMz$z49mUaGBaJ7PO6bxpv1bEvv8kpY2nMTjQ6v8Bsz1ygY=', NULL, 0, '', '', 0, 1, '2023-03-28 10:44:27.999672', 'c4e1bcb141b84fffabe71690a3114c4d', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:44:28.000299', '2023-03-28 10:44:28.000315', 'dr3i222but22ion11', NULL, '11111111111', '', 'dt22ri2222b22ution', 'ditr222ibu22tio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$nvrRBimZTrnfuo1JscKkbO$6ETtQMFaZNZz4QQNWWVxTgYsLlaaOIIy2Pe1bgR/V5U=', NULL, 0, '', '', 0, 1, '2023-03-28 10:47:01.508892', 'c61491a2cad94372a3cab68130f39c50', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-28 10:47:01.509930', '2023-03-28 10:47:01.509959', '3dr3i222but22ion11', NULL, '11111111111', '', 'dt222ri2222b22ution', 'ditr2222ibu22tio2n22', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$GGYlXA1o7AbJcYaL6JhYvy$4vNeZxaokNYqVMTztsuSqahdzznfUNZt6J07DrBFkfo=', NULL, 0, '', '', 1, 1, '2023-03-16 15:54:59.346496', 'd1431450-5068-4461-b57e-7862c005a547', NULL, NULL, NULL, '2023-03-16 15:54:59.346771', '2023-03-16 15:54:59.346784', 'admin', NULL, NULL, NULL, '管理员', '', NULL, 1, 0.00, 0, 1, NULL, NULL, 'd2c03bd9-dad0-4262-88ca-c3681d224fc3');
INSERT INTO `lyadmin_users` VALUES ('pbkdf2_sha256$390000$izQBHym0zfysUw5lOijTQk$G+XHKAxdWLdOrsPkBaZkCbbw0n1wNNPMbjF70g2EQQM=', NULL, 0, '', '', 0, 1, '2023-03-17 14:00:28.000000', 'f3b3137e89f34ac682d1a68727d8ce49', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-03-31 16:55:43.778636', '2023-03-17 14:00:28.948455', 'test1331211', NULL, '11111111111', '', '12213', '3213123', NULL, 2, 0.00, 0, 1, NULL, 'd1431450-5068-4461-b57e-7862c005a547', NULL);

-- ----------------------------
-- Table structure for lyadmin_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_groups`;
CREATE TABLE `lyadmin_users_groups`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `users_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_groups_users_id_group_id_a79dc867_uniq`(`users_id`, `group_id`) USING BTREE,
  INDEX `lyadmin_users_groups_group_id_c57fd8d6_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `lyadmin_users_groups_group_id_c57fd8d6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lyadmin_users_groups_users_id_8bf861d7_fk_lyadmin_users_id` FOREIGN KEY (`users_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_users_post
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_post`;
CREATE TABLE `lyadmin_users_post`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `users_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_post_users_id_post_id_b358d223_uniq`(`users_id`, `post_id`) USING BTREE,
  INDEX `lyadmin_users_post_users_id_f3295aea`(`users_id`) USING BTREE,
  INDEX `lyadmin_users_post_post_id_67f9ae2a`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_post
-- ----------------------------

-- ----------------------------
-- Table structure for lyadmin_users_role
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_role`;
CREATE TABLE `lyadmin_users_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `users_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_role_users_id_role_id_475ae0d5_uniq`(`users_id`, `role_id`) USING BTREE,
  INDEX `lyadmin_users_role_users_id_25f578a0`(`users_id`) USING BTREE,
  INDEX `lyadmin_users_role_role_id_0f927f87`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_role
-- ----------------------------
INSERT INTO `lyadmin_users_role` VALUES (3, '1e66c355ed7d424e9f6be7633f3c52de', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (18, '2c8b84ecdbde434ea5b2f6ef86ea2385', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (7, '3ddd005c208c44888ff4f684725bda0d', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (4, '46d6cf2955074b63bcac0cb48844f3d7', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (19, '5cce2a33bb3b473caca8046ef3f67bf7', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (5, '6d170a27107347739b3d5a89dda9db37', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (6, 'a6c3a5eca88447059e8d9ff3ba618c28', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (2, 'b51acd9d8ae74573a1d1a3a4f87915a1', '36001d1a-1b3e-4413-bdfe-b3bc04375f46');
INSERT INTO `lyadmin_users_role` VALUES (8, 'c4e1bcb141b84fffabe71690a3114c4d', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (9, 'c61491a2cad94372a3cab68130f39c50', 'f9876b6abda84c4ab234cb7faf56b4c0');
INSERT INTO `lyadmin_users_role` VALUES (1, 'd1431450-5068-4461-b57e-7862c005a547', '36001d1a-1b3e-4413-bdfe-b3bc04375f46');

-- ----------------------------
-- Table structure for lyadmin_users_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `lyadmin_users_user_permissions`;
CREATE TABLE `lyadmin_users_user_permissions`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `users_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `lyadmin_users_user_permi_users_id_permission_id_b174f27e_uniq`(`users_id`, `permission_id`) USING BTREE,
  INDEX `lyadmin_users_user_p_permission_id_0555113f_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `lyadmin_users_user_p_permission_id_0555113f_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lyadmin_users_user_p_users_id_7212a3dc_fk_lyadmin_u` FOREIGN KEY (`users_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lyadmin_users_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `receiver` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `street` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` double NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_address_user_id_476bb898_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  CONSTRAINT `tb_address_user_id_476bb898_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_areas
-- ----------------------------
DROP TABLE IF EXISTS `tb_areas`;
CREATE TABLE `tb_areas`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_areas_parent_id_bae67575`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省市区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_areas
-- ----------------------------
INSERT INTO `tb_areas` VALUES ('110000', '北京市', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110100', '北京市', '110000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110101', '东城区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110102', '西城区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110105', '朝阳区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110106', '丰台区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110107', '石景山区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110108', '海淀区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110109', '门头沟区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110111', '房山区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110112', '通州区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110113', '顺义区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110114', '昌平区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110115', '大兴区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110116', '怀柔区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110117', '平谷区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110118', '密云区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('110119', '延庆区', '110100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120000', '天津市', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120100', '天津市', '120000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120101', '和平区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120102', '河东区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120103', '河西区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120104', '南开区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120105', '河北区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120106', '红桥区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120110', '东丽区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120111', '西青区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120112', '津南区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120113', '北辰区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120114', '武清区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120115', '宝坻区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120116', '滨海新区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120117', '宁河区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120118', '静海区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('120119', '蓟州区', '120100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130000', '河北省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130100', '石家庄市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130102', '长安区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130104', '桥西区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130105', '新华区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130107', '井陉矿区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130108', '裕华区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130109', '藁城区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130110', '鹿泉区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130111', '栾城区', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130121', '井陉县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130123', '正定县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130125', '行唐县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130126', '灵寿县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130127', '高邑县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130128', '深泽县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130129', '赞皇县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130130', '无极县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130131', '平山县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130132', '元氏县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130133', '赵县', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130181', '辛集市', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130183', '晋州市', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130184', '新乐市', '130100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130200', '唐山市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130202', '路南区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130203', '路北区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130204', '古冶区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130205', '开平区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130207', '丰南区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130208', '丰润区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130209', '曹妃甸区', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130223', '滦县', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130224', '滦南县', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130225', '乐亭县', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130227', '迁西县', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130229', '玉田县', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130281', '遵化市', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130283', '迁安市', '130200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130300', '秦皇岛市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130302', '海港区', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130303', '山海关区', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130304', '北戴河区', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130306', '抚宁区', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130321', '青龙满族自治县', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130322', '昌黎县', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130324', '卢龙县', '130300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130400', '邯郸市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130402', '邯山区', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130403', '丛台区', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130404', '复兴区', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130406', '峰峰矿区', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130421', '邯郸县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130423', '临漳县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130424', '成安县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130425', '大名县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130426', '涉县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130427', '磁县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130428', '肥乡县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130429', '永年县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130430', '邱县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130431', '鸡泽县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130432', '广平县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130433', '馆陶县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130434', '魏县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130435', '曲周县', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130481', '武安市', '130400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130500', '邢台市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130502', '桥东区', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130503', '桥西区', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130521', '邢台县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130522', '临城县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130523', '内丘县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130524', '柏乡县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130525', '隆尧县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130526', '任县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130527', '南和县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130528', '宁晋县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130529', '巨鹿县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130530', '新河县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130531', '广宗县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130532', '平乡县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130533', '威县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130534', '清河县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130535', '临西县', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130581', '南宫市', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130582', '沙河市', '130500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130600', '保定市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130602', '竞秀区', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130606', '莲池区', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130607', '满城区', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130608', '清苑区', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130609', '徐水区', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130623', '涞水县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130624', '阜平县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130626', '定兴县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130627', '唐县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130628', '高阳县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130629', '容城县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130630', '涞源县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130631', '望都县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130632', '安新县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130633', '易县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130634', '曲阳县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130635', '蠡县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130636', '顺平县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130637', '博野县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130638', '雄县', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130681', '涿州市', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130682', '定州市', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130683', '安国市', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130684', '高碑店市', '130600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130700', '张家口市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130702', '桥东区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130703', '桥西区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130705', '宣化区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130706', '下花园区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130708', '万全区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130709', '崇礼区', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130722', '张北县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130723', '康保县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130724', '沽源县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130725', '尚义县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130726', '蔚县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130727', '阳原县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130728', '怀安县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130730', '怀来县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130731', '涿鹿县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130732', '赤城县', '130700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130800', '承德市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130802', '双桥区', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130803', '双滦区', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130804', '鹰手营子矿区', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130821', '承德县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130822', '兴隆县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130823', '平泉县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130824', '滦平县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130825', '隆化县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130826', '丰宁满族自治县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130827', '宽城满族自治县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130828', '围场满族蒙古族自治县', '130800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130900', '沧州市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130902', '新华区', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130903', '运河区', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130921', '沧县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130922', '青县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130923', '东光县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130924', '海兴县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130925', '盐山县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130926', '肃宁县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130927', '南皮县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130928', '吴桥县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130929', '献县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130930', '孟村回族自治县', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130981', '泊头市', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130982', '任丘市', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130983', '黄骅市', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('130984', '河间市', '130900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131000', '廊坊市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131002', '安次区', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131003', '广阳区', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131022', '固安县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131023', '永清县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131024', '香河县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131025', '大城县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131026', '文安县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131028', '大厂回族自治县', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131081', '霸州市', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131082', '三河市', '131000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131100', '衡水市', '130000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131102', '桃城区', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131103', '冀州区', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131121', '枣强县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131122', '武邑县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131123', '武强县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131124', '饶阳县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131125', '安平县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131126', '故城县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131127', '景县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131128', '阜城县', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('131182', '深州市', '131100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140000', '山西省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140100', '太原市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140105', '小店区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140106', '迎泽区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140107', '杏花岭区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140108', '尖草坪区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140109', '万柏林区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140110', '晋源区', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140121', '清徐县', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140122', '阳曲县', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140123', '娄烦县', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140181', '古交市', '140100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140200', '大同市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140202', '城区', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140203', '矿区', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140211', '南郊区', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140212', '新荣区', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140221', '阳高县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140222', '天镇县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140223', '广灵县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140224', '灵丘县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140225', '浑源县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140226', '左云县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140227', '大同县', '140200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140300', '阳泉市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140302', '城区', '140300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140303', '矿区', '140300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140311', '郊区', '140300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140321', '平定县', '140300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140322', '盂县', '140300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140400', '长治市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140402', '城区', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140411', '郊区', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140421', '长治县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140423', '襄垣县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140424', '屯留县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140425', '平顺县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140426', '黎城县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140427', '壶关县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140428', '长子县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140429', '武乡县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140430', '沁县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140431', '沁源县', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140481', '潞城市', '140400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140500', '晋城市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140502', '城区', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140521', '沁水县', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140522', '阳城县', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140524', '陵川县', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140525', '泽州县', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140581', '高平市', '140500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140600', '朔州市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140602', '朔城区', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140603', '平鲁区', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140621', '山阴县', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140622', '应县', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140623', '右玉县', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140624', '怀仁县', '140600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140700', '晋中市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140702', '榆次区', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140721', '榆社县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140722', '左权县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140723', '和顺县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140724', '昔阳县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140725', '寿阳县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140726', '太谷县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140727', '祁县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140728', '平遥县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140729', '灵石县', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140781', '介休市', '140700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140800', '运城市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140802', '盐湖区', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140821', '临猗县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140822', '万荣县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140823', '闻喜县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140824', '稷山县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140825', '新绛县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140826', '绛县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140827', '垣曲县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140828', '夏县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140829', '平陆县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140830', '芮城县', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140881', '永济市', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140882', '河津市', '140800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140900', '忻州市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140902', '忻府区', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140921', '定襄县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140922', '五台县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140923', '代县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140924', '繁峙县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140925', '宁武县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140926', '静乐县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140927', '神池县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140928', '五寨县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140929', '岢岚县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140930', '河曲县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140931', '保德县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140932', '偏关县', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('140981', '原平市', '140900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141000', '临汾市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141002', '尧都区', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141021', '曲沃县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141022', '翼城县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141023', '襄汾县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141024', '洪洞县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141025', '古县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141026', '安泽县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141027', '浮山县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141028', '吉县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141029', '乡宁县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141030', '大宁县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141031', '隰县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141032', '永和县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141033', '蒲县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141034', '汾西县', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141081', '侯马市', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141082', '霍州市', '141000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141100', '吕梁市', '140000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141102', '离石区', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141121', '文水县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141122', '交城县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141123', '兴县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141124', '临县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141125', '柳林县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141126', '石楼县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141127', '岚县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141128', '方山县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141129', '中阳县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141130', '交口县', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141181', '孝义市', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('141182', '汾阳市', '141100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150000', '内蒙古自治区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150100', '呼和浩特市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150102', '新城区', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150103', '回民区', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150104', '玉泉区', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150105', '赛罕区', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150121', '土默特左旗', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150122', '托克托县', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150123', '和林格尔县', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150124', '清水河县', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150125', '武川县', '150100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150200', '包头市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150202', '东河区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150203', '昆都仑区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150204', '青山区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150205', '石拐区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150206', '白云鄂博矿区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150207', '九原区', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150221', '土默特右旗', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150222', '固阳县', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150223', '达尔罕茂明安联合旗', '150200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150300', '乌海市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150302', '海勃湾区', '150300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150303', '海南区', '150300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150304', '乌达区', '150300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150400', '赤峰市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150402', '红山区', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150403', '元宝山区', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150404', '松山区', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150421', '阿鲁科尔沁旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150422', '巴林左旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150423', '巴林右旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150424', '林西县', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150425', '克什克腾旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150426', '翁牛特旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150428', '喀喇沁旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150429', '宁城县', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150430', '敖汉旗', '150400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150500', '通辽市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150502', '科尔沁区', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150521', '科尔沁左翼中旗', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150522', '科尔沁左翼后旗', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150523', '开鲁县', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150524', '库伦旗', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150525', '奈曼旗', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150526', '扎鲁特旗', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150581', '霍林郭勒市', '150500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150600', '鄂尔多斯市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150602', '东胜区', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150603', '康巴什区', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150621', '达拉特旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150622', '准格尔旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150623', '鄂托克前旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150624', '鄂托克旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150625', '杭锦旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150626', '乌审旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150627', '伊金霍洛旗', '150600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150700', '呼伦贝尔市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150702', '海拉尔区', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150703', '扎赉诺尔区', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150721', '阿荣旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150723', '鄂伦春自治旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150724', '鄂温克族自治旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150725', '陈巴尔虎旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150726', '新巴尔虎左旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150727', '新巴尔虎右旗', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150781', '满洲里市', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150782', '牙克石市', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150783', '扎兰屯市', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150784', '额尔古纳市', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150785', '根河市', '150700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150800', '巴彦淖尔市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150802', '临河区', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150821', '五原县', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150822', '磴口县', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150823', '乌拉特前旗', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150824', '乌拉特中旗', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150825', '乌拉特后旗', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150826', '杭锦后旗', '150800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150900', '乌兰察布市', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150902', '集宁区', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150921', '卓资县', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150922', '化德县', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150923', '商都县', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150924', '兴和县', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150925', '凉城县', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150926', '察哈尔右翼前旗', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150927', '察哈尔右翼中旗', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150928', '察哈尔右翼后旗', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150929', '四子王旗', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('150981', '丰镇市', '150900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152200', '兴安盟', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152201', '乌兰浩特市', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152202', '阿尔山市', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152221', '科尔沁右翼前旗', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152222', '科尔沁右翼中旗', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152223', '扎赉特旗', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152224', '突泉县', '152200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152500', '锡林郭勒盟', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152501', '二连浩特市', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152502', '锡林浩特市', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152522', '阿巴嘎旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152523', '苏尼特左旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152524', '苏尼特右旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152525', '东乌珠穆沁旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152526', '西乌珠穆沁旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152527', '太仆寺旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152528', '镶黄旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152529', '正镶白旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152530', '正蓝旗', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152531', '多伦县', '152500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152900', '阿拉善盟', '150000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152921', '阿拉善左旗', '152900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152922', '阿拉善右旗', '152900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('152923', '额济纳旗', '152900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210000', '辽宁省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210100', '沈阳市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210102', '和平区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210103', '沈河区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210104', '大东区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210105', '皇姑区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210106', '铁西区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210111', '苏家屯区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210112', '浑南区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210113', '沈北新区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210114', '于洪区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210115', '辽中区', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210123', '康平县', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210124', '法库县', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210181', '新民市', '210100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210200', '大连市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210202', '中山区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210203', '西岗区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210204', '沙河口区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210211', '甘井子区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210212', '旅顺口区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210213', '金州区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210214', '普兰店区', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210224', '长海县', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210281', '瓦房店市', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210283', '庄河市', '210200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210300', '鞍山市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210302', '铁东区', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210303', '铁西区', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210304', '立山区', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210311', '千山区', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210321', '台安县', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210323', '岫岩满族自治县', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210381', '海城市', '210300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210400', '抚顺市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210402', '新抚区', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210403', '东洲区', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210404', '望花区', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210411', '顺城区', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210421', '抚顺县', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210422', '新宾满族自治县', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210423', '清原满族自治县', '210400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210500', '本溪市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210502', '平山区', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210503', '溪湖区', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210504', '明山区', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210505', '南芬区', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210521', '本溪满族自治县', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210522', '桓仁满族自治县', '210500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210600', '丹东市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210602', '元宝区', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210603', '振兴区', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210604', '振安区', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210624', '宽甸满族自治县', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210681', '东港市', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210682', '凤城市', '210600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210700', '锦州市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210702', '古塔区', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210703', '凌河区', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210711', '太和区', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210726', '黑山县', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210727', '义县', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210781', '凌海市', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210782', '北镇市', '210700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210800', '营口市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210802', '站前区', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210803', '西市区', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210804', '鲅鱼圈区', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210811', '老边区', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210881', '盖州市', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210882', '大石桥市', '210800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210900', '阜新市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210902', '海州区', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210903', '新邱区', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210904', '太平区', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210905', '清河门区', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210911', '细河区', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210921', '阜新蒙古族自治县', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('210922', '彰武县', '210900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211000', '辽阳市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211002', '白塔区', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211003', '文圣区', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211004', '宏伟区', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211005', '弓长岭区', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211011', '太子河区', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211021', '辽阳县', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211081', '灯塔市', '211000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211100', '盘锦市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211102', '双台子区', '211100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211103', '兴隆台区', '211100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211104', '大洼区', '211100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211122', '盘山县', '211100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211200', '铁岭市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211202', '银州区', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211204', '清河区', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211221', '铁岭县', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211223', '西丰县', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211224', '昌图县', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211281', '调兵山市', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211282', '开原市', '211200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211300', '朝阳市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211302', '双塔区', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211303', '龙城区', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211321', '朝阳县', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211322', '建平县', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211381', '北票市', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211382', '凌源市', '211300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211400', '葫芦岛市', '210000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211402', '连山区', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211403', '龙港区', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211404', '南票区', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211421', '绥中县', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211422', '建昌县', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('211481', '兴城市', '211400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220000', '吉林省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220100', '长春市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220102', '南关区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220103', '宽城区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220104', '朝阳区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220105', '二道区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220106', '绿园区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220112', '双阳区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220113', '九台区', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220122', '农安县', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220182', '榆树市', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220183', '德惠市', '220100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220200', '吉林市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220202', '昌邑区', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220203', '龙潭区', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220204', '船营区', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220211', '丰满区', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220221', '永吉县', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220281', '蛟河市', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220282', '桦甸市', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220283', '舒兰市', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220284', '磐石市', '220200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220300', '四平市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220302', '铁西区', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220303', '铁东区', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220322', '梨树县', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220323', '伊通满族自治县', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220381', '公主岭市', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220382', '双辽市', '220300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220400', '辽源市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220402', '龙山区', '220400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220403', '西安区', '220400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220421', '东丰县', '220400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220422', '东辽县', '220400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220500', '通化市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220502', '东昌区', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220503', '二道江区', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220521', '通化县', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220523', '辉南县', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220524', '柳河县', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220581', '梅河口市', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220582', '集安市', '220500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220600', '白山市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220602', '浑江区', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220605', '江源区', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220621', '抚松县', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220622', '靖宇县', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220623', '长白朝鲜族自治县', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220681', '临江市', '220600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220700', '松原市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220702', '宁江区', '220700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220722', '长岭县', '220700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220723', '乾安县', '220700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220781', '扶余市', '220700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220800', '白城市', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220802', '洮北区', '220800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220821', '镇赉县', '220800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220822', '通榆县', '220800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220881', '洮南市', '220800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('220882', '大安市', '220800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222400', '延边朝鲜族自治州', '220000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222401', '延吉市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222402', '图们市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222403', '敦化市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222404', '珲春市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222405', '龙井市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222406', '和龙市', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222424', '汪清县', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('222426', '安图县', '222400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230000', '黑龙江省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230100', '哈尔滨市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230102', '道里区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230103', '南岗区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230104', '道外区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230108', '平房区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230109', '松北区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230110', '香坊区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230111', '呼兰区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230112', '阿城区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230113', '双城区', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230123', '依兰县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230124', '方正县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230125', '宾县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230126', '巴彦县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230127', '木兰县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230128', '通河县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230129', '延寿县', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230183', '尚志市', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230184', '五常市', '230100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230200', '齐齐哈尔市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230202', '龙沙区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230203', '建华区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230204', '铁锋区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230205', '昂昂溪区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230206', '富拉尔基区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230207', '碾子山区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230208', '梅里斯达斡尔族区', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230221', '龙江县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230223', '依安县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230224', '泰来县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230225', '甘南县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230227', '富裕县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230229', '克山县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230230', '克东县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230231', '拜泉县', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230281', '讷河市', '230200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230300', '鸡西市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230302', '鸡冠区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230303', '恒山区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230304', '滴道区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230305', '梨树区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230306', '城子河区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230307', '麻山区', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230321', '鸡东县', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230381', '虎林市', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230382', '密山市', '230300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230400', '鹤岗市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230402', '向阳区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230403', '工农区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230404', '南山区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230405', '兴安区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230406', '东山区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230407', '兴山区', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230421', '萝北县', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230422', '绥滨县', '230400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230500', '双鸭山市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230502', '尖山区', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230503', '岭东区', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230505', '四方台区', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230506', '宝山区', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230521', '集贤县', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230522', '友谊县', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230523', '宝清县', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230524', '饶河县', '230500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230600', '大庆市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230602', '萨尔图区', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230603', '龙凤区', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230604', '让胡路区', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230605', '红岗区', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230606', '大同区', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230621', '肇州县', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230622', '肇源县', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230623', '林甸县', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230700', '伊春市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230702', '伊春区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230703', '南岔区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230704', '友好区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230705', '西林区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230706', '翠峦区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230707', '新青区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230708', '美溪区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230709', '金山屯区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230710', '五营区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230711', '乌马河区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230712', '汤旺河区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230713', '带岭区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230714', '乌伊岭区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230715', '红星区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230716', '上甘岭区', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230722', '嘉荫县', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230781', '铁力市', '230700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230800', '佳木斯市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230803', '向阳区', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230804', '前进区', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230805', '东风区', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230811', '郊区', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230822', '桦南县', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230826', '桦川县', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230828', '汤原县', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230881', '同江市', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230882', '富锦市', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230883', '抚远市', '230800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230900', '七台河市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230902', '新兴区', '230900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230903', '桃山区', '230900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230904', '茄子河区', '230900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('230921', '勃利县', '230900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231000', '牡丹江市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231002', '东安区', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231003', '阳明区', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231004', '爱民区', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231005', '西安区', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231025', '林口县', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231081', '绥芬河市', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231083', '海林市', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231084', '宁安市', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231085', '穆棱市', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231086', '东宁市', '231000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231100', '黑河市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231102', '爱辉区', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231121', '嫩江县', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231123', '逊克县', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231124', '孙吴县', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231181', '北安市', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231182', '五大连池市', '231100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231200', '绥化市', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231202', '北林区', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231221', '望奎县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231222', '兰西县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231223', '青冈县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231224', '庆安县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231225', '明水县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231226', '绥棱县', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231281', '安达市', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231282', '肇东市', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('231283', '海伦市', '231200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('232700', '大兴安岭地区', '230000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('232721', '呼玛县', '232700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('232722', '塔河县', '232700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('232723', '漠河县', '232700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310000', '上海市', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310100', '上海市', '310000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310101', '黄浦区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310104', '徐汇区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310105', '长宁区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310106', '静安区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310107', '普陀区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310109', '虹口区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310110', '杨浦区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310112', '闵行区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310113', '宝山区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310114', '嘉定区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310115', '浦东新区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310116', '金山区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310117', '松江区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310118', '青浦区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310120', '奉贤区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('310151', '崇明区', '310100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320000', '江苏省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320100', '南京市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320102', '玄武区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320104', '秦淮区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320105', '建邺区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320106', '鼓楼区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320111', '浦口区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320113', '栖霞区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320114', '雨花台区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320115', '江宁区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320116', '六合区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320117', '溧水区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320118', '高淳区', '320100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320200', '无锡市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320205', '锡山区', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320206', '惠山区', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320211', '滨湖区', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320213', '梁溪区', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320214', '新吴区', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320281', '江阴市', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320282', '宜兴市', '320200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320300', '徐州市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320302', '鼓楼区', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320303', '云龙区', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320305', '贾汪区', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320311', '泉山区', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320312', '铜山区', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320321', '丰县', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320322', '沛县', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320324', '睢宁县', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320381', '新沂市', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320382', '邳州市', '320300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320400', '常州市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320402', '天宁区', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320404', '钟楼区', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320411', '新北区', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320412', '武进区', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320413', '金坛区', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320481', '溧阳市', '320400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320500', '苏州市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320505', '虎丘区', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320506', '吴中区', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320507', '相城区', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320508', '姑苏区', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320509', '吴江区', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320581', '常熟市', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320582', '张家港市', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320583', '昆山市', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320585', '太仓市', '320500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320600', '南通市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320602', '崇川区', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320611', '港闸区', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320612', '通州区', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320621', '海安县', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320623', '如东县', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320681', '启东市', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320682', '如皋市', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320684', '海门市', '320600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320700', '连云港市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320703', '连云区', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320706', '海州区', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320707', '赣榆区', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320722', '东海县', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320723', '灌云县', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320724', '灌南县', '320700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320800', '淮安市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320803', '淮安区', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320804', '淮阴区', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320812', '清江浦区', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320813', '洪泽区', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320826', '涟水县', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320830', '盱眙县', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320831', '金湖县', '320800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320900', '盐城市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320902', '亭湖区', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320903', '盐都区', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320904', '大丰区', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320921', '响水县', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320922', '滨海县', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320923', '阜宁县', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320924', '射阳县', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320925', '建湖县', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('320981', '东台市', '320900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321000', '扬州市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321002', '广陵区', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321003', '邗江区', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321012', '江都区', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321023', '宝应县', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321081', '仪征市', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321084', '高邮市', '321000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321100', '镇江市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321102', '京口区', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321111', '润州区', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321112', '丹徒区', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321181', '丹阳市', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321182', '扬中市', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321183', '句容市', '321100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321200', '泰州市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321202', '海陵区', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321203', '高港区', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321204', '姜堰区', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321281', '兴化市', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321282', '靖江市', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321283', '泰兴市', '321200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321300', '宿迁市', '320000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321302', '宿城区', '321300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321311', '宿豫区', '321300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321322', '沭阳县', '321300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321323', '泗阳县', '321300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('321324', '泗洪县', '321300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330000', '浙江省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330100', '杭州市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330102', '上城区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330103', '下城区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330104', '江干区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330105', '拱墅区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330106', '西湖区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330108', '滨江区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330109', '萧山区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330110', '余杭区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330111', '富阳区', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330122', '桐庐县', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330127', '淳安县', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330182', '建德市', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330185', '临安市', '330100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330200', '宁波市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330203', '海曙区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330204', '江东区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330205', '江北区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330206', '北仑区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330211', '镇海区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330212', '鄞州区', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330225', '象山县', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330226', '宁海县', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330281', '余姚市', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330282', '慈溪市', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330283', '奉化市', '330200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330300', '温州市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330302', '鹿城区', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330303', '龙湾区', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330304', '瓯海区', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330305', '洞头区', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330324', '永嘉县', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330326', '平阳县', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330327', '苍南县', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330328', '文成县', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330329', '泰顺县', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330381', '瑞安市', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330382', '乐清市', '330300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330400', '嘉兴市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330402', '南湖区', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330411', '秀洲区', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330421', '嘉善县', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330424', '海盐县', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330481', '海宁市', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330482', '平湖市', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330483', '桐乡市', '330400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330500', '湖州市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330502', '吴兴区', '330500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330503', '南浔区', '330500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330521', '德清县', '330500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330522', '长兴县', '330500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330523', '安吉县', '330500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330600', '绍兴市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330602', '越城区', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330603', '柯桥区', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330604', '上虞区', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330624', '新昌县', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330681', '诸暨市', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330683', '嵊州市', '330600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330700', '金华市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330702', '婺城区', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330703', '金东区', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330723', '武义县', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330726', '浦江县', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330727', '磐安县', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330781', '兰溪市', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330782', '义乌市', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330783', '东阳市', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330784', '永康市', '330700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330800', '衢州市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330802', '柯城区', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330803', '衢江区', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330822', '常山县', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330824', '开化县', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330825', '龙游县', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330881', '江山市', '330800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330900', '舟山市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330902', '定海区', '330900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330903', '普陀区', '330900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330921', '岱山县', '330900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('330922', '嵊泗县', '330900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331000', '台州市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331002', '椒江区', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331003', '黄岩区', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331004', '路桥区', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331021', '玉环县', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331022', '三门县', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331023', '天台县', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331024', '仙居县', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331081', '温岭市', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331082', '临海市', '331000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331100', '丽水市', '330000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331102', '莲都区', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331121', '青田县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331122', '缙云县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331123', '遂昌县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331124', '松阳县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331125', '云和县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331126', '庆元县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331127', '景宁畲族自治县', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('331181', '龙泉市', '331100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340000', '安徽省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340100', '合肥市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340102', '瑶海区', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340103', '庐阳区', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340104', '蜀山区', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340111', '包河区', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340121', '长丰县', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340122', '肥东县', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340123', '肥西县', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340124', '庐江县', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340181', '巢湖市', '340100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340200', '芜湖市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340202', '镜湖区', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340203', '弋江区', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340207', '鸠江区', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340208', '三山区', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340221', '芜湖县', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340222', '繁昌县', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340223', '南陵县', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340225', '无为县', '340200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340300', '蚌埠市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340302', '龙子湖区', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340303', '蚌山区', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340304', '禹会区', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340311', '淮上区', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340321', '怀远县', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340322', '五河县', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340323', '固镇县', '340300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340400', '淮南市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340402', '大通区', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340403', '田家庵区', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340404', '谢家集区', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340405', '八公山区', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340406', '潘集区', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340421', '凤台县', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340422', '寿县', '340400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340500', '马鞍山市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340503', '花山区', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340504', '雨山区', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340506', '博望区', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340521', '当涂县', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340522', '含山县', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340523', '和县', '340500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340600', '淮北市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340602', '杜集区', '340600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340603', '相山区', '340600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340604', '烈山区', '340600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340621', '濉溪县', '340600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340700', '铜陵市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340705', '铜官区', '340700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340706', '义安区', '340700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340711', '郊区', '340700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340722', '枞阳县', '340700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340800', '安庆市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340802', '迎江区', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340803', '大观区', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340811', '宜秀区', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340822', '怀宁县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340824', '潜山县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340825', '太湖县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340826', '宿松县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340827', '望江县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340828', '岳西县', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('340881', '桐城市', '340800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341000', '黄山市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341002', '屯溪区', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341003', '黄山区', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341004', '徽州区', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341021', '歙县', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341022', '休宁县', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341023', '黟县', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341024', '祁门县', '341000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341100', '滁州市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341102', '琅琊区', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341103', '南谯区', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341122', '来安县', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341124', '全椒县', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341125', '定远县', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341126', '凤阳县', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341181', '天长市', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341182', '明光市', '341100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341200', '阜阳市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341202', '颍州区', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341203', '颍东区', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341204', '颍泉区', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341221', '临泉县', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341222', '太和县', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341225', '阜南县', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341226', '颍上县', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341282', '界首市', '341200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341300', '宿州市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341302', '埇桥区', '341300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341321', '砀山县', '341300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341322', '萧县', '341300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341323', '灵璧县', '341300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341324', '泗县', '341300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341500', '六安市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341502', '金安区', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341503', '裕安区', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341504', '叶集区', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341522', '霍邱县', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341523', '舒城县', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341524', '金寨县', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341525', '霍山县', '341500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341600', '亳州市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341602', '谯城区', '341600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341621', '涡阳县', '341600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341622', '蒙城县', '341600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341623', '利辛县', '341600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341700', '池州市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341702', '贵池区', '341700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341721', '东至县', '341700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341722', '石台县', '341700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341723', '青阳县', '341700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341800', '宣城市', '340000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341802', '宣州区', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341821', '郎溪县', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341822', '广德县', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341823', '泾县', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341824', '绩溪县', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341825', '旌德县', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('341881', '宁国市', '341800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350000', '福建省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350100', '福州市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350102', '鼓楼区', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350103', '台江区', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350104', '仓山区', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350105', '马尾区', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350111', '晋安区', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350121', '闽侯县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350122', '连江县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350123', '罗源县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350124', '闽清县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350125', '永泰县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350128', '平潭县', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350181', '福清市', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350182', '长乐市', '350100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350200', '厦门市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350203', '思明区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350205', '海沧区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350206', '湖里区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350211', '集美区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350212', '同安区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350213', '翔安区', '350200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350300', '莆田市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350302', '城厢区', '350300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350303', '涵江区', '350300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350304', '荔城区', '350300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350305', '秀屿区', '350300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350322', '仙游县', '350300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350400', '三明市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350402', '梅列区', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350403', '三元区', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350421', '明溪县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350423', '清流县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350424', '宁化县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350425', '大田县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350426', '尤溪县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350427', '沙县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350428', '将乐县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350429', '泰宁县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350430', '建宁县', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350481', '永安市', '350400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350500', '泉州市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350502', '鲤城区', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350503', '丰泽区', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350504', '洛江区', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350505', '泉港区', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350521', '惠安县', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350524', '安溪县', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350525', '永春县', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350526', '德化县', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350527', '金门县', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350581', '石狮市', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350582', '晋江市', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350583', '南安市', '350500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350600', '漳州市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350602', '芗城区', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350603', '龙文区', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350622', '云霄县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350623', '漳浦县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350624', '诏安县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350625', '长泰县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350626', '东山县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350627', '南靖县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350628', '平和县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350629', '华安县', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350681', '龙海市', '350600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350700', '南平市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350702', '延平区', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350703', '建阳区', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350721', '顺昌县', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350722', '浦城县', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350723', '光泽县', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350724', '松溪县', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350725', '政和县', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350781', '邵武市', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350782', '武夷山市', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350783', '建瓯市', '350700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350800', '龙岩市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350802', '新罗区', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350803', '永定区', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350821', '长汀县', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350823', '上杭县', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350824', '武平县', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350825', '连城县', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350881', '漳平市', '350800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350900', '宁德市', '350000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350902', '蕉城区', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350921', '霞浦县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350922', '古田县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350923', '屏南县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350924', '寿宁县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350925', '周宁县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350926', '柘荣县', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350981', '福安市', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('350982', '福鼎市', '350900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360000', '江西省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360100', '南昌市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360102', '东湖区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360103', '西湖区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360104', '青云谱区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360105', '湾里区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360111', '青山湖区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360112', '新建区', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360121', '南昌县', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360123', '安义县', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360124', '进贤县', '360100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360200', '景德镇市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360202', '昌江区', '360200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360203', '珠山区', '360200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360222', '浮梁县', '360200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360281', '乐平市', '360200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360300', '萍乡市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360302', '安源区', '360300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360313', '湘东区', '360300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360321', '莲花县', '360300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360322', '上栗县', '360300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360323', '芦溪县', '360300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360400', '九江市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360402', '濂溪区', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360403', '浔阳区', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360421', '九江县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360423', '武宁县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360424', '修水县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360425', '永修县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360426', '德安县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360428', '都昌县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360429', '湖口县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360430', '彭泽县', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360481', '瑞昌市', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360482', '共青城市', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360483', '庐山市', '360400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360500', '新余市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360502', '渝水区', '360500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360521', '分宜县', '360500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360600', '鹰潭市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360602', '月湖区', '360600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360622', '余江县', '360600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360681', '贵溪市', '360600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360700', '赣州市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360702', '章贡区', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360703', '南康区', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360721', '赣县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360722', '信丰县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360723', '大余县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360724', '上犹县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360725', '崇义县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360726', '安远县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360727', '龙南县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360728', '定南县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360729', '全南县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360730', '宁都县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360731', '于都县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360732', '兴国县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360733', '会昌县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360734', '寻乌县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360735', '石城县', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360781', '瑞金市', '360700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360800', '吉安市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360802', '吉州区', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360803', '青原区', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360821', '吉安县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360822', '吉水县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360823', '峡江县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360824', '新干县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360825', '永丰县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360826', '泰和县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360827', '遂川县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360828', '万安县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360829', '安福县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360830', '永新县', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360881', '井冈山市', '360800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360900', '宜春市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360902', '袁州区', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360921', '奉新县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360922', '万载县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360923', '上高县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360924', '宜丰县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360925', '靖安县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360926', '铜鼓县', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360981', '丰城市', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360982', '樟树市', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('360983', '高安市', '360900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361000', '抚州市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361002', '临川区', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361021', '南城县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361022', '黎川县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361023', '南丰县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361024', '崇仁县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361025', '乐安县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361026', '宜黄县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361027', '金溪县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361028', '资溪县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361029', '东乡县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361030', '广昌县', '361000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361100', '上饶市', '360000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361102', '信州区', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361103', '广丰区', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361121', '上饶县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361123', '玉山县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361124', '铅山县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361125', '横峰县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361126', '弋阳县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361127', '余干县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361128', '鄱阳县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361129', '万年县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361130', '婺源县', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('361181', '德兴市', '361100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370000', '山东省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370100', '济南市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370102', '历下区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370103', '市中区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370104', '槐荫区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370105', '天桥区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370112', '历城区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370113', '长清区', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370124', '平阴县', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370125', '济阳县', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370126', '商河县', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370181', '章丘市', '370100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370200', '青岛市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370202', '市南区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370203', '市北区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370211', '黄岛区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370212', '崂山区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370213', '李沧区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370214', '城阳区', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370281', '胶州市', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370282', '即墨市', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370283', '平度市', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370285', '莱西市', '370200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370300', '淄博市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370302', '淄川区', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370303', '张店区', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370304', '博山区', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370305', '临淄区', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370306', '周村区', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370321', '桓台县', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370322', '高青县', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370323', '沂源县', '370300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370400', '枣庄市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370402', '市中区', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370403', '薛城区', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370404', '峄城区', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370405', '台儿庄区', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370406', '山亭区', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370481', '滕州市', '370400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370500', '东营市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370502', '东营区', '370500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370503', '河口区', '370500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370505', '垦利区', '370500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370522', '利津县', '370500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370523', '广饶县', '370500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370600', '烟台市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370602', '芝罘区', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370611', '福山区', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370612', '牟平区', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370613', '莱山区', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370634', '长岛县', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370681', '龙口市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370682', '莱阳市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370683', '莱州市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370684', '蓬莱市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370685', '招远市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370686', '栖霞市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370687', '海阳市', '370600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370700', '潍坊市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370702', '潍城区', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370703', '寒亭区', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370704', '坊子区', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370705', '奎文区', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370724', '临朐县', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370725', '昌乐县', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370781', '青州市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370782', '诸城市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370783', '寿光市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370784', '安丘市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370785', '高密市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370786', '昌邑市', '370700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370800', '济宁市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370811', '任城区', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370812', '兖州区', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370826', '微山县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370827', '鱼台县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370828', '金乡县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370829', '嘉祥县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370830', '汶上县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370831', '泗水县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370832', '梁山县', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370881', '曲阜市', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370883', '邹城市', '370800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370900', '泰安市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370902', '泰山区', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370911', '岱岳区', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370921', '宁阳县', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370923', '东平县', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370982', '新泰市', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('370983', '肥城市', '370900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371000', '威海市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371002', '环翠区', '371000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371003', '文登区', '371000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371082', '荣成市', '371000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371083', '乳山市', '371000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371100', '日照市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371102', '东港区', '371100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371103', '岚山区', '371100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371121', '五莲县', '371100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371122', '莒县', '371100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371200', '莱芜市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371202', '莱城区', '371200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371203', '钢城区', '371200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371300', '临沂市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371302', '兰山区', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371311', '罗庄区', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371312', '河东区', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371321', '沂南县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371322', '郯城县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371323', '沂水县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371324', '兰陵县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371325', '费县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371326', '平邑县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371327', '莒南县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371328', '蒙阴县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371329', '临沭县', '371300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371400', '德州市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371402', '德城区', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371403', '陵城区', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371422', '宁津县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371423', '庆云县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371424', '临邑县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371425', '齐河县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371426', '平原县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371427', '夏津县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371428', '武城县', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371481', '乐陵市', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371482', '禹城市', '371400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371500', '聊城市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371502', '东昌府区', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371521', '阳谷县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371522', '莘县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371523', '茌平县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371524', '东阿县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371525', '冠县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371526', '高唐县', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371581', '临清市', '371500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371600', '滨州市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371602', '滨城区', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371603', '沾化区', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371621', '惠民县', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371622', '阳信县', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371623', '无棣县', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371625', '博兴县', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371626', '邹平县', '371600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371700', '菏泽市', '370000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371702', '牡丹区', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371703', '定陶区', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371721', '曹县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371722', '单县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371723', '成武县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371724', '巨野县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371725', '郓城县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371726', '鄄城县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('371728', '东明县', '371700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410000', '河南省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410100', '郑州市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410102', '中原区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410103', '二七区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410104', '管城回族区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410105', '金水区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410106', '上街区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410108', '惠济区', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410122', '中牟县', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410181', '巩义市', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410182', '荥阳市', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410183', '新密市', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410184', '新郑市', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410185', '登封市', '410100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410200', '开封市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410202', '龙亭区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410203', '顺河回族区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410204', '鼓楼区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410205', '禹王台区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410211', '金明区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410212', '祥符区', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410221', '杞县', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410222', '通许县', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410223', '尉氏县', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410225', '兰考县', '410200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410300', '洛阳市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410302', '老城区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410303', '西工区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410304', '瀍河回族区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410305', '涧西区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410306', '吉利区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410311', '洛龙区', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410322', '孟津县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410323', '新安县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410324', '栾川县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410325', '嵩县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410326', '汝阳县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410327', '宜阳县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410328', '洛宁县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410329', '伊川县', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410381', '偃师市', '410300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410400', '平顶山市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410402', '新华区', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410403', '卫东区', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410404', '石龙区', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410411', '湛河区', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410421', '宝丰县', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410422', '叶县', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410423', '鲁山县', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410425', '郏县', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410481', '舞钢市', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410482', '汝州市', '410400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410500', '安阳市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410502', '文峰区', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410503', '北关区', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410505', '殷都区', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410506', '龙安区', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410522', '安阳县', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410523', '汤阴县', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410526', '滑县', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410527', '内黄县', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410581', '林州市', '410500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410600', '鹤壁市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410602', '鹤山区', '410600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410603', '山城区', '410600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410611', '淇滨区', '410600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410621', '浚县', '410600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410622', '淇县', '410600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410700', '新乡市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410702', '红旗区', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410703', '卫滨区', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410704', '凤泉区', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410711', '牧野区', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410721', '新乡县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410724', '获嘉县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410725', '原阳县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410726', '延津县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410727', '封丘县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410728', '长垣县', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410781', '卫辉市', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410782', '辉县市', '410700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410800', '焦作市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410802', '解放区', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410803', '中站区', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410804', '马村区', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410811', '山阳区', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410821', '修武县', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410822', '博爱县', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410823', '武陟县', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410825', '温县', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410882', '沁阳市', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410883', '孟州市', '410800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410900', '濮阳市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410902', '华龙区', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410922', '清丰县', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410923', '南乐县', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410926', '范县', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410927', '台前县', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('410928', '濮阳县', '410900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411000', '许昌市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411002', '魏都区', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411023', '许昌县', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411024', '鄢陵县', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411025', '襄城县', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411081', '禹州市', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411082', '长葛市', '411000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411100', '漯河市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411102', '源汇区', '411100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411103', '郾城区', '411100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411104', '召陵区', '411100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411121', '舞阳县', '411100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411122', '临颍县', '411100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411200', '三门峡市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411202', '湖滨区', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411203', '陕州区', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411221', '渑池县', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411224', '卢氏县', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411281', '义马市', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411282', '灵宝市', '411200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411300', '南阳市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411302', '宛城区', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411303', '卧龙区', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411321', '南召县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411322', '方城县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411323', '西峡县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411324', '镇平县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411325', '内乡县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411326', '淅川县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411327', '社旗县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411328', '唐河县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411329', '新野县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411330', '桐柏县', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411381', '邓州市', '411300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411400', '商丘市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411402', '梁园区', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411403', '睢阳区', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411421', '民权县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411422', '睢县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411423', '宁陵县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411424', '柘城县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411425', '虞城县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411426', '夏邑县', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411481', '永城市', '411400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411500', '信阳市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411502', '浉河区', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411503', '平桥区', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411521', '罗山县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411522', '光山县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411523', '新县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411524', '商城县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411525', '固始县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411526', '潢川县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411527', '淮滨县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411528', '息县', '411500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411600', '周口市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411602', '川汇区', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411621', '扶沟县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411622', '西华县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411623', '商水县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411624', '沈丘县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411625', '郸城县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411626', '淮阳县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411627', '太康县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411628', '鹿邑县', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411681', '项城市', '411600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411700', '驻马店市', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411702', '驿城区', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411721', '西平县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411722', '上蔡县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411723', '平舆县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411724', '正阳县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411725', '确山县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411726', '泌阳县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411727', '汝南县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411728', '遂平县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('411729', '新蔡县', '411700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('419000', '省直辖县级行政区划', '410000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('419001', '济源市', '419000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420000', '湖北省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420100', '武汉市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420102', '江岸区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420103', '江汉区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420104', '硚口区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420105', '汉阳区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420106', '武昌区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420107', '青山区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420111', '洪山区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420112', '东西湖区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420113', '汉南区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420114', '蔡甸区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420115', '江夏区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420116', '黄陂区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420117', '新洲区', '420100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420200', '黄石市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420202', '黄石港区', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420203', '西塞山区', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420204', '下陆区', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420205', '铁山区', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420222', '阳新县', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420281', '大冶市', '420200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420300', '十堰市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420302', '茅箭区', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420303', '张湾区', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420304', '郧阳区', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420322', '郧西县', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420323', '竹山县', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420324', '竹溪县', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420325', '房县', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420381', '丹江口市', '420300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420500', '宜昌市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420502', '西陵区', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420503', '伍家岗区', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420504', '点军区', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420505', '猇亭区', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420506', '夷陵区', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420525', '远安县', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420526', '兴山县', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420527', '秭归县', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420528', '长阳土家族自治县', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420529', '五峰土家族自治县', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420581', '宜都市', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420582', '当阳市', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420583', '枝江市', '420500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420600', '襄阳市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420602', '襄城区', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420606', '樊城区', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420607', '襄州区', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420624', '南漳县', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420625', '谷城县', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420626', '保康县', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420682', '老河口市', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420683', '枣阳市', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420684', '宜城市', '420600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420700', '鄂州市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420702', '梁子湖区', '420700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420703', '华容区', '420700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420704', '鄂城区', '420700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420800', '荆门市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420802', '东宝区', '420800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420804', '掇刀区', '420800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420821', '京山县', '420800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420822', '沙洋县', '420800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420881', '钟祥市', '420800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420900', '孝感市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420902', '孝南区', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420921', '孝昌县', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420922', '大悟县', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420923', '云梦县', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420981', '应城市', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420982', '安陆市', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('420984', '汉川市', '420900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421000', '荆州市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421002', '沙市区', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421003', '荆州区', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421022', '公安县', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421023', '监利县', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421024', '江陵县', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421081', '石首市', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421083', '洪湖市', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421087', '松滋市', '421000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421100', '黄冈市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421102', '黄州区', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421121', '团风县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421122', '红安县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421123', '罗田县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421124', '英山县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421125', '浠水县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421126', '蕲春县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421127', '黄梅县', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421181', '麻城市', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421182', '武穴市', '421100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421200', '咸宁市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421202', '咸安区', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421221', '嘉鱼县', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421222', '通城县', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421223', '崇阳县', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421224', '通山县', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421281', '赤壁市', '421200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421300', '随州市', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421303', '曾都区', '421300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421321', '随县', '421300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('421381', '广水市', '421300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422800', '恩施土家族苗族自治州', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422801', '恩施市', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422802', '利川市', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422822', '建始县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422823', '巴东县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422825', '宣恩县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422826', '咸丰县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422827', '来凤县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('422828', '鹤峰县', '422800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('429000', '省直辖县级行政区划', '420000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('429004', '仙桃市', '429000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('429005', '潜江市', '429000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('429006', '天门市', '429000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('429021', '神农架林区', '429000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430000', '湖南省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430100', '长沙市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430102', '芙蓉区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430103', '天心区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430104', '岳麓区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430105', '开福区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430111', '雨花区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430112', '望城区', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430121', '长沙县', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430124', '宁乡县', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430181', '浏阳市', '430100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430200', '株洲市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430202', '荷塘区', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430203', '芦淞区', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430204', '石峰区', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430211', '天元区', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430221', '株洲县', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430223', '攸县', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430224', '茶陵县', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430225', '炎陵县', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430281', '醴陵市', '430200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430300', '湘潭市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430302', '雨湖区', '430300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430304', '岳塘区', '430300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430321', '湘潭县', '430300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430381', '湘乡市', '430300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430382', '韶山市', '430300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430400', '衡阳市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430405', '珠晖区', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430406', '雁峰区', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430407', '石鼓区', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430408', '蒸湘区', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430412', '南岳区', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430421', '衡阳县', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430422', '衡南县', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430423', '衡山县', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430424', '衡东县', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430426', '祁东县', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430481', '耒阳市', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430482', '常宁市', '430400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430500', '邵阳市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430502', '双清区', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430503', '大祥区', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430511', '北塔区', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430521', '邵东县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430522', '新邵县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430523', '邵阳县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430524', '隆回县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430525', '洞口县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430527', '绥宁县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430528', '新宁县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430529', '城步苗族自治县', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430581', '武冈市', '430500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430600', '岳阳市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430602', '岳阳楼区', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430603', '云溪区', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430611', '君山区', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430621', '岳阳县', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430623', '华容县', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430624', '湘阴县', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430626', '平江县', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430681', '汨罗市', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430682', '临湘市', '430600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430700', '常德市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430702', '武陵区', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430703', '鼎城区', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430721', '安乡县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430722', '汉寿县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430723', '澧县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430724', '临澧县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430725', '桃源县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430726', '石门县', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430781', '津市市', '430700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430800', '张家界市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430802', '永定区', '430800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430811', '武陵源区', '430800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430821', '慈利县', '430800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430822', '桑植县', '430800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430900', '益阳市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430902', '资阳区', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430903', '赫山区', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430921', '南县', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430922', '桃江县', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430923', '安化县', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('430981', '沅江市', '430900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431000', '郴州市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431002', '北湖区', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431003', '苏仙区', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431021', '桂阳县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431022', '宜章县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431023', '永兴县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431024', '嘉禾县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431025', '临武县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431026', '汝城县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431027', '桂东县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431028', '安仁县', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431081', '资兴市', '431000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431100', '永州市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431102', '零陵区', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431103', '冷水滩区', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431121', '祁阳县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431122', '东安县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431123', '双牌县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431124', '道县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431125', '江永县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431126', '宁远县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431127', '蓝山县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431128', '新田县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431129', '江华瑶族自治县', '431100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431200', '怀化市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431202', '鹤城区', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431221', '中方县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431222', '沅陵县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431223', '辰溪县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431224', '溆浦县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431225', '会同县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431226', '麻阳苗族自治县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431227', '新晃侗族自治县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431228', '芷江侗族自治县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431229', '靖州苗族侗族自治县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431230', '通道侗族自治县', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431281', '洪江市', '431200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431300', '娄底市', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431302', '娄星区', '431300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431321', '双峰县', '431300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431322', '新化县', '431300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431381', '冷水江市', '431300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('431382', '涟源市', '431300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433100', '湘西土家族苗族自治州', '430000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433101', '吉首市', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433122', '泸溪县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433123', '凤凰县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433124', '花垣县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433125', '保靖县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433126', '古丈县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433127', '永顺县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('433130', '龙山县', '433100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440000', '广东省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440100', '广州市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440103', '荔湾区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440104', '越秀区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440105', '海珠区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440106', '天河区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440111', '白云区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440112', '黄埔区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440113', '番禺区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440114', '花都区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440115', '南沙区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440117', '从化区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440118', '增城区', '440100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440200', '韶关市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440203', '武江区', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440204', '浈江区', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440205', '曲江区', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440222', '始兴县', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440224', '仁化县', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440229', '翁源县', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440232', '乳源瑶族自治县', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440233', '新丰县', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440281', '乐昌市', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440282', '南雄市', '440200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440300', '深圳市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440303', '罗湖区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440304', '福田区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440305', '南山区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440306', '宝安区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440307', '龙岗区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440308', '盐田区', '440300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440400', '珠海市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440402', '香洲区', '440400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440403', '斗门区', '440400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440404', '金湾区', '440400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440500', '汕头市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440507', '龙湖区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440511', '金平区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440512', '濠江区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440513', '潮阳区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440514', '潮南区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440515', '澄海区', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440523', '南澳县', '440500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440600', '佛山市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440604', '禅城区', '440600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440605', '南海区', '440600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440606', '顺德区', '440600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440607', '三水区', '440600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440608', '高明区', '440600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440700', '江门市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440703', '蓬江区', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440704', '江海区', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440705', '新会区', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440781', '台山市', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440783', '开平市', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440784', '鹤山市', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440785', '恩平市', '440700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440800', '湛江市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440802', '赤坎区', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440803', '霞山区', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440804', '坡头区', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440811', '麻章区', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440823', '遂溪县', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440825', '徐闻县', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440881', '廉江市', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440882', '雷州市', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440883', '吴川市', '440800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440900', '茂名市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440902', '茂南区', '440900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440904', '电白区', '440900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440981', '高州市', '440900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440982', '化州市', '440900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('440983', '信宜市', '440900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441200', '肇庆市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441202', '端州区', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441203', '鼎湖区', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441204', '高要区', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441223', '广宁县', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441224', '怀集县', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441225', '封开县', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441226', '德庆县', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441284', '四会市', '441200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441300', '惠州市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441302', '惠城区', '441300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441303', '惠阳区', '441300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441322', '博罗县', '441300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441323', '惠东县', '441300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441324', '龙门县', '441300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441400', '梅州市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441402', '梅江区', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441403', '梅县区', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441422', '大埔县', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441423', '丰顺县', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441424', '五华县', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441426', '平远县', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441427', '蕉岭县', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441481', '兴宁市', '441400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441500', '汕尾市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441502', '城区', '441500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441521', '海丰县', '441500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441523', '陆河县', '441500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441581', '陆丰市', '441500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441600', '河源市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441602', '源城区', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441621', '紫金县', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441622', '龙川县', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441623', '连平县', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441624', '和平县', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441625', '东源县', '441600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441700', '阳江市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441702', '江城区', '441700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441704', '阳东区', '441700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441721', '阳西县', '441700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441781', '阳春市', '441700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441800', '清远市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441802', '清城区', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441803', '清新区', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441821', '佛冈县', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441823', '阳山县', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441825', '连山壮族瑶族自治县', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441826', '连南瑶族自治县', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441881', '英德市', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441882', '连州市', '441800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('441900', '东莞市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('442000', '中山市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445100', '潮州市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445102', '湘桥区', '445100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445103', '潮安区', '445100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445122', '饶平县', '445100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445200', '揭阳市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445202', '榕城区', '445200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445203', '揭东区', '445200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445222', '揭西县', '445200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445224', '惠来县', '445200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445281', '普宁市', '445200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445300', '云浮市', '440000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445302', '云城区', '445300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445303', '云安区', '445300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445321', '新兴县', '445300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445322', '郁南县', '445300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('445381', '罗定市', '445300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450000', '广西壮族自治区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450100', '南宁市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450102', '兴宁区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450103', '青秀区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450105', '江南区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450107', '西乡塘区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450108', '良庆区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450109', '邕宁区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450110', '武鸣区', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450123', '隆安县', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450124', '马山县', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450125', '上林县', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450126', '宾阳县', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450127', '横县', '450100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450200', '柳州市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450202', '城中区', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450203', '鱼峰区', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450204', '柳南区', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450205', '柳北区', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450206', '柳江区', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450222', '柳城县', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450223', '鹿寨县', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450224', '融安县', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450225', '融水苗族自治县', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450226', '三江侗族自治县', '450200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450300', '桂林市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450302', '秀峰区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450303', '叠彩区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450304', '象山区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450305', '七星区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450311', '雁山区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450312', '临桂区', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450321', '阳朔县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450323', '灵川县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450324', '全州县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450325', '兴安县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450326', '永福县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450327', '灌阳县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450328', '龙胜各族自治县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450329', '资源县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450330', '平乐县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450331', '荔浦县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450332', '恭城瑶族自治县', '450300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450400', '梧州市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450403', '万秀区', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450405', '长洲区', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450406', '龙圩区', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450421', '苍梧县', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450422', '藤县', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450423', '蒙山县', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450481', '岑溪市', '450400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450500', '北海市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450502', '海城区', '450500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450503', '银海区', '450500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450512', '铁山港区', '450500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450521', '合浦县', '450500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450600', '防城港市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450602', '港口区', '450600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450603', '防城区', '450600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450621', '上思县', '450600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450681', '东兴市', '450600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450700', '钦州市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450702', '钦南区', '450700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450703', '钦北区', '450700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450721', '灵山县', '450700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450722', '浦北县', '450700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450800', '贵港市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450802', '港北区', '450800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450803', '港南区', '450800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450804', '覃塘区', '450800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450821', '平南县', '450800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450881', '桂平市', '450800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450900', '玉林市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450902', '玉州区', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450903', '福绵区', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450921', '容县', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450922', '陆川县', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450923', '博白县', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450924', '兴业县', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('450981', '北流市', '450900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451000', '百色市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451002', '右江区', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451021', '田阳县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451022', '田东县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451023', '平果县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451024', '德保县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451026', '那坡县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451027', '凌云县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451028', '乐业县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451029', '田林县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451030', '西林县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451031', '隆林各族自治县', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451081', '靖西市', '451000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451100', '贺州市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451102', '八步区', '451100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451103', '平桂区', '451100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451121', '昭平县', '451100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451122', '钟山县', '451100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451123', '富川瑶族自治县', '451100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451200', '河池市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451202', '金城江区', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451221', '南丹县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451222', '天峨县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451223', '凤山县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451224', '东兰县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451225', '罗城仫佬族自治县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451226', '环江毛南族自治县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451227', '巴马瑶族自治县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451228', '都安瑶族自治县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451229', '大化瑶族自治县', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451281', '宜州市', '451200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451300', '来宾市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451302', '兴宾区', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451321', '忻城县', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451322', '象州县', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451323', '武宣县', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451324', '金秀瑶族自治县', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451381', '合山市', '451300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451400', '崇左市', '450000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451402', '江州区', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451421', '扶绥县', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451422', '宁明县', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451423', '龙州县', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451424', '大新县', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451425', '天等县', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('451481', '凭祥市', '451400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460000', '海南省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460100', '海口市', '460000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460105', '秀英区', '460100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460106', '龙华区', '460100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460107', '琼山区', '460100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460108', '美兰区', '460100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460200', '三亚市', '460000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460202', '海棠区', '460200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460203', '吉阳区', '460200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460204', '天涯区', '460200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460205', '崖州区', '460200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460300', '三沙市', '460000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('460400', '儋州市', '460000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469000', '省直辖县级行政区划', '460000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469001', '五指山市', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469002', '琼海市', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469005', '文昌市', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469006', '万宁市', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469007', '东方市', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469021', '定安县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469022', '屯昌县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469023', '澄迈县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469024', '临高县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469025', '白沙黎族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469026', '昌江黎族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469027', '乐东黎族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469028', '陵水黎族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469029', '保亭黎族苗族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('469030', '琼中黎族苗族自治县', '469000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500000', '重庆市', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500100', '重庆市', '500000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500101', '万州区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500102', '涪陵区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500103', '渝中区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500104', '大渡口区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500105', '江北区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500106', '沙坪坝区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500107', '九龙坡区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500108', '南岸区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500109', '北碚区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500110', '綦江区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500111', '大足区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500112', '渝北区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500113', '巴南区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500114', '黔江区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500115', '长寿区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500116', '江津区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500117', '合川区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500118', '永川区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500119', '南川区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500120', '璧山区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500151', '铜梁区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500152', '潼南区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500153', '荣昌区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500154', '开州区', '500100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500200', '县', '500000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500228', '梁平县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500229', '城口县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500230', '丰都县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500231', '垫江县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500232', '武隆县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500233', '忠县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500235', '云阳县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500236', '奉节县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500237', '巫山县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500238', '巫溪县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500240', '石柱土家族自治县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500241', '秀山土家族苗族自治县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500242', '酉阳土家族苗族自治县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('500243', '彭水苗族土家族自治县', '500200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510000', '四川省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510100', '成都市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510104', '锦江区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510105', '青羊区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510106', '金牛区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510107', '武侯区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510108', '成华区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510112', '龙泉驿区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510113', '青白江区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510114', '新都区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510115', '温江区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510116', '双流区', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510121', '金堂县', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510124', '郫县', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510129', '大邑县', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510131', '蒲江县', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510132', '新津县', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510181', '都江堰市', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510182', '彭州市', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510183', '邛崃市', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510184', '崇州市', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510185', '简阳市', '510100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510300', '自贡市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510302', '自流井区', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510303', '贡井区', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510304', '大安区', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510311', '沿滩区', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510321', '荣县', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510322', '富顺县', '510300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510400', '攀枝花市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510402', '东区', '510400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510403', '西区', '510400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510411', '仁和区', '510400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510421', '米易县', '510400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510422', '盐边县', '510400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510500', '泸州市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510502', '江阳区', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510503', '纳溪区', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510504', '龙马潭区', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510521', '泸县', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510522', '合江县', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510524', '叙永县', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510525', '古蔺县', '510500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510600', '德阳市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510603', '旌阳区', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510623', '中江县', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510626', '罗江县', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510681', '广汉市', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510682', '什邡市', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510683', '绵竹市', '510600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510700', '绵阳市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510703', '涪城区', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510704', '游仙区', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510705', '安州区', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510722', '三台县', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510723', '盐亭县', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510725', '梓潼县', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510726', '北川羌族自治县', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510727', '平武县', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510781', '江油市', '510700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510800', '广元市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510802', '利州区', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510811', '昭化区', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510812', '朝天区', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510821', '旺苍县', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510822', '青川县', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510823', '剑阁县', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510824', '苍溪县', '510800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510900', '遂宁市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510903', '船山区', '510900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510904', '安居区', '510900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510921', '蓬溪县', '510900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510922', '射洪县', '510900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('510923', '大英县', '510900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511000', '内江市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511002', '市中区', '511000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511011', '东兴区', '511000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511024', '威远县', '511000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511025', '资中县', '511000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511028', '隆昌县', '511000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511100', '乐山市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511102', '市中区', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511111', '沙湾区', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511112', '五通桥区', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511113', '金口河区', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511123', '犍为县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511124', '井研县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511126', '夹江县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511129', '沐川县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511132', '峨边彝族自治县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511133', '马边彝族自治县', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511181', '峨眉山市', '511100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511300', '南充市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511302', '顺庆区', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511303', '高坪区', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511304', '嘉陵区', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511321', '南部县', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511322', '营山县', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511323', '蓬安县', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511324', '仪陇县', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511325', '西充县', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511381', '阆中市', '511300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511400', '眉山市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511402', '东坡区', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511403', '彭山区', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511421', '仁寿县', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511423', '洪雅县', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511424', '丹棱县', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511425', '青神县', '511400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511500', '宜宾市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511502', '翠屏区', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511503', '南溪区', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511521', '宜宾县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511523', '江安县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511524', '长宁县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511525', '高县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511526', '珙县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511527', '筠连县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511528', '兴文县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511529', '屏山县', '511500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511600', '广安市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511602', '广安区', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511603', '前锋区', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511621', '岳池县', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511622', '武胜县', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511623', '邻水县', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511681', '华蓥市', '511600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511700', '达州市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511702', '通川区', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511703', '达川区', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511722', '宣汉县', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511723', '开江县', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511724', '大竹县', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511725', '渠县', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511781', '万源市', '511700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511800', '雅安市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511802', '雨城区', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511803', '名山区', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511822', '荥经县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511823', '汉源县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511824', '石棉县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511825', '天全县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511826', '芦山县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511827', '宝兴县', '511800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511900', '巴中市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511902', '巴州区', '511900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511903', '恩阳区', '511900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511921', '通江县', '511900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511922', '南江县', '511900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('511923', '平昌县', '511900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('512000', '资阳市', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('512002', '雁江区', '512000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('512021', '安岳县', '512000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('512022', '乐至县', '512000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513200', '阿坝藏族羌族自治州', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513201', '马尔康市', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513221', '汶川县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513222', '理县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513223', '茂县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513224', '松潘县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513225', '九寨沟县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513226', '金川县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513227', '小金县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513228', '黑水县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513230', '壤塘县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513231', '阿坝县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513232', '若尔盖县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513233', '红原县', '513200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513300', '甘孜藏族自治州', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513301', '康定市', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513322', '泸定县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513323', '丹巴县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513324', '九龙县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513325', '雅江县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513326', '道孚县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513327', '炉霍县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513328', '甘孜县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513329', '新龙县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513330', '德格县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513331', '白玉县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513332', '石渠县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513333', '色达县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513334', '理塘县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513335', '巴塘县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513336', '乡城县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513337', '稻城县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513338', '得荣县', '513300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513400', '凉山彝族自治州', '510000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513401', '西昌市', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513422', '木里藏族自治县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513423', '盐源县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513424', '德昌县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513425', '会理县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513426', '会东县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513427', '宁南县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513428', '普格县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513429', '布拖县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513430', '金阳县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513431', '昭觉县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513432', '喜德县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513433', '冕宁县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513434', '越西县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513435', '甘洛县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513436', '美姑县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('513437', '雷波县', '513400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520000', '贵州省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520100', '贵阳市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520102', '南明区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520103', '云岩区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520111', '花溪区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520112', '乌当区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520113', '白云区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520115', '观山湖区', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520121', '开阳县', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520122', '息烽县', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520123', '修文县', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520181', '清镇市', '520100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520200', '六盘水市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520201', '钟山区', '520200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520203', '六枝特区', '520200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520221', '水城县', '520200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520222', '盘县', '520200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520300', '遵义市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520302', '红花岗区', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520303', '汇川区', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520304', '播州区', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520322', '桐梓县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520323', '绥阳县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520324', '正安县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520325', '道真仡佬族苗族自治县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520326', '务川仡佬族苗族自治县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520327', '凤冈县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520328', '湄潭县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520329', '余庆县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520330', '习水县', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520381', '赤水市', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520382', '仁怀市', '520300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520400', '安顺市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520402', '西秀区', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520403', '平坝区', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520422', '普定县', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520423', '镇宁布依族苗族自治县', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520424', '关岭布依族苗族自治县', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520425', '紫云苗族布依族自治县', '520400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520500', '毕节市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520502', '七星关区', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520521', '大方县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520522', '黔西县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520523', '金沙县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520524', '织金县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520525', '纳雍县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520526', '威宁彝族回族苗族自治县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520527', '赫章县', '520500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520600', '铜仁市', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520602', '碧江区', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520603', '万山区', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520621', '江口县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520622', '玉屏侗族自治县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520623', '石阡县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520624', '思南县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520625', '印江土家族苗族自治县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520626', '德江县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520627', '沿河土家族自治县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('520628', '松桃苗族自治县', '520600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522300', '黔西南布依族苗族自治州', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522301', '兴义市', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522322', '兴仁县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522323', '普安县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522324', '晴隆县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522325', '贞丰县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522326', '望谟县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522327', '册亨县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522328', '安龙县', '522300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522600', '黔东南苗族侗族自治州', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522601', '凯里市', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522622', '黄平县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522623', '施秉县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522624', '三穗县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522625', '镇远县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522626', '岑巩县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522627', '天柱县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522628', '锦屏县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522629', '剑河县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522630', '台江县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522631', '黎平县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522632', '榕江县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522633', '从江县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522634', '雷山县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522635', '麻江县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522636', '丹寨县', '522600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522700', '黔南布依族苗族自治州', '520000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522701', '都匀市', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522702', '福泉市', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522722', '荔波县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522723', '贵定县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522725', '瓮安县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522726', '独山县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522727', '平塘县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522728', '罗甸县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522729', '长顺县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522730', '龙里县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522731', '惠水县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('522732', '三都水族自治县', '522700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530000', '云南省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530100', '昆明市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530102', '五华区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530103', '盘龙区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530111', '官渡区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530112', '西山区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530113', '东川区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530114', '呈贡区', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530122', '晋宁县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530124', '富民县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530125', '宜良县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530126', '石林彝族自治县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530127', '嵩明县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530128', '禄劝彝族苗族自治县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530129', '寻甸回族彝族自治县', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530181', '安宁市', '530100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530300', '曲靖市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530302', '麒麟区', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530303', '沾益区', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530321', '马龙县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530322', '陆良县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530323', '师宗县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530324', '罗平县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530325', '富源县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530326', '会泽县', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530381', '宣威市', '530300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530400', '玉溪市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530402', '红塔区', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530403', '江川区', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530422', '澄江县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530423', '通海县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530424', '华宁县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530425', '易门县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530426', '峨山彝族自治县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530427', '新平彝族傣族自治县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530500', '保山市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530502', '隆阳区', '530500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530521', '施甸县', '530500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530523', '龙陵县', '530500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530524', '昌宁县', '530500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530581', '腾冲市', '530500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530600', '昭通市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530602', '昭阳区', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530621', '鲁甸县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530622', '巧家县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530623', '盐津县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530624', '大关县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530625', '永善县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530626', '绥江县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530627', '镇雄县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530628', '彝良县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530629', '威信县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530630', '水富县', '530600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530700', '丽江市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530702', '古城区', '530700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530721', '玉龙纳西族自治县', '530700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530722', '永胜县', '530700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530723', '华坪县', '530700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530724', '宁蒗彝族自治县', '530700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530800', '普洱市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530802', '思茅区', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530822', '墨江哈尼族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530823', '景东彝族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530824', '景谷傣族彝族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530826', '江城哈尼族彝族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530828', '澜沧拉祜族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530829', '西盟佤族自治县', '530800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530900', '临沧市', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530902', '临翔区', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530921', '凤庆县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530922', '云县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530923', '永德县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530924', '镇康县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530926', '耿马傣族佤族自治县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('530927', '沧源佤族自治县', '530900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532300', '楚雄彝族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532301', '楚雄市', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532322', '双柏县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532323', '牟定县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532324', '南华县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532325', '姚安县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532326', '大姚县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532327', '永仁县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532328', '元谋县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532329', '武定县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532331', '禄丰县', '532300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532500', '红河哈尼族彝族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532501', '个旧市', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532502', '开远市', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532503', '蒙自市', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532504', '弥勒市', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532523', '屏边苗族自治县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532524', '建水县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532525', '石屏县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532527', '泸西县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532528', '元阳县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532529', '红河县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532531', '绿春县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532532', '河口瑶族自治县', '532500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532600', '文山壮族苗族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532601', '文山市', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532622', '砚山县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532623', '西畴县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532624', '麻栗坡县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532625', '马关县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532626', '丘北县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532627', '广南县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532628', '富宁县', '532600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532800', '西双版纳傣族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532801', '景洪市', '532800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532822', '勐海县', '532800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532823', '勐腊县', '532800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532900', '大理白族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532901', '大理市', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532922', '漾濞彝族自治县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532923', '祥云县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532924', '宾川县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532925', '弥渡县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532926', '南涧彝族自治县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532927', '巍山彝族回族自治县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532928', '永平县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532929', '云龙县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532930', '洱源县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532931', '剑川县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('532932', '鹤庆县', '532900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533100', '德宏傣族景颇族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533102', '瑞丽市', '533100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533103', '芒市', '533100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533122', '梁河县', '533100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533123', '盈江县', '533100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533124', '陇川县', '533100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533300', '怒江傈僳族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533301', '泸水市', '533300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533323', '福贡县', '533300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533324', '贡山独龙族怒族自治县', '533300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533325', '兰坪白族普米族自治县', '533300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533400', '迪庆藏族自治州', '530000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533401', '香格里拉市', '533400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533422', '德钦县', '533400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('533423', '维西傈僳族自治县', '533400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540000', '西藏自治区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540100', '拉萨市', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540102', '城关区', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540103', '堆龙德庆区', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540121', '林周县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540122', '当雄县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540123', '尼木县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540124', '曲水县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540126', '达孜县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540127', '墨竹工卡县', '540100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540200', '日喀则市', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540202', '桑珠孜区', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540221', '南木林县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540222', '江孜县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540223', '定日县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540224', '萨迦县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540225', '拉孜县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540226', '昂仁县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540227', '谢通门县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540228', '白朗县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540229', '仁布县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540230', '康马县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540231', '定结县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540232', '仲巴县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540233', '亚东县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540234', '吉隆县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540235', '聂拉木县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540236', '萨嘎县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540237', '岗巴县', '540200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540300', '昌都市', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540302', '卡若区', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540321', '江达县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540322', '贡觉县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540323', '类乌齐县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540324', '丁青县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540325', '察雅县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540326', '八宿县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540327', '左贡县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540328', '芒康县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540329', '洛隆县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540330', '边坝县', '540300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540400', '林芝市', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540402', '巴宜区', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540421', '工布江达县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540422', '米林县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540423', '墨脱县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540424', '波密县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540425', '察隅县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540426', '朗县', '540400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540500', '山南市', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540502', '乃东区', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540521', '扎囊县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540522', '贡嘎县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540523', '桑日县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540524', '琼结县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540525', '曲松县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540526', '措美县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540527', '洛扎县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540528', '加查县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540529', '隆子县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540530', '错那县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('540531', '浪卡子县', '540500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542400', '那曲地区', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542421', '那曲县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542422', '嘉黎县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542423', '比如县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542424', '聂荣县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542425', '安多县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542426', '申扎县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542427', '索县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542428', '班戈县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542429', '巴青县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542430', '尼玛县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542431', '双湖县', '542400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542500', '阿里地区', '540000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542521', '普兰县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542522', '札达县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542523', '噶尔县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542524', '日土县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542525', '革吉县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542526', '改则县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('542527', '措勤县', '542500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610000', '陕西省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610100', '西安市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610102', '新城区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610103', '碑林区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610104', '莲湖区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610111', '灞桥区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610112', '未央区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610113', '雁塔区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610114', '阎良区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610115', '临潼区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610116', '长安区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610117', '高陵区', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610122', '蓝田县', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610124', '周至县', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610125', '户县', '610100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610200', '铜川市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610202', '王益区', '610200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610203', '印台区', '610200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610204', '耀州区', '610200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610222', '宜君县', '610200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610300', '宝鸡市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610302', '渭滨区', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610303', '金台区', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610304', '陈仓区', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610322', '凤翔县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610323', '岐山县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610324', '扶风县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610326', '眉县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610327', '陇县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610328', '千阳县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610329', '麟游县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610330', '凤县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610331', '太白县', '610300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610400', '咸阳市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610402', '秦都区', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610403', '杨陵区', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610404', '渭城区', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610422', '三原县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610423', '泾阳县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610424', '乾县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610425', '礼泉县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610426', '永寿县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610427', '彬县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610428', '长武县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610429', '旬邑县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610430', '淳化县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610431', '武功县', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610481', '兴平市', '610400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610500', '渭南市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610502', '临渭区', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610503', '华州区', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610522', '潼关县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610523', '大荔县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610524', '合阳县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610525', '澄城县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610526', '蒲城县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610527', '白水县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610528', '富平县', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610581', '韩城市', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610582', '华阴市', '610500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610600', '延安市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610602', '宝塔区', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610603', '安塞区', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610621', '延长县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610622', '延川县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610623', '子长县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610625', '志丹县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610626', '吴起县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610627', '甘泉县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610628', '富县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610629', '洛川县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610630', '宜川县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610631', '黄龙县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610632', '黄陵县', '610600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610700', '汉中市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610702', '汉台区', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610721', '南郑县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610722', '城固县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610723', '洋县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610724', '西乡县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610725', '勉县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610726', '宁强县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610727', '略阳县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610728', '镇巴县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610729', '留坝县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610730', '佛坪县', '610700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610800', '榆林市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610802', '榆阳区', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610803', '横山区', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610821', '神木县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610822', '府谷县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610824', '靖边县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610825', '定边县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610826', '绥德县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610827', '米脂县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610828', '佳县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610829', '吴堡县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610830', '清涧县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610831', '子洲县', '610800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610900', '安康市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610902', '汉滨区', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610921', '汉阴县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610922', '石泉县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610923', '宁陕县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610924', '紫阳县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610925', '岚皋县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610926', '平利县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610927', '镇坪县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610928', '旬阳县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('610929', '白河县', '610900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611000', '商洛市', '610000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611002', '商州区', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611021', '洛南县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611022', '丹凤县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611023', '商南县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611024', '山阳县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611025', '镇安县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('611026', '柞水县', '611000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620000', '甘肃省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620100', '兰州市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620102', '城关区', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620103', '七里河区', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620104', '西固区', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620105', '安宁区', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620111', '红古区', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620121', '永登县', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620122', '皋兰县', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620123', '榆中县', '620100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620200', '嘉峪关市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620300', '金昌市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620302', '金川区', '620300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620321', '永昌县', '620300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620400', '白银市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620402', '白银区', '620400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620403', '平川区', '620400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620421', '靖远县', '620400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620422', '会宁县', '620400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620423', '景泰县', '620400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620500', '天水市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620502', '秦州区', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620503', '麦积区', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620521', '清水县', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620522', '秦安县', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620523', '甘谷县', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620524', '武山县', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620525', '张家川回族自治县', '620500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620600', '武威市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620602', '凉州区', '620600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620621', '民勤县', '620600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620622', '古浪县', '620600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620623', '天祝藏族自治县', '620600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620700', '张掖市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620702', '甘州区', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620721', '肃南裕固族自治县', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620722', '民乐县', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620723', '临泽县', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620724', '高台县', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620725', '山丹县', '620700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620800', '平凉市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620802', '崆峒区', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620821', '泾川县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620822', '灵台县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620823', '崇信县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620824', '华亭县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620825', '庄浪县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620826', '静宁县', '620800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620900', '酒泉市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620902', '肃州区', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620921', '金塔县', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620922', '瓜州县', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620923', '肃北蒙古族自治县', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620924', '阿克塞哈萨克族自治县', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620981', '玉门市', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('620982', '敦煌市', '620900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621000', '庆阳市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621002', '西峰区', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621021', '庆城县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621022', '环县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621023', '华池县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621024', '合水县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621025', '正宁县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621026', '宁县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621027', '镇原县', '621000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621100', '定西市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621102', '安定区', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621121', '通渭县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621122', '陇西县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621123', '渭源县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621124', '临洮县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621125', '漳县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621126', '岷县', '621100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621200', '陇南市', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621202', '武都区', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621221', '成县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621222', '文县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621223', '宕昌县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621224', '康县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621225', '西和县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621226', '礼县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621227', '徽县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('621228', '两当县', '621200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622900', '临夏回族自治州', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622901', '临夏市', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622921', '临夏县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622922', '康乐县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622923', '永靖县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622924', '广河县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622925', '和政县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622926', '东乡族自治县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623000', '甘南藏族自治州', '620000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623001', '合作市', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623021', '临潭县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623022', '卓尼县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623023', '舟曲县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623024', '迭部县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623025', '玛曲县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623026', '碌曲县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('623027', '夏河县', '623000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630000', '青海省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630100', '西宁市', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630102', '城东区', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630103', '城中区', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630104', '城西区', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630105', '城北区', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630121', '大通回族土族自治县', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630122', '湟中县', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630123', '湟源县', '630100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630200', '海东市', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630202', '乐都区', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630203', '平安区', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630222', '民和回族土族自治县', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630223', '互助土族自治县', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630224', '化隆回族自治县', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('630225', '循化撒拉族自治县', '630200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632200', '海北藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632221', '门源回族自治县', '632200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632222', '祁连县', '632200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632223', '海晏县', '632200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632224', '刚察县', '632200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632300', '黄南藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632321', '同仁县', '632300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632322', '尖扎县', '632300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632323', '泽库县', '632300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632324', '河南蒙古族自治县', '632300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632500', '海南藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632521', '共和县', '632500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632522', '同德县', '632500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632523', '贵德县', '632500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632524', '兴海县', '632500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632525', '贵南县', '632500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632600', '果洛藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632621', '玛沁县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632622', '班玛县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632623', '甘德县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632624', '达日县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632625', '久治县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632626', '玛多县', '632600', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632700', '玉树藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632701', '玉树市', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632722', '杂多县', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632723', '称多县', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632724', '治多县', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632725', '囊谦县', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632726', '曲麻莱县', '632700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632800', '海西蒙古族藏族自治州', '630000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632801', '格尔木市', '632800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632802', '德令哈市', '632800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632821', '乌兰县', '632800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632822', '都兰县', '632800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('632823', '天峻县', '632800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640000', '宁夏回族自治区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640100', '银川市', '640000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640104', '兴庆区', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640105', '西夏区', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640106', '金凤区', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640121', '永宁县', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640122', '贺兰县', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640181', '灵武市', '640100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640200', '石嘴山市', '640000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640202', '大武口区', '640200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640205', '惠农区', '640200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640221', '平罗县', '640200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640300', '吴忠市', '640000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640302', '利通区', '640300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640303', '红寺堡区', '640300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640323', '盐池县', '640300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640324', '同心县', '640300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640381', '青铜峡市', '640300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640400', '固原市', '640000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640402', '原州区', '640400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640422', '西吉县', '640400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640423', '隆德县', '640400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640424', '泾源县', '640400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640425', '彭阳县', '640400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640500', '中卫市', '640000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640502', '沙坡头区', '640500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640521', '中宁县', '640500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('640522', '海原县', '640500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650000', '新疆维吾尔自治区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650100', '乌鲁木齐市', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650102', '天山区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650103', '沙依巴克区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650104', '新市区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650105', '水磨沟区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650106', '头屯河区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650107', '达坂城区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650109', '米东区', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650121', '乌鲁木齐县', '650100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650200', '克拉玛依市', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650202', '独山子区', '650200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650203', '克拉玛依区', '650200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650204', '白碱滩区', '650200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650205', '乌尔禾区', '650200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650400', '吐鲁番市', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650402', '高昌区', '650400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650421', '鄯善县', '650400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650422', '托克逊县', '650400', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650500', '哈密市', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650502', '伊州区', '650500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650521', '巴里坤哈萨克自治县', '650500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('650522', '伊吾县', '650500', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652300', '昌吉回族自治州', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652301', '昌吉市', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652302', '阜康市', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652323', '呼图壁县', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652324', '玛纳斯县', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652325', '奇台县', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652327', '吉木萨尔县', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652328', '木垒哈萨克自治县', '652300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652700', '博尔塔拉蒙古自治州', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652701', '博乐市', '652700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652702', '阿拉山口市', '652700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652722', '精河县', '652700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652723', '温泉县', '652700', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652800', '巴音郭楞蒙古自治州', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652801', '库尔勒市', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652822', '轮台县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652823', '尉犁县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652824', '若羌县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652825', '且末县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652826', '焉耆回族自治县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652827', '和静县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652828', '和硕县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652829', '博湖县', '652800', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652900', '阿克苏地区', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652901', '阿克苏市', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652922', '温宿县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652923', '库车县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652924', '沙雅县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652925', '新和县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652926', '拜城县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652927', '乌什县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652928', '阿瓦提县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('652929', '柯坪县', '652900', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653001', '阿图什市', '653000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653022', '阿克陶县', '653000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653023', '阿合奇县', '653000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653024', '乌恰县', '653000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653100', '喀什地区', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653101', '喀什市', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653121', '疏附县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653122', '疏勒县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653123', '英吉沙县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653124', '泽普县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653125', '莎车县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653126', '叶城县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653127', '麦盖提县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653128', '岳普湖县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653129', '伽师县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653130', '巴楚县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653200', '和田地区', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653201', '和田市', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653221', '和田县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653222', '墨玉县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653223', '皮山县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653224', '洛浦县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653225', '策勒县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653226', '于田县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('653227', '民丰县', '653200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654000', '伊犁哈萨克自治州', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654002', '伊宁市', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654003', '奎屯市', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654004', '霍尔果斯市', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654021', '伊宁县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654022', '察布查尔锡伯自治县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654023', '霍城县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654024', '巩留县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654025', '新源县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654026', '昭苏县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654027', '特克斯县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654028', '尼勒克县', '654000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654200', '塔城地区', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654201', '塔城市', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654202', '乌苏市', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654221', '额敏县', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654223', '沙湾县', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654224', '托里县', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654225', '裕民县', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654226', '和布克赛尔蒙古自治县', '654200', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654300', '阿勒泰地区', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654301', '阿勒泰市', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654321', '布尔津县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654322', '富蕴县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654323', '福海县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654324', '哈巴河县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654325', '青河县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('654326', '吉木乃县', '654300', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659000', '自治区直辖县级行政区划', '650000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659001', '石河子市', '659000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659002', '阿拉尔市', '659000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659003', '图木舒克市', '659000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659004', '五家渠市', '659000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('659006', '铁门关市', '659000', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('710000', '台湾省', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('810000', '香港特别行政区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_areas` VALUES ('820000', '澳门特别行政区', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_brand`;
CREATE TABLE `tb_goods_brand`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `default_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` smallint(0) UNSIGNED NOT NULL,
  `category_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_brand_category_id_02d8306e_fk_tb_goods_category_id`(`category_id`) USING BTREE,
  INDEX `tb_goods_brand_creator_id_034490f8`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_brand_category_id_02d8306e_fk_tb_goods_category_id` FOREIGN KEY (`category_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `default_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` smallint(0) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_category_parent_id_5abc16fa_fk_tb_goods_category_id`(`parent_id`) USING BTREE,
  INDEX `tb_goods_category_creator_id_dc28d487`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_category_parent_id_5abc16fa_fk_tb_goods_category_id` FOREIGN KEY (`parent_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_coupon
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_coupon`;
CREATE TABLE `tb_goods_coupon`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `caption` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` int(0) NOT NULL,
  `total_num` int(0) NOT NULL,
  `received_num` int(0) NOT NULL,
  `used_num` int(0) NOT NULL,
  `is_permanent` tinyint(1) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `is_condition` tinyint(1) NOT NULL,
  `use_min_price` decimal(10, 2) NOT NULL,
  `start_time` date NULL DEFAULT NULL,
  `end_time` date NULL DEFAULT NULL,
  `valid_begin_date` date NULL DEFAULT NULL,
  `valid_end_date` date NULL DEFAULT NULL,
  `coupon_expiretime` int(0) NOT NULL,
  `receive_type` smallint(0) NOT NULL,
  `coupon_type` smallint(0) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_coupon_creator_id_5ede45ac`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_coupon_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_coupon_record`;
CREATE TABLE `tb_goods_coupon_record`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `used_time` datetime(6) NULL DEFAULT NULL,
  `receive_time` datetime(6) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `coupon_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_coupon_record_coupon_id_45c28b4b_fk_tb_goods_coupon_id`(`coupon_id`) USING BTREE,
  INDEX `tb_goods_coupon_record_user_id_34aaa577_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  INDEX `tb_goods_coupon_record_creator_id_9fb5ffca`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_coupon_record_coupon_id_45c28b4b_fk_tb_goods_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `tb_goods_coupon` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_goods_coupon_record_user_id_34aaa577_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_coupon_record
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku`;
CREATE TABLE `tb_goods_sku`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL,
  `shop_price` decimal(10, 2) NULL DEFAULT NULL,
  `market_price` decimal(10, 2) NULL DEFAULT NULL,
  `cost_price` decimal(10, 2) NULL DEFAULT NULL,
  `stock` int(0) NOT NULL,
  `unite` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sales` int(0) NULL DEFAULT NULL,
  `default_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_launched` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_sku_spu_id_4461d223_fk_tb_goods_spu_id`(`spu_id`) USING BTREE,
  INDEX `tb_goods_sku_creator_id_a17c462b`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_sku_spu_id_4461d223_fk_tb_goods_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `tb_goods_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_sku_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku_image`;
CREATE TABLE `tb_goods_sku_image`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` smallint(0) UNSIGNED NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sku_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_sku_image_sku_id_a82c1e92_fk_tb_goods_sku_id`(`sku_id`) USING BTREE,
  INDEX `tb_goods_sku_image_creator_id_90a1f537`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_sku_image_sku_id_a82c1e92_fk_tb_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `tb_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_sku_image
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_sku_specification
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku_specification`;
CREATE TABLE `tb_goods_sku_specification`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sku_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spec_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_sku_specifi_option_id_dec442f7_fk_tb_goods_`(`option_id`) USING BTREE,
  INDEX `tb_goods_sku_specification_sku_id_cc4f8bc7_fk_tb_goods_sku_id`(`sku_id`) USING BTREE,
  INDEX `tb_goods_sku_specifi_spec_id_d53fc09e_fk_tb_goods_`(`spec_id`) USING BTREE,
  INDEX `tb_goods_sku_specification_creator_id_770697b2`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_sku_specifi_option_id_dec442f7_fk_tb_goods_` FOREIGN KEY (`option_id`) REFERENCES `tb_goods_spu_specification_option` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_goods_sku_specifi_spec_id_d53fc09e_fk_tb_goods_` FOREIGN KEY (`spec_id`) REFERENCES `tb_goods_spu_specification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_goods_sku_specification_sku_id_cc4f8bc7_fk_tb_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `tb_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_sku_specification
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_spec_template
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_spec_template`;
CREATE TABLE `tb_goods_spec_template`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `spec` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_spec_template_creator_id_416c26a4`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_spec_template
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_spu
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_spu`;
CREATE TABLE `tb_goods_spu`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sub_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spec_type` int(0) UNSIGNED NOT NULL,
  `default_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_list` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL,
  `sales` int(0) NOT NULL,
  `stock` int(0) NOT NULL,
  `unit` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comments` int(0) NULL DEFAULT NULL,
  `desc_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `desc_pack` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `desc_service` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_launched` tinyint(1) NOT NULL,
  `is_tuijian` tinyint(1) NOT NULL,
  `sort` smallint(0) UNSIGNED NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `brand_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category1_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_spu_brand_id_1fa4b54f_fk_tb_goods_brand_id`(`brand_id`) USING BTREE,
  INDEX `tb_goods_spu_category1_id_dec6b204_fk_tb_goods_category_id`(`category1_id`) USING BTREE,
  INDEX `tb_goods_spu_creator_id_0a937088`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_spu_brand_id_1fa4b54f_fk_tb_goods_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tb_goods_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_goods_spu_category1_id_dec6b204_fk_tb_goods_category_id` FOREIGN KEY (`category1_id`) REFERENCES `tb_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_spu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_spu_specification
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_spu_specification`;
CREATE TABLE `tb_goods_spu_specification`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_spu_specification_spu_id_39c06c59_fk_tb_goods_spu_id`(`spu_id`) USING BTREE,
  INDEX `tb_goods_spu_specification_creator_id_ea64a3a9`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_spu_specification_spu_id_39c06c59_fk_tb_goods_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `tb_goods_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_spu_specification
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_spu_specification_option
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_spu_specification_option`;
CREATE TABLE `tb_goods_spu_specification_option`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `value` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spec_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_goods_spu_specifi_spec_id_603e43ee_fk_tb_goods_`(`spec_id`) USING BTREE,
  INDEX `tb_goods_spu_specification_option_creator_id_a4944bc4`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_goods_spu_specifi_spec_id_603e43ee_fk_tb_goods_` FOREIGN KEY (`spec_id`) REFERENCES `tb_goods_spu_specification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_spu_specification_option
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hotel
-- ----------------------------
DROP TABLE IF EXISTS `tb_hotel`;
CREATE TABLE `tb_hotel`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_cn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_en` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `opened_time_c` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `facility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` double NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `status` int(0) NOT NULL,
  `add_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotel_logo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_hotel_brand_id_43beeba0_fk_tb_hotel_brand_id`(`brand_id`) USING BTREE,
  INDEX `tb_hotel_creator_id_5d2c48e3`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_hotel_brand_id_43beeba0_fk_tb_hotel_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tb_hotel_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hotel
-- ----------------------------
INSERT INTO `tb_hotel` VALUES ('4c3d06e32db74fe9b2bffbfe21f0a80f', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:32:29.161356', '2023-04-06 18:23:48.943509', '12', '1', '123', 1, '1', '1', '1', '1', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182343_428.jpg', '1', '1', '11', 1, 1, 1, '1', '92d1548a71664d7aafb783a6ec2d8da2', 'd1431450-5068-4461-b57e-7862c005a547', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182336_377.jpg');
INSERT INTO `tb_hotel` VALUES ('692b5713d5c34771b26e34d5193cec6d', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 11:33:10.633872', '2023-04-07 10:24:58.984391', '102001', 'xx酒店', '1', 11111, '广东珠海', '0756-1543', '微信,支付宝,银行卡', '三房,两厅', 'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101846_471.jpg', '测试,浴室', '5星,地图旁,风景好', '建立于1947年', 1634.164, 3416.46, 0, '张三', 'f0a0844db2c043ccbbbcbb98210e97b7', 'd1431450-5068-4461-b57e-7862c005a547', 'http://45.77.206.193:8000/media/platform/2023-04-07/20230407101845_174.jpg');
INSERT INTO `tb_hotel` VALUES ('7aeff12b861941a190000f311b1b95f9', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:03.898031', '2023-04-06 18:24:03.898078', '2', '3', '3', 3, '3', '3', '3', '3', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182359_208.jpg', '3', '3', '3', 3, 3, 0, '3', '196d5cc4b64e4faa8609faaebf89f500', 'd1431450-5068-4461-b57e-7862c005a547', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182353_901.jpg');
INSERT INTO `tb_hotel` VALUES ('a724d155850f47eaa8edc413f342e230', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:24:56.000928', '2023-04-06 18:24:56.000987', '345', '34534', '345', 345, '3453', '345', '453', '34535', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182447_129.jpg', '5345', '453', '45345', 345, 345, 1, '345', '92d1548a71664d7aafb783a6ec2d8da2', 'd1431450-5068-4461-b57e-7862c005a547', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182449_494.jpg');

-- ----------------------------
-- Table structure for tb_hotel_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_hotel_brand`;
CREATE TABLE `tb_hotel_brand`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `brand_code` int(0) NOT NULL,
  `brand_chain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_hotel_brand_creator_id_7302bc91`(`creator_id`) USING BTREE,
  INDEX `tb_hotel_brand_group_id_88e36b23_fk_tb_hotel_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `tb_hotel_brand_group_id_88e36b23_fk_tb_hotel_group_id` FOREIGN KEY (`group_id`) REFERENCES `tb_hotel_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hotel_brand
-- ----------------------------
INSERT INTO `tb_hotel_brand` VALUES ('196d5cc4b64e4faa8609faaebf89f500', 'i love mysql', 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:20:24.450596', '2023-04-06 18:20:24.450627', 10000, 'sq', 'mysql', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182023_921.jpg', 1, 'd1431450-5068-4461-b57e-7862c005a547', '36ef24c5e4d743e995edb0c2981445fa');
INSERT INTO `tb_hotel_brand` VALUES ('92d1548a71664d7aafb783a6ec2d8da2', '新一代系统', 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:22:22.018848', '2023-04-06 18:22:22.018887', 10002, 'Harmony', 'HarmonyOs', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182219_902.jpg', 1, 'd1431450-5068-4461-b57e-7862c005a547', '36ef24c5e4d743e995edb0c2981445fa');
INSERT INTO `tb_hotel_brand` VALUES ('f0a0844db2c043ccbbbcbb98210e97b7', 'java的世界', 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 18:21:14.279164', '2023-04-06 18:21:14.279208', 10001, 'java', 'java--', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406182113_348.jpg', 1, 'd1431450-5068-4461-b57e-7862c005a547', '36ef24c5e4d743e995edb0c2981445fa');

-- ----------------------------
-- Table structure for tb_hotel_enum
-- ----------------------------
DROP TABLE IF EXISTS `tb_hotel_enum`;
CREATE TABLE `tb_hotel_enum`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `enum_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hotel_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_hotel_enum_hotel_id_5444d6b9_fk_tb_hotel_id`(`hotel_id`) USING BTREE,
  INDEX `tb_hotel_enum_creator_id_633d3422`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_hotel_enum_hotel_id_5444d6b9_fk_tb_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `tb_hotel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hotel_enum
-- ----------------------------
INSERT INTO `tb_hotel_enum` VALUES ('500b106649484dc5aa0c9a5bedd2ddd5', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:51:13.876714', '2023-04-07 13:51:13.876766', '支付方式', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', NULL, NULL);
INSERT INTO `tb_hotel_enum` VALUES ('5ed8e58e2ca341139502c2aa621d15da', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:46:40.035168', '2023-04-07 13:46:40.035232', '房屋类型', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', '4c3d06e32db74fe9b2bffbfe21f0a80f', NULL);
INSERT INTO `tb_hotel_enum` VALUES ('5f75336620aa465489964528011ac9db', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:51:41.500201', '2023-04-07 13:51:41.500243', '支付方式_test', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', '4c3d06e32db74fe9b2bffbfe21f0a80f', NULL);
INSERT INTO `tb_hotel_enum` VALUES ('84075118886e45e5a7c9b6fe739f0639', 'ffff', 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 11:36:49.679243', '2023-04-06 11:35:53.668010', '测试1', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', NULL, NULL);
INSERT INTO `tb_hotel_enum` VALUES ('9b880d4f08dd47a6b0d430ec624c3f7d', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:45:52.783232', '2023-04-07 13:45:52.783320', '测试2', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', NULL, NULL);

-- ----------------------------
-- Table structure for tb_hotel_enum_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_hotel_enum_detail`;
CREATE TABLE `tb_hotel_enum_detail`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `enum_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_hotel_enum_detail_enum_id_67b541f6_fk_tb_hotel_enum_id`(`enum_id`) USING BTREE,
  INDEX `tb_hotel_enum_detail_creator_id_ad0c3b9e`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_hotel_enum_detail_enum_id_67b541f6_fk_tb_hotel_enum_id` FOREIGN KEY (`enum_id`) REFERENCES `tb_hotel_enum` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hotel_enum_detail
-- ----------------------------
INSERT INTO `tb_hotel_enum_detail` VALUES ('4f69966347bc4653998c05a71819b626', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:47:42.748033', '2023-04-07 13:47:42.748109', '0', '大床房', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', '5ed8e58e2ca341139502c2aa621d15da', NULL);
INSERT INTO `tb_hotel_enum_detail` VALUES ('f408b635b8fe4f0ea568db6c0c74f37a', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-07 13:47:55.803345', '2023-04-07 13:47:55.803399', '1', '标准间', 0, 1, 'd1431450-5068-4461-b57e-7862c005a547', '5ed8e58e2ca341139502c2aa621d15da', NULL);

-- ----------------------------
-- Table structure for tb_hotel_group
-- ----------------------------
DROP TABLE IF EXISTS `tb_hotel_group`;
CREATE TABLE `tb_hotel_group`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `group_code` int(0) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_hotel_group_creator_id_261c3487`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_hotel_group
-- ----------------------------
INSERT INTO `tb_hotel_group` VALUES ('36ef24c5e4d743e995edb0c2981445fa', NULL, 'd1431450-5068-4461-b57e-7862c005a547', 'd2c03bd9-dad0-4262-88ca-c3681d224fc3', '2023-04-06 14:32:23.881725', '2023-04-06 14:29:41.226795', 1, '集团一', 'http://45.77.206.193:8000/media/platform/2023-04-06/20230406142506_407.jpg', 1, 'd1431450-5068-4461-b57e-7862c005a547');

-- ----------------------------
-- Table structure for tb_lunbo_manage
-- ----------------------------
DROP TABLE IF EXISTS `tb_lunbo_manage`;
CREATE TABLE `tb_lunbo_manage`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(0) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort` int(0) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `link_type` int(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_lunbo_manage_creator_id_61e86919`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lunbo_manage
-- ----------------------------

-- ----------------------------
-- Table structure for tb_mall_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_mall_order_goods`;
CREATE TABLE `tb_mall_order_goods`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `count` int(0) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `score` smallint(0) NOT NULL,
  `is_anonymous` tinyint(1) NOT NULL,
  `is_commented` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sku_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spu_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_mall_order_goods_order_id_d7ebf6af_fk_tb_mall_order_info_id`(`order_id`) USING BTREE,
  INDEX `tb_mall_order_goods_sku_id_bc54f8f7_fk_tb_goods_sku_id`(`sku_id`) USING BTREE,
  INDEX `tb_mall_order_goods_spu_id_4671e639_fk_tb_goods_spu_id`(`spu_id`) USING BTREE,
  INDEX `tb_mall_order_goods_creator_id_3b1a9dea`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_mall_order_goods_order_id_d7ebf6af_fk_tb_mall_order_info_id` FOREIGN KEY (`order_id`) REFERENCES `tb_mall_order_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mall_order_goods_sku_id_bc54f8f7_fk_tb_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `tb_goods_sku` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_mall_order_goods_spu_id_4671e639_fk_tb_goods_spu_id` FOREIGN KEY (`spu_id`) REFERENCES `tb_goods_spu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mall_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tb_mall_order_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_mall_order_info`;
CREATE TABLE `tb_mall_order_info`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trade_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `couponrecord_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `couponrecord_price` decimal(10, 2) NULL DEFAULT NULL,
  `total_count` int(0) NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `total_amount_pay` decimal(10, 2) NOT NULL,
  `freight` decimal(10, 2) NULL DEFAULT NULL,
  `logistics_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `send_time` datetime(6) NULL DEFAULT NULL,
  `logistics_company` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_method` smallint(0) NOT NULL,
  `pay_time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cancel_reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `pay_status` smallint(0) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_id`(`order_id`) USING BTREE,
  UNIQUE INDEX `trade_id`(`trade_id`) USING BTREE,
  UNIQUE INDEX `couponrecord_id`(`couponrecord_id`) USING BTREE,
  INDEX `tb_mall_order_info_user_id_814332e5_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  INDEX `tb_mall_order_info_creator_id_6d97d688`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_mall_order_info_user_id_814332e5_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mall_order_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_mall_order_refunds
-- ----------------------------
DROP TABLE IF EXISTS `tb_mall_order_refunds`;
CREATE TABLE `tb_mall_order_refunds`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `refund_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `reason` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` smallint(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_no`(`order_no`) USING BTREE,
  UNIQUE INDEX `refund_id`(`refund_id`) USING BTREE,
  INDEX `tb_mall_order_refunds_order_id_e725cf4c_fk_tb_mall_order_info_id`(`order_id`) USING BTREE,
  INDEX `tb_mall_order_refunds_creator_id_672686b7`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_mall_order_refunds_order_id_e725cf4c_fk_tb_mall_order_info_id` FOREIGN KEY (`order_id`) REFERENCES `tb_mall_order_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_mall_order_refunds
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `msg_chanel` int(0) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `msg_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `msg_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `to_path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `msg_type_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_message_msg_type_id_b4072045_fk_tb_message_template_id`(`msg_type_id`) USING BTREE,
  INDEX `tb_message_creator_id_3214601d`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_message_msg_type_id_b4072045_fk_tb_message_template_id` FOREIGN KEY (`msg_type_id`) REFERENCES `tb_message_template` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message_template
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_template`;
CREATE TABLE `tb_message_template`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE,
  INDEX `tb_message_template_creator_id_3ec11b83`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message_template
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_user`;
CREATE TABLE `tb_message_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `read_at` datetime(6) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `messageid_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `revuserid_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senduserid_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_message_user_messageid_id_e64702d8_fk_tb_message_id`(`messageid_id`) USING BTREE,
  INDEX `tb_message_user_revuserid_id_b63a4813_fk_lyadmin_users_id`(`revuserid_id`) USING BTREE,
  INDEX `tb_message_user_senduserid_id_cb96b84f_fk_lyadmin_users_id`(`senduserid_id`) USING BTREE,
  CONSTRAINT `tb_message_user_messageid_id_e64702d8_fk_tb_message_id` FOREIGN KEY (`messageid_id`) REFERENCES `tb_message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_message_user_revuserid_id_b63a4813_fk_lyadmin_users_id` FOREIGN KEY (`revuserid_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_message_user_senduserid_id_cb96b84f_fk_lyadmin_users_id` FOREIGN KEY (`senduserid_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_monitor
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitor`;
CREATE TABLE `tb_monitor`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `online` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `days` smallint(0) NOT NULL,
  `interval` smallint(0) NOT NULL,
  `islocal` tinyint(1) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_monitor_creator_id_27f410f2`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_monitor
-- ----------------------------

-- ----------------------------
-- Table structure for tb_oauth_wx
-- ----------------------------
DROP TABLE IF EXISTS `tb_oauth_wx`;
CREATE TABLE `tb_oauth_wx`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `xcx_openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gzh_openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatarUrl` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nick` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unionId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `session_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xcx_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gzh_access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gzh_refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gzh_scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobilePhoneNumber` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `tb_oauth_wx_xcx_openid_86e639c2`(`xcx_openid`) USING BTREE,
  INDEX `tb_oauth_wx_gzh_openid_534fea1f`(`gzh_openid`) USING BTREE,
  CONSTRAINT `tb_oauth_wx_user_id_2a271e12_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_oauth_wx
-- ----------------------------

-- ----------------------------
-- Table structure for tb_other_manage
-- ----------------------------
DROP TABLE IF EXISTS `tb_other_manage`;
CREATE TABLE `tb_other_manage`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `type` int(0) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_other_manage_creator_id_125ff1a6`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_other_manage
-- ----------------------------

-- ----------------------------
-- Table structure for tb_terminalserver
-- ----------------------------
DROP TABLE IF EXISTS `tb_terminalserver`;
CREATE TABLE `tb_terminalserver`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `port` int(0) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pkey_passwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` smallint(0) NOT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_terminalserver_creator_id_d30e3e38`(`creator_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_terminalserver
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_leaving
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_leaving`;
CREATE TABLE `tb_user_leaving`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `modifier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `message_type` smallint(0) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_user_leaving_user_id_44ed0394_fk_lyadmin_users_id`(`user_id`) USING BTREE,
  INDEX `tb_user_leaving_creator_id_13389dc5`(`creator_id`) USING BTREE,
  CONSTRAINT `tb_user_leaving_user_id_44ed0394_fk_lyadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `lyadmin_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user_leaving
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
