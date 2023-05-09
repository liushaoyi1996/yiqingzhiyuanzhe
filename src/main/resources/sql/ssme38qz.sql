/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50631
Source Host           : localhost:3306
Source Database       : ssme38qz

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2023-01-17 13:31:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baomingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `baomingxinxi`;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baomingliyou` varchar(200) DEFAULT NULL COMMENT '报名理由',
  `baomingwenjian` varchar(200) DEFAULT NULL COMMENT '报名文件',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='报名信息';

-- ----------------------------
-- Records of baomingxinxi
-- ----------------------------
INSERT INTO `baomingxinxi` VALUES ('81', '2023-01-05 19:39:42', '名称1', '报名理由1', '', '2023-01-05', '用户名1', '姓名1', '否', '');
INSERT INTO `baomingxinxi` VALUES ('82', '2023-01-05 19:39:42', '名称2', '报名理由2', '', '2023-01-05', '用户名2', '姓名2', '否', '');
INSERT INTO `baomingxinxi` VALUES ('83', '2023-01-05 19:39:42', '名称3', '报名理由3', '', '2023-01-05', '用户名3', '姓名3', '否', '');
INSERT INTO `baomingxinxi` VALUES ('84', '2023-01-05 19:39:42', '名称4', '报名理由4', '', '2023-01-05', '用户名4', '姓名4', '否', '');
INSERT INTO `baomingxinxi` VALUES ('85', '2023-01-05 19:39:42', '名称5', '报名理由5', '', '2023-01-05', '用户名5', '姓名5', '否', '');
INSERT INTO `baomingxinxi` VALUES ('86', '2023-01-05 19:39:42', '名称6', '报名理由6', '', '2023-01-05', '用户名6', '姓名6', '否', '');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssme38qz/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssme38qz/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssme38qz/upload/picture3.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for feiyongjiaona
-- ----------------------------
DROP TABLE IF EXISTS `feiyongjiaona`;
CREATE TABLE `feiyongjiaona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiaofeiriqi` date DEFAULT NULL COMMENT '缴费日期',
  `wuyefei` int(11) DEFAULT NULL COMMENT '物业费',
  `cheweifei` int(11) DEFAULT NULL COMMENT '车位费',
  `shuifei` int(11) DEFAULT NULL COMMENT '水费',
  `dianfei` int(11) DEFAULT NULL COMMENT '电费',
  `tianranqifei` int(11) DEFAULT NULL COMMENT '天然气费',
  `kuandaifeiyong` int(11) DEFAULT NULL COMMENT '宽带费用',
  `qitafeiyong` int(11) DEFAULT NULL COMMENT '其他费用',
  `zongfeiyong` int(11) DEFAULT NULL COMMENT '总费用',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='费用缴纳';

-- ----------------------------
-- Records of feiyongjiaona
-- ----------------------------
INSERT INTO `feiyongjiaona` VALUES ('111', '2023-01-05 19:39:42', '订单编号1', '名称1', '用户名1', '姓名1', '2023-01-05', '1', '1', '1', '1', '1', '1', '1', '1', '未支付');
INSERT INTO `feiyongjiaona` VALUES ('112', '2023-01-05 19:39:42', '订单编号2', '名称2', '用户名2', '姓名2', '2023-01-05', '2', '2', '2', '2', '2', '2', '2', '2', '未支付');
INSERT INTO `feiyongjiaona` VALUES ('113', '2023-01-05 19:39:42', '订单编号3', '名称3', '用户名3', '姓名3', '2023-01-05', '3', '3', '3', '3', '3', '3', '3', '3', '未支付');
INSERT INTO `feiyongjiaona` VALUES ('114', '2023-01-05 19:39:42', '订单编号4', '名称4', '用户名4', '姓名4', '2023-01-05', '4', '4', '4', '4', '4', '4', '4', '4', '未支付');
INSERT INTO `feiyongjiaona` VALUES ('115', '2023-01-05 19:39:42', '订单编号5', '名称5', '用户名5', '姓名5', '2023-01-05', '5', '5', '5', '5', '5', '5', '5', '5', '未支付');
INSERT INTO `feiyongjiaona` VALUES ('116', '2023-01-05 19:39:42', '订单编号6', '名称6', '用户名6', '姓名6', '2023-01-05', '6', '6', '6', '6', '6', '6', '6', '6', '未支付');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('131', '2023-01-05 19:39:42', '帖子标题1', '帖子内容1', '1', '1', '用户名1', '开放');
INSERT INTO `forum` VALUES ('132', '2023-01-05 19:39:42', '帖子标题2', '帖子内容2', '2', '2', '用户名2', '开放');
INSERT INTO `forum` VALUES ('133', '2023-01-05 19:39:42', '帖子标题3', '帖子内容3', '3', '3', '用户名3', '开放');
INSERT INTO `forum` VALUES ('134', '2023-01-05 19:39:42', '帖子标题4', '帖子内容4', '4', '4', '用户名4', '开放');
INSERT INTO `forum` VALUES ('135', '2023-01-05 19:39:42', '帖子标题5', '帖子内容5', '5', '5', '用户名5', '开放');
INSERT INTO `forum` VALUES ('136', '2023-01-05 19:39:42', '帖子标题6', '帖子内容6', '6', '6', '用户名6', '开放');

-- ----------------------------
-- Table structure for hesuanjieguo
-- ----------------------------
DROP TABLE IF EXISTS `hesuanjieguo`;
CREATE TABLE `hesuanjieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `hesuanjieguo` varchar(200) DEFAULT NULL COMMENT '核算结果',
  `shangchuanriqi` date DEFAULT NULL COMMENT '上传日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='核算结果';

