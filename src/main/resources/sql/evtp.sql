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

 Date: 04/01/2019 17:32:40
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
  `power` double(255, 2) NULL DEFAULT NULL,
  `battery_capacity` double(255, 2) NULL DEFAULT NULL,
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
INSERT INTO `t_electric_vehicle` VALUES ('08264b41b18c40c782216e1c4c9c9c2a', 10.43, 20.00, '锦江区庆云南街94号', '104.093289,30.66715', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('13e3c560bfff490eb0c59026ce816c15', 18.84, 20.00, '锦江区汇泉北路', '104.119249,30.644999', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('3298a1349a7c48a7ad038eb04b161b3a', 10.77, 20.00, '青羊区文庙西街', '104.056023,30.662465', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('35a0b973ca794ee693498576af801d84', 7.13, 20.00, '锦江区大田坎街162号', '104.109465,30.649305', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('401fb7aaeac041068c9fd3bbcb4090bf', 4.47, 20.00, '成华区双华南路20号', '104.108881,30.655943', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('4169145ec2774d47a29a9757b5194c9a', 9.04, 20.00, '锦江区莲桂西路10号', '104.105441,30.639944', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('449058ef22d34869b7d4594c3b50919e', 10.51, 20.00, '锦江区海椒市东街33号', '104.109839,30.642627', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('6aa03e2dd22941ac83aa03a2fcfd6692', 11.23, 20.00, '青羊区大墙西街33号', '104.079633,30.668659', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('ba436390c49a430aae2f8670df75ade0', 3.98, 20.00, '锦江区滨江东路170号', '104.084831,30.651659', 60, '1', '备注');
INSERT INTO `t_electric_vehicle` VALUES ('bc6cf2db88304406bcc63bf7bb880c66', 11.19, 20.00, '锦江区宏济新路402号', '104.101985,30.646672', 60, '1', '备注');

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
INSERT INTO `t_line` VALUES ('0945d145627a48f2be294c5fa347b881', 'Line1', '武侯区临江中路57号', '武侯区永盛南街8号', '104.080748,30.650556', '104.035689,30.640415', '07:39', '9:05', 'f9c49973ad8d4c4883d6ef49405756ee', 81, '备注');
INSERT INTO `t_line` VALUES ('3827bbc19e234c10a98418202bd6d5f9', 'Line1', '武侯区永盛南街8号', '锦江区东御街93号', '104.035689,30.640415', '104.072969,30.662815', '14:04', '9:05', '70d6ce0178494854b7849c49674a32b0', 11, '备注');
INSERT INTO `t_line` VALUES ('c512f601649c4411be2f5372f1494761', 'Line1', '金牛区马家花园路10号', '武侯区临江中路57号', '104.059908,30.688238', '104.080748,30.650556', '21:01', '9:05', 'e21f52c7433c4b09960209a2a04e2a46', 61, '备注');
INSERT INTO `t_line` VALUES ('ca012f9a207a4d6c896db36135f11f41', 'Line1', '锦江区东御街93号', '武侯区新南路91号附7号', '104.072969,30.662815', '104.083354,30.642124', '12:25', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('d5d69404377c452db99eeb3cdc2ae7ec', 'Line1', '武侯区新南路91号附7号', '锦江区芷泉街96号', '104.083354,30.642124', '104.093702,30.653829', '20:26', '9:05', '13fcd5a698c84f42a55aefa582053a83', 31, '备注');
INSERT INTO `t_line` VALUES ('d9d152cd16a940f5b81847c27dfcddff', 'Line1', '锦江区芷泉街96号', '成华区双成一路', '104.093702,30.653829', '104.121828,30.654195', '22:44', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');
INSERT INTO `t_line` VALUES ('f475f5c1d3524efbb706ec0a4cffa04a', 'Line1', '青羊区一环路西2段-17号-附24号', '金牛区马家花园路10号', '104.046846,30.669401', '104.059908,30.688238', '08:20', '9:05', '0582908d85f14a0eb77006b89be41495', 21, '备注');

-- ----------------------------
-- Table structure for t_run_log
-- ----------------------------
DROP TABLE IF EXISTS `t_run_log`;
CREATE TABLE `t_run_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_point` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_point` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_point_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_point_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ower_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_run_log
-- ----------------------------
INSERT INTO `t_run_log` VALUES ('C847FB5CF6B00001F7A54F2010B01113', '锦江区人民南路2段', '锦江区下南大街1号', '104.072541,30.655807', '104.070583,30.654858', '00:59:58', '01:01:28', 'f9c49973ad8d4c4883d6ef49405756ee', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CF81000018DD81C3097628750', '青羊区提督街42号', '青羊区大墙西街29号', '104.081956,30.665442', '104.080607,30.668893', '01:00:00', '01:01:24', 'a9f262c65637444580f7c67f71f7594d', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CF9700001D2C860D09BE08550', '锦江区光华街11号', '锦江区光华街11号-2幢', '104.075,30.659096', '104.074989,30.659257', '01:00:00', '01:00:14', '13fcd5a698c84f42a55aefa582053a83', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFA1000016DCE14C0F62C14B6', '锦江区红星路31号', '青羊区七家巷19号', '104.087112,30.661319', '104.08858,30.670415', '01:00:00', '01:02:47', 'e21f52c7433c4b09960209a2a04e2a46', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFAA00001553A6C8010D01656', '武侯区浆洗街9号-附10', '武侯区', '104.063819,30.64873', '104.064642,30.647646', '01:00:02', '01:03:34', '70d6ce0178494854b7849c49674a32b0', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFB200001788E1A901CF21CA9', '锦江区锦兴路57号', '锦江区新开街18-1号', '104.076499,30.656853', '104.075937,30.655732', '01:00:02', '01:00:22', 'e0d88d964b9d40a89831dcf5da1c4bec', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFBA00001B7A8F14F9A803E20', '武侯区临江东路30号', '武侯区', '104.083326,30.651192', '104.066461,30.646591', '01:00:02', '01:06:23', '66fdfdfdf006472891746a5fc2b94f00', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFBF000011BC11F673A501427', '锦江区成龙路', '龙泉驿区', '104.130142,30.607838', '104.177876,30.570822', '01:00:02', '01:12:48', '61756cde1d2f4361bf705ec288e6da92', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFC90000195E1DF18AE608D90', '锦江区大慈寺路34号', '青羊区琴台路116号', '104.090868,30.661238', '104.052132,30.666148', '01:00:02', '01:09:22', '0582908d85f14a0eb77006b89be41495', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5CFCD00001655B10B01CF05870', '成华区二环路东二段', '金牛区茶店子东街85号', '104.118598,30.672416', '104.036921,30.701709', '01:00:02', '01:19:23', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5F494000011E63403225B01E34', '锦江区光华街11号-2幢', '青羊区文庙西街', '104.075069,30.660445', '104.056023,30.662465', '01:03:24', '01:12:12', '13fcd5a698c84f42a55aefa582053a83', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB5FC53000014E49A17C1FD5DFD0', '锦江区新开街18-1号', '锦江区宏济新路356号', '104.075977,30.655831', '104.101985,30.646672', '01:03:26', '01:11:54', 'e0d88d964b9d40a89831dcf5da1c4bec', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB6042D000011D17705D1BB31EE1', '青羊区大墙西街29号', '锦江区莲桂西路82号', '104.080828,30.668789', '104.103159,30.641009', '01:03:29', '01:12:07', 'a9f262c65637444580f7c67f71f7594d', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB60C17000013FD0A8BA2F0F8D40', '锦江区下南大街1号', '青羊区大墙西街33号', '104.070693,30.654826', '104.079633,30.668659', '01:03:31', '01:09:45', 'f9c49973ad8d4c4883d6ef49405756ee', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB6371600001C9E419BEE0D01A52', '青羊区七家巷19号', '锦江区莲桂西路12号', '104.08874,30.670642', '104.105441,30.639944', '01:03:45', '01:15:45', 'e21f52c7433c4b09960209a2a04e2a46', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB63EAE0000196FDAB41F7301AE6', '武侯区', '锦江区庆云南街70号', '104.064542,30.647467', '104.093289,30.66715', '01:03:47', '01:11:47', '70d6ce0178494854b7849c49674a32b0', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB7236C000012F1741451CC01ACF', '武侯区', '锦江区大田坎街162号-附31号', '104.066641,30.646588', '104.109465,30.649305', '01:07:40', '01:27:03', '66fdfdfdf006472891746a5fc2b94f00', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FB9362F0000192B213001DB0D610', '青羊区琴台路116号', '锦江区二环路东4段-36号-附40号', '104.052322,30.666507', '104.11485,30.646291', '01:09:31', '01:30:51', '0582908d85f14a0eb77006b89be41495', NULL, '电量过低当前任务未完成', '2');
INSERT INTO `t_run_log` VALUES ('C847FB9AD720000162AB19EEA793D070', '龙泉驿区', '锦江区成龙大道一段', '104.177866,30.570812', '104.144915,30.598922', '01:20:24', '01:38:14', '61756cde1d2f4361bf705ec288e6da92', NULL, '电量过低当前任务未完成', '2');
INSERT INTO `t_run_log` VALUES ('C847FB9C5C700001145494002242165D', '金牛区茶店子东街85号', '锦江区东大街东大路段', '104.03711,30.701587', '104.119932,30.638395', '01:20:35', '01:54:21', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '电量过低当前任务未完成', '2');
INSERT INTO `t_run_log` VALUES ('C847FB9F8F100001E64C615028A01F01', '锦江区莲桂西路82号', '锦江区锦兴路56号', '104.102949,30.641111', '104.077242,30.656931', '01:32:29', '01:42:59', 'a9f262c65637444580f7c67f71f7594d', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBA0691000011DF71910A1102190', '锦江区二环路东4段-36号-附40号', '成华区双成一路', '104.114611,30.6459', '104.121835,30.654176', '01:35:51', '01:41:47', '0582908d85f14a0eb77006b89be41495', NULL, '充电', '1');
INSERT INTO `t_run_log` VALUES ('C847FBA263A0000176C9135015701FDE', '锦江区成龙大道一段', '武侯区新南路91号', '104.144565,30.599117', '104.083169,30.642469', '01:43:56', '02:12:40', '61756cde1d2f4361bf705ec288e6da92', NULL, '充电', '1');
INSERT INTO `t_run_log` VALUES ('C847FBA41E800001E297FD101FB62020', '锦江区锦兴路56号', '成华区双华南路20号', '104.077332,30.656849', '104.108881,30.655943', '01:45:10', '02:00:56', 'a9f262c65637444580f7c67f71f7594d', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBAB539000017173F6425AB06120', '锦江区东大街东大路段', '成华区双成一路', '104.120139,30.638213', '104.121835,30.654176', '01:59:22', '02:10:49', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '充电', '1');
INSERT INTO `t_run_log` VALUES ('C847FBACB74000012B5EAC88469047A0', '成华区双成一路', '锦江区汇泉北路', '104.121646,30.653813', '104.119249,30.644999', '02:07:07', '02:14:02', '0582908d85f14a0eb77006b89be41495', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBB87260000196F4282083D8A5E0', '武侯区新南路91号', '青羊区大墙西街78号', '104.083079,30.64263', '104.07921,30.669655', '02:53:21', '03:08:38', '61756cde1d2f4361bf705ec288e6da92', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBB8EB8000013811180018B09C90', '成华区双成一路', '锦江区劼人路171', '104.121646,30.653813', '104.13102,30.621655', '02:56:10', '03:16:16', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBC4D44000012D291B7E11A51D4E', '青羊区大墙西街78号', '青羊区文翁路86号', '104.079209,30.669655', '104.066211,30.657742', '03:51:03', '04:10:33', '61756cde1d2f4361bf705ec288e6da92', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBC61CC000019295F90079D019C8', '锦江区劼人路171', '青羊区锦里西路90号附4', '104.13117,30.621917', '104.053238,30.662583', '03:56:02', '04:32:50', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBCA8060000119CB6A8316304F40', '青羊区文翁路86号', '锦江区海椒市东街39号', '104.06588,30.657886', '104.109839,30.642627', '04:20:54', '04:49:57', '61756cde1d2f4361bf705ec288e6da92', NULL, '执行任务', '1');
INSERT INTO `t_run_log` VALUES ('C847FBDA9D2000018D2911D211C0F100', '青羊区锦里西路90号附4', '锦江区滨江东路170号', '104.053578,30.662542', '104.084731,30.651704', '04:54:34', '05:08:26', 'dbb527f81d2046fb9af7baa13c79265b', NULL, '电量过低当前任务未完成', '2');

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `point` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `ower_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES ('183461caf38941ffb543137e7888ec5d', '104.066609,30.658155', 3600000, 3, '1', '61756cde1d2f4361bf705ec288e6da92');
INSERT INTO `t_task` VALUES ('207149e255b3469ba6ab8093e556a758', '104.075089,30.659274', 3600000, 1, '1', '13fcd5a698c84f42a55aefa582053a83');
INSERT INTO `t_task` VALUES ('24ec6a756f7f47798df19f3480240cea', '104.037001,30.701824', 3600000, 1, '1', 'dbb527f81d2046fb9af7baa13c79265b');
INSERT INTO `t_task` VALUES ('27c950beb23f4670ae03505781bab8ae', '104.064669,30.647779', 3600000, 1, '1', '70d6ce0178494854b7849c49674a32b0');
INSERT INTO `t_task` VALUES ('3248dcb43b4b41f1bf6aa08bd8a67de5', '104.079617,30.668531', 600000, 2, '1', 'f9c49973ad8d4c4883d6ef49405756ee');
INSERT INTO `t_task` VALUES ('4a17952291154f629350d1d3ca1d7f78', '104.105416,30.639887', 1200000, 2, '1', 'e21f52c7433c4b09960209a2a04e2a46');
INSERT INTO `t_task` VALUES ('4f93ecf3ece0411fa428a577311330b4', '104.066465,30.646598', 3600000, 1, '1', '66fdfdfdf006472891746a5fc2b94f00');
INSERT INTO `t_task` VALUES ('5df651956b4b4e1fa5a20c93750fc791', '104.088456,30.670519', 3600000, 1, '1', 'e21f52c7433c4b09960209a2a04e2a46');
INSERT INTO `t_task` VALUES ('6cd21579a26a45c986519cb75de056dc', '104.07049,30.654428', 3600000, 1, '1', 'f9c49973ad8d4c4883d6ef49405756ee');
INSERT INTO `t_task` VALUES ('79d8dbdb1d8b496983929dce80948527', '104.109584,30.64927', 600000, 2, '1', '66fdfdfdf006472891746a5fc2b94f00');
INSERT INTO `t_task` VALUES ('96bc776c198447c99c53c5772da75de9', '104.110159,30.642932', 600000, 4, '1', '61756cde1d2f4361bf705ec288e6da92');
INSERT INTO `t_task` VALUES ('9ed5a59c75c945ee8675c16ef75cfe55', '104.101823,30.64635', 600000, 2, '1', 'e0d88d964b9d40a89831dcf5da1c4bec');
INSERT INTO `t_task` VALUES ('a1304fba676247488746b333e90c23e0', '104.076239,30.655235', 3600000, 1, '1', 'e0d88d964b9d40a89831dcf5da1c4bec');
INSERT INTO `t_task` VALUES ('a21b8b0a89ad4825b730753db3f69bd4', '104.119286,30.644983', 600000, 2, '1', '0582908d85f14a0eb77006b89be41495');
INSERT INTO `t_task` VALUES ('ad3ea52a00f34f94a29c5d22c9e03da0', '104.055398,30.662256', 600000, 2, '1', '13fcd5a698c84f42a55aefa582053a83');
INSERT INTO `t_task` VALUES ('b76574874b904a94b629ef3832f605dd', '104.103044,30.640757', 600000, 2, '1', 'a9f262c65637444580f7c67f71f7594d');
INSERT INTO `t_task` VALUES ('b96a482fbbe2438794ed6bdbf110dc84', '104.053242,30.662505', 3600000, 3, '1', 'dbb527f81d2046fb9af7baa13c79265b');
INSERT INTO `t_task` VALUES ('c861c4e1b62d43ce84cac7c0f7b11504', '104.131,30.621677', 1200000, 2, '1', 'dbb527f81d2046fb9af7baa13c79265b');
INSERT INTO `t_task` VALUES ('d4da914e83b147d4a40d021dd0ec2d99', '104.077173,30.656851', 3600000, 3, '1', 'a9f262c65637444580f7c67f71f7594d');
INSERT INTO `t_task` VALUES ('d83435dc61e44f0a82395b8f9a35ab1c', '104.178197,30.570666', 3600000, 1, '1', '61756cde1d2f4361bf705ec288e6da92');
INSERT INTO `t_task` VALUES ('df9c900376434867993666fbeb4e93fe', '104.093199,30.667226', 600000, 2, '1', '70d6ce0178494854b7849c49674a32b0');
INSERT INTO `t_task` VALUES ('e61d2700ec364fcca9b00203a273c228', '104.108865,30.655919', 600000, 4, '1', 'a9f262c65637444580f7c67f71f7594d');
INSERT INTO `t_task` VALUES ('eb3dcb486f9b4067ad62919a4a70a36f', '104.105991,30.645231', 1200000, 4, '0', 'dbb527f81d2046fb9af7baa13c79265b');
INSERT INTO `t_task` VALUES ('f16ace0e2503442484f1cd128c48908c', '104.080551,30.668779', 3600000, 1, '1', 'a9f262c65637444580f7c67f71f7594d');
INSERT INTO `t_task` VALUES ('f5d650cfda584382ab7d76276ec28d51', '104.079257,30.669773', 1200000, 2, '1', '61756cde1d2f4361bf705ec288e6da92');
INSERT INTO `t_task` VALUES ('fc69357b133949ba95e71e2feb0169ad', '104.053242,30.665735', 3600000, 1, '1', '0582908d85f14a0eb77006b89be41495');

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
