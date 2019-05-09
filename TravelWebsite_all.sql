/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : 39.108.166.59:3306
 Source Schema         : TravelWebsite

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 11/04/2019 11:24:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 游记信息', 6, 'add_diary');
INSERT INTO `auth_permission` VALUES (22, 'Can change 游记信息', 6, 'change_diary');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 游记信息', 6, 'delete_diary');
INSERT INTO `auth_permission` VALUES (24, 'Can view 游记信息', 6, 'view_diary');
INSERT INTO `auth_permission` VALUES (25, 'Can add 新闻信息', 7, 'add_news');
INSERT INTO `auth_permission` VALUES (26, 'Can change 新闻信息', 7, 'change_news');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 新闻信息', 7, 'delete_news');
INSERT INTO `auth_permission` VALUES (28, 'Can view 新闻信息', 7, 'view_news');
INSERT INTO `auth_permission` VALUES (29, 'Can add 活动评论', 8, 'add_activecomments');
INSERT INTO `auth_permission` VALUES (30, 'Can change 活动评论', 8, 'change_activecomments');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 活动评论', 8, 'delete_activecomments');
INSERT INTO `auth_permission` VALUES (32, 'Can add 游记评论', 9, 'add_diarycomments');
INSERT INTO `auth_permission` VALUES (33, 'Can change 游记评论', 9, 'change_diarycomments');
INSERT INTO `auth_permission` VALUES (34, 'Can delete 游记评论', 9, 'delete_diarycomments');
INSERT INTO `auth_permission` VALUES (35, 'Can add 商品评论', 10, 'add_productcomments');
INSERT INTO `auth_permission` VALUES (36, 'Can change 商品评论', 10, 'change_productcomments');
INSERT INTO `auth_permission` VALUES (37, 'Can delete 商品评论', 10, 'delete_productcomments');
INSERT INTO `auth_permission` VALUES (38, 'Can add 直接购买商品', 11, 'add_shopping');
INSERT INTO `auth_permission` VALUES (39, 'Can change 直接购买商品', 11, 'change_shopping');
INSERT INTO `auth_permission` VALUES (40, 'Can delete 直接购买商品', 11, 'delete_shopping');
INSERT INTO `auth_permission` VALUES (41, 'Can add 购物车', 12, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (42, 'Can change 购物车', 12, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 购物车', 12, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (44, 'Can add 景区评论', 13, 'add_spotscomments');
INSERT INTO `auth_permission` VALUES (45, 'Can change 景区评论', 13, 'change_spotscomments');
INSERT INTO `auth_permission` VALUES (46, 'Can delete 景区评论', 13, 'delete_spotscomments');
INSERT INTO `auth_permission` VALUES (47, 'Can add 游记收藏', 14, 'add_usercollect');
INSERT INTO `auth_permission` VALUES (48, 'Can change 游记收藏', 14, 'change_usercollect');
INSERT INTO `auth_permission` VALUES (49, 'Can delete 游记收藏', 14, 'delete_usercollect');
INSERT INTO `auth_permission` VALUES (50, 'Can add 游记点赞', 15, 'add_userfav');
INSERT INTO `auth_permission` VALUES (51, 'Can change 游记点赞', 15, 'change_userfav');
INSERT INTO `auth_permission` VALUES (52, 'Can delete 游记点赞', 15, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (53, 'Can view 活动评论', 8, 'view_activecomments');
INSERT INTO `auth_permission` VALUES (54, 'Can view 游记评论', 9, 'view_diarycomments');
INSERT INTO `auth_permission` VALUES (55, 'Can view 商品评论', 10, 'view_productcomments');
INSERT INTO `auth_permission` VALUES (56, 'Can view 直接购买商品', 11, 'view_shopping');
INSERT INTO `auth_permission` VALUES (57, 'Can view 购物车', 12, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (58, 'Can view 景区评论', 13, 'view_spotscomments');
INSERT INTO `auth_permission` VALUES (59, 'Can view 游记收藏', 14, 'view_usercollect');
INSERT INTO `auth_permission` VALUES (60, 'Can view 游记点赞', 15, 'view_userfav');
INSERT INTO `auth_permission` VALUES (61, 'Can add 旅游活动', 16, 'add_active');
INSERT INTO `auth_permission` VALUES (62, 'Can change 旅游活动', 16, 'change_active');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 旅游活动', 16, 'delete_active');
INSERT INTO `auth_permission` VALUES (64, 'Can add 轮播图', 17, 'add_gallery');
INSERT INTO `auth_permission` VALUES (65, 'Can change 轮播图', 17, 'change_gallery');
INSERT INTO `auth_permission` VALUES (66, 'Can delete 轮播图', 17, 'delete_gallery');
INSERT INTO `auth_permission` VALUES (67, 'Can add 旅游景区', 18, 'add_spots');
INSERT INTO `auth_permission` VALUES (68, 'Can change 旅游景区', 18, 'change_spots');
INSERT INTO `auth_permission` VALUES (69, 'Can delete 旅游景区', 18, 'delete_spots');
INSERT INTO `auth_permission` VALUES (70, 'Can view 旅游活动', 16, 'view_active');
INSERT INTO `auth_permission` VALUES (71, 'Can view 轮播图', 17, 'view_gallery');
INSERT INTO `auth_permission` VALUES (72, 'Can view 旅游景区', 18, 'view_spots');
INSERT INTO `auth_permission` VALUES (73, 'Can add 商品信息', 19, 'add_product');
INSERT INTO `auth_permission` VALUES (74, 'Can change 商品信息', 19, 'change_product');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 商品信息', 19, 'delete_product');
INSERT INTO `auth_permission` VALUES (76, 'Can add 商品图片', 20, 'add_propic');
INSERT INTO `auth_permission` VALUES (77, 'Can change 商品图片', 20, 'change_propic');
INSERT INTO `auth_permission` VALUES (78, 'Can delete 商品图片', 20, 'delete_propic');
INSERT INTO `auth_permission` VALUES (79, 'Can view 商品信息', 19, 'view_product');
INSERT INTO `auth_permission` VALUES (80, 'Can view 商品图片', 20, 'view_propic');
INSERT INTO `auth_permission` VALUES (81, 'Can add 用户信息', 21, 'add_myuser');
INSERT INTO `auth_permission` VALUES (82, 'Can change 用户信息', 21, 'change_myuser');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 用户信息', 21, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (84, 'Can add area info', 22, 'add_areainfo');
INSERT INTO `auth_permission` VALUES (85, 'Can change area info', 22, 'change_areainfo');
INSERT INTO `auth_permission` VALUES (86, 'Can delete area info', 22, 'delete_areainfo');
INSERT INTO `auth_permission` VALUES (87, 'Can add 轮播图', 23, 'add_banner');
INSERT INTO `auth_permission` VALUES (88, 'Can change 轮播图', 23, 'change_banner');
INSERT INTO `auth_permission` VALUES (89, 'Can delete 轮播图', 23, 'delete_banner');
INSERT INTO `auth_permission` VALUES (90, 'Can add 邮箱验证码信息', 24, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (91, 'Can change 邮箱验证码信息', 24, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (92, 'Can delete 邮箱验证码信息', 24, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (93, 'Can add 常用联系人信息', 25, 'add_thecontact');
INSERT INTO `auth_permission` VALUES (94, 'Can change 常用联系人信息', 25, 'change_thecontact');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 常用联系人信息', 25, 'delete_thecontact');
INSERT INTO `auth_permission` VALUES (96, 'Can view area info', 22, 'view_areainfo');
INSERT INTO `auth_permission` VALUES (97, 'Can view 轮播图', 23, 'view_banner');
INSERT INTO `auth_permission` VALUES (98, 'Can view 邮箱验证码信息', 24, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (99, 'Can view 用户信息', 21, 'view_myuser');
INSERT INTO `auth_permission` VALUES (100, 'Can view 常用联系人信息', 25, 'view_thecontact');
INSERT INTO `auth_permission` VALUES (101, 'Can add 商品订单主表', 26, 'add_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (102, 'Can change 商品订单主表', 26, 'change_goodsordersmaintable');
INSERT INTO `auth_permission` VALUES (103, '