-- ----------------------------
-- Records of hesuanjieguo
-- ----------------------------
INSERT INTO `hesuanjieguo` VALUES ('121', '2023-01-05 19:39:42', '名称1', '用户名1', '姓名1', '地址1', '', '2023-01-05', '否', '');
INSERT INTO `hesuanjieguo` VALUES ('122', '2023-01-05 19:39:42', '名称2', '用户名2', '姓名2', '地址2', '', '2023-01-05', '否', '');
INSERT INTO `hesuanjieguo` VALUES ('123', '2023-01-05 19:39:42', '名称3', '用户名3', '姓名3', '地址3', '', '2023-01-05', '否', '');
INSERT INTO `hesuanjieguo` VALUES ('124', '2023-01-05 19:39:42', '名称4', '用户名4', '姓名4', '地址4', '', '2023-01-05', '否', '');
INSERT INTO `hesuanjieguo` VALUES ('125', '2023-01-05 19:39:42', '名称5', '用户名5', '姓名5', '地址5', '', '2023-01-05', '否', '');
INSERT INTO `hesuanjieguo` VALUES ('126', '2023-01-05 19:39:42', '名称6', '用户名6', '姓名6', '地址6', '', '2023-01-05', '否', '');

-- ----------------------------
-- Table structure for jiankangdangan
-- ----------------------------
DROP TABLE IF EXISTS `jiankangdangan`;
CREATE TABLE `jiankangdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianchazhuangkuang` longtext COMMENT '检查状况',
  `bingshi` longtext COMMENT '病史',
  `yishengjianyi` varchar(200) DEFAULT NULL COMMENT '医生建议',
  `danganwenjian` varchar(200) DEFAULT NULL COMMENT '档案文件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='健康档案';

