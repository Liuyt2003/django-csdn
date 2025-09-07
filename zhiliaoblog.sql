/*
 Navicat Premium Dump SQL

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : zhiliaoblog

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 27/08/2025 04:01:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add captcha model', 7, 'add_captchamodel');
INSERT INTO `auth_permission` VALUES (26, 'Can change captcha model', 7, 'change_captchamodel');
INSERT INTO `auth_permission` VALUES (27, 'Can delete captcha model', 7, 'delete_captchamodel');
INSERT INTO `auth_permission` VALUES (28, 'Can view captcha model', 7, 'view_captchamodel');
INSERT INTO `auth_permission` VALUES (29, 'Can add blog comment', 8, 'add_blogcomment');
INSERT INTO `auth_permission` VALUES (30, 'Can change blog comment', 8, 'change_blogcomment');
INSERT INTO `auth_permission` VALUES (31, 'Can delete blog comment', 8, 'delete_blogcomment');
INSERT INTO `auth_permission` VALUES (32, 'Can view blog comment', 8, 'view_blogcomment');
INSERT INTO `auth_permission` VALUES (33, 'Can add blog catalogue', 9, 'add_blogcatalogue');
INSERT INTO `auth_permission` VALUES (34, 'Can change blog catalogue', 9, 'change_blogcatalogue');
INSERT INTO `auth_permission` VALUES (35, 'Can delete blog catalogue', 9, 'delete_blogcatalogue');
INSERT INTO `auth_permission` VALUES (36, 'Can view blog catalogue', 9, 'view_blogcatalogue');
INSERT INTO `auth_permission` VALUES (37, 'Can add blog', 10, 'add_blog');
INSERT INTO `auth_permission` VALUES (38, 'Can change blog', 10, 'change_blog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete blog', 10, 'delete_blog');
INSERT INTO `auth_permission` VALUES (40, 'Can view blog', 10, 'view_blog');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$1000000$8Sooltp5EYF0GlzfE4sKP0$G7rwJDxs7Bzz4ODFqrYJ3b5Ezxtsg2nQ/nT6ESNiebY=', '2025-08-26 19:52:56.634367', 1, '111', '', '', '859663396@qq.com', 1, 1, '2025-08-16 13:51:28.368979');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blog
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blog_author_id_8791af69_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blog_category_id_c34d5f94_fk_blog_blogcatalogue_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_blogcatalogue_id` FOREIGN KEY (`category_id`) REFERENCES `blog_blogcatalogue` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES (1, '222', '<h3>ggj</h3>', '2025-08-22 14:36:14.276432', 2, 1);
INSERT INTO `blog_blog` VALUES (2, 'Django前端', '<p>用ajax发布<strong>测试</strong></p>', '2025-08-22 14:57:42.515359', 2, 1);
INSERT INTO `blog_blog` VALUES (3, '233', '<p>send test</p>', '2025-08-26 14:58:03.555831', 2, 1);
INSERT INTO `blog_blog` VALUES (4, 'try python', '<p><br></p><pre><code class=\"language-python\">from django.apps import AppConfig\nclass BlogConfig(AppConfig):\n    default_auto_field = \"django.db.models.BigAutoField\"\n    name = \"blog\"</code></pre><p><br></p>', '2025-08-26 15:07:31.710146', 2, 1);
INSERT INTO `blog_blog` VALUES (5, 'try2', '<p><br></p><pre><code class=\"language-html\">&lt;body&gt;\n&lt;header class=\"p-3 text-bg-light border-bottom mb-3\"&gt;</code></pre><p><br></p>', '2025-08-26 15:11:09.440905', 2, 2);
INSERT INTO `blog_blog` VALUES (6, 'try66', '<p><br></p><pre><code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;title&gt;{% block title %}{% endblock %}-知了博客&lt;/title&gt;\r\n    &lt;link rel=\"stylesheet\" href=\"{% static \'bootstrap5/bootstrap.min.css\' %}\"&gt;\r\n    &lt;script src=\"{% static \'bootstrap5/popper.min.js\' %}\"&gt;&lt;/script&gt;\r\n    &lt;script src=\"{% static \'bootstrap5/bootstrap.min.js\' %}\"&gt;&lt;/script&gt;\r\n    &lt;link rel=\"stylesheet\" href=\"{% static \'css/base.css\' %}\"&gt;\r\n    {% block head %}\r\n    	\r\n    {% endblock %}\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;header class=\"p-3 text-bg-light border-bottom mb-3\"&gt;\r\n    &lt;div class=\"container\"&gt;\r\n        &lt;div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\"&gt;\r\n            &lt;a href=\"/\" class=\"d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none\"&gt;\r\n                &lt;img src=\"{% static \'image/logo.png\' %}\" alt=\"\" height=\"40\"&gt;\r\n            &lt;/a&gt;\r\n            &lt;ul class=\"nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0\"&gt;\r\n                &lt;li&gt;&lt;a href=\"/\" class=\"nav-link px-2 text-secondary\"&gt;首页&lt;/a&gt;&lt;/li&gt;\r\n                &lt;li&gt;&lt;a href=\"{% url \'blog:pub_blog\' %}\" class=\"nav-link px-2 text-secondary\"&gt;发布博客&lt;/a&gt;&lt;/li&gt;\r\n\r\n            &lt;/ul&gt;\r\n            &lt;form class=\"col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3\" role=\"search\"&gt;\r\n                &lt;input type=\"search\" class=\"form-control \" placeholder=\"搜索...\" aria-label=\"Search\"&gt;\r\n            &lt;/form&gt;\r\n            {% if user.is_authenticated %}\r\n                &lt;div class=\"dropdown text-end\"&gt;&lt;a href=\"#\"\r\n                                                  class=\"d-block link-body-emphasis text-decoration-none dropdown-toggle show\"\r\n                                                  data-bs-toggle=\"dropdown\" aria-expanded=\"true\"&gt; &lt;img\r\n                        src=\"{% static \'image/avatar.webp\' %}\" alt=\"mdo\" width=\"32\" height=\"32\" class=\"rounded-circle\"&gt; &lt;/a&gt;\r\n                    &lt;ul class=\"dropdown-menu text-small show\" data-popper-placement=\"top-start\"\r\n                        style=\"position: absolute; inset: auto auto 0px 0px; margin: 0px; transform: translate3d(0px, -34px, 0px);\"&gt;\r\n                        \r\n                        &lt;li&gt;&lt;a class=\"dropdown-item\" href=\"{% url \'zlauth:logout\' %}\"&gt;退出登录&lt;/a&gt;&lt;/li&gt;\r\n                    &lt;/ul&gt;\r\n                &lt;/div&gt;\r\n                {% else %}\r\n                &lt;div class=\"text-end\"&gt;\r\n                &lt;a href=\"{% url \'zlauth:login\' %}\"  type=\"button\" class=\"btn btn-outline-primary me-2\"&gt;登录&lt;/a&gt;\r\n                &lt;a href=\"{% url \'zlauth:register\' %}\" type=\"button\" class=\"btn btn-primary\"&gt;注册&lt;/a&gt;\r\n                &lt;/div&gt;\r\n            {% endif%}\r\n            \r\n            \r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/header&gt;\r\n&lt;main class=\"container bg-white p-3 rounded\"&gt;\r\n    {% block main %}{% endblock %}\r\n&lt;/main&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre><p><br></p>', '2025-08-26 15:12:16.433919', 2, 2);
INSERT INTO `blog_blog` VALUES (7, 'try56', '<p><br></p><pre><code class=\"language-python\">from django.urls import path\nfrom . import views\napp_name=\'blog\'\nurlpatterns = [    \n    path(\"\", views.index, name=\"index\"),    \n    path(\'blog/detail/&lt;int:blog_id&gt;\',views.blog_detail,name=\'blog_detail\'), \n    path(\'blog/pub\',views.pub_blog,name=\'pub_blog\'), \n    path(\'blog/comment/pub\',views.pub_comment,name=\'pub_comment\')]</code></pre><p><br></p>', '2025-08-26 15:14:09.594299', 2, 3);
INSERT INTO `blog_blog` VALUES (8, 'data', '<p><br></p><pre><code class=\"language-css\">body{    background-color: rgb(0,0,0,0.1);}</code></pre><p><br></p>', '2025-08-26 18:26:21.056540', 2, 3);
INSERT INTO `blog_blog` VALUES (9, 'python2_test', '<p><br></p><pre><code class=\"language-java\">import java.util.ArrayList;\nimport java.util.Scanner;</code></pre><p><br></p>', '2025-08-26 18:29:32.049401', 2, 5);
INSERT INTO `blog_blog` VALUES (10, '7805', '<p><br></p><p><br></p><pre><code class=\"language-css\">body\n{    background-color: rgb(0,0,0,0.1);\n}</code></pre><p><br></p>', '2025-08-26 18:31:29.544381', 2, 5);
INSERT INTO `blog_blog` VALUES (11, '55670', '<p><br></p><pre><code class=\"language-python\">from django.contrib import admin\nfrom django.urls import path,include\nurlpatterns = [    \n    path(\"admin/\", admin.site.urls),\n    path(\'\',include(\'blog.urls\')),\n    path(\'auth/\',include(\'zlauth.urls\'))]</code></pre><p><br></p>', '2025-08-26 19:18:49.246263', 2, 1);
INSERT INTO `blog_blog` VALUES (12, '678', '<p><br></p><pre><code class=\"language-python\">from django.contrib import admin\nfrom django.urls import path,include\nurlpatterns = [    path(\"admin/\", admin.site.urls),\n    path(\'\',include(\'blog.urls\')),\n    path(\'auth/\',include(\'zlauth.urls\'))]</code></pre><p><br></p>', '2025-08-26 19:49:02.721759', 2, 2);
INSERT INTO `blog_blog` VALUES (13, '78jhk', '<p><br></p><pre><code class=\"language-html\">&lt;div class=\"mb-3\"&gt;   \n &lt;label&gt;用户名&lt;/label&gt;    \n &lt;input type=\"text\" name=\'username\' class=\"form-control\" placeholder=\"用户名\"&gt;\n &lt;/div&gt;</code></pre><p><br></p>', '2025-08-26 19:49:52.617213', 2, 1);

-- ----------------------------
-- Table structure for blog_blogcatalogue
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcatalogue`;
CREATE TABLE `blog_blogcatalogue`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogcatalogue
-- ----------------------------
INSERT INTO `blog_blogcatalogue` VALUES (1, 'Python');
INSERT INTO `blog_blogcatalogue` VALUES (2, '前端');
INSERT INTO `blog_blogcatalogue` VALUES (3, '大数据');
INSERT INTO `blog_blogcatalogue` VALUES (4, '人工智能');
INSERT INTO `blog_blogcatalogue` VALUES (5, 'python2');

-- ----------------------------
-- Table structure for blog_blogcomment
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcomment`;
CREATE TABLE `blog_blogcomment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id`(`blog_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogcomment
-- ----------------------------
INSERT INTO `blog_blogcomment` VALUES (1, '222', '2025-08-25 19:14:32.109241', 2, 2);
INSERT INTO `blog_blogcomment` VALUES (2, 'nanase', '2025-08-25 19:27:13.973966', 2, 2);
INSERT INTO `blog_blogcomment` VALUES (3, 'mayi', '2025-08-25 19:27:37.126796', 2, 2);
INSERT INTO `blog_blogcomment` VALUES (4, 'rino', '2025-08-25 19:28:38.905217', 2, 1);
INSERT INTO `blog_blogcomment` VALUES (5, 'rino酱', '2025-08-26 14:18:36.190205', 2, 2);
INSERT INTO `blog_blogcomment` VALUES (6, 'test pl', '2025-08-26 14:58:22.555445', 2, 3);
INSERT INTO `blog_blogcomment` VALUES (7, '没给全', '2025-08-26 15:07:41.801676', 2, 4);
INSERT INTO `blog_blogcomment` VALUES (8, 'css_1', '2025-08-26 18:26:26.011433', 2, 8);
INSERT INTO `blog_blogcomment` VALUES (9, 'test2', '2025-08-26 18:29:51.685563', 2, 9);
INSERT INTO `blog_blogcomment` VALUES (10, '6789808', '2025-08-26 19:18:57.304802', 2, 11);
INSERT INTO `blog_blogcomment` VALUES (11, '', '2025-08-26 19:19:10.697308', 2, 11);
INSERT INTO `blog_blogcomment` VALUES (12, '677', '2025-08-26 19:49:14.986167', 2, 12);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-08-20 15:49:26.727112', '1', 'Python', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (2, '2025-08-20 15:49:37.051910', '2', '前端', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (3, '2025-08-20 15:49:45.880945', '3', '大数据', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (4, '2025-08-20 15:49:55.883588', '4', '人工智能', 1, '[{\"added\": {}}]', 9, 2);
INSERT INTO `django_admin_log` VALUES (5, '2025-08-26 18:28:24.892054', '5', 'python2', 1, '[{\"added\": {}}]', 9, 2);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'blog');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'blogcatalogue');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'blogcomment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'zlauth', 'captchamodel');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-08-09 14:43:25.806240');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2025-08-09 14:43:26.336190');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2025-08-09 14:43:26.425178');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-08-09 14:43:26.433540');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-09 14:43:26.439194');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-08-09 14:43:26.487760');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-08-09 14:43:26.528283');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-08-09 14:43:26.539102');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-08-09 14:43:26.546086');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-08-09 14:43:26.581851');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-08-09 14:43:26.582892');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-08-09 14:43:26.588036');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-08-09 14:43:26.624241');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-08-09 14:43:26.660688');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-08-09 14:43:26.675124');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-08-09 14:43:26.678512');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-08-09 14:43:26.708857');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2025-08-09 14:43:26.735051');
INSERT INTO `django_migrations` VALUES (19, 'zlauth', '0001_initial', '2025-08-09 14:43:26.745404');
INSERT INTO `django_migrations` VALUES (20, 'zlauth', '0002_alter_captchamodel_email', '2025-08-09 14:55:31.465918');
INSERT INTO `django_migrations` VALUES (21, 'blog', '0001_initial', '2025-08-20 15:21:30.908453');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0thk5tv6n9c62w2wcd97wdxkn63bq3y2', '.eJxVjMsKwjAQRf8lawl5tOmkS_d-Q5hMBhuVRJoWFPHftdCFbu8597xEwHWZwtp4DjmJURhx-N0i0pXLBtIFy7lKqmWZc5SbInfa5Kkmvh139y8wYZu-bwRylpxyfc9WUwcpURw80ODRedKgfY8WGPzALnW-M1Ghts5qg8oY2KKNW8u1BH7c8_wUo3p_AGs_Pi8:1unHMH:QL5SSlfdFAetBoLtf0LxTBUnqdrD3NQBI2EdHXs-ePo', '2025-08-30 13:54:09.081672');
INSERT INTO `django_session` VALUES ('c4bzv2iwdpavz3ferjq6geept21lvsmw', '.eJxVjDsOwjAQBe_iGln-e01Jzxms9a6FA8iR4qRC3B0ipYD2zcx7iYzb2vI26pInFmdhxOl3K0iP2nfAd-y3WdLc12UqclfkQYe8zlyfl8P9O2g42rdGoGApqOB9tZocMFOJCSgmDIk06OTRQoUUa2CXnCkKtQ1WG1TGgHh_ANYBNvI:1uquJS:ghFkbELVZ38P4CI-SguGftclq6gUiVYnluXvgrLAwIE', '2025-09-09 14:06:14.788483');
INSERT INTO `django_session` VALUES ('i2euopjzkjo5cznj8y6e74v80hwn6sm1', '.eJxVjDsOwjAQBe_iGln-e01Jzxms9a6FA8iR4qRC3B0ipYD2zcx7iYzb2vI26pInFmdhxOl3K0iP2nfAd-y3WdLc12UqclfkQYe8zlyfl8P9O2g42rdGoGApqOB9tZocMFOJCSgmDIk06OTRQoUUa2CXnCkKtQ1WG1TGgHh_ANYBNvI:1uqziy:QQyTrgHwwK7pm4zfdnCGe1S9XcI-zy8F5eInUeTfBCM', '2025-09-09 19:52:56.636969');
INSERT INTO `django_session` VALUES ('ijhyzhjczqozkovotj0508xwur4ytdud', '.eJxVjDsOwjAQBe_iGln-e01Jzxms9a6FA8iR4qRC3B0ipYD2zcx7iYzb2vI26pInFmdhxOl3K0iP2nfAd-y3WdLc12UqclfkQYe8zlyfl8P9O2g42rdGoGApqOB9tZocMFOJCSgmDIk06OTRQoUUa2CXnCkKtQ1WG1TGgHh_ANYBNvI:1unHOS:xz3n3DxT0daUb8UrdDHT-mCdShNph8a5HlNYKSV4ui8', '2025-08-30 13:56:24.290746');

-- ----------------------------
-- Table structure for zlauth_captchamodel
-- ----------------------------
DROP TABLE IF EXISTS `zlauth_captchamodel`;
CREATE TABLE `zlauth_captchamodel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `captcha` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zlauth_captchamodel_email_bad993ac_uniq`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zlauth_captchamodel
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
