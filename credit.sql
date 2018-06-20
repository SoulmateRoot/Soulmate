/*
Navicat MySQL Data Transfer

Source Server         : project
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : credit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-06-20 11:50:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) NOT NULL,
  `apassword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'leilei', '123456');

-- ----------------------------
-- Table structure for approveitem
-- ----------------------------
DROP TABLE IF EXISTS `approveitem`;
CREATE TABLE `approveitem` (
  `aiid` int(11) NOT NULL AUTO_INCREMENT COMMENT '认证项编号',
  `ainame` varchar(50) DEFAULT NULL COMMENT '认证项名称',
  `aitype` varchar(2) DEFAULT NULL COMMENT '认证项类型  1.基本项; 2.可选项',
  `aistate` varchar(2) DEFAULT NULL COMMENT '认证项状态  0.已弃用; 1.未弃用',
  PRIMARY KEY (`aiid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='认证项管理';

-- ----------------------------
-- Records of approveitem
-- ----------------------------
INSERT INTO `approveitem` VALUES ('1', '身份认证', '1', '1');
INSERT INTO `approveitem` VALUES ('2', '工作认证', '1', '0');
INSERT INTO `approveitem` VALUES ('3', '信用报告认证', '1', '1');
INSERT INTO `approveitem` VALUES ('4', '居住地认证', '1', '0');
INSERT INTO `approveitem` VALUES ('5', '收入认证', '1', '1');
INSERT INTO `approveitem` VALUES ('6', '车产', '2', '0');
INSERT INTO `approveitem` VALUES ('7', '现场', '2', '1');

-- ----------------------------
-- Table structure for bankcard
-- ----------------------------
DROP TABLE IF EXISTS `bankcard`;
CREATE TABLE `bankcard` (
  `bID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `uID` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `zname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `sfz` varchar(32) DEFAULT NULL COMMENT '身份证',
  `khh` varchar(32) DEFAULT NULL COMMENT '开户行',
  `cardid` varchar(32) DEFAULT NULL COMMENT '卡号',
  `tjtime` datetime DEFAULT NULL COMMENT '提交时间',
  `statu` varchar(32) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='银行卡管理表';

-- ----------------------------
-- Records of bankcard
-- ----------------------------
INSERT INTO `bankcard` VALUES ('1', '1', '默默', '黄默', '630729199712143515', '中国邮政', '111111', '2017-02-21 15:02:18', '成功');
INSERT INTO `bankcard` VALUES ('2', '1', '默默', '黄默', '630729199712143515', '中国建设', '222222', '2017-02-23 15:02:32', '成功');
INSERT INTO `bankcard` VALUES ('3', '1', '默默', '黄默', '630729199712143515', '中国工商', '333333', '2017-02-25 15:02:52', '成功');
INSERT INTO `bankcard` VALUES ('4', '1', '默默', '黄默', '630729199712143515', '中国农业', '444444', '2017-02-27 15:03:10', '成功');
INSERT INTO `bankcard` VALUES ('5', '1', '默默', '黄默', '630729199712143515', '中国招商', '555555', '2017-02-28 15:03:31', '成功');

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `bkid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `bkname` varchar(50) DEFAULT NULL COMMENT '银行名称',
  PRIMARY KEY (`bkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行项';

-- ----------------------------
-- Records of banks
-- ----------------------------

-- ----------------------------
-- Table structure for biao
-- ----------------------------
DROP TABLE IF EXISTS `biao`;
CREATE TABLE `biao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bname` varchar(255) DEFAULT NULL COMMENT '标的名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biao
-- ----------------------------
INSERT INTO `biao` VALUES ('6', '爱宝宝');
INSERT INTO `biao` VALUES ('7', '无量宝');
INSERT INTO `biao` VALUES ('8', '全是宝');

-- ----------------------------
-- Table structure for borrowcord
-- ----------------------------
DROP TABLE IF EXISTS `borrowcord`;
CREATE TABLE `borrowcord` (
  `boid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL COMMENT '还款表id',
  `bdate` datetime DEFAULT NULL COMMENT '还款时间',
  `bstatue` int(11) DEFAULT NULL COMMENT '状态(0,未还款,1,已还款)',
  `bcs` int(11) DEFAULT NULL COMMENT '还款次数',
  `bz1` varchar(255) DEFAULT NULL COMMENT '备用字段()',
  `bz2` varchar(255) DEFAULT NULL COMMENT '备用字段',
  PRIMARY KEY (`boid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='还款记录表';

-- ----------------------------
-- Records of borrowcord
-- ----------------------------
INSERT INTO `borrowcord` VALUES ('1', '19', '2017-03-01 09:15:45', '1', '1', null, null);
INSERT INTO `borrowcord` VALUES ('2', '19', '2017-04-01 09:15:53', '1', '2', null, null);
INSERT INTO `borrowcord` VALUES ('3', '19', '2017-05-01 09:16:00', '1', '3', null, null);
INSERT INTO `borrowcord` VALUES ('4', '19', '2017-06-01 09:16:00', '1', '4', null, null);
INSERT INTO `borrowcord` VALUES ('5', '19', '2017-07-01 09:16:00', '1', '5', null, null);
INSERT INTO `borrowcord` VALUES ('6', '19', '2017-08-01 09:16:00', '1', '6', null, null);
INSERT INTO `borrowcord` VALUES ('7', '19', '2017-09-01 09:16:00', '1', '7', null, null);
INSERT INTO `borrowcord` VALUES ('8', '19', '2017-05-10 09:16:00', '0', '8', null, null);
INSERT INTO `borrowcord` VALUES ('9', '19', '2017-11-01 09:16:00', '0', '9', null, null);
INSERT INTO `borrowcord` VALUES ('10', '19', '2017-12-01 09:16:00', '0', '10', null, null);
INSERT INTO `borrowcord` VALUES ('11', '19', '2018-01-01 09:16:00', '0', '11', null, null);
INSERT INTO `borrowcord` VALUES ('12', '19', '2018-02-01 09:16:00', '0', '12', null, null);
INSERT INTO `borrowcord` VALUES ('25', '30', '2017-04-09 20:41:20', '0', '1', null, null);
INSERT INTO `borrowcord` VALUES ('26', '30', '2017-05-09 20:41:20', '0', '2', null, null);
INSERT INTO `borrowcord` VALUES ('27', '30', '2017-06-08 20:41:20', '0', '3', null, null);
INSERT INTO `borrowcord` VALUES ('28', '30', '2017-07-08 20:41:20', '0', '4', null, null);
INSERT INTO `borrowcord` VALUES ('29', '30', '2017-08-07 20:41:20', '0', '5', null, null);
INSERT INTO `borrowcord` VALUES ('30', '30', '2017-09-06 20:41:20', '0', '6', null, null);
INSERT INTO `borrowcord` VALUES ('31', '30', '2017-10-06 20:41:20', '0', '7', null, null);
INSERT INTO `borrowcord` VALUES ('32', '30', '2017-11-05 20:41:20', '0', '8', null, null);
INSERT INTO `borrowcord` VALUES ('33', '30', '2017-12-05 20:41:20', '0', '9', null, null);
INSERT INTO `borrowcord` VALUES ('34', '30', '2018-01-04 20:41:20', '0', '10', null, null);
INSERT INTO `borrowcord` VALUES ('35', '30', '2018-02-03 20:41:20', '0', '11', null, null);
INSERT INTO `borrowcord` VALUES ('36', '30', '2018-03-05 20:41:20', '0', '12', null, null);
INSERT INTO `borrowcord` VALUES ('37', '35', '2017-04-12 19:22:14', '1', '1', null, null);
INSERT INTO `borrowcord` VALUES ('38', '35', '2017-05-12 19:22:14', '0', '2', null, null);
INSERT INTO `borrowcord` VALUES ('39', '35', '2017-06-11 19:22:14', '0', '3', null, null);
INSERT INTO `borrowcord` VALUES ('40', '35', '2017-07-11 19:22:14', '0', '4', null, null);
INSERT INTO `borrowcord` VALUES ('41', '35', '2017-08-10 19:22:14', '0', '5', null, null);
INSERT INTO `borrowcord` VALUES ('42', '35', '2017-09-09 19:22:14', '0', '6', null, null);
INSERT INTO `borrowcord` VALUES ('43', '35', '2017-10-09 19:22:14', '0', '7', null, null);
INSERT INTO `borrowcord` VALUES ('44', '35', '2017-11-08 19:22:14', '0', '8', null, null);
INSERT INTO `borrowcord` VALUES ('45', '35', '2017-12-08 19:22:14', '0', '9', null, null);
INSERT INTO `borrowcord` VALUES ('46', '35', '2018-01-07 19:22:14', '0', '10', null, null);
INSERT INTO `borrowcord` VALUES ('47', '35', '2018-02-06 19:22:14', '0', '11', null, null);
INSERT INTO `borrowcord` VALUES ('48', '35', '2018-03-08 19:22:14', '0', '12', null, null);

-- ----------------------------
-- Table structure for borrowmoney
-- ----------------------------
DROP TABLE IF EXISTS `borrowmoney`;
CREATE TABLE `borrowmoney` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bserial` varchar(255) DEFAULT NULL COMMENT '//序号//(还款方式:1,一次性还清,2,先本后息3,等额本息)',
  `busername` varchar(255) DEFAULT NULL COMMENT '用户id',
  `brelname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `bpass` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `btype` varchar(255) DEFAULT NULL COMMENT '标ID(发布标ID)',
  `btitle` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `bmoney` varchar(255) DEFAULT NULL COMMENT '借款金额 ',
  `brate` varchar(255) DEFAULT NULL COMMENT '利率 ',
  `btimelimit` varchar(255) DEFAULT NULL COMMENT '期限',
  `blimit` varchar(255) DEFAULT NULL COMMENT '筹标期限',
  `bstate` varchar(255) DEFAULT NULL COMMENT '状态(0:提交申请未处理;1,后台审核通过(未还款);2审核失败;3.已还款)',
  `brecommend` varchar(255) DEFAULT NULL COMMENT '所在区域',
  `bleixing` varchar(255) DEFAULT NULL COMMENT '类型(0车贷,1房贷)',
  `beizhu1` varchar(255) DEFAULT NULL COMMENT '备注1(房屋面积or车辆品牌)',
  `beizhu2` varchar(255) DEFAULT NULL COMMENT '备注2(房龄/所属车型)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrowmoney
-- ----------------------------
INSERT INTO `borrowmoney` VALUES ('1', '4', '423', '423', '432', '2', '4', null, '4', '4', '4', '2', '4', '0', null, null);
INSERT INTO `borrowmoney` VALUES ('17', '2', '1', '周旗1', '1312321', '1', '宏图', '12312', null, null, null, '1', '赣州', '0', '12312', '12312');
INSERT INTO `borrowmoney` VALUES ('19', '2', '你大爷', '周旗2', '131312321', null, '赣州HT', '10000', '20', '2017-3-7 16:38:49', '2017-3-7 16:38:52', '1', '赣州', '0', '宝马', 'M908');
INSERT INTO `borrowmoney` VALUES ('20', '1', null, '周旗3', '1322312', null, '南昌HT', '10000', null, null, null, '2', null, '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('21', '1', null, '周旗4', '131312321', null, '赣州HT', '10000', null, null, null, '1', null, '0', '宝马', 'M908');
INSERT INTO `borrowmoney` VALUES ('22', '3', null, '周旗5', '1322312', null, '南昌HT', '10000', null, null, null, '1', null, '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('23', '3', null, '周旗6', '1322312', null, '南昌HT', '10000', null, null, null, '2', null, '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('24', null, null, '周旗7', '1322312', null, '南昌HT', '10000', null, null, null, '1', null, '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('25', '', '', '周旗8', '1312321', '', '宏图', '12312', '', '', '', '1', '赣州', '0', '12312', '12312');
INSERT INTO `borrowmoney` VALUES ('26', '', '', '周旗9', '131312321', '', '赣州HT', '10000', '', '', '', '1', '', '0', '宝马', 'M908');
INSERT INTO `borrowmoney` VALUES ('27', '', '', '周旗10', '1322312', '', '南昌HT', '10000', '', '', '', '2', '', '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('28', '', '', '周旗11', '131312321', '', '赣州HT', '10000', '', '', '', '0', '', '0', '宝马', 'M908');
INSERT INTO `borrowmoney` VALUES ('29', '', '', '周旗12', '1322312', '', '南昌HT', '10000', '', '', '', '0', '', '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('30', '1', '', '周旗', '13133703653', null, '测试数据  ', '10000   ', '20', '12', '2017-03-15 20:38:38', '0', '江西赣州', '2', '周旗', '周旗');
INSERT INTO `borrowmoney` VALUES ('31', '', '', '周旗14', '1322312', '', '南昌HT', '10000', '', '', '', '2', '', '1', '222', '11');
INSERT INTO `borrowmoney` VALUES ('35', '2', null, '游国勋', '13133703653', '', '江西赣州 ', '10000 ', '20', '12', '2017-03-17 19:21:50', '1', '中国北京', '0', '迈巴赫', 'D999');

-- ----------------------------
-- Table structure for certification
-- ----------------------------
DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cserial` varchar(255) DEFAULT NULL COMMENT '序号',
  `cusername` varchar(255) DEFAULT NULL COMMENT '用户名',
  `crealname` varchar(255) DEFAULT NULL COMMENT '真实姓名 ',
  `cbalance` varchar(255) DEFAULT NULL COMMENT '可用余额',
  `cfreeze` varchar(255) DEFAULT NULL COMMENT '冻结金额 ',
  `cdue` varchar(255) DEFAULT NULL COMMENT '待收金额 ',
  `cpaid` varchar(255) DEFAULT NULL COMMENT '待还金额',
  `ctotalmoney` varchar(255) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of certification
-- ----------------------------
INSERT INTO `certification` VALUES ('1', '1', '用户', '段炳森', '123161123', '0', '0', '0', '123161123');
INSERT INTO `certification` VALUES ('3', '3', '用户3', '', '688111.1100000001', '0', '0', '0', '1111111.11');
INSERT INTO `certification` VALUES ('4', '34', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `certification` VALUES ('5', '35', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `certification` VALUES ('6', '36', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `certification` VALUES ('7', '37', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `certification` VALUES ('8', '38', '1', '1', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for certifrecord
-- ----------------------------
DROP TABLE IF EXISTS `certifrecord`;
CREATE TABLE `certifrecord` (
  `crid` int(11) NOT NULL AUTO_INCREMENT COMMENT '认证记录编号',
  `cruserid` int(11) DEFAULT NULL COMMENT '用户id',
  `crusername` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `craiid` int(11) DEFAULT NULL COMMENT '认证项编号',
  `crainame` varchar(50) DEFAULT NULL COMMENT '认证项名称',
  `craitype` varchar(2) DEFAULT NULL COMMENT '认证项类型  1.基本项; 2.可选项',
  `crispass` varchar(2) DEFAULT NULL COMMENT '认证状态  0.未申请; 1.待审核；2.审核成功；3.审核失败',
  `crdate` datetime DEFAULT NULL COMMENT '审核时间',
  `crauditor` varchar(50) DEFAULT NULL COMMENT '审核人',
  `crintegral` int(20) DEFAULT NULL COMMENT '信用积分',
  `crviewpoint` varchar(50) DEFAULT NULL COMMENT '观点',
  `crimg` varchar(50) DEFAULT NULL COMMENT '认证图片',
  `crupldate` datetime DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='认证记录';

-- ----------------------------
-- Records of certifrecord
-- ----------------------------
INSERT INTO `certifrecord` VALUES ('1', '1', '用户', '1', '身份认证', '1', '2', '2017-03-01 09:54:15', 'admin', '1', '没有上传证据图片', null, '2017-02-28 14:32:27');

-- ----------------------------
-- Table structure for clapplyfor
-- ----------------------------
DROP TABLE IF EXISTS `clapplyfor`;
CREATE TABLE `clapplyfor` (
  `clpid` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请编号',
  `clpubcid` varchar(50) DEFAULT NULL COMMENT '用户账号',
  `clpuname` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `clpporiginal` double(10,2) DEFAULT NULL COMMENT '原信用额',
  `clpidpaper` varchar(100) DEFAULT NULL COMMENT '身份证明照片',
  `clphpoc` varchar(100) DEFAULT NULL COMMENT '房产证明照片',
  `clpf` double(10,2) DEFAULT NULL COMMENT '申请信用额',
  `clpdate` datetime DEFAULT NULL COMMENT '申请时间',
  `clpauditor` varchar(20) DEFAULT NULL COMMENT '跟踪审核',
  `clpstate` varchar(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`clpid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='信用额度申请';

-- ----------------------------
-- Records of clapplyfor
-- ----------------------------
INSERT INTO `clapplyfor` VALUES ('1', '123456', '用户', '0.00', null, null, '100000.00', '2017-03-03 10:16:12', 'admin', '1');

-- ----------------------------
-- Table structure for creditlimit
-- ----------------------------
DROP TABLE IF EXISTS `creditlimit`;
CREATE TABLE `creditlimit` (
  `clid` int(11) NOT NULL AUTO_INCREMENT COMMENT '信用额度编号',
  `cluserid` int(11) DEFAULT NULL COMMENT '用户id',
  `clusername` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `crbankcard` varchar(20) DEFAULT NULL COMMENT '用户账号',
  `cllimit` double(11,2) DEFAULT NULL COMMENT '信用额度',
  PRIMARY KEY (`clid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='信用额度';

-- ----------------------------
-- Records of creditlimit
-- ----------------------------
INSERT INTO `creditlimit` VALUES ('1', '1', '用户', '123456', '100000.00');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `did` int(255) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `dname` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `dtime` datetime DEFAULT NULL COMMENT '部门创建时间',
  `dstatus` int(11) DEFAULT NULL COMMENT '部门状态1为可用 0为不可用',
  `describes` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('6', '财务组', '2017-02-26 19:20:35', '1', '负责平台财务版块，包括借款管理、资金管理、统计管理等模块。																		');
INSERT INTO `dept` VALUES ('10', '超级管理员', '2017-02-26 19:21:32', '1', '超级管理员角色具备所有权限									');
INSERT INTO `dept` VALUES ('11', '董事长办公室', '2017-02-26 20:37:54', '1', '负责董事长工作会议安排、会议组织、会议记录及会议决议的落实跟踪									');
INSERT INTO `dept` VALUES ('12', '项目部', '2017-02-26 20:38:53', '1', '										组织制定项目经理部各类管理人员的职责和权限、各项管理制度									\r\n									');

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `did` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL COMMENT '详情标题',
  `dcontent` varchar(255) DEFAULT NULL COMMENT '详情内容',
  `dtype` int(11) DEFAULT NULL COMMENT '详情类型:(0:借款人信息模块;1,风控步骤模块;2,图片信息模块)',
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `did` (`did`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('00000000001', '借款人信息介绍', '借款人赵女士，1988年出生，大专学历，未婚，户籍地址为四川省古蔺县，现居住于成都市成华区。', '0', '2');
INSERT INTO `details` VALUES ('00000000002', '借款人工作情况', '赵女士为成都某服装店老板，月收入2万元，收入居住稳定。', '0', '2');
INSERT INTO `details` VALUES ('00000000003', '借款人资产介绍', '赵女士有1辆全款长安福特福克斯汽车。', '0', '2');
INSERT INTO `details` VALUES ('00000000004', '详细资金用途', '借款人申请汽车质押贷款，贷款用于资金周转。', '0', '2');
INSERT INTO `details` VALUES ('00000000005', '调查', '风控部对借款人各项信息进行了全面的电话征信，一切资料真实可靠。', '1', '2');
INSERT INTO `details` VALUES ('00000000006', '抵押物', '全款长安福特福克斯汽车，车牌号：川AYY***，新车购买于2013年，裸车价14万，评估价5万。', '1', '1');

-- ----------------------------
-- Table structure for dope
-- ----------------------------
DROP TABLE IF EXISTS `dope`;
CREATE TABLE `dope` (
  `did` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dprimkey` int(11) DEFAULT NULL COMMENT '关联外键',
  `dtitle` varchar(1000) DEFAULT NULL COMMENT '标题',
  `details` varchar(1000) DEFAULT NULL COMMENT '消息详情',
  `dtime` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dope
-- ----------------------------
INSERT INTO `dope` VALUES ('1', '1', '充值成功', '尊敬的用户,您通过快捷支付充值的50000元已到账!', '2017-03-06 20:04:18');
INSERT INTO `dope` VALUES ('5', '1', '充值成功', '尊敬的用户,您通过快捷支付充值的1000元已到账!', '2017-03-08 08:39:08');
INSERT INTO `dope` VALUES ('6', '1', '充值成功', '尊敬的用户,您通过快捷支付充值的10000元已到账!', '2017-03-13 14:12:07');
INSERT INTO `dope` VALUES ('7', '1', '充值成功', '尊敬的用户,您通过快捷支付充值的10000元已到账!', '2017-03-13 14:12:07');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(32) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `ename` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `esex` varchar(2) DEFAULT NULL COMMENT '员工性别',
  `ebirth` datetime DEFAULT NULL COMMENT '生日',
  `eidcard` varchar(19) DEFAULT NULL COMMENT '身份证号码',
  `ephone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `edeptno` int(255) DEFAULT NULL COMMENT '部门编号',
  `epostno` varchar(255) DEFAULT NULL COMMENT '职位编号',
  `etime` datetime DEFAULT NULL COMMENT '入职时间',
  `estatus` int(11) DEFAULT NULL COMMENT '状态1为在职 0为离职',
  `epassword` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'admin', '女', '1992-03-14 00:00:00', '332111199203142343', '18345456666', '1243234243@qq.com', '10', '超级管理员', '2017-03-21 00:00:00', '1', '1234');
INSERT INTO `employee` VALUES ('2', '乐乐', null, null, null, null, null, '8', null, null, '0', '1234');
INSERT INTO `employee` VALUES ('4', '顾北', '男', '1995-02-15 00:00:00', '360731199502152214', '18379787786', '594430543@qq.com', '11', '董事长', '2014-02-05 00:00:00', '1', '1234');
INSERT INTO `employee` VALUES ('5', '林泽令', '男', '1996-08-25 00:00:00', '360731200202152214', '18379787786', '594430543@qq.com', '10', '副董事长', '2016-02-18 00:00:00', '1', '1234');
INSERT INTO `employee` VALUES ('6', 'admina', '女', '2017-04-04 00:00:00', '', '', '', '6', '', '2017-03-29 00:00:00', '0', '');
INSERT INTO `employee` VALUES ('7', 'a', '女', '2017-03-15 00:00:00', 'aa', 'sas', '', '11', '董事长', '2017-03-28 00:00:00', '0', '1234');
INSERT INTO `employee` VALUES ('8', 'b', '男', null, '', '', '', '6', '', null, '0', '');
INSERT INTO `employee` VALUES ('9', 'c', '男', null, '', '', '', '6', '', null, '0', '');
INSERT INTO `employee` VALUES ('11', 'admin111', '男', '2017-03-02 00:00:00', '1111', '111', '111', '10', '11', '2017-03-19 00:00:00', '0', '11');
INSERT INTO `employee` VALUES ('14', '', '男', null, '', '', '', '6', '', null, '0', '');
INSERT INTO `employee` VALUES ('15', '测试', '男', '1996-03-31 00:00:00', '360731199603212222', '18379787786', '594430543@qq.com', '11', '副董事长', '2017-03-06 00:00:00', '1', '123456');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fid` varchar(255) DEFAULT NULL COMMENT '意见编号',
  `fname` varchar(30) DEFAULT NULL COMMENT '反馈人',
  `fconent` text COMMENT '反馈内容',
  `ftime` datetime DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gnumber` int(11) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `gmembership` varchar(255) DEFAULT NULL,
  `gremark` varchar(255) DEFAULT NULL,
  `gaddpeople` varchar(255) DEFAULT NULL,
  `gstate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for inactiveuser
-- ----------------------------
DROP TABLE IF EXISTS `inactiveuser`;
CREATE TABLE `inactiveuser` (
  `iid` int(11) NOT NULL,
  `iuname` varchar(13) DEFAULT NULL COMMENT '用户名',
  `idmailbox` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `iCreatetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inactiveuser
-- ----------------------------

-- ----------------------------
-- Table structure for integral
-- ----------------------------
DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral` (
  `cuserid` int(11) NOT NULL AUTO_INCREMENT,
  `cuname` varchar(13) DEFAULT NULL COMMENT '用户名',
  `cunames` varchar(13) DEFAULT NULL COMMENT '真实姓名',
  `Credit` int(11) NOT NULL DEFAULT '0' COMMENT '信用积分	',
  `Member` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  PRIMARY KEY (`cuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of integral
-- ----------------------------

-- ----------------------------
-- Table structure for investinfo
-- ----------------------------
DROP TABLE IF EXISTS `investinfo`;
CREATE TABLE `investinfo` (
  `inid` int(11) NOT NULL AUTO_INCREMENT COMMENT '投资信息表主键',
  `userid` int(11) NOT NULL COMMENT '投资用户主键',
  `brrowid` int(11) DEFAULT NULL COMMENT '投标的主键',
  `inmoney` decimal(14,2) NOT NULL COMMENT '投资金额',
  `instatus` varchar(255) NOT NULL COMMENT '投资状态 0 收益中的投资  1已完成的投资',
  `instyle` varchar(255) DEFAULT NULL COMMENT '投资类型',
  `brrowstatus` varchar(255) DEFAULT NULL COMMENT '借贷状态是否凑资完',
  `interest` varchar(255) DEFAULT NULL COMMENT '投资利率',
  `profitmodel` varchar(255) DEFAULT NULL COMMENT '盈利方式 如等额本金',
  `profitmoney` decimal(14,2) NOT NULL COMMENT '盈利金额',
  `indate` datetime DEFAULT NULL COMMENT '投资时间，可为空',
  `replaydate` varchar(255) DEFAULT NULL COMMENT '还款期限单位天',
  `markstatus` int(11) NOT NULL COMMENT '投标状态 0默认投标中 1 投标通过（中标） 2投标未通过（失标）',
  PRIMARY KEY (`inid`),
  UNIQUE KEY `inid_UNIQUE` (`inid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 PACK_KEYS=1 ROW_FORMAT=DYNAMIC COMMENT='投资表';

-- ----------------------------
-- Records of investinfo
-- ----------------------------
INSERT INTO `investinfo` VALUES ('3', '3', '6', '12313.00', '0', '多金宝', '筹集中', '4', '等额本金', '0.00', '2017-02-24 14:18:24', '5', '0');
INSERT INTO `investinfo` VALUES ('4', '3', '6', '12121.00', '0', '多金宝', '筹集中', '12.00%', '等额本金', '0.00', '2017-02-25 16:26:47', '无期限', '0');
INSERT INTO `investinfo` VALUES ('5', '3', '6', '12313.00', '0', '多金宝', '筹集中', '4', '等额本金', '0.00', '2017-02-24 14:18:24', '5', '0');
INSERT INTO `investinfo` VALUES ('6', '3', '6', '12121.00', '0', '多金宝', '筹集中', '12.00%', '等额本金', '0.00', '2017-02-25 16:26:47', '无期限', '0');
INSERT INTO `investinfo` VALUES ('7', '3', '1', '12321.00', '0', '钱宝宝', '筹集中', '12.00%', '等额本金', '0.00', '2017-02-27 20:14:42', '无期限', '0');
INSERT INTO `investinfo` VALUES ('8', '3', '1', '12312.00', '0', '钱宝宝', '筹集中', '12.00%', '等额本金', '0.00', '2017-02-28 10:52:47', '无期限', '0');
INSERT INTO `investinfo` VALUES ('9', '3', '2', '1212.21', '不用', '3', '不用', '20', '不用', '0.00', '2017-02-28 15:54:17', 'Tue Mar 28 12:30:07 CST 2017', '0');
INSERT INTO `investinfo` VALUES ('10', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:24:26', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('11', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:29:54', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('12', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:36:31', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('13', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:40:24', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('14', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:49:56', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('15', '3', '6', '39000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:57:39', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('16', '3', '6', '40000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 10:59:54', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('17', '3', '6', '40000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:03:03', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('18', '3', '6', '40000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:06:45', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('19', '3', '6', '40000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:08:34', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('20', '3', '6', '38000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:18:51', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('21', '3', '6', '10000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:29:40', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('22', '3', '6', '20000.00', '不用', '不用', '不用', '20', '按月付息,到期还本', '0.00', '2017-03-06 11:41:25', '2017-03-28(共28)', '0');
INSERT INTO `investinfo` VALUES ('23', '5', '1', '10000.00', '不用', '不用', '不用', '70', '按月付息,到期还本', '0.00', '2017-03-07 09:40:00', '2017-04-28(共106)', '0');

-- ----------------------------
-- Table structure for investstat
-- ----------------------------
DROP TABLE IF EXISTS `investstat`;
CREATE TABLE `investstat` (
  `isid` int(11) NOT NULL AUTO_INCREMENT COMMENT '投资信息统计表主键',
  `userid` int(11) NOT NULL COMMENT '投资用户主键',
  `markcount` int(11) NOT NULL COMMENT '总投标数',
  `lmcount` int(11) NOT NULL COMMENT '失标总数',
  `gmcount` int(11) NOT NULL COMMENT '中标总数',
  `markmoney` decimal(14,2) NOT NULL COMMENT '投资总金额',
  `markgain` decimal(14,2) NOT NULL COMMENT '投资总收益',
  `markbegindate` datetime NOT NULL COMMENT '投资起始时间点',
  `markenddate` datetime NOT NULL COMMENT '投资结束时间点',
  PRIMARY KEY (`isid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资统计表';

-- ----------------------------
-- Records of investstat
-- ----------------------------

-- ----------------------------
-- Table structure for limi
-- ----------------------------
DROP TABLE IF EXISTS `limi`;
CREATE TABLE `limi` (
  `lid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `eid` int(11) DEFAULT NULL COMMENT '员工关联',
  `mid` varchar(255) DEFAULT NULL COMMENT '模块ID',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of limi
-- ----------------------------
INSERT INTO `limi` VALUES ('195', '1', '1');
INSERT INTO `limi` VALUES ('196', '1', '2');
INSERT INTO `limi` VALUES ('197', '1', '3');
INSERT INTO `limi` VALUES ('198', '1', '4');
INSERT INTO `limi` VALUES ('199', '1', '5');
INSERT INTO `limi` VALUES ('200', '1', '6');
INSERT INTO `limi` VALUES ('201', '1', '7');
INSERT INTO `limi` VALUES ('202', '1', '8');
INSERT INTO `limi` VALUES ('203', '1', '9');
INSERT INTO `limi` VALUES ('204', '1', '10');
INSERT INTO `limi` VALUES ('205', '1', '11');
INSERT INTO `limi` VALUES ('206', '1', '12');
INSERT INTO `limi` VALUES ('207', '1', '13');
INSERT INTO `limi` VALUES ('208', '1', '15');
INSERT INTO `limi` VALUES ('209', '1', '16');
INSERT INTO `limi` VALUES ('210', '1', '17');
INSERT INTO `limi` VALUES ('211', '1', '18');
INSERT INTO `limi` VALUES ('212', '1', '14');
INSERT INTO `limi` VALUES ('213', '1', '19');
INSERT INTO `limi` VALUES ('214', '1', '20');
INSERT INTO `limi` VALUES ('215', '1', '21');
INSERT INTO `limi` VALUES ('216', '1', '22');
INSERT INTO `limi` VALUES ('217', '1', '23');
INSERT INTO `limi` VALUES ('218', '1', '24');
INSERT INTO `limi` VALUES ('219', '1', '25');
INSERT INTO `limi` VALUES ('220', '1', '26');
INSERT INTO `limi` VALUES ('221', '1', '27');
INSERT INTO `limi` VALUES ('222', '1', '28');
INSERT INTO `limi` VALUES ('223', '1', '29');
INSERT INTO `limi` VALUES ('224', '1', '30');
INSERT INTO `limi` VALUES ('225', '1', '31');
INSERT INTO `limi` VALUES ('226', '1', '32');
INSERT INTO `limi` VALUES ('227', '1', '33');
INSERT INTO `limi` VALUES ('228', '1', '35');
INSERT INTO `limi` VALUES ('229', '1', '34');
INSERT INTO `limi` VALUES ('230', '1', '36');
INSERT INTO `limi` VALUES ('231', '1', '37');
INSERT INTO `limi` VALUES ('232', '1', '38');
INSERT INTO `limi` VALUES ('233', '1', '39');
INSERT INTO `limi` VALUES ('234', '1', '100');

-- ----------------------------
-- Table structure for lockusertable
-- ----------------------------
DROP TABLE IF EXISTS `lockusertable`;
CREATE TABLE `lockusertable` (
  `lockingserial` int(11) NOT NULL AUTO_INCREMENT COMMENT '锁定用户表序号',
  `lockingnumber` varchar(255) NOT NULL COMMENT '锁定用户表账号',
  `lockingname` varchar(255) DEFAULT NULL COMMENT '锁定用户表真实姓名',
  `lockingiphone` int(11) DEFAULT NULL COMMENT '锁定用户表手机',
  `lockingid` varchar(255) DEFAULT NULL COMMENT '锁定用户表身份证',
  `lockingdate` datetime DEFAULT NULL COMMENT '锁定用户表时间',
  PRIMARY KEY (`lockingserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lockusertable
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laccount` varchar(255) DEFAULT NULL,
  `logtype` varchar(255) DEFAULT NULL,
  `lremark` varchar(255) DEFAULT NULL,
  `lprocesstime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '用户1', '进入系统', '进入', '2017-02-19 18:23:59');
INSERT INTO `log` VALUES ('2', '用户2', '退出系统', '进入', '2017-02-15 18:23:59');
INSERT INTO `log` VALUES ('3', '用户1', '进入系统', '进入', '2017-02-19 18:23:59');
INSERT INTO `log` VALUES ('4', '用户2', '退出系统', '进入', '2017-02-15 18:23:59');
INSERT INTO `log` VALUES ('5', '1', '用户1', '进入系统', '2017-03-02 09:01:45');
INSERT INTO `log` VALUES ('6', '2', '用户2', '退出系统', '2017-02-08 09:01:49');
INSERT INTO `log` VALUES ('7', '3', '用户1', '进入系统', '2017-02-22 09:01:51');
INSERT INTO `log` VALUES ('8', '4', '用户2', '退出系统', '2017-02-22 09:01:53');
INSERT INTO `log` VALUES ('9', '用户1', '进入系统', '进入', '2017-02-19 18:23:59');
INSERT INTO `log` VALUES ('10', '用户2', '退出系统', '进入', '2017-02-15 18:23:59');
INSERT INTO `log` VALUES ('11', '用户1', '进入系统', '进入', '2017-02-19 18:23:59');
INSERT INTO `log` VALUES ('12', '用户2', '退出系统', '进入', '2017-02-15 18:23:59');
INSERT INTO `log` VALUES ('13', '1', '用户1', '进入系统', '2017-03-02 09:01:45');
INSERT INTO `log` VALUES ('14', '2', '用户2', '退出系统', '2017-02-08 09:01:49');
INSERT INTO `log` VALUES ('15', '4', '用户2', '退出系统', '2017-02-22 09:01:53');
INSERT INTO `log` VALUES ('16', '3', '用户1', '进入系统', '2017-02-22 09:01:51');
INSERT INTO `log` VALUES ('17', '6', '44', '444', '2017-02-22 09:16:00');

-- ----------------------------
-- Table structure for managegroup
-- ----------------------------
DROP TABLE IF EXISTS `managegroup`;
CREATE TABLE `managegroup` (
  `adminserial` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理组序号',
  `adminname` varchar(255) DEFAULT NULL COMMENT '管理组名称',
  `admindescribe` varchar(255) DEFAULT NULL COMMENT '管理组描述',
  PRIMARY KEY (`adminserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of managegroup
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告表id',
  `noticetitle` varchar(255) DEFAULT NULL COMMENT '公告表标题',
  `noticetype` varchar(255) DEFAULT NULL COMMENT '公告类型(1网站公告;2.媒体报道;3.管理团队;4,合作伙伴;5.团队风采,6首页图片和网址)',
  `noticepicture` varchar(255) DEFAULT NULL COMMENT '公告图片',
  `noticecontent` varchar(255) DEFAULT NULL COMMENT '公告内容',
  `noticelasttime` datetime DEFAULT NULL COMMENT '公告最后修改时间,发布时间',
  `noticelastmodifier` int(11) DEFAULT NULL COMMENT '公告最后发布人,操作人.',
  PRIMARY KEY (`noticeid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('28', '关爱社区环卫工在行动', '1', '/p2p/file/75881-106.jpg', '8月29日下午，由携手石狮华南社区举行的“微公益· 关爱环卫工”捐赠活动在华南社区活动中心举行，来自一线的环卫工人、爱心人士、乐投贷志愿服务队参加了捐赠仪式。本次活动共为环卫工人发放了价值千余元的慰问品，内含纸巾、牙刷、牙膏、洗洁精、凉茶、风油精、正气水等日常用品和药品，希望能用实际行动向劳动者致敬，通过这一份份爱心大礼包传递社会对他们的关怀。', '2017-03-13 19:48:42', '0');
INSERT INTO `notice` VALUES ('29', '中国小额信贷联盟', '1', '/p2p/file/87143-106.jpg', 'Microfinance,CAM）是国内最有权威性和最具有公信力的小额借贷行业联盟，也是中国小额信贷领域首家全国性会员制协会组织。截止到2013年10月08日，中国小额信贷联盟共有会员130名，涉及全国29个省、自治区及直辖市。龙贷于2014年5月加入中国小额信贷联盟，成为正式会员单位。《中国小额信贷机构客户保护原则自律公约》', '2017-03-13 19:52:46', '0');
INSERT INTO `notice` VALUES ('30', '易智付科技（北京）有限公司', '2', '/p2p/file/270574-106.jpg', '1998年11月12日，由北京市政府与中国人民银行、信息产业部、国家内贸局等中央部委共同发起的首都电子商务工程正式启动，确定易智付科技（北京）有限公司为网上交易与支付中介的示范平台。作为中国唯一架设在政府专网的支付平台，首信易支付自1999年3月开始运行，是中国首家实现跨银行跨地域提供多种银行卡在线交易的网上支付服务平台，现支持全国范围23家银行及全球范围4种国际信用卡在线支付，拥有千余家大中型企事业单位、政府机关、社会团体组成的庞大客户群。', '2017-03-13 19:55:04', '0');
INSERT INTO `notice` VALUES ('31', '连连银通电子支付有限公司', '2', '/p2p/file/239966-106.jpg', '连连银通电子支付有限公司是浙江省级高新企业，成立于2003年，注册资金1.05亿元。2011年8月获得人民银行颁发的支付许可证，为浙江省第二家获得该业务许可的企业。业务涵盖全国范围的互联网支付、移动手机支付业务。目前，连连支付已为多数行业TOP商户提供了安全支付解决方案，其中不乏京东、360、新浪爱彩、58同城、航班管家等行业内顶级商家。', '2017-03-13 19:55:43', '0');
INSERT INTO `notice` VALUES ('32', '北京致普惠金科技有限公司', '2', '/p2p/file/546826.jpg', '北京致普惠金科技有限公司立志于为中国高成长性人群提供方便、快捷的金融服务，让更多的人建立、释放和创造信用，积极建设社会信用体系和诚信社会，以实际行动践行普惠金融的理念。旗下产品“借钱花”运用大数据风控模型，可快速筛选高质量借款用户，并为其提供短期、小额、便捷的信贷服务。', '2017-03-13 19:56:19', '0');
INSERT INTO `notice` VALUES ('34', '周旗', '3', '/p2p/file/002.jpg', '曾先后在中国农业银行、招商银行、兴业银行担任高管职务，拥有16年的国内大型银行工作经历，对客户信用风险评估、产品定价机制和市场风险管理策略具有深入的研究，风险管理经验十分丰富。\r\n2015年与合伙人共同创建互联网金融服务平台——亿人宝\r\n感言：风控的宗旨在于对风险的预知和防范', '2017-03-13 20:04:44', '0');
INSERT INTO `notice` VALUES ('37', '游国勋', '3', '/p2p/file/004.jpg', '网贷之家作为一个平等、公开、中立的网贷行业交流平台，网贷之家提供的服务有门户资讯、网贷社区、行业咨询等，并拥有网贷评级、网贷管家等创新型板块。网贷之家网站的诞生，在网络借贷行业及社会媒体中引起强烈关注，并为广东省金融办及上海市金融办对行业调研提供咨询参考。', '2017-03-13 20:54:44', '0');
INSERT INTO `notice` VALUES ('38', '安徽大成律师事务所', '4', '/p2p/file/680345.jpg', '安徽大成律师事务所成立于2014年5月15日，主要从事的业务领域包括诉讼及争议解决、建筑房地产、公用事业、境内上市、境外上市、重组并购、税务、金融和银行、国际贸易等。 安徽大成律师事务所有合伙人200余名，已有众多世界500强企业、跨国公司、外商投资企业、国际和本土金融机构及投资基金成为亿人宝的长期客户和良好合作伙伴。', '2017-03-13 20:56:19', '0');
INSERT INTO `notice` VALUES ('39', '迅付信息科技有限公司', '4', '/p2p/file/807818.jpg', '迅付信息科技有限公司（简称：环迅支付），是中国最早成立的第三方支付企业。公司在2011年获颁中国人民银行首批《支付业务许可证》。公司目前可以支持国际主流信用卡及所有国内主流银行的在线支付，为全球超过60万家商户及2000万用户提供金融级的支付体验。 环迅支付总部位于上海，在长春、北京、南京、杭州、成都、重庆、福州、广州及深圳均拥有分支机构。', '2017-03-13 20:58:06', '0');
INSERT INTO `notice` VALUES ('40', '连连银通电子支付有限公司', '4', '/p2p/file/844384.jpg', '连连银通电子支付有限公司是浙江省级高新企业，成立于2003年，注册资金1.05亿元。2011年8月获得人民银行颁发的支付许可证，为浙江省第二家获得该业务许可的企业。业务涵盖全国范围的互联网支付、移动手机支付业务。目前，连连支付已为多数行业TOP商户提供了安全支付解决方案，其中不乏京东、360、新浪爱彩、58同城、航班管家等行业内顶级商家。', '2017-03-13 20:58:50', '0');
INSERT INTO `notice` VALUES ('41', '服务民生', '5', '/p2p/file/1089978.jpg', '设立公益书友会，斥资购买图书并向市民免费开放，这也和2015年政府工作报告提出要“倡导全民阅读 ，建设书香社会”的号召不谋而合。公益书友会将是一个交流互动的乐园，书友会将不定期举办多种活动，发挥石狮首家互联网金融公司的所长，帮助市民了解金融法规、投资理财等相关知识，为发展普惠金融做出自己的贡献。', '2017-03-13 21:03:04', '0');
INSERT INTO `notice` VALUES ('42', '国资基金介绍', '5', '/p2p/file/1089980.jpg', '上海市嘉定区国有资产经营（集团）有限公司是经嘉定区政府批准、由嘉定区国资委出资成立的国有独资企业，注册资本为人民币8亿元。以金融服务、产业投资、园区运营为核心主业，以培育战略新兴产业为核心目标，以资本和股权投资为抓手，国资集团在服务区域产业升级和园区转型过程中发挥着战略引导作用，成为推动嘉定区金融服务和新产业投资孵化的专业集团。\r\n上海汇嘉创业投资有限公司：隶属于国资集团的创投基金，成立于2011年8月，注册资本5000万元。', '2017-03-13 21:04:41', '0');
INSERT INTO `notice` VALUES ('43', '亿人贷第三季度净利润3.443亿元 同比增长308%', '5', '/p2p/file/1113364.jpg', '新浪科技讯 北京时间11月16日早间消息， 宜人贷 （NYSE：YRD）今天发布了该公司截至2016年9月30日的第三季度未经审计的财务报告。报告显示，宜人贷第三季度总净营收为人民币8.767亿元（约合1.315亿美元），同比增长137%；净利润为人民币3.443亿...', '2017-03-13 21:06:48', '0');
INSERT INTO `notice` VALUES ('44', '宜人贷产品副总裁宋巍：技术创新是金融变革的驱动力', '5', '/p2p/file/1195060.jpg', '11月20日，由宁波市人民政府、全球共享金融100人论坛联合主办的全球共享金融100人论坛宁波站圆满落幕。峰会以共享视角下的金融创新之路为主题，探讨了共享视角下地方金融创新与数字普惠金融创新等话题。来自政府、央行、学术界、...', '2017-03-13 21:07:30', '0');
INSERT INTO `notice` VALUES ('46', '芝加哥丶厦门站', '6', '/p2p/file/zhouyetu1.png', 'www.baidu.com', '2017-03-14 16:48:35', '0');
INSERT INTO `notice` VALUES ('47', '好莱坞丶赣州站', '6', '/p2p/file/zhouyetu2.png', 'www.baidu.com', '2017-03-14 08:44:26', '0');
INSERT INTO `notice` VALUES ('48', '优化投资送福利', '6', '/p2p/file/zhouyetu3.png', 'www.baidu.com', '2017-03-14 08:44:58', '0');
INSERT INTO `notice` VALUES ('49', '2月运营报告', '6', '/p2p/file/zhouyetu4.png', 'www.baidu.com', '2017-03-14 08:46:06', '0');
INSERT INTO `notice` VALUES ('50', '权威专家指导', '6', '/p2p/file/zhouyetu7.png', 'www.baidu.com', '2017-03-14 08:46:44', '0');
INSERT INTO `notice` VALUES ('93', '测试2', '6', '/p2p/file/yyy.jpg', 'www.baidu.com', '2017-03-14 16:21:39', '0');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL COMMENT '主键',
  `pname` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `ptime` datetime DEFAULT NULL COMMENT '创建时间',
  `pstatus` int(11) DEFAULT NULL COMMENT '职位状态 1 为可用 0 为不可用',
  `pdescribe` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for poundage
-- ----------------------------
DROP TABLE IF EXISTS `poundage`;
CREATE TABLE `poundage` (
  `pID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `uID` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `zname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `sxmoney` varchar(32) DEFAULT NULL COMMENT '手续费金额',
  `what` varchar(32) DEFAULT NULL COMMENT '什么手续',
  `sxtime` datetime DEFAULT NULL COMMENT '时间',
  `Localaccount` varchar(255) DEFAULT NULL COMMENT '本地账户',
  `bookaccount` varchar(255) DEFAULT NULL COMMENT '往来账户',
  `paytype` varchar(255) DEFAULT NULL COMMENT '交易方式',
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='手续费记录表';

-- ----------------------------
-- Records of poundage
-- ----------------------------
INSERT INTO `poundage` VALUES ('1', '1', '默默', '黄默', '500', '转账', '2017-02-02 08:26:34', null, null, null);
INSERT INTO `poundage` VALUES ('2', '1', '默默', '黄默', '600', '转账', '2017-02-02 08:26:50', null, null, null);
INSERT INTO `poundage` VALUES ('3', '1', '默默', '黄默', '700', '提现', '2017-03-02 08:27:02', null, null, null);
INSERT INTO `poundage` VALUES ('4', '1', '默默', '黄默', '800', '提现', '2017-03-02 08:28:25', null, null, null);
INSERT INTO `poundage` VALUES ('5', '1', '默默', '黄默', '900', '取款', '2017-03-02 08:28:47', null, null, null);
INSERT INTO `poundage` VALUES ('6', '1', '用户', '段炳森', '10000', '充值', '2017-03-06 16:19:27', '2312212342124221234', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('7', '1', '用户', '段炳森', '122311', '充值', '2017-03-06 17:02:29', '45444566423223454333', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('8', '1', '用户', '段炳森', '500', '充值', '2017-03-06 17:05:23', '1111111111111111111', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('9', '1', '用户', '段炳森', '121', '充值', '2017-03-06 17:06:42', '233333322222221111', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('10', '1', '用户', '段炳森', '50000', '充值', '2017-03-06 20:04:18', '1111111111111111111', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('11', '1', '用户', '段炳森', '1000', '充值', '2017-03-08 08:39:08', '33333333', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('12', '1', '用户', '段炳森', '10000', '充值', '2017-03-13 14:12:07', '2163712317329', '1', '快捷支付');
INSERT INTO `poundage` VALUES ('13', '1', '用户', '段炳森', '10000', '充值', '2017-03-13 14:12:07', '2163712317329', '1', '快捷支付');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pmoney` bigint(20) DEFAULT NULL COMMENT '已募集总金额',
  `pincome` varchar(255) DEFAULT NULL COMMENT '预期年化收益',
  `ptime` datetime DEFAULT NULL COMMENT '项目期限',
  `ptype` int(255) DEFAULT NULL COMMENT '类型',
  `pway` varchar(255) DEFAULT NULL COMMENT '还款方式 到期还本付息 按月付息,到期还本 等额本息',
  `pcount` datetime DEFAULT NULL COMMENT '还款截止期限',
  `progress` varchar(255) DEFAULT NULL COMMENT '投资进度',
  `psaveway` varchar(255) DEFAULT NULL COMMENT '保障方式',
  `prateben` varchar(255) DEFAULT NULL COMMENT '需还本息',
  `ppublishtime` datetime DEFAULT NULL COMMENT '发布时间',
  `pname` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `ptotalmoney` bigint(255) DEFAULT NULL COMMENT '募集资金',
  `prange` varchar(255) DEFAULT NULL COMMENT '投资范围',
  `puse` varchar(255) DEFAULT NULL COMMENT '资金用途',
  `pstate` varchar(255) DEFAULT NULL COMMENT '状态 1筹资中 2筹资完 3失效,4项目完成',
  `picture` varchar(255) DEFAULT NULL COMMENT '封面',
  `pproduce` int(255) DEFAULT NULL COMMENT '标主id',
  `pdesc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `psafe` varchar(255) DEFAULT NULL COMMENT '保障措施',
  `did` int(11) DEFAULT '1' COMMENT 'details表的主键',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) COMMENT '主键',
  KEY `pid` (`did`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`did`) REFERENCES `details` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '30000', '70', '2017-03-13 00:00:00', '6', '按月付息,到期还本', '2017-03-13 00:00:00', '75.00', '100%本息垫付', '2000', '2017-02-28 13:06:30', '唐先生宝马318汽车质押贷...', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/1.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('2', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('4', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('5', '1000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('6', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('7', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('8', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('9', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('10', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product` VALUES ('65', '0', '', '2017-03-14 00:00:00', null, '', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/4.jpg', '0', '55', '5,55', '1');
INSERT INTO `product` VALUES ('66', '0', '', '2017-03-14 00:00:00', null, '', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/3.jpg', '0', '55', '55,55', '1');
INSERT INTO `product` VALUES ('67', '0', '', '2017-03-14 00:00:00', null, '', '2017-03-14 00:00:00', '100', '', '5', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/4.jpg', '0', '555', '55,5', '1');

-- ----------------------------
-- Table structure for product_copy1
-- ----------------------------
DROP TABLE IF EXISTS `product_copy1`;
CREATE TABLE `product_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pmoney` bigint(20) DEFAULT NULL COMMENT '已募集总金额',
  `pincome` varchar(255) DEFAULT NULL COMMENT '预期年化收益',
  `ptime` datetime DEFAULT NULL COMMENT '项目期限',
  `ptype` int(255) DEFAULT NULL COMMENT '类型',
  `pway` varchar(255) DEFAULT NULL COMMENT '还款方式 到期还本付息 按月付息,到期还本 等额本息',
  `pcount` datetime DEFAULT NULL COMMENT '还款截止期限',
  `progress` varchar(255) DEFAULT NULL COMMENT '投资进度',
  `psaveway` varchar(255) DEFAULT NULL COMMENT '保障方式',
  `prateben` varchar(255) DEFAULT NULL COMMENT '需还本息',
  `ppublishtime` datetime DEFAULT NULL COMMENT '发布时间',
  `pname` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `ptotalmoney` bigint(255) DEFAULT NULL COMMENT '募集资金',
  `prange` varchar(255) DEFAULT NULL COMMENT '投资范围',
  `puse` varchar(255) DEFAULT NULL COMMENT '资金用途',
  `pstate` varchar(255) DEFAULT NULL COMMENT '状态 1筹资中 2筹资完 3失效,4项目完成',
  `picture` varchar(255) DEFAULT NULL COMMENT '封面',
  `pproduce` int(255) DEFAULT NULL COMMENT '标主id',
  `pdesc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `psafe` varchar(255) DEFAULT NULL COMMENT '保障措施',
  `did` int(11) DEFAULT '1' COMMENT 'details表的主键',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) COMMENT '主键',
  KEY `pid` (`did`),
  CONSTRAINT `product_copy1_ibfk_1` FOREIGN KEY (`did`) REFERENCES `details` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_copy1
-- ----------------------------
INSERT INTO `product_copy1` VALUES ('1', '30000', '70', '2017-03-13 00:00:00', '6', '按月付息,到期还本', '2017-03-13 00:00:00', '75.00', '100%本息垫付', '2000', '2017-02-28 13:06:30', '唐先生宝马318汽车质押贷...', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/1.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('2', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('4', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('5', '1000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('6', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('7', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('8', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('9', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('10', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy1` VALUES ('53', '0', null, '2017-03-14 11:43:25', null, null, '2017-03-14 11:43:25', '100', null, null, '2017-03-14 11:43:25', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy1` VALUES ('54', '0', '', '2017-03-14 00:00:00', null, '', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/', '0', '55', '5,55', '1');
INSERT INTO `product_copy1` VALUES ('55', '0', null, '2017-03-14 14:52:25', null, null, '2017-03-14 14:52:25', '100', null, null, '2017-03-14 14:52:25', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy1` VALUES ('56', '0', null, '2017-03-14 14:52:48', null, null, '2017-03-14 14:52:48', '100', null, null, '2017-03-14 14:52:48', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy1` VALUES ('57', '0', '', '2017-03-14 00:00:00', null, '7', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/', '0', '7', '77,77', '1');
INSERT INTO `product_copy1` VALUES ('58', '0', null, '2017-03-14 15:09:52', null, null, '2017-03-14 15:09:52', '100', null, null, '2017-03-14 15:09:52', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy1` VALUES ('59', '0', null, '2017-03-14 15:10:20', null, null, '2017-03-14 15:10:20', '100', null, null, '2017-03-14 15:10:20', null, '0', null, null, '2', null, '0', null, null, '1');

-- ----------------------------
-- Table structure for product_copy2
-- ----------------------------
DROP TABLE IF EXISTS `product_copy2`;
CREATE TABLE `product_copy2` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pmoney` bigint(20) DEFAULT NULL COMMENT '已募集总金额',
  `pincome` varchar(255) DEFAULT NULL COMMENT '预期年化收益',
  `ptime` datetime DEFAULT NULL COMMENT '项目期限',
  `ptype` int(255) DEFAULT NULL COMMENT '类型',
  `pway` varchar(255) DEFAULT NULL COMMENT '还款方式 到期还本付息 按月付息,到期还本 等额本息',
  `pcount` datetime DEFAULT NULL COMMENT '还款截止期限',
  `progress` varchar(255) DEFAULT NULL COMMENT '投资进度',
  `psaveway` varchar(255) DEFAULT NULL COMMENT '保障方式',
  `prateben` varchar(255) DEFAULT NULL COMMENT '需还本息',
  `ppublishtime` datetime DEFAULT NULL COMMENT '发布时间',
  `pname` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `ptotalmoney` bigint(255) DEFAULT NULL COMMENT '募集资金',
  `prange` varchar(255) DEFAULT NULL COMMENT '投资范围',
  `puse` varchar(255) DEFAULT NULL COMMENT '资金用途',
  `pstate` varchar(255) DEFAULT NULL COMMENT '状态 1筹资中 2筹资完 3失效,4项目完成',
  `picture` varchar(255) DEFAULT NULL COMMENT '封面',
  `pproduce` int(255) DEFAULT NULL COMMENT '标主id',
  `pdesc` varchar(255) DEFAULT NULL COMMENT '项目描述',
  `psafe` varchar(255) DEFAULT NULL COMMENT '保障措施',
  `did` int(11) DEFAULT '1' COMMENT 'details表的主键',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) COMMENT '主键',
  KEY `pid` (`did`),
  CONSTRAINT `product_copy2_ibfk_1` FOREIGN KEY (`did`) REFERENCES `details` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_copy2
-- ----------------------------
INSERT INTO `product_copy2` VALUES ('1', '30000', '70', '2017-03-13 00:00:00', '6', '按月付息,到期还本', '2017-03-13 00:00:00', '75.00', '100%本息垫付', '2000', '2017-02-28 13:06:30', '唐先生宝马318汽车质押贷...', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/1.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('2', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('4', '40000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('5', '1000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('6', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('7', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 00:00:00', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '赵女士长安福特福克斯汽车质押', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('8', '40000', '20', '2017-02-28 12:27:29', '7', '按月付息,到期还本', '2017-03-28 12:30:07', '100', '100%本息垫付', '2000', '2017-02-28 13:06:30', '秦先生雪佛兰赛欧汽车质押贷..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('9', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '曾先生北京现代悦动汽车质押..', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('10', '1000', '20', '2017-02-28 12:27:29', '6', '按月付息,到期还本', '2017-03-28 12:30:07', '2.50', '100%本息垫付', '2000', '2017-02-28 13:06:30', '(车)赵女士长安福特福克斯汽车', '40000', '50元~ 不限', '临时周转', '2', '/p2p/cover/2.jpg', '1', '', '', null);
INSERT INTO `product_copy2` VALUES ('53', '0', null, '2017-03-14 11:43:25', null, null, '2017-03-14 11:43:25', '100', null, null, '2017-03-14 11:43:25', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy2` VALUES ('54', '0', '', '2017-03-14 00:00:00', null, '', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/', '0', '55', '5,55', '1');
INSERT INTO `product_copy2` VALUES ('55', '0', null, '2017-03-14 14:52:25', null, null, '2017-03-14 14:52:25', '100', null, null, '2017-03-14 14:52:25', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy2` VALUES ('56', '0', null, '2017-03-14 14:52:48', null, null, '2017-03-14 14:52:48', '100', null, null, '2017-03-14 14:52:48', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy2` VALUES ('57', '0', '', '2017-03-14 00:00:00', null, '7', '2017-03-14 00:00:00', '100', '', '', '2017-03-14 00:00:00', '', '0', '', '', '2', '/p2p/cover/', '0', '7', '77,77', '1');
INSERT INTO `product_copy2` VALUES ('58', '0', null, '2017-03-14 15:09:52', null, null, '2017-03-14 15:09:52', '100', null, null, '2017-03-14 15:09:52', null, '0', null, null, '2', null, '0', null, null, '1');
INSERT INTO `product_copy2` VALUES ('59', '0', null, '2017-03-14 15:10:20', null, null, '2017-03-14 15:10:20', '100', null, null, '2017-03-14 15:10:20', null, '0', null, null, '2', null, '0', null, null, '1');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `rID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `uID` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `czlx` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `lsh` varchar(32) DEFAULT NULL COMMENT '流水号',
  `czmoney` varchar(32) DEFAULT NULL COMMENT '充值金额',
  `fl` varchar(32) DEFAULT NULL COMMENT '费率',
  `dzmoney` varchar(32) DEFAULT NULL COMMENT '到账金额',
  `cztime` datetime DEFAULT NULL COMMENT '充值时间',
  `statu` varchar(32) DEFAULT NULL COMMENT '状态',
  `zname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`rID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='充值记录表';

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES ('1', '1', '默默', '环迅支付', 'ab123456', '500', '0.0', '500', '2017-02-21 19:17:10', '成功', '李默');
INSERT INTO `recharge` VALUES ('2', '1', '默默', '固付宝', 'ab123457', '600', '0.0', '600', '2017-02-23 19:18:05', '失败', '李默');
INSERT INTO `recharge` VALUES ('3', '1', '默默', '线下充值', 'ab123458', '700', '0.0', '700', '2017-02-25 19:18:39', '成功', '李默');
INSERT INTO `recharge` VALUES ('4', '1', '默默', '手工充值', 'ab123459', '800', '0.0', '800', '2017-02-28 19:19:24', '成功', '李默');
INSERT INTO `recharge` VALUES ('5', '1', '默默', '奖励充值', 'ab123450', '900', '0.0', '900', '2017-02-28 19:19:55', '失败', '李默');

-- ----------------------------
-- Table structure for referee
-- ----------------------------
DROP TABLE IF EXISTS `referee`;
CREATE TABLE `referee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid` varchar(255) DEFAULT NULL COMMENT '推荐编号',
  `recommid` varchar(255) DEFAULT NULL COMMENT '被推荐人id',
  `rapplicant` varchar(255) DEFAULT NULL COMMENT '被推荐人姓名',
  `rsponsorid` int(11) DEFAULT NULL COMMENT '推荐人id',
  `rsponsorname` varchar(255) DEFAULT NULL COMMENT '推荐人姓名',
  `rmoney` double DEFAULT NULL COMMENT '奖励金额',
  `rtime` datetime DEFAULT NULL COMMENT '奖励时间',
  `rman` varchar(255) DEFAULT NULL COMMENT '维护人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of referee
-- ----------------------------

-- ----------------------------
-- Table structure for tender
-- ----------------------------
DROP TABLE IF EXISTS `tender`;
CREATE TABLE `tender` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoid` varchar(255) DEFAULT NULL COMMENT '投标表的ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `ttime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tender
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Index` int(4) NOT NULL DEFAULT '0',
  `IntVal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1', '2');
INSERT INTO `test` VALUES ('2', '1', '4');
INSERT INTO `test` VALUES ('3', '1', '4');
INSERT INTO `test` VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for testtb
-- ----------------------------
DROP TABLE IF EXISTS `testtb`;
CREATE TABLE `testtb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testtb
-- ----------------------------
INSERT INTO `testtb` VALUES ('1', 'bb', '13');
INSERT INTO `testtb` VALUES ('2', 'bb', '14');
INSERT INTO `testtb` VALUES ('3', 'bb', '14');

-- ----------------------------
-- Table structure for testtb1
-- ----------------------------
DROP TABLE IF EXISTS `testtb1`;
CREATE TABLE `testtb1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testtb1
-- ----------------------------
INSERT INTO `testtb1` VALUES ('1', 'aa', '12');

-- ----------------------------
-- Table structure for trade
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
  `tID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `uID` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `zname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `jymoney` varchar(32) DEFAULT NULL COMMENT '交易金额',
  `what` varchar(32) DEFAULT NULL COMMENT '什么交易',
  `jytime` datetime DEFAULT NULL COMMENT '时间',
  `other` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`tID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='交易记录表';

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('1', '1', '默默', '黄默', '200', '取款', '2017-02-02 09:07:36', '无');
INSERT INTO `trade` VALUES ('2', '1', '默默', '黄默', '300', '取款', '2017-02-02 09:07:48', '无');
INSERT INTO `trade` VALUES ('3', '1', '默默', '黄默', '400', '提现', '2017-02-02 09:08:05', '无');
INSERT INTO `trade` VALUES ('4', '1', '默默', '黄默', '500', '提现', '2017-03-02 09:08:14', '无');
INSERT INTO `trade` VALUES ('5', '1', '默默', '黄默', '600', '存款', '2017-03-02 09:08:34', '无');
INSERT INTO `trade` VALUES ('6', '3', '用户3', '', '39000', null, '2017-03-06 10:29:55', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('7', '3', '用户3', '', '39000', null, '2017-03-06 10:36:31', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('8', '3', '用户3', '', '39000', null, '2017-03-06 10:40:24', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('9', '3', '用户3', '', '39000', null, '2017-03-06 10:49:56', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('10', '3', '用户3', '', '39000', null, '2017-03-06 10:57:39', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('11', '3', '用户3', '', '40000', null, '2017-03-06 10:59:54', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('12', '3', '用户3', '', '40000', null, '2017-03-06 11:03:03', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('13', '3', '用户3', '', '40000', null, '2017-03-06 11:06:45', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('14', '3', '用户3', '', '40000', null, '2017-03-06 11:08:34', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('15', '3', '用户3', '', '38000', null, '2017-03-06 11:18:51', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('16', '3', '用户3', '', '10000', null, '2017-03-06 11:29:40', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('17', '3', '用户3', '', '20000', null, '2017-03-06 11:41:25', '要投资就要舍得花钱');
INSERT INTO `trade` VALUES ('27', '3', '用户3', '', '+12321', '唐先生宝马318汽车质押贷...标资金筹集未完成,退回本金.', '2017-03-13 10:19:55', ' ');
INSERT INTO `trade` VALUES ('28', '3', '用户3', '', '+12312', '唐先生宝马318汽车质押贷...标资金筹集未完成,退回本金.', '2017-03-13 10:20:33', ' ');
INSERT INTO `trade` VALUES ('29', '3', '用户3', '', '+10000', '唐先生宝马318汽车质押贷...标资金筹集未完成,退回本金.', '2017-03-13 10:20:40', ' ');
INSERT INTO `trade` VALUES ('32', '1', '用户', '段炳森', '8000', '提现失败', '2017-03-14 09:50:27', '无');
INSERT INTO `trade` VALUES ('33', '1', '用户', '段炳森', '8000', '提现失败', '2017-03-14 09:52:36', '无');
INSERT INTO `trade` VALUES ('34', '1', '用户', '段炳森', '8000', '提现失败', '2017-03-14 09:59:27', '无');
INSERT INTO `trade` VALUES ('35', '1', '用户', '段炳森', '5000', '转账失败', '2017-03-14 10:15:19', '无');
INSERT INTO `trade` VALUES ('36', '1', '用户', '段炳森', '5000', '转账成功', '2017-03-14 10:17:38', '无');

-- ----------------------------
-- Table structure for userauditor
-- ----------------------------
DROP TABLE IF EXISTS `userauditor`;
CREATE TABLE `userauditor` (
  `uaid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `uauditorid` int(11) DEFAULT NULL COMMENT '审核人ID',
  `uauditor` varchar(20) DEFAULT NULL COMMENT '审核人姓名',
  PRIMARY KEY (`uaid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户与审核人';

-- ----------------------------
-- Records of userauditor
-- ----------------------------
INSERT INTO `userauditor` VALUES ('1', '1', '用户', '1', 'admin');
INSERT INTO `userauditor` VALUES ('2', '5', '用户2', '1', 'admin');
INSERT INTO `userauditor` VALUES ('3', '3', '用户3', '1', 'admin');

-- ----------------------------
-- Table structure for userreport
-- ----------------------------
DROP TABLE IF EXISTS `userreport`;
CREATE TABLE `userreport` (
  `reportserial` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户举报表序号',
  `reportinformant` varchar(255) DEFAULT NULL COMMENT '举报人',
  `reportInformer` varchar(255) DEFAULT NULL COMMENT '被举报人',
  `reporttype` varchar(255) DEFAULT NULL COMMENT '举报类型',
  `reportcontent` varchar(255) DEFAULT NULL COMMENT '内容',
  `reporttime` datetime DEFAULT NULL COMMENT '举报时间',
  `reportstate` varchar(255) DEFAULT NULL COMMENT '举报状态',
  PRIMARY KEY (`reportserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userreport
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `unickname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `uname` varchar(10) DEFAULT NULL COMMENT '用户真实姓名',
  `umailbox` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `uphonenumber` varchar(12) DEFAULT NULL COMMENT '手机号',
  `uregisterdate` datetime DEFAULT NULL COMMENT '注册时间',
  `uflip` varchar(20) DEFAULT NULL COMMENT '最后登录ip',
  `ufldate` datetime DEFAULT NULL COMMENT '最后登录时间',
  `ureferrer` varchar(50) DEFAULT NULL COMMENT '推荐人',
  `ureferrername` varchar(10) DEFAULT NULL COMMENT '推荐人姓名',
  `userpaytoid` varchar(50) DEFAULT NULL COMMENT '用户汇付号',
  `ucertnumber` varchar(50) DEFAULT NULL COMMENT '法大大证书编号',
  `upassword` varchar(255) DEFAULT NULL COMMENT '密码',
  `ucardid` varchar(255) DEFAULT NULL COMMENT '身份证',
  `uhead` varchar(255) DEFAULT '' COMMENT '头像',
  `upwd_zd` varchar(255) DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '用户', '段炳森', '584889861@qq.com', '15083946017', '2017-02-21 11:20:24', null, null, null, null, null, '647988', '1234', '360702199712250619', null, null);
INSERT INTO `users` VALUES ('3', '用户3', '某某', '', '98675498', '2017-02-19 11:20:31', null, null, null, null, null, '121175', '1234', '', null, '');
INSERT INTO `users` VALUES ('4', 'admin22', null, null, '1111', null, null, null, null, null, null, null, '123456789', null, '', null);
INSERT INTO `users` VALUES ('5', '用户2', '张三', null, '111111', '2017-02-25 16:31:28', null, null, null, null, null, null, '1234', '360722199608253639', '', null);
INSERT INTO `users` VALUES ('6', 'asas', 'sas', null, '32', null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('7', 'sas', 'sa', null, '32', null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('8', 'sx', 'xsa', null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('9', 'xs', 'xsax', null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('10', 'xsax', 'xs', null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('11', 'xsax', 'xsax', null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('12', 'saxa', 'xsa', null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `users` VALUES ('13', '周旗最Sb帅', null, null, '110', null, null, null, null, null, null, null, '123456', null, '', null);
INSERT INTO `users` VALUES ('25', '1234567', null, null, '', null, null, null, null, null, null, null, '1234', null, '', null);
INSERT INTO `users` VALUES ('29', '123456', null, null, '11111111111', null, null, null, null, null, null, null, '123456', null, '', null);
INSERT INTO `users` VALUES ('30', '用户29', null, null, '18379787788', null, null, null, null, null, null, null, '123456', null, '', null);
INSERT INTO `users` VALUES ('33', '423423', null, null, '', null, null, null, null, null, null, null, '123', null, '', null);
INSERT INTO `users` VALUES ('35', 'adminssss', null, null, '18707971230', '2017-03-07 10:42:20', null, null, null, null, null, null, '123456', null, '', null);
INSERT INTO `users` VALUES ('36', '', null, null, '', '2017-03-07 11:24:28', null, null, null, null, null, null, '12@@!', null, '', null);
INSERT INTO `users` VALUES ('37', '哈哈思密达', null, null, '16643679345', '2017-03-11 09:50:16', null, null, null, null, null, null, 'qwer666', null, '', null);
INSERT INTO `users` VALUES ('38', 'wmlwml', null, null, '12345678911', '2018-05-28 11:57:14', null, null, null, null, null, null, '123456', null, '', null);

-- ----------------------------
-- Table structure for vip
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `vid` int(11) NOT NULL COMMENT '主键',
  `uname` varchar(13) DEFAULT NULL COMMENT '用户名',
  `unames` varchar(13) DEFAULT NULL COMMENT '真实姓名',
  `vipdate` datetime DEFAULT NULL COMMENT '申请vip时间',
  `vipdates` datetime DEFAULT NULL COMMENT '到期vip时间',
  `vipstate` int(1) DEFAULT NULL COMMENT '付费状态',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------

-- ----------------------------
-- Table structure for withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `withdrawal`;
CREATE TABLE `withdrawal` (
  `wID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID编号',
  `uID` int(11) NOT NULL COMMENT '用户id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `zname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `txnum` varchar(32) DEFAULT NULL COMMENT '提现账号',
  `txbank` varchar(32) DEFAULT NULL COMMENT '提现银行',
  `txmoney` varchar(32) DEFAULT NULL COMMENT '提现金额',
  `dzmoney` varchar(32) DEFAULT NULL COMMENT '到账金额',
  `sxf` varchar(32) DEFAULT NULL COMMENT '手续费',
  `txtime` datetime DEFAULT NULL COMMENT '提现时间',
  `zztime` datetime DEFAULT NULL COMMENT '转账时间',
  `statu` varchar(32) DEFAULT NULL COMMENT '状态（失败，已提现,转账中，审核中）',
  `shwho` varchar(32) DEFAULT NULL COMMENT '审核人',
  `shtime` datetime DEFAULT NULL COMMENT '审核时间',
  `nothing` varchar(32) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`wID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='提现管理表';

-- ----------------------------
-- Records of withdrawal
-- ----------------------------
INSERT INTO `withdrawal` VALUES ('1', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '3000', '3000', '0.0', '2017-02-24 00:00:00', '2017-02-24 00:00:00', '0', 'admin', '2017-02-23 14:38:04', '无');
INSERT INTO `withdrawal` VALUES ('2', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '4000', '4000', '0.0', '2017-02-23 00:00:00', '2017-02-23 00:00:00', '1', 'admin', '2017-02-23 14:38:55', '无');
INSERT INTO `withdrawal` VALUES ('3', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '5000', '5000', '0.0', '2017-02-25 00:00:00', '2017-02-25 00:00:00', '1', 'admin', '2017-02-23 14:39:19', '无');
INSERT INTO `withdrawal` VALUES ('4', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '6000', '6000', '0.0', '2017-02-23 00:00:00', '2017-02-28 14:35:57', '2', '死的SH', '2017-02-28 14:35:57', '无');
INSERT INTO `withdrawal` VALUES ('5', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '7000', '7000', '0.0', '2017-02-23 00:00:00', '2017-02-28 14:39:22', '0', '死的SH', '2017-02-28 14:39:22', '无');
INSERT INTO `withdrawal` VALUES ('6', '1', '用户', '段炳森', '6210984280005308827', '中国邮政', '8000', '8000', '0.0', '2017-02-23 00:00:00', null, '3', '', '2017-03-14 10:25:28', '无');

-- ----------------------------
-- Procedure structure for expire
-- ----------------------------
DROP PROCEDURE IF EXISTS `expire`;
DELIMITER ;;
CREATE DEFINER=`dbdata`@`%` PROCEDURE `expire`()
BEGIN

	#Routine body goes here...

	



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`dbdata`@`%` PROCEDURE `test`()
begin

DECLARE name_proc VARCHAR(20) CHARACTER SET utf8;

DECLARE sex_proc VARCHAR(4) CHARACTER SET utf8;

DECLARE age_proc INT(10);

DECLARE class_proc VARCHAR(20) CHARACTER SET utf8;

DECLARE Addr_proc VARCHAR(50) CHARACTER SET utf8;

DECLARE i INT;

set i = 1;

set sex_proc = '女';

set age_proc = 20;

set class_proc = '山治班';

set Addr_proc = '北京市朝阳区';

while i<4 do

set name_proc = CONCAT('露西亚',i);

insert into students(Name,Sex,age,class,Addr)values(name_proc,sex_proc,age_proc,class_proc,Addr_proc);

set i = i+1;

end while;

end
;;
DELIMITER ;
