/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 10.168.1.240:3306
 Source Schema         : evtp

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 25/12/2018 11:31:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_charging_pile
-- ----------------------------
DROP TABLE IF EXISTS `t_charging_pile`;
CREATE TABLE `t_charging_pile`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `capacity` double(255, 0) NULL DEFAULT NULL,
  `position` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `position_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `charging_efficiency` float(255, 0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `run_time` datetime(0) NULL DEFAULT NULL,
  `cs_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_charging_pile
-- ----------------------------
INSERT INTO `t_charging_pile` VALUES ('02d7c80688774d0d81a26637f842aeab', 'ChargingPile4-1', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('0d9867ad2cb14b58922f83da5a5d271c', 'ChargingPile9-1', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('0de93a711adc41ef893074d03ff12203', 'ChargingPile7-1', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('134c997fac84412aafc9207f59a18613', 'ChargingPile2-3', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('14382f53f92748b3a63bba67c1c5502c', 'ChargingPile5-0', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('1a6201d6e9a647808b07b759db519055', 'ChargingPile7-3', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('1c109f3cd63647ce88ad6f865f6be528', 'ChargingPile7-7', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('1d6650bd7e3d42c9abaf705662631c22', 'ChargingPile6-1', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('1fced806095b4af7bb993419feedd291', 'ChargingPile8-1', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('249b5904ac8b42f3a2593a50efcafa3f', 'ChargingPile6-7', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('24b707da566848c9995902899fd7f332', 'ChargingPile5-4', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('25d2df2b552b4b628e606e53861c5af9', 'ChargingPile7-2', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('27c15e8c9b7948a89ff332e815bbb4a6', 'ChargingPile9-6', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('2a07f31bbd894ee58862d8c6fab3756b', 'ChargingPile0-0', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:05', '2018-12-04 13:08:05', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('2cb09ceaf68d4de2bec7302dcf382522', 'ChargingPile4-0', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('2ff665532c0e4b20bc24f35440c5bb47', 'ChargingPile7-4', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('341cdb5e49af4b6a85455e0d27e638c5', 'ChargingPile4-2', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('34225ba3882d444584dcf1d6ba58451c', 'ChargingPile4-6', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('3738a152dc154963b45a17316c67d38c', 'ChargingPile1-0', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('3b6a05504f9545e091075748c96d5ee4', 'ChargingPile4-4', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('3c64c22f091f46e6918b6dcfa0c89cf9', 'ChargingPile7-5', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('4450b5cbfa9242e6a1e96a650486aab0', 'ChargingPile1-2', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('4c6b8d437ff846599fc0c69ccc8b6564', 'ChargingPile0-6', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('50af02da4ba64ca59e7df56e25142f0f', 'ChargingPile8-4', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('51d8e609595048399beee7807fee51f6', 'ChargingPile3-0', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('55fd211fa32246289f7d97caad00d163', 'ChargingPile6-0', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('57f8ca1176524843b6622f20c85e4ec9', 'ChargingPile3-7', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('596c7acb3a7d45c2b2e618ade364641d', 'ChargingPile8-6', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('69149d992c8a42d1ba02e2a116467284', 'ChargingPile3-6', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('6ebd3956d173416185f3a45efeab5035', 'ChargingPile8-2', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('6fb3203020954fb9bd5511f2ac75d4f8', 'ChargingPile8-5', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('753f68c6939145f28bf95293701efda0', 'ChargingPile3-2', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('754691e2555b45939f7fdd0ba4ffe2e2', 'ChargingPile1-3', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('79feecef61634d849b2d7fc488c8e0c1', 'ChargingPile2-2', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('7b84cd50f89349f8844971990a735d46', 'ChargingPile8-0', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('8b9d27fdb48d4d5ca3abe997c0f7bed1', 'ChargingPile9-0', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('8d1edbc2917e4a7fac81aeef794c024d', 'ChargingPile0-7', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('8d89155af503422492a536f6a8149f9b', 'ChargingPile2-1', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('8ffd2d6d878349c3b6336d5f4dee7153', 'ChargingPile4-3', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('918b461c12ed4ef3ae2c686d52c1bf10', 'ChargingPile1-6', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('964cb73a33eb41a1aedc90ab715d9c9f', 'ChargingPile6-2', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('9a893865f4c545f793d6a8128906836c', 'ChargingPile0-3', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('9c6632c3162f4b099c3a7de6eb4728b7', 'ChargingPile5-3', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('a168bd0b99fb4bdfb18ff75cac9b3e92', 'ChargingPile1-4', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('a861ba69800645a79dda7ccdbc5127d8', 'ChargingPile6-5', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('b0d9cfee2d0f4e9e8df9294559fcc5b5', 'ChargingPile9-7', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('b4064db3892b4ca49d16eb79f33e05d0', 'ChargingPile0-2', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:05', '2018-12-04 13:08:05', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('b416836dcbfe4b26a4802eb14e410835', 'ChargingPile5-7', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('b752e38793fc4a6dbb093ba463a2dd5e', 'ChargingPile9-2', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('b8484fe6ca804ef48f395b5623409a0c', 'ChargingPile4-5', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('ba471adf95a54dbe80c92b7da4e0df9f', 'ChargingPile2-6', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('c2fb3482ef7e4377b25826e143aaf46b', 'ChargingPile0-4', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('c3ebf49414984bdda47de88f7cfdb62c', 'ChargingPile6-6', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('c4be5acb91374320a6e5692b9d75b181', 'ChargingPile1-5', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('cb9bec58474d464398db85f9cc1645d6', 'ChargingPile7-6', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('cd09b997afea40ee99266114be1e06db', 'ChargingPile2-5', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('d13ff609d33f4495b5d41b843816fde2', 'ChargingPile3-1', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('d4beff130d9d4f9095072c632a7baf7e', 'ChargingPile3-3', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('d5319b0810564ef48abad1700e100676', 'ChargingPile3-5', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('d5d951b89de7490b8d4482b085da2b35', 'ChargingPile6-4', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('d80232459095468d8a000f597c414c4c', 'ChargingPile9-3', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('d9639a8825d34be3b6f24b3caa2c050b', 'ChargingPile1-1', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('db635584f4424a0c95131f30b0d7d771', 'ChargingPile5-1', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('de4cbde9054f4ea1be72c0cacacf4a06', 'ChargingPile1-7', 10000, '金牛区马家花园路10号', '104.059908,30.688238', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '1bfb395566284cd4b78e21eac9129435', '1');
INSERT INTO `t_charging_pile` VALUES ('e2ac181a3db347e399a0327f201fc07e', 'ChargingPile0-1', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:05', '2018-12-04 13:08:05', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('e313b3ad5ced48628768713ccf141c7b', 'ChargingPile2-7', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('e9c389e23d4243c285af43df7de366f2', 'ChargingPile5-6', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('e9e35c61fbb84107958d428eee67af6b', 'ChargingPile7-0', 10000, '武侯区永盛南街8号', '104.035689,30.640415', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '90c4be67caa349fab96f93809b9effd4', '1');
INSERT INTO `t_charging_pile` VALUES ('eeb5847d00d4456d86a383dd536e4d86', 'ChargingPile2-4', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('f14243425bd94342b072dcc6adb12597', 'ChargingPile5-2', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('f2a2146712904ddf8b59d4daf0d284e4', 'ChargingPile8-3', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('f2b3c503602c4addaf62622420b7de5a', 'ChargingPile9-4', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');
INSERT INTO `t_charging_pile` VALUES ('f40de9608dfc44f4902d95b3b56f64f6', 'ChargingPile0-5', 10000, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '08c6f657386144d3b526e7e365aa2c64', '1');
INSERT INTO `t_charging_pile` VALUES ('f5a5883365924660915f96ed2fc49a18', 'ChargingPile3-4', 10000, '锦江区东御街93号', '104.072969,30.662815', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '4fa4e94d62624eaeb4280b637096b582', '1');
INSERT INTO `t_charging_pile` VALUES ('f80e525da514421aad56fbb76778a956', 'ChargingPile8-7', 10000, '武侯区临江中路57号', '104.080748,30.650556', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'b74f6e9e89594619b764014b9ed29b8a', '1');
INSERT INTO `t_charging_pile` VALUES ('fa3c02156da646fe9f619a67b2796877', 'ChargingPile2-0', 10000, '青羊区长顺上街2号', '104.063106,30.666667', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '240634c75fe3464cb5203c9bdc8569cd', '1');
INSERT INTO `t_charging_pile` VALUES ('fb97f8181db646d981224d7d56808c2b', 'ChargingPile6-3', 10000, '锦江区芷泉街96号', '104.093702,30.653829', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '82b066392f8c4ac8bd52e026ef4d92af', '1');
INSERT INTO `t_charging_pile` VALUES ('fefe7e6be2274fd199493ff7d935d7f0', 'ChargingPile5-5', 10000, '武侯区新南路91号附7号', '104.083354,30.642124', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '6f925d502096418db90d67f52a613e25', '1');
INSERT INTO `t_charging_pile` VALUES ('ff7cccb63b1a466b8ef47cc333a56c2a', 'ChargingPile4-7', 10000, '成华区双成一路', '104.121828,30.654195', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', '694e37617eda4ec7b767a218f75aa9b7', '1');
INSERT INTO `t_charging_pile` VALUES ('ffb4c37169134c8d954ae86538c63739', 'ChargingPile9-5', 10000, '青羊区人民中路三段3号附2', '104.075269,30.678688', 95, '2018-12-04 13:08:06', '2018-12-04 13:08:06', 'be2ed15af4ca4448a77c70258b52bf54', '1');

-- ----------------------------
-- Table structure for t_charging_station
-- ----------------------------
DROP TABLE IF EXISTS `t_charging_station`;
CREATE TABLE `t_charging_station`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `capacity` double(255, 0) NULL DEFAULT NULL,
  `pile_number` int(11) NULL DEFAULT NULL,
  `position` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `position_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `charging_efficiency` float(255, 0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `run_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_charging_station
-- ----------------------------
INSERT INTO `t_charging_station` VALUES ('08c6f657386144d3b526e7e365aa2c64', '省人民医院充电站', 80000, NULL, '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', '1', 95, '2018-12-04 12:20:42', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('1bfb395566284cd4b78e21eac9129435', '中国中铁二局充电站', 80000, NULL, '金牛区马家花园路10号', '104.059908,30.688238', '1', 95, '2018-12-04 12:26:30', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('240634c75fe3464cb5203c9bdc8569cd', '人民公园充电站', 80000, NULL, '青羊区长顺上街2号', '104.063106,30.666667', '1', 95, '2018-12-04 11:52:58', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('4fa4e94d62624eaeb4280b637096b582', '天府广场充电站', 80000, NULL, '锦江区东御街93号', '104.072969,30.662815', '1', 95, '2018-12-04 12:21:26', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('694e37617eda4ec7b767a218f75aa9b7', '万象城充电站', 80000, NULL, '成华区双成一路', '104.121828,30.654195', '1', 95, '2018-12-04 11:56:26', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('6f925d502096418db90d67f52a613e25', '磨子桥充电站', 80000, NULL, '武侯区新南路91号附7号', '104.083354,30.642124', '1', 95, '2018-12-04 08:57:26', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('82b066392f8c4ac8bd52e026ef4d92af', '东门大桥充电站', 80000, NULL, '锦江区芷泉街96号', '104.093702,30.653829', '1', 95, '2018-12-04 12:24:03', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('90c4be67caa349fab96f93809b9effd4', '红牌楼充电站', 80000, NULL, '武侯区永盛南街8号', '104.035689,30.640415', '1', 95, '2018-12-04 12:24:48', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('b74f6e9e89594619b764014b9ed29b8a', '新南门车站充电站', 80000, NULL, '武侯区临江中路57号', '104.080748,30.650556', '1', 95, '2018-12-04 12:23:12', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('be2ed15af4ca4448a77c70258b52bf54', '文殊院充电站', 80000, NULL, '青羊区人民中路三段3号附2', '104.075269,30.678688', '1', 95, '2018-12-04 11:55:07', '2018-12-04 08:00:00');
INSERT INTO `t_charging_station` VALUES ('ce410b4c9dd640b8b788a0aabfd47b2d', ' 罗马国际充电站', 80000, NULL, '青羊区青龙街18号附2', '104.070616,30.675248', '1', 95, '2018-12-04 12:27:39', '2018-12-04 08:00:00');

-- ----------------------------
-- Table structure for t_electric_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `t_electric_vehicle`;
CREATE TABLE `t_electric_vehicle`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `power` double(255, 0) NULL DEFAULT NULL,
  `battery_capacity` double(255, 0) NULL DEFAULT NULL,
  `position` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `position_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `speed` double(255, 0) NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_electric_vehicle
-- ----------------------------
INSERT INTO `t_electric_vehicle` VALUES ('08264b41b18c40c782216e1c4c9c9c2a', 20000, 20000, '武侯区新南路4号-附6号', '104.080885,30.650484', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('13e3c560bfff490eb0c59026ce816c15', 20000, 20000, '锦江区东御街99号', '104.072756,30.662512', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('3298a1349a7c48a7ad038eb04b161b3a', 20000, 20000, '武侯区新南路4-7号', '104.080755,30.650476', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('35a0b973ca794ee693498576af801d84', 20000, 20000, '锦江区临江东路24号', '104.081457,30.651475', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('401fb7aaeac041068c9fd3bbcb4090bf', 20000, 20000, '成华区双成一路', '104.121835,30.654176', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('4169145ec2774d47a29a9757b5194c9a', 20000, 20000, '锦江区东御街99号', '104.072756,30.662512', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('449058ef22d34869b7d4594c3b50919e', 20000, 20000, '青羊区一环路西2段-17号-9', '104.046785,30.669271', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('6aa03e2dd22941ac83aa03a2fcfd6692', 20000, 20000, '武侯区新南路4-7号', '104.080755,30.650476', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('ba436390c49a430aae2f8670df75ade0', 20000, 20000, '青羊区一环路西2段-17号-9', '104.046785,30.669271', 120, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('bc6cf2db88304406bcc63bf7bb880c66', 20000, 20000, '青羊区八宝街90号-3', '104.066674,30.67786', 120, '1', '备注');

-- ----------------------------
-- Table structure for t_line
-- ----------------------------
DROP TABLE IF EXISTS `t_line`;
CREATE TABLE `t_line`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_point` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_point` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_point_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_point_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ower_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_line
-- ----------------------------
INSERT INTO `t_line` VALUES ('00797be6e3664efb83a3897ef535f15b', 'Line3', '青羊区一环路西2段-17号-附24号', '锦江区东御街93号', '104.046846,30.669401', '104.072969,30.662815', '02:21', '13:05', '0582908d85f14a0eb77006b89be41495', 23, '备注');
INSERT INTO `t_line` VALUES ('086855e2c1de4da38dfc7cbb3fac28ad', 'Line3', '锦江区东御街93号', '武侯区新南路91号附7号', '104.072969,30.662815', '104.083354,30.642124', '21:09', '13:05', 'dbb527f81d2046fb9af7baa13c79265b', 93, '备注');
INSERT INTO `t_line` VALUES ('09179657fbe649d3bc24183593bc8f9f', 'Line1', '武侯区新南路91号附7号', '武侯区临江中路57号', '104.083354,30.642124', '104.080748,30.650556', '10:16', '9:05', '70d6ce0178494854b7849c49674a32b0', 11, '备注');
INSERT INTO `t_line` VALUES ('0945d145627a48f2be294c5fa347b881', 'Line1', '武侯区临江中路57号', '武侯区永盛南街8号', '104.080748,30.650556', '104.035689,30.640415', '07:39', '9:05', 'f9c49973ad8d4c4883d6ef49405756ee', 81, '备注');
INSERT INTO `t_line` VALUES ('10636002e586470093694402322795e4', 'Line3', '武侯区临江中路57号', '金牛区马家花园路10号', '104.080748,30.650556', '104.059908,30.688238', '13:32', '13:05', '66fdfdfdf006472891746a5fc2b94f00', 43, '备注');
INSERT INTO `t_line` VALUES ('1414a9cd1e014a858d5a871d885d1472', 'Line2', '武侯区新南路91号附7号', '锦江区东御街93号', '104.083354,30.642124', '104.072969,30.662815', '15:12', '11:05', 'dbb527f81d2046fb9af7baa13c79265b', 92, '备注');
INSERT INTO `t_line` VALUES ('1623ba6bb535428096af812814f4b337', 'Line3', '青羊区一环路西2段-17号-附24号', '金牛区马家花园路10号', '104.046846,30.669401', '104.059908,30.688238', '10:19', '13:05', '0582908d85f14a0eb77006b89be41495', 23, '备注');
INSERT INTO `t_line` VALUES ('170d92a19a9a4036b3154a2de15c3cb0', 'Line2', '锦江区芷泉街96号', '锦江区芷泉街96号', '104.093702,30.653829', '104.093702,30.653829', '03:24', '11:05', '13fcd5a698c84f42a55aefa582053a83', 32, '备注');
INSERT INTO `t_line` VALUES ('208818588f5b4e1491d1f3ec5e9e19d5', 'Line1', '青羊区长顺上街2号', '武侯区临江中路57号', '104.063106,30.666667', '104.080748,30.650556', '00:37', '9:05', 'dbb527f81d2046fb9af7baa13c79265b', 91, '备注');
INSERT INTO `t_line` VALUES ('221ed03650b74a39a297eec102fe4984', 'Line3', '武侯区新南路91号附7号', '锦江区东御街93号', '104.083354,30.642124', '104.072969,30.662815', '11:35', '13:05', '66fdfdfdf006472891746a5fc2b94f00', 43, '备注');
INSERT INTO `t_line` VALUES ('256cf34ed43041cf8c9af226a7a71f4b', 'Line2', '武侯区永盛南街8号', '金牛区马家花园路10号', '104.035689,30.640415', '104.059908,30.688238', '22:31', '11:05', 'f9c49973ad8d4c4883d6ef49405756ee', 82, '备注');
INSERT INTO `t_line` VALUES ('29d14be871f14bba9f0682b7e4326f81', 'Line2', '锦江区东御街93号', '锦江区芷泉街96号', '104.072969,30.662815', '104.093702,30.653829', '00:32', '11:05', '61756cde1d2f4361bf705ec288e6da92', 72, '备注');
INSERT INTO `t_line` VALUES ('2e76facb4c414ffb807cc3942f7143a2', 'Line3', '锦江区芷泉街96号', '武侯区临江中路57号', '104.093702,30.653829', '104.080748,30.650556', '10:56', '13:05', '13fcd5a698c84f42a55aefa582053a83', 33, '备注');
INSERT INTO `t_line` VALUES ('30813f5de81a4544a43fbb31a4efccfb', 'Line2', '武侯区永盛南街8号', '成华区双成一路', '104.035689,30.640415', '104.121828,30.654195', '12:46', '11:05', 'a9f262c65637444580f7c67f71f7594d', 52, '备注');
INSERT INTO `t_line` VALUES ('344848a2f5ad42049dea9bca757e6103', 'Line2', '锦江区芷泉街96号', '武侯区永盛南街8号', '104.093702,30.653829', '104.035689,30.640415', '22:45', '11:05', 'a9f262c65637444580f7c67f71f7594d', 52, '备注');
INSERT INTO `t_line` VALUES ('37fe1d02092440678d5c46d8a393fe1c', 'Line3', '青羊区长顺上街2号', '武侯区临江中路57号', '104.063106,30.666667', '104.080748,30.650556', '22:27', '13:05', 'dbb527f81d2046fb9af7baa13c79265b', 93, '备注');
INSERT INTO `t_line` VALUES ('3827bbc19e234c10a98418202bd6d5f9', 'Line1', '武侯区永盛南街8号', '锦江区东御街93号', '104.035689,30.640415', '104.072969,30.662815', '14:04', '9:05', '70d6ce0178494854b7849c49674a32b0', 11, '备注');
INSERT INTO `t_line` VALUES ('3abe7451c26547c1985f61502f916f7f', 'Line3', '锦江区芷泉街96号', '青羊区一环路西2段-17号-附24号', '104.093702,30.653829', '104.046846,30.669401', '18:21', '13:05', '61756cde1d2f4361bf705ec288e6da92', 73, '备注');
INSERT INTO `t_line` VALUES ('3e1c38db75524b1cac521c64108000a1', 'Line1', '青羊区长顺上街2号', '成华区双成一路', '104.063106,30.666667', '104.121828,30.654195', '03:00', '9:05', '66fdfdfdf006472891746a5fc2b94f00', 41, '备注');
INSERT INTO `t_line` VALUES ('3fd0d69b3e7646c184e4606675b9d469', 'Line2', '成华区双成一路', '成华区双成一路', '104.121828,30.654195', '104.121828,30.654195', '17:53', '11:05', '13fcd5a698c84f42a55aefa582053a83', 32, '备注');
INSERT INTO `t_line` VALUES ('402636948b22451488b83918b32fba46', 'Line3', '青羊区一环路西2段-17号-附24号', '武侯区临江中路57号', '104.046846,30.669401', '104.080748,30.650556', '08:39', '13:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 103, '备注');
INSERT INTO `t_line` VALUES ('42e1c392b306481c8f3ec621c9d5d71c', 'Line2', '武侯区永盛南街8号', '成华区双成一路', '104.035689,30.640415', '104.121828,30.654195', '01:30', '11:05', '66fdfdfdf006472891746a5fc2b94f00', 42, '备注');
INSERT INTO `t_line` VALUES ('44814bb77e8644e8aee23a24566a80bc', 'Line2', '青羊区长顺上街2号', '武侯区新南路91号附7号', '104.063106,30.666667', '104.083354,30.642124', '11:20', '11:05', '0582908d85f14a0eb77006b89be41495', 22, '备注');
INSERT INTO `t_line` VALUES ('44c8ec3fab5445a78c92afef43abfcc9', 'Line3', '成华区双成一路', '锦江区东御街93号', '104.121828,30.654195', '104.072969,30.662815', '20:50', '13:05', '13fcd5a698c84f42a55aefa582053a83', 33, '备注');
INSERT INTO `t_line` VALUES ('461a2fb75ec845da96ead51fd867fa8a', 'Line1', '武侯区永盛南街8号', '青羊区长顺上街2号', '104.035689,30.640415', '104.063106,30.666667', '02:09', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('46bba744407d478aab1d54140b7d01e8', 'Line1', '青羊区长顺上街2号', '锦江区东御街93号', '104.063106,30.666667', '104.072969,30.662815', '07:34', '9:05', '13fcd5a698c84f42a55aefa582053a83', 31, '备注');
INSERT INTO `t_line` VALUES ('474c3dfc02da4d32bcefdb14ed3c8b23', 'Line1', '青羊区长顺上街2号', '锦江区芷泉街96号', '104.063106,30.666667', '104.093702,30.653829', '05:00', '9:05', '70d6ce0178494854b7849c49674a32b0', 11, '备注');
INSERT INTO `t_line` VALUES ('488a2619467a43988ffd2f89b343c021', 'Line1', '武侯区临江中路57号', '成华区双成一路', '104.080748,30.650556', '104.121828,30.654195', '01:45', '9:05', '13fcd5a698c84f42a55aefa582053a83', 31, '备注');
INSERT INTO `t_line` VALUES ('49e0a5eda23141d399b75bd10c118915', 'Line1', '成华区双成一路', '武侯区永盛南街8号', '104.121828,30.654195', '104.035689,30.640415', '07:44', '9:05', '66fdfdfdf006472891746a5fc2b94f00', 41, '备注');
INSERT INTO `t_line` VALUES ('4f2debe6558549ea8d3adcb712f651bc', 'Line3', '青羊区一环路西2段-17号-附24号', '武侯区新南路91号附7号', '104.046846,30.669401', '104.083354,30.642124', '14:06', '13:05', 'dbb527f81d2046fb9af7baa13c79265b', 93, '备注');
INSERT INTO `t_line` VALUES ('4ff67d57d7c94128ad553308a4cad881', 'Line2', '锦江区芷泉街96号', '青羊区长顺上街2号', '104.093702,30.653829', '104.063106,30.666667', '02:38', '11:05', '70d6ce0178494854b7849c49674a32b0', 12, '备注');
INSERT INTO `t_line` VALUES ('53797a6b2a07438494a37331ad825429', 'Line3', '青羊区长顺上街2号', '锦江区东御街93号', '104.063106,30.666667', '104.072969,30.662815', '22:36', '13:05', '70d6ce0178494854b7849c49674a32b0', 13, '备注');
INSERT INTO `t_line` VALUES ('53ea3ed001724f688d0350181a8093d8', 'Line3', '武侯区新南路91号附7号', '锦江区芷泉街96号', '104.083354,30.642124', '104.093702,30.653829', '21:01', '13:05', 'a9f262c65637444580f7c67f71f7594d', 53, '备注');
INSERT INTO `t_line` VALUES ('55b275ead5b74448a2547edea6860c93', 'Line3', '武侯区新南路91号附7号', '青羊区一环路西2段-17号-附24号', '104.083354,30.642124', '104.046846,30.669401', '00:51', '13:05', 'f9c49973ad8d4c4883d6ef49405756ee', 83, '备注');
INSERT INTO `t_line` VALUES ('55c6ca22c0634b1da5714894ef730e76', 'Line3', '青羊区长顺上街2号', '成华区双成一路', '104.063106,30.666667', '104.121828,30.654195', '13:21', '13:05', '70d6ce0178494854b7849c49674a32b0', 13, '备注');
INSERT INTO `t_line` VALUES ('59aa565413bd446099fc5235eb9f44ea', 'Line3', '青羊区长顺上街2号', '武侯区临江中路57号', '104.063106,30.666667', '104.080748,30.650556', '17:49', '13:05', 'f9c49973ad8d4c4883d6ef49405756ee', 83, '备注');
INSERT INTO `t_line` VALUES ('5a7fcedcca1f46cebb54b9e7eb75f594', 'Line1', '武侯区新南路91号附7号', '青羊区一环路西2段-17号-附24号', '104.083354,30.642124', '104.046846,30.669401', '03:05', '9:05', 'e21f52c7433c4b09960209a2a04e2a46', 61, '备注');
INSERT INTO `t_line` VALUES ('5b7016cf25904526a505e7f421f8d976', 'Line3', '青羊区一环路西2段-17号-附24号', '金牛区马家花园路10号', '104.046846,30.669401', '104.059908,30.688238', '14:40', '13:05', 'e21f52c7433c4b09960209a2a04e2a46', 63, '备注');
INSERT INTO `t_line` VALUES ('5d7d0930264140aca303d53bff305187', 'Line2', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '12:43', '11:05', 'dbb527f81d2046fb9af7baa13c79265b', 92, '备注');
INSERT INTO `t_line` VALUES ('619977d3c0f24bd687f3ea87d938ed70', 'Line2', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '17:14', '11:05', 'f9c49973ad8d4c4883d6ef49405756ee', 82, '备注');
INSERT INTO `t_line` VALUES ('62e68c83175849c593dae5989c070a19', 'Line2', '金牛区马家花园路10号', '青羊区长顺上街2号', '104.059908,30.688238', '104.063106,30.666667', '04:22', '11:05', '70d6ce0178494854b7849c49674a32b0', 12, '备注');
INSERT INTO `t_line` VALUES ('63794ac7df47416f9f2627a6b8bcf5c1', 'Line1', '武侯区永盛南街8号', '金牛区马家花园路10号', '104.035689,30.640415', '104.059908,30.688238', '04:10', '9:05', '66fdfdfdf006472891746a5fc2b94f00', 41, '备注');
INSERT INTO `t_line` VALUES ('637a1b3ca669430d98c7173486be93a4', 'Line3', '锦江区东御街93号', '武侯区永盛南街8号', '104.072969,30.662815', '104.035689,30.640415', '16:43', '13:05', 'e21f52c7433c4b09960209a2a04e2a46', 63, '备注');
INSERT INTO `t_line` VALUES ('66c46b15555a499e962745b7c23ab2bd', 'Line2', '青羊区一环路西2段-17号-附24号', '锦江区东御街93号', '104.046846,30.669401', '104.072969,30.662815', '05:21', '11:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 102, '备注');
INSERT INTO `t_line` VALUES ('6a78308610614867ac005da1af8a5a6e', 'Line1', '金牛区马家花园路10号', '武侯区临江中路57号', '104.059908,30.688238', '104.080748,30.650556', '21:26', '9:05', '61756cde1d2f4361bf705ec288e6da92', 71, '备注');
INSERT INTO `t_line` VALUES ('6e390f7925974c3e96b6755dd8552a4a', 'Line2', '锦江区东御街93号', '武侯区临江中路57号', '104.072969,30.662815', '104.080748,30.650556', '17:46', '11:05', '70d6ce0178494854b7849c49674a32b0', 12, '备注');
INSERT INTO `t_line` VALUES ('6e868620591d4b7a98af39f56db4d152', 'Line3', '金牛区马家花园路10号', '锦江区芷泉街96号', '104.059908,30.688238', '104.093702,30.653829', '10:09', '13:05', 'e21f52c7433c4b09960209a2a04e2a46', 63, '备注');
INSERT INTO `t_line` VALUES ('6fde92648f664d46ad93e8ba4d3bc59c', 'Line2', '锦江区东御街93号', '锦江区芷泉街96号', '104.072969,30.662815', '104.093702,30.653829', '05:34', '11:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 102, '备注');
INSERT INTO `t_line` VALUES ('70cfca50da9c430d9adfbdd91b1f09f5', 'Line2', '武侯区新南路91号附7号', '青羊区一环路西2段-17号-附24号', '104.083354,30.642124', '104.046846,30.669401', '18:17', '11:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 102, '备注');
INSERT INTO `t_line` VALUES ('744daca9fbe24d40a9f7e8ac70fc2e2c', 'Line3', '金牛区马家花园路10号', '成华区双成一路', '104.059908,30.688238', '104.121828,30.654195', '05:35', '13:05', 'f9c49973ad8d4c4883d6ef49405756ee', 83, '备注');
INSERT INTO `t_line` VALUES ('757a092510d842a1a393df246d3637ea', 'Line1', '成华区双成一路', '武侯区新南路91号附7号', '104.121828,30.654195', '104.083354,30.642124', '14:00', '9:05', 'dbb527f81d2046fb9af7baa13c79265b', 91, '备注');
INSERT INTO `t_line` VALUES ('760f570bad4543629d8ad61772bcb19d', 'Line3', '成华区双成一路', '武侯区新南路91号附7号', '104.121828,30.654195', '104.083354,30.642124', '05:23', '13:05', 'a9f262c65637444580f7c67f71f7594d', 53, '备注');
INSERT INTO `t_line` VALUES ('7ab5a4f7065744f4a4befbb078a247e1', 'Line3', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '02:45', '13:05', '13fcd5a698c84f42a55aefa582053a83', 33, '备注');
INSERT INTO `t_line` VALUES ('7bfc9c25b2314fb48d23eb00a25e19e8', 'Line2', '青羊区一环路西2段-17号-附24号', '武侯区新南路91号附7号', '104.046846,30.669401', '104.083354,30.642124', '22:51', '11:05', 'f9c49973ad8d4c4883d6ef49405756ee', 82, '备注');
INSERT INTO `t_line` VALUES ('7d2bb45d758d470d82f6650ae08110ad', 'Line3', '锦江区东御街93号', '武侯区临江中路57号', '104.072969,30.662815', '104.080748,30.650556', '11:25', '13:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 103, '备注');
INSERT INTO `t_line` VALUES ('7e34f5703c9b43ed86c2bf32f68c3269', 'Line3', '青羊区一环路西2段-17号-附24号', '青羊区一环路西2段-17号-附24号', '104.046846,30.669401', '104.046846,30.669401', '16:55', '13:05', 'dbb527f81d2046fb9af7baa13c79265b', 93, '备注');
INSERT INTO `t_line` VALUES ('809a790d4a754ea09bd2ece05420d592', 'Line1', '武侯区新南路91号附7号', '青羊区一环路西2段-17号-附24号', '104.083354,30.642124', '104.046846,30.669401', '14:24', '9:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 101, '备注');
INSERT INTO `t_line` VALUES ('8241e358ccac4d90a6caa24044386fa6', 'Line1', '武侯区临江中路57号', '武侯区新南路91号附7号', '104.080748,30.650556', '104.083354,30.642124', '16:31', '9:05', '61756cde1d2f4361bf705ec288e6da92', 71, '备注');
INSERT INTO `t_line` VALUES ('835b96960dd94c9e879342d04939219e', 'Line1', '锦江区芷泉街96号', '武侯区新南路91号附7号', '104.093702,30.653829', '104.083354,30.642124', '09:39', '9:05', 'e21f52c7433c4b09960209a2a04e2a46', 61, '备注');
INSERT INTO `t_line` VALUES ('85534f3da0d54d57be98a652b462dde5', 'Line1', '锦江区芷泉街96号', '金牛区马家花园路10号', '104.093702,30.653829', '104.059908,30.688238', '05:45', '9:05', '70d6ce0178494854b7849c49674a32b0', 11, '备注');
INSERT INTO `t_line` VALUES ('86bcb83895d94ac3b85a45c14e9d5c32', 'Line1', '武侯区临江中路57号', '武侯区永盛南街8号', '104.080748,30.650556', '104.035689,30.640415', '17:30', '9:05', 'f9c49973ad8d4c4883d6ef49405756ee', 81, '备注');
INSERT INTO `t_line` VALUES ('86c4a5c8f55c40d2bb8854a349c88605', 'Line2', '青羊区长顺上街2号', '武侯区永盛南街8号', '104.063106,30.666667', '104.035689,30.640415', '21:37', '11:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 102, '备注');
INSERT INTO `t_line` VALUES ('87b9ee41ac314982858e3eaf4bd21336', 'Line1', '成华区双成一路', '武侯区新南路91号附7号', '104.121828,30.654195', '104.083354,30.642124', '10:51', '9:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 101, '备注');
INSERT INTO `t_line` VALUES ('8b1e6ba467044ad8acb9b4698c5684fc', 'Line2', '锦江区东御街93号', '锦江区东御街93号', '104.072969,30.662815', '104.072969,30.662815', '22:30', '11:05', '13fcd5a698c84f42a55aefa582053a83', 32, '备注');
INSERT INTO `t_line` VALUES ('8bdaa41fa86e46abbe8f669367e283ef', 'Line1', '金牛区马家花园路10号', '青羊区长顺上街2号', '104.059908,30.688238', '104.063106,30.666667', '19:01', '9:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 101, '备注');
INSERT INTO `t_line` VALUES ('91fa304a45da4ccfa48d7a37c5b09a34', 'Line1', '青羊区长顺上街2号', '锦江区东御街93号', '104.063106,30.666667', '104.072969,30.662815', '22:46', '9:05', '61756cde1d2f4361bf705ec288e6da92', 71, '备注');
INSERT INTO `t_line` VALUES ('948847ed398749548418698009c40802', 'Line1', '武侯区新南路91号附7号', '锦江区芷泉街96号', '104.083354,30.642124', '104.093702,30.653829', '08:12', '9:05', 'a9f262c65637444580f7c67f71f7594d', 51, '备注');
INSERT INTO `t_line` VALUES ('9b6d929a4c9b4aa7905bcbca89e2f736', 'Line2', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '15:14', '11:05', '70d6ce0178494854b7849c49674a32b0', 12, '备注');
INSERT INTO `t_line` VALUES ('9cbc439d83ea4aadac246b736a418605', 'Line1', '金牛区马家花园路10号', '锦江区东御街93号', '104.059908,30.688238', '104.072969,30.662815', '12:54', '9:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 101, '备注');
INSERT INTO `t_line` VALUES ('9d09efce47e444d7aca736754f90231c', 'Line2', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '12:36', '11:05', '61756cde1d2f4361bf705ec288e6da92', 72, '备注');
INSERT INTO `t_line` VALUES ('9de2c50244b04072b9c4b01c62aaafd4', 'Line1', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '06:14', '9:05', '13fcd5a698c84f42a55aefa582053a83', 31, '备注');
INSERT INTO `t_line` VALUES ('9e015e9dab97497b9341dcd252535cff', 'Line2', '金牛区马家花园路10号', '青羊区一环路西2段-17号-附24号', '104.059908,30.688238', '104.046846,30.669401', '02:49', '11:05', 'dbb527f81d2046fb9af7baa13c79265b', 92, '备注');
INSERT INTO `t_line` VALUES ('a3f3cf2a740a468fa3e92aa8d3cbcc95', 'Line3', '武侯区新南路91号附7号', '成华区双成一路', '104.083354,30.642124', '104.121828,30.654195', '10:25', '13:05', '61756cde1d2f4361bf705ec288e6da92', 73, '备注');
INSERT INTO `t_line` VALUES ('a5a5f09a82d4468ea4ba2c4eac878fa6', 'Line3', '青羊区长顺上街2号', '成华区双成一路', '104.063106,30.666667', '104.121828,30.654195', '21:32', '13:05', '70d6ce0178494854b7849c49674a32b0', 13, '备注');
INSERT INTO `t_line` VALUES ('a9820a2ff036480cb6c532eeaae854fd', 'Line1', '金牛区马家花园路10号', '武侯区新南路91号附7号', '104.059908,30.688238', '104.083354,30.642124', '02:41', '9:05', 'e21f52c7433c4b09960209a2a04e2a46', 61, '备注');
INSERT INTO `t_line` VALUES ('ad4517f2a1b4410887f51917c38a4706', 'Line3', '武侯区临江中路57号', '成华区双成一路', '104.080748,30.650556', '104.121828,30.654195', '09:31', '13:05', '70d6ce0178494854b7849c49674a32b0', 13, '备注');
INSERT INTO `t_line` VALUES ('ae1762eeb6334835b3e0f7f3ab8fe19f', 'Line1', '金牛区马家花园路10号', '金牛区马家花园路10号', '104.059908,30.688238', '104.059908,30.688238', '22:25', '9:05', 'dbb527f81d2046fb9af7baa13c79265b', 91, '备注');
INSERT INTO `t_line` VALUES ('ae6cb99335c64506aa73947ad9590b8d', 'Line3', '武侯区新南路91号附7号', '武侯区临江中路57号', '104.083354,30.642124', '104.080748,30.650556', '11:42', '13:05', 'a9f262c65637444580f7c67f71f7594d', 53, '备注');
INSERT INTO `t_line` VALUES ('b1bd81d82bb248cf93159991128ae847', 'Line2', '锦江区东御街93号', '武侯区临江中路57号', '104.072969,30.662815', '104.080748,30.650556', '19:01', '11:05', '66fdfdfdf006472891746a5fc2b94f00', 42, '备注');
INSERT INTO `t_line` VALUES ('b36080661b4a43b9b70d1e815a083d02', 'Line2', '青羊区一环路西2段-17号-附24号', '锦江区东御街93号', '104.046846,30.669401', '104.072969,30.662815', '18:09', '11:05', 'e21f52c7433c4b09960209a2a04e2a46', 62, '备注');
INSERT INTO `t_line` VALUES ('b5d8f43806554c81b7018d8b7470504c', 'Line3', '锦江区芷泉街96号', '成华区双成一路', '104.093702,30.653829', '104.121828,30.654195', '02:49', '13:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 103, '备注');
INSERT INTO `t_line` VALUES ('b997254354114cd5b07bdde4dbfc05d4', 'Line1', '金牛区马家花园路10号', '金牛区马家花园路10号', '104.059908,30.688238', '104.059908,30.688238', '10:34', '9:05', 'a9f262c65637444580f7c67f71f7594d', 51, '备注');
INSERT INTO `t_line` VALUES ('bb34d49ae3b44916b574016140cc0445', 'Line2', '青羊区长顺上街2号', '武侯区临江中路57号', '104.063106,30.666667', '104.080748,30.650556', '13:54', '11:05', '13fcd5a698c84f42a55aefa582053a83', 32, '备注');
INSERT INTO `t_line` VALUES ('bca727be5d3c4470b05b4da7ad5a9ae8', 'Line1', '金牛区马家花园路10号', '青羊区一环路西2段-17号-附24号', '104.059908,30.688238', '104.046846,30.669401', '11:34', '9:05', 'f9c49973ad8d4c4883d6ef49405756ee', 81, '备注');
INSERT INTO `t_line` VALUES ('bd3293a9343e43018b978413b86c4afc', 'Line3', '锦江区东御街93号', '青羊区一环路西2段-17号-附24号', '104.072969,30.662815', '104.046846,30.669401', '07:17', '13:05', '13fcd5a698c84f42a55aefa582053a83', 33, '备注');
INSERT INTO `t_line` VALUES ('bf6eda8881284c218da8b32245237cb1', 'Line1', '成华区双成一路', '金牛区马家花园路10号', '104.121828,30.654195', '104.059908,30.688238', '16:37', '9:05', '61756cde1d2f4361bf705ec288e6da92', 71, '备注');
INSERT INTO `t_line` VALUES ('c13a42c65e1045d8ad947b66778f77a3', 'Line2', '金牛区马家花园路10号', '武侯区新南路91号附7号', '104.059908,30.688238', '104.083354,30.642124', '12:44', '11:05', '66fdfdfdf006472891746a5fc2b94f00', 42, '备注');
INSERT INTO `t_line` VALUES ('c2324d36cb0545ba8b9ba11f583ab2cb', 'Line2', '成华区双成一路', '青羊区一环路西2段-17号-附24号', '104.121828,30.654195', '104.046846,30.669401', '02:15', '11:05', '0582908d85f14a0eb77006b89be41495', 22, '备注');
INSERT INTO `t_line` VALUES ('c2c17f46e8744063b7c12f97e79da277', 'Line3', '武侯区永盛南街8号', '金牛区马家花园路10号', '104.035689,30.640415', '104.059908,30.688238', '10:53', '13:05', 'a9f262c65637444580f7c67f71f7594d', 53, '备注');
INSERT INTO `t_line` VALUES ('c512f601649c4411be2f5372f1494761', 'Line1', '金牛区马家花园路10号', '武侯区临江中路57号', '104.059908,30.688238', '104.080748,30.650556', '21:01', '9:05', 'e21f52c7433c4b09960209a2a04e2a46', 61, '备注');
INSERT INTO `t_line` VALUES ('c75a16a03be54d7b9f6a0ded1e432298', 'Line3', '武侯区新南路91号附7号', '锦江区东御街93号', '104.083354,30.642124', '104.072969,30.662815', '12:36', '13:05', '0582908d85f14a0eb77006b89be41495', 23, '备注');
INSERT INTO `t_line` VALUES ('ca012f9a207a4d6c896db36135f11f41', 'Line1', '锦江区东御街93号', '武侯区新南路91号附7号', '104.072969,30.662815', '104.083354,30.642124', '12:25', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('caf17328134f4824a5434e3107eabc3e', 'Line1', '锦江区东御街93号', '锦江区东御街93号', '104.072969,30.662815', '104.072969,30.662815', '06:56', '9:05', '66fdfdfdf006472891746a5fc2b94f00', 41, '备注');
INSERT INTO `t_line` VALUES ('cdb918e4cdb345149c89c3360cfade27', 'Line2', '金牛区马家花园路10号', '武侯区新南路91号附7号', '104.059908,30.688238', '104.083354,30.642124', '10:48', '11:05', '61756cde1d2f4361bf705ec288e6da92', 72, '备注');
INSERT INTO `t_line` VALUES ('cdbfe9409c73416a8f1c10e87a1ad18b', 'Line3', '青羊区长顺上街2号', '锦江区芷泉街96号', '104.063106,30.666667', '104.093702,30.653829', '19:38', '13:05', 'f9c49973ad8d4c4883d6ef49405756ee', 83, '备注');
INSERT INTO `t_line` VALUES ('d1aee4d7a22f4ea7a48826c032093b35', 'Line2', '武侯区新南路91号附7号', '青羊区一环路西2段-17号-附24号', '104.083354,30.642124', '104.046846,30.669401', '01:49', '11:05', 'e21f52c7433c4b09960209a2a04e2a46', 62, '备注');
INSERT INTO `t_line` VALUES ('d5d69404377c452db99eeb3cdc2ae7ec', 'Line1', '武侯区新南路91号附7号', '锦江区芷泉街96号', '104.083354,30.642124', '104.093702,30.653829', '20:26', '9:05', '13fcd5a698c84f42a55aefa582053a83', 31, '备注');
INSERT INTO `t_line` VALUES ('d66d5b846a2145189a0454050ab0552f', 'Line2', '金牛区马家花园路10号', '武侯区新南路91号附7号', '104.059908,30.688238', '104.083354,30.642124', '05:23', '11:05', 'a9f262c65637444580f7c67f71f7594d', 52, '备注');
INSERT INTO `t_line` VALUES ('d6b42e9a81cf4e858502d54eee609732', 'Line1', '武侯区临江中路57号', '武侯区临江中路57号', '104.080748,30.650556', '104.080748,30.650556', '16:53', '9:05', 'f9c49973ad8d4c4883d6ef49405756ee', 81, '备注');
INSERT INTO `t_line` VALUES ('d92151d0ef0347b49214123935bfc7b9', 'Line3', '锦江区东御街93号', '成华区双成一路', '104.072969,30.662815', '104.121828,30.654195', '02:52', '13:05', '0582908d85f14a0eb77006b89be41495', 23, '备注');
INSERT INTO `t_line` VALUES ('d9b7db4ae1c44bd5ad5f36c86873267e', 'Line3', '金牛区马家花园路10号', '武侯区临江中路57号', '104.059908,30.688238', '104.080748,30.650556', '13:42', '13:05', '66fdfdfdf006472891746a5fc2b94f00', 43, '备注');
INSERT INTO `t_line` VALUES ('d9d152cd16a940f5b81847c27dfcddff', 'Line1', '锦江区芷泉街96号', '成华区双成一路', '104.093702,30.653829', '104.121828,30.654195', '22:44', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('dd814cbb4bc944739a45e33055051d3f', 'Line3', '青羊区长顺上街2号', '武侯区永盛南街8号', '104.063106,30.666667', '104.035689,30.640415', '01:37', '13:05', '61756cde1d2f4361bf705ec288e6da92', 73, '备注');
INSERT INTO `t_line` VALUES ('ddac09970cc442159b7f33fcb45846c3', 'Line2', '金牛区马家花园路10号', '青羊区一环路西2段-17号-附24号', '104.059908,30.688238', '104.046846,30.669401', '02:55', '11:05', '0582908d85f14a0eb77006b89be41495', 22, '备注');
INSERT INTO `t_line` VALUES ('e2200caebe3b472aaa28584b2071abbb', 'Line2', '金牛区马家花园路10号', '武侯区新南路91号附7号', '104.059908,30.688238', '104.083354,30.642124', '08:25', '11:05', 'a9f262c65637444580f7c67f71f7594d', 52, '备注');
INSERT INTO `t_line` VALUES ('e805bf80c29f401486786501fac612bc', 'Line2', '武侯区新南路91号附7号', '金牛区马家花园路10号', '104.083354,30.642124', '104.059908,30.688238', '02:01', '11:05', 'e21f52c7433c4b09960209a2a04e2a46', 62, '备注');
INSERT INTO `t_line` VALUES ('e9ccb05f862d463a9eacaa6bdc85e8a8', 'Line3', '武侯区临江中路57号', '青羊区长顺上街2号', '104.080748,30.650556', '104.063106,30.666667', '20:23', '13:05', '61756cde1d2f4361bf705ec288e6da92', 73, '备注');
INSERT INTO `t_line` VALUES ('e9f653bfce4249e59debc9d5911f8db9', 'Line2', '成华区双成一路', '金牛区马家花园路10号', '104.121828,30.654195', '104.059908,30.688238', '06:41', '11:05', '66fdfdfdf006472891746a5fc2b94f00', 42, '备注');
INSERT INTO `t_line` VALUES ('ea695337e67645929ad7852bf75ff0fb', 'Line3', '成华区双成一路', '成华区双成一路', '104.121828,30.654195', '104.121828,30.654195', '06:50', '13:05', '66fdfdfdf006472891746a5fc2b94f00', 43, '备注');
INSERT INTO `t_line` VALUES ('ecf8a2e91fbc4b629ece4c661a00c3b3', 'Line2', '武侯区临江中路57号', '金牛区马家花园路10号', '104.080748,30.650556', '104.059908,30.688238', '19:39', '11:05', 'e21f52c7433c4b09960209a2a04e2a46', 62, '备注');
INSERT INTO `t_line` VALUES ('eec8e2a8ef254d1bbf34d5c7db0a9f3e', 'Line2', '武侯区永盛南街8号', '青羊区长顺上街2号', '104.035689,30.640415', '104.063106,30.666667', '12:42', '11:05', 'f9c49973ad8d4c4883d6ef49405756ee', 82, '备注');
INSERT INTO `t_line` VALUES ('f189227cb16b4168bc62b54aeba25faf', 'Line2', '武侯区新南路91号附7号', '武侯区临江中路57号', '104.083354,30.642124', '104.080748,30.650556', '19:15', '11:05', '61756cde1d2f4361bf705ec288e6da92', 72, '备注');
INSERT INTO `t_line` VALUES ('f475f5c1d3524efbb706ec0a4cffa04a', 'Line1', '青羊区一环路西2段-17号-附24号', '金牛区马家花园路10号', '104.046846,30.669401', '104.059908,30.688238', '08:20', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('f94800d2f07e4fa78239d274c66c5ff0', 'Line2', '武侯区临江中路57号', '青羊区一环路西2段-17号-附24号', '104.080748,30.650556', '104.046846,30.669401', '17:49', '11:05', 'dbb527f81d2046fb9af7baa13c79265b', 92, '备注');
INSERT INTO `t_line` VALUES ('f96fe863138543e28d484ee73656f630', 'Line1', '武侯区临江中路57号', '武侯区临江中路57号', '104.080748,30.650556', '104.080748,30.650556', '18:46', '9:05', 'dbb527f81d2046fb9af7baa13c79265b', 91, '备注');
INSERT INTO `t_line` VALUES ('f97e145b6cee45e6ab053ab929f0f7a0', 'Line3', '武侯区永盛南街8号', '青羊区长顺上街2号', '104.035689,30.640415', '104.063106,30.666667', '09:40', '13:05', 'e0d88d964b9d40a89831dcf5da1c4bec', 103, '备注');
INSERT INTO `t_line` VALUES ('f9d6ee65d8844dd98e70bc86c87d7353', 'Line2', '武侯区新南路91号附7号', '锦江区东御街93号', '104.083354,30.642124', '104.072969,30.662815', '01:18', '11:05', '0582908d85f14a0eb77006b89be41495', 22, '备注');
INSERT INTO `t_line` VALUES ('fd3c7bc71d7741109c03f9453c1dc7d9', 'Line3', '金牛区马家花园路10号', '锦江区芷泉街96号', '104.059908,30.688238', '104.093702,30.653829', '22:51', '13:05', 'e21f52c7433c4b09960209a2a04e2a46', 63, '备注');
INSERT INTO `t_line` VALUES ('fdc45eb7456f4f478a28d4cca3d39568', 'Line1', '青羊区一环路西2段-17号-附24号', '武侯区永盛南街8号', '104.046846,30.669401', '104.035689,30.640415', '08:20', '9:05', 'a9f262c65637444580f7c67f71f7594d', 51, '备注');
INSERT INTO `t_line` VALUES ('fdd2d7d313da4681858ec7e8c6873e13', 'Line1', '武侯区新南路91号附7号', '金牛区马家花园路10号', '104.083354,30.642124', '104.059908,30.688238', '03:19', '9:05', 'a9f262c65637444580f7c67f71f7594d', 51, '备注');

-- ----------------------------
-- Table structure for t_transaction
-- ----------------------------
DROP TABLE IF EXISTS `t_transaction`;
CREATE TABLE `t_transaction`  (
  `tx_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `block_number` int(11) NULL DEFAULT NULL,
  `tx_time` timestamp(0) NULL DEFAULT NULL,
  `tx_from` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `tx_to` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `tx_value` double(255, 0) NULL DEFAULT NULL,
  `tx_power` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`tx_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_transaction
-- ----------------------------
INSERT INTO `t_transaction` VALUES ('4c3e761c87d147ce8343ee9cc5d9a185', 1, '2018-12-18 08:53:22', '08264b41b18c40c782216e1c4c9c9c2a', '08c6f657386144d3b526e7e365aa2c64', 1, 1);
INSERT INTO `t_transaction` VALUES ('65d17958ea1e4e55bc283e33b0479aa9', 9, '2018-12-18 08:53:22', 'ba436390c49a430aae2f8670df75ade0', 'b74f6e9e89594619b764014b9ed29b8a', 0, 1);
INSERT INTO `t_transaction` VALUES ('9e6e8ecccea94afcb58cb625e6c0551b', 2, '2018-12-18 08:53:22', '13e3c560bfff490eb0c59026ce816c15', '1bfb395566284cd4b78e21eac9129435', 0, 0);
INSERT INTO `t_transaction` VALUES ('a4c1e629c28949349a460e78c498d6f1', 3, '2018-12-18 08:53:22', '3298a1349a7c48a7ad038eb04b161b3a', '240634c75fe3464cb5203c9bdc8569cd', 0, 1);
INSERT INTO `t_transaction` VALUES ('abe6260bbe9445b7bd056146691bb136', 5, '2018-12-18 08:53:22', '401fb7aaeac041068c9fd3bbcb4090bf', '694e37617eda4ec7b767a218f75aa9b7', 1, 1);
INSERT INTO `t_transaction` VALUES ('ba25ab60cdff450e838d20c495e7077c', 6, '2018-12-18 08:53:22', '4169145ec2774d47a29a9757b5194c9a', '6f925d502096418db90d67f52a613e25', 0, 0);
INSERT INTO `t_transaction` VALUES ('bc68099a893149f4bc0f027c17828e90', 4, '2018-12-18 08:53:22', '35a0b973ca794ee693498576af801d84', '4fa4e94d62624eaeb4280b637096b582', 1, 1);
INSERT INTO `t_transaction` VALUES ('ccced911f864451e92c6100cc1d0643e', 8, '2018-12-18 08:53:22', '6aa03e2dd22941ac83aa03a2fcfd6692', '90c4be67caa349fab96f93809b9effd4', 0, 0);
INSERT INTO `t_transaction` VALUES ('dd5f5cae7edd4c44b33810d3dadb28df', 7, '2018-12-18 08:53:22', '449058ef22d34869b7d4594c3b50919e', '82b066392f8c4ac8bd52e026ef4d92af', 0, 0);
INSERT INTO `t_transaction` VALUES ('facf13dc411d44009db54042d1f09bcd', 10, '2018-12-18 08:53:22', 'bc6cf2db88304406bcc63bf7bb880c66', 'be2ed15af4ca4448a77c70258b52bf54', 1, 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `ev_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `telnumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `createdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('70d6ce0178494854b7849c49674a32b0', '08264b41b18c40c782216e1c4c9c9c2a', 'user1', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('0582908d85f14a0eb77006b89be41495', '13e3c560bfff490eb0c59026ce816c15', 'user2', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('13fcd5a698c84f42a55aefa582053a83', '3298a1349a7c48a7ad038eb04b161b3a', 'user3', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('66fdfdfdf006472891746a5fc2b94f00', '35a0b973ca794ee693498576af801d84', 'user4', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('a9f262c65637444580f7c67f71f7594d', '401fb7aaeac041068c9fd3bbcb4090bf', 'user5', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('e21f52c7433c4b09960209a2a04e2a46', '4169145ec2774d47a29a9757b5194c9a', 'user6', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('61756cde1d2f4361bf705ec288e6da92', '449058ef22d34869b7d4594c3b50919e', 'user7', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('f9c49973ad8d4c4883d6ef49405756ee', '6aa03e2dd22941ac83aa03a2fcfd6692', 'user8', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('dbb527f81d2046fb9af7baa13c79265b', 'ba436390c49a430aae2f8670df75ade0', 'user9', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');
INSERT INTO `t_user` VALUES ('e0d88d964b9d40a89831dcf5da1c4bec', 'bc6cf2db88304406bcc63bf7bb880c66', 'user10', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04', '1', '备注');

SET FOREIGN_KEY_CHECKS = 1;