-- ----------------------------
-- Records of jiankangdangan
-- ----------------------------
INSERT INTO `jiankangdangan` VALUES ('61', '2023-01-05 19:39:42', '档案编号1', '名称1', '用户名1', '姓名1', '检查状况1', '病史1', '医生建议1', '', '2023-01-05', '账号1', '专家姓名1');
INSERT INTO `jiankangdangan` VALUES ('62', '2023-01-05 19:39:42', '档案编号2', '名称2', '用户名2', '姓名2', '检查状况2', '病史2', '医生建议2', '', '2023-01-05', '账号2', '专家姓名2');
INSERT INTO `jiankangdangan` VALUES ('63', '2023-01-05 19:39:42', '档案编号3', '名称3', '用户名3', '姓名3', '检查状况3', '病史3', '医生建议3', '', '2023-01-05', '账号3', '专家姓名3');
INSERT INTO `jiankangdangan` VALUES ('64', '2023-01-05 19:39:42', '档案编号4', '名称4', '用户名4', '姓名4', '检查状况4', '病史4', '医生建议4', '', '2023-01-05', '账号4', '专家姓名4');
INSERT INTO `jiankangdangan` VALUES ('65', '2023-01-05 19:39:42', '档案编号5', '名称5', '用户名5', '姓名5', '检查状况5', '病史5', '医生建议5', '', '2023-01-05', '账号5', '专家姓名5');
INSERT INTO `jiankangdangan` VALUES ('66', '2023-01-05 19:39:42', '档案编号6', '名称6', '用户名6', '姓名6', '检查状况6', '病史6', '医生建议6', '', '2023-01-05', '账号6', '专家姓名6');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('151', '2023-01-05 19:39:42', '1', '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES ('152', '2023-01-05 19:39:42', '2', '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES ('153', '2023-01-05 19:39:42', '3', '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES ('154', '2023-01-05 19:39:42', '4', '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES ('155', '2023-01-05 19:39:42', '5', '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES ('156', '2023-01-05 19:39:42', '6', '用户名6', '留言内容6', '回复内容6');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='疫情公告';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('141', '2023-01-05 19:39:42', '标题1', 'http://localhost:8080/ssme38qz/upload/news_picture1.jpg', '内容1');
INSERT INTO `news` VALUES ('142', '2023-01-05 19:39:42', '标题2', 'http://localhost:8080/ssme38qz/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES ('143', '2023-01-05 19:39:42', '标题3', 'http://localhost:8080/ssme38qz/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES ('144', '2023-01-05 19:39:42', '标题4', 'http://localhost:8080/ssme38qz/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES ('145', '2023-01-05 19:39:42', '标题5', 'http://localhost:8080/ssme38qz/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES ('146', '2023-01-05 19:39:42', '标题6', 'http://localhost:8080/ssme38qz/upload/news_picture6.jpg', '内容6');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '7oqs7yales3rqzsa06hmbqtnr3osumfx', '2023-01-17 08:38:07', '2023-01-17 11:55:56');
INSERT INTO `token` VALUES ('2', '11', '用户1', 'yonghu', '用户', '3a53e1tw0lgoz4tnes0oj8r3o42w3w9d', '2023-01-17 08:58:59', '2023-01-17 13:01:26');
INSERT INTO `token` VALUES ('3', '21', '医疗专家1', 'yiliaozhuanjia', '医疗专家', 'y6qhrsosso36e7twyx87hs4h9hpcpjj8', '2023-01-17 09:34:04', '2023-01-17 13:03:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2023-01-05 19:39:42');

-- ----------------------------
-- Table structure for xingdongbaogao
-- ----------------------------
DROP TABLE IF EXISTS `xingdongbaogao`;
CREATE TABLE `xingdongbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingdongguiji` longtext COMMENT '行动轨迹',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shentizhuangkuang` varchar(200) DEFAULT NULL COMMENT '身体状况',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='行动报告';

-- ----------------------------
-- Records of xingdongbaogao
-- ----------------------------
INSERT INTO `xingdongbaogao` VALUES ('91', '2023-01-05 19:39:42', '名称1', '用户名1', '姓名1', '行动轨迹1', '体温1', '身体状况1', '2023-01-05', '1', '1', '宇宙银河系地球1号');
INSERT INTO `xingdongbaogao` VALUES ('92', '2023-01-05 19:39:42', '名称2', '用户名2', '姓名2', '行动轨迹2', '体温2', '身体状况2', '2023-01-05', '2', '2', '宇宙银河系地球2号');
INSERT INTO `xingdongbaogao` VALUES ('93', '2023-01-05 19:39:42', '名称3', '用户名3', '姓名3', '行动轨迹3', '体温3', '身体状况3', '2023-01-05', '3', '3', '宇宙银河系地球3号');
INSERT INTO `xingdongbaogao` VALUES ('94', '2023-01-05 19:39:42', '名称4', '用户名4', '姓名4', '行动轨迹4', '体温4', '身体状况4', '2023-01-05', '4', '4', '宇宙银河系地球4号');
INSERT INTO `xingdongbaogao` VALUES ('95', '2023-01-05 19:39:42', '名称5', '用户名5', '姓名5', '行动轨迹5', '体温5', '身体状况5', '2023-01-05', '5', '5', '宇宙银河系地球5号');
INSERT INTO `xingdongbaogao` VALUES ('96', '2023-01-05 19:39:42', '名称6', '用户名6', '姓名6', '行动轨迹6', '体温6', '身体状况6', '2023-01-05', '6', '6', '宇宙银河系地球6号');

-- ----------------------------
-- Table structure for yewudaiban
-- ----------------------------
DROP TABLE IF EXISTS `yewudaiban`;
CREATE TABLE `yewudaiban` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `daibanneirong` longtext COMMENT '代办内容',
  `daibanfeiyong` int(11) DEFAULT NULL COMMENT '代办费用',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='业务代办';

-- ----------------------------
-- Records of yewudaiban
-- ----------------------------
INSERT INTO `yewudaiban` VALUES ('101', '2023-01-05 19:39:42', '名称1', '代办内容1', '1', '2023-01-05', '用户名1', '姓名1', '地址1', '否', '', '未支付');
INSERT INTO `yewudaiban` VALUES ('102', '2023-01-05 19:39:42', '名称2', '代办内容2', '2', '2023-01-05', '用户名2', '姓名2', '地址2', '否', '', '未支付');
INSERT INTO `yewudaiban` VALUES ('103', '2023-01-05 19:39:42', '名称3', '代办内容3', '3', '2023-01-05', '用户名3', '姓名3', '地址3', '否', '', '未支付');
INSERT INTO `yewudaiban` VALUES ('104', '2023-01-05 19:39:42', '名称4', '代办内容4', '4', '2023-01-05', '用户名4', '姓名4', '地址4', '否', '', '未支付');
INSERT INTO `yewudaiban` VALUES ('105', '2023-01-05 19:39:42', '名称5', '代办内容5', '5', '2023-01-05', '用户名5', '姓名5', '地址5', '否', '', '未支付');
INSERT INTO `yewudaiban` VALUES ('106', '2023-01-05 19:39:42', '名称6', '代办内容6', '6', '2023-01-05', '用户名6', '姓名6', '地址6', '否', '', '未支付');

-- ----------------------------
-- Table structure for yiliaozhuanjia
-- ----------------------------
DROP TABLE IF EXISTS `yiliaozhuanjia`;
CREATE TABLE `yiliaozhuanjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `fuwushijian` varchar(200) DEFAULT NULL COMMENT '服务时间',
  `jianshu` longtext COMMENT '简述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医疗专家';

-- ----------------------------
-- Records of yiliaozhuanjia
-- ----------------------------
INSERT INTO `yiliaozhuanjia` VALUES ('21', '2023-01-05 19:39:42', '医疗专家1', '123456', '专家姓名1', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang1.jpg', '职称1', '13823888881', '1', '服务时间1', '简述1');
INSERT INTO `yiliaozhuanjia` VALUES ('22', '2023-01-05 19:39:42', '医疗专家2', '123456', '专家姓名2', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang2.jpg', '职称2', '13823888882', '2', '服务时间2', '简述2');
INSERT INTO `yiliaozhuanjia` VALUES ('23', '2023-01-05 19:39:42', '医疗专家3', '123456', '专家姓名3', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang3.jpg', '职称3', '13823888883', '3', '服务时间3', '简述3');
INSERT INTO `yiliaozhuanjia` VALUES ('24', '2023-01-05 19:39:42', '医疗专家4', '123456', '专家姓名4', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang4.jpg', '职称4', '13823888884', '4', '服务时间4', '简述4');
INSERT INTO `yiliaozhuanjia` VALUES ('25', '2023-01-05 19:39:42', '医疗专家5', '123456', '专家姓名5', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang5.jpg', '职称5', '13823888885', '5', '服务时间5', '简述5');
INSERT INTO `yiliaozhuanjia` VALUES ('26', '2023-01-05 19:39:42', '医疗专家6', '123456', '专家姓名6', '男', 'http://localhost:8080/ssme38qz/upload/yiliaozhuanjia_touxiang6.jpg', '职称6', '13823888886', '6', '服务时间6', '简述6');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('11', '2023-01-05 19:39:42', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang1.jpg', '440300199101010001', '13823888881', '地址1');
INSERT INTO `yonghu` VALUES ('12', '2023-01-05 19:39:42', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang2.jpg', '440300199202020002', '13823888882', '地址2');
INSERT INTO `yonghu` VALUES ('13', '2023-01-05 19:39:42', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang3.jpg', '440300199303030003', '13823888883', '地址3');
INSERT INTO `yonghu` VALUES ('14', '2023-01-05 19:39:42', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang4.jpg', '440300199404040004', '13823888884', '地址4');
INSERT INTO `yonghu` VALUES ('15', '2023-01-05 19:39:42', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang5.jpg', '440300199505050005', '13823888885', '地址5');
INSERT INTO `yonghu` VALUES ('16', '2023-01-05 19:39:42', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/ssme38qz/upload/yonghu_touxiang6.jpg', '440300199606060006', '13823888886', '地址6');

-- ----------------------------
-- Table structure for yuyuexinxi
-- ----------------------------
DROP TABLE IF EXISTS `yuyuexinxi`;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yuyueneirong` varchar(200) DEFAULT NULL COMMENT '预约内容',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1673928146075 DEFAULT CHARSET=utf8 COMMENT='预约信息';

-- ----------------------------
-- Records of yuyuexinxi
-- ----------------------------
INSERT INTO `yuyuexinxi` VALUES ('51', '2023-01-05 19:39:42', '名称1', '账号1', '专家姓名1', '价格1', '预约内容1', '2021-01-05', '预约时间1', '用户名1', '姓名1', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('52', '2023-01-05 19:39:42', '名称2', '账号2', '专家姓名2', '价格2', '预约内容2', '2021-01-05', '预约时间2', '用户名2', '姓名2', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('53', '2023-01-05 19:39:42', '名称3', '账号3', '专家姓名3', '价格3', '预约内容3', '2021-01-05', '预约时间3', '用户名3', '姓名3', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('54', '2023-01-05 19:39:42', '名称4', '账号4', '专家姓名4', '价格4', '预约内容4', '2021-01-05', '预约时间4', '用户名4', '姓名4', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('55', '2023-01-05 19:39:42', '名称5', '账号5', '专家姓名5', '价格5', '预约内容5', '2021-01-05', '预约时间5', '用户名5', '姓名5', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('56', '2023-01-05 19:39:42', '名称6', '账号6', '专家姓名6', '价格6', '预约内容6', '2021-01-05', '预约时间6', '用户名6', '姓名6', '否', '', '未支付');
INSERT INTO `yuyuexinxi` VALUES ('1673928144174', '2023-01-17 12:02:23', '发烧不退', '医疗专家1', '专家姓名1', '1', '看诊', '2023-01-18', '9:00', '用户1', '姓名1', '否', null, '未支付');
INSERT INTO `yuyuexinxi` VALUES ('1673928146074', '2023-01-17 12:02:26', '发烧不退', '医疗专家1', '专家姓名1', '1', '看诊', '2023-01-18', '9:00', '用户1', '姓名1', '否', null, '未支付');

-- ----------------------------
-- Table structure for zhiyuanzhexinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhiyuanzhexinxi`;
CREATE TABLE `zhiyuanzhexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  `zhaomuyaoqiu` longtext COMMENT '招募要求',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhaomurenshu` varchar(200) DEFAULT NULL COMMENT '招募人数',
  `baomingrenshu` varchar(200) DEFAULT NULL COMMENT '报名人数',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='志愿者信息';

-- ----------------------------
-- Records of zhiyuanzhexinxi
-- ----------------------------
INSERT INTO `zhiyuanzhexinxi` VALUES ('71', '2023-01-05 19:39:42', '名称1', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian1.jpg', '简介1', '招募要求1', '', '招募人数1', '报名人数1', '2023-01-05');
INSERT INTO `zhiyuanzhexinxi` VALUES ('72', '2023-01-05 19:39:42', '名称2', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian2.jpg', '简介2', '招募要求2', '', '招募人数2', '报名人数2', '2023-01-05');
INSERT INTO `zhiyuanzhexinxi` VALUES ('73', '2023-01-05 19:39:42', '名称3', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian3.jpg', '简介3', '招募要求3', '', '招募人数3', '报名人数3', '2023-01-05');
INSERT INTO `zhiyuanzhexinxi` VALUES ('74', '2023-01-05 19:39:42', '名称4', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian4.jpg', '简介4', '招募要求4', '', '招募人数4', '报名人数4', '2023-01-05');
INSERT INTO `zhiyuanzhexinxi` VALUES ('75', '2023-01-05 19:39:42', '名称5', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian5.jpg', '简介5', '招募要求5', '', '招募人数5', '报名人数5', '2023-01-05');
INSERT INTO `zhiyuanzhexinxi` VALUES ('76', '2023-01-05 19:39:42', '名称6', 'http://localhost:8080/ssme38qz/upload/zhiyuanzhexinxi_tupian6.jpg', '简介6', '招募要求6', '', '招募人数6', '报名人数6', '2023-01-05');

-- ----------------------------
-- Table structure for zhuanjiazixun
-- ----------------------------
DROP TABLE IF EXISTS `zhuanjiazixun`;
CREATE TABLE `zhuanjiazixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1673928115016 DEFAULT CHARSET=utf8 COMMENT='专家咨询';

-- ----------------------------
-- Records of zhuanjiazixun
-- ----------------------------
INSERT INTO `zhuanjiazixun` VALUES ('31', '2023-01-05 19:39:42', '标题1', '账号1', '专家姓名1', '咨询内容1', '2023-01-05', '用户名1', '姓名1');
INSERT INTO `zhuanjiazixun` VALUES ('32', '2023-01-05 19:39:42', '标题2', '账号2', '专家姓名2', '咨询内容2', '2023-01-05', '用户名2', '姓名2');
INSERT INTO `zhuanjiazixun` VALUES ('33', '2023-01-05 19:39:42', '标题3', '账号3', '专家姓名3', '咨询内容3', '2023-01-05', '用户名3', '姓名3');
INSERT INTO `zhuanjiazixun` VALUES ('34', '2023-01-05 19:39:42', '标题4', '账号4', '专家姓名4', '咨询内容4', '2023-01-05', '用户名4', '姓名4');
INSERT INTO `zhuanjiazixun` VALUES ('35', '2023-01-05 19:39:42', '标题5', '账号5', '专家姓名5', '咨询内容5', '2023-01-05', '用户名5', '姓名5');
INSERT INTO `zhuanjiazixun` VALUES ('36', '2023-01-05 19:39:42', '标题6', '账号6', '专家姓名6', '咨询内容6', '2023-01-05', '用户名6', '姓名6');
INSERT INTO `zhuanjiazixun` VALUES ('1673928115015', '2023-01-17 12:01:54', '发烧不退', '医疗专家1', '专家姓名1', '发烧不退', '2023-01-18', '用户1', '姓名1');

-- ----------------------------
-- Table structure for zixunhuifu
-- ----------------------------
DROP TABLE IF EXISTS `zixunhuifu`;
CREATE TABLE `zixunhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zixunhuifu` varchar(200) DEFAULT NULL COMMENT '咨询回复',
  `huifuriqi` date DEFAULT NULL COMMENT '回复日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhuanjiaxingming` varchar(200) DEFAULT NULL COMMENT '专家姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1673928517280 DEFAULT CHARSET=utf8 COMMENT='咨询回复';

-- ----------------------------
-- Records of zixunhuifu
-- ----------------------------
INSERT INTO `zixunhuifu` VALUES ('41', '2023-01-05 19:39:42', '标题1', '用户名1', '姓名1', '咨询回复1', '2023-01-05', '账号1', '专家姓名1');
INSERT INTO `zixunhuifu` VALUES ('42', '2023-01-05 19:39:42', '标题2', '用户名2', '姓名2', '咨询回复2', '2023-01-05', '账号2', '专家姓名2');
INSERT INTO `zixunhuifu` VALUES ('43', '2023-01-05 19:39:42', '标题3', '用户名3', '姓名3', '咨询回复3', '2023-01-05', '账号3', '专家姓名3');
INSERT INTO `zixunhuifu` VALUES ('44', '2023-01-05 19:39:42', '标题4', '用户名4', '姓名4', '咨询回复4', '2023-01-05', '账号4', '专家姓名4');
INSERT INTO `zixunhuifu` VALUES ('45', '2023-01-05 19:39:42', '标题5', '用户名5', '姓名5', '咨询回复5', '2023-01-05', '账号5', '专家姓名5');
INSERT INTO `zixunhuifu` VALUES ('46', '2023-01-05 19:39:42', '标题6', '用户名6', '姓名6', '咨询回复6', '2023-01-05', '账号6', '专家姓名6');
INSERT INTO `zixunhuifu` VALUES ('1673928517279', '2023-01-17 12:08:37', '发烧不退', '用户1', '姓名1', '物理降温', '2023-01-17', '医疗专家1', '专家姓名1');
