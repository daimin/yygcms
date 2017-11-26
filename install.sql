/*
Navicat MySQL Data Transfer

Source Server         : my-centos
Source Server Version : 50712
Source Host           : 192.168.33.10:3306
Source Database       : yygcms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-26 22:15:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yyg_admins
-- ----------------------------
DROP TABLE IF EXISTS `yyg_admins`;
CREATE TABLE `yyg_admins` (
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `role` tinyint(4) NOT NULL DEFAULT '2',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_admins
-- ----------------------------
INSERT INTO `yyg_admins` VALUES ('admin', 'a44f75e56684fcbb89d46ef2be701265', '2013-07-16 15:43:05', '2017-11-26 21:01:28', '1', '1');
INSERT INTO `yyg_admins` VALUES ('admin1', '111111', '2013-07-16 15:20:54', '0000-00-00 00:00:00', '1', '2');
INSERT INTO `yyg_admins` VALUES ('admin2', 'f0bab14fdb2dec036f1837bf48ca0dd3', '2013-07-16 15:21:50', '0000-00-00 00:00:00', '1', '2');
INSERT INTO `yyg_admins` VALUES ('vagasnail', 'f0bab14fdb2dec036f1837bf48ca0dd3', '2013-07-16 16:24:33', '0000-00-00 00:00:00', '1', '1');
INSERT INTO `yyg_admins` VALUES ('1111', '2d432ae82045fa704ff12b4ebac19fcc', '2013-07-16 16:39:39', '2013-07-17 11:34:51', '0', '0');
INSERT INTO `yyg_admins` VALUES ('2222', '2d432ae82045fa704ff12b4ebac19fcc', '2013-07-17 14:23:58', '0000-00-00 00:00:00', '0', '1');

-- ----------------------------
-- Table structure for yyg_attac
-- ----------------------------
DROP TABLE IF EXISTS `yyg_attac`;
CREATE TABLE `yyg_attac` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(500) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=861 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_attac
-- ----------------------------
INSERT INTO `yyg_attac` VALUES ('562', '4a85511b0ee2dad7784e78559b67ce51.jpg', '/Upload/20130905/4a85511b0ee2dad7784e78559b67ce51.jpg', '2013-09-05 22:19:46', null);
INSERT INTO `yyg_attac` VALUES ('561', 'f96bd8bac1b13531dc93df9867900c52.jpg', '/Upload/20130905/f96bd8bac1b13531dc93df9867900c52.jpg', '2013-09-05 22:19:46', null);
INSERT INTO `yyg_attac` VALUES ('560', '92fbc2929fab9d1da55185d902d4020f.jpg', '/Upload/20130905/92fbc2929fab9d1da55185d902d4020f.jpg', '2013-09-05 22:19:46', null);
INSERT INTO `yyg_attac` VALUES ('559', '919dcf8635f9e76af353522caed2dc71.jpg', '/Upload/20130905/919dcf8635f9e76af353522caed2dc71.jpg', '2013-09-05 22:19:46', null);
INSERT INTO `yyg_attac` VALUES ('558', 'b140e2870743d7e3709d759a08d703a6.jpg', '/Upload/20130905/b140e2870743d7e3709d759a08d703a6.jpg', '2013-09-05 22:19:46', null);
INSERT INTO `yyg_attac` VALUES ('557', '90f58977a5d2f4b50f70022a326313aa.jpg', '/Upload/20130905/90f58977a5d2f4b50f70022a326313aa.jpg', '2013-09-05 22:19:32', null);
INSERT INTO `yyg_attac` VALUES ('556', 'f0e0156211d0ba19080e00009589646f.jpg', '/Upload/20130905/f0e0156211d0ba19080e00009589646f.jpg', '2013-09-05 22:19:32', null);
INSERT INTO `yyg_attac` VALUES ('555', 'cb5ebea263340f8236e6cd4ab4737fdf.jpg', '/Upload/20130905/cb5ebea263340f8236e6cd4ab4737fdf.jpg', '2013-09-05 22:19:32', null);
INSERT INTO `yyg_attac` VALUES ('554', '8ef6caaafdd2171e15ec090c60ab7009.jpg', '/Upload/20130905/8ef6caaafdd2171e15ec090c60ab7009.jpg', '2013-09-05 22:19:08', null);
INSERT INTO `yyg_attac` VALUES ('553', 'b6ad4c696d6cedd6e05780966f05306c.jpg', '/Upload/20130905/b6ad4c696d6cedd6e05780966f05306c.jpg', '2013-09-05 22:19:08', null);
INSERT INTO `yyg_attac` VALUES ('552', '1c5b5d58b06fe8f57e2f54cbf8c098c8.jpg', '/Upload/20130905/1c5b5d58b06fe8f57e2f54cbf8c098c8.jpg', '2013-09-05 22:17:19', null);
INSERT INTO `yyg_attac` VALUES ('551', 'c542a527763c44f3efd59e688f784fe3.jpg', '/Upload/20130905/c542a527763c44f3efd59e688f784fe3.jpg', '2013-09-05 22:17:19', null);
INSERT INTO `yyg_attac` VALUES ('550', 'dd915c9b1361d7c06d6ce6aee6ddcc93.jpg', '/Upload/20130905/dd915c9b1361d7c06d6ce6aee6ddcc93.jpg', '2013-09-05 22:17:19', null);
INSERT INTO `yyg_attac` VALUES ('549', '6d7e3ff7ba544a96134b19db2f53f38b.jpg', '/Upload/20130905/6d7e3ff7ba544a96134b19db2f53f38b.jpg', '2013-09-05 22:17:19', null);
INSERT INTO `yyg_attac` VALUES ('548', '485b633b3a3bd5a9415d5322395396bd.jpg', '/Upload/20130905/485b633b3a3bd5a9415d5322395396bd.jpg', '2013-09-05 22:16:19', null);
INSERT INTO `yyg_attac` VALUES ('547', 'decba983e703569c1aa7b164a547de98.jpg', '/Upload/20130905/decba983e703569c1aa7b164a547de98.jpg', '2013-09-05 22:16:19', null);
INSERT INTO `yyg_attac` VALUES ('546', '315249948d8a71623bf2d1a226f111ee.jpg', '/Upload/20130905/315249948d8a71623bf2d1a226f111ee.jpg', '2013-09-05 22:16:19', null);
INSERT INTO `yyg_attac` VALUES ('545', 'd2d80d76454af0f6c9cb8297b84ec352.jpg', '/Upload/20130905/d2d80d76454af0f6c9cb8297b84ec352.jpg', '2013-09-05 22:16:19', null);
INSERT INTO `yyg_attac` VALUES ('544', '058804be2a1755414068d1a27d7ae821.jpg', '/Upload/20130905/058804be2a1755414068d1a27d7ae821.jpg', '2013-09-05 22:16:00', null);
INSERT INTO `yyg_attac` VALUES ('543', '6021083351baba6f9a8ff102f1109901.jpg', '/Upload/20130905/6021083351baba6f9a8ff102f1109901.jpg', '2013-09-05 22:16:00', null);
INSERT INTO `yyg_attac` VALUES ('542', '01467d6c5970c256df4eefc85613f177.jpg', '/Upload/20130905/01467d6c5970c256df4eefc85613f177.jpg', '2013-09-05 22:16:00', null);
INSERT INTO `yyg_attac` VALUES ('541', '5118127bd5ca9fb29c44c20b71e98799.jpg', '/Upload/20130905/5118127bd5ca9fb29c44c20b71e98799.jpg', '2013-09-05 22:16:00', null);
INSERT INTO `yyg_attac` VALUES ('540', 'c58fd24a0f5ba494701fc14a4d23c5a8.jpg', '/Upload/20130905/c58fd24a0f5ba494701fc14a4d23c5a8.jpg', '2013-09-05 22:16:00', null);
INSERT INTO `yyg_attac` VALUES ('539', '958943124e36ab1910cac5ec53880c1f.jpg', '/Upload/20130905/958943124e36ab1910cac5ec53880c1f.jpg', '2013-09-05 22:15:07', null);
INSERT INTO `yyg_attac` VALUES ('538', '187c965b7b4fc2fa6a69bdc7ed3444e7.jpg', '/Upload/20130905/187c965b7b4fc2fa6a69bdc7ed3444e7.jpg', '2013-09-05 22:15:07', null);
INSERT INTO `yyg_attac` VALUES ('537', 'a173039502ff4cfc4424104b55f13aa6.jpg', '/Upload/20130905/a173039502ff4cfc4424104b55f13aa6.jpg', '2013-09-05 22:15:07', null);
INSERT INTO `yyg_attac` VALUES ('536', 'f3f240acf1f0bdad67375a6b5b15fda7.jpg', '/Upload/20130905/f3f240acf1f0bdad67375a6b5b15fda7.jpg', '2013-09-05 22:15:07', null);
INSERT INTO `yyg_attac` VALUES ('535', '447f5ba63a85f89272f5300ddb7ca9c7.jpg', '/Upload/20130905/447f5ba63a85f89272f5300ddb7ca9c7.jpg', '2013-09-05 22:14:49', null);
INSERT INTO `yyg_attac` VALUES ('534', 'd988c0765a3a5b025c9f72e1f7a69e33.jpg', '/Upload/20130905/d988c0765a3a5b025c9f72e1f7a69e33.jpg', '2013-09-05 22:14:49', null);
INSERT INTO `yyg_attac` VALUES ('533', 'afba6bce0a85e16c041c25f674b66680.jpg', '/Upload/20130905/afba6bce0a85e16c041c25f674b66680.jpg', '2013-09-05 22:14:49', null);
INSERT INTO `yyg_attac` VALUES ('532', 'c921ee37e70d53abaa3066449f17f362.jpg', '/Upload/20130905/c921ee37e70d53abaa3066449f17f362.jpg', '2013-09-05 22:14:49', null);
INSERT INTO `yyg_attac` VALUES ('461', 'dc7c936626ca58eab1e81352e105fb0a.jpg', '/Upload/20130901/dc7c936626ca58eab1e81352e105fb0a.jpg', '2013-09-01 22:54:33', null);
INSERT INTO `yyg_attac` VALUES ('462', '4baa9d22bf81a828ddd306fb9466fcf3.jpg', '/Upload/20130901/4baa9d22bf81a828ddd306fb9466fcf3.jpg', '2013-09-01 22:54:33', null);
INSERT INTO `yyg_attac` VALUES ('463', '3b212fa81ad4e6aa5d9e771dd0a8c7c7.jpg', '/Upload/20130901/3b212fa81ad4e6aa5d9e771dd0a8c7c7.jpg', '2013-09-01 22:54:33', null);
INSERT INTO `yyg_attac` VALUES ('464', 'b0b831261af97230df6acfa87843107f.jpg', '/Upload/20130901/b0b831261af97230df6acfa87843107f.jpg', '2013-09-01 22:54:33', null);
INSERT INTO `yyg_attac` VALUES ('465', 'b4d5fe50c78fb224ed7ecc14917503da.jpg', '/Upload/20130901/b4d5fe50c78fb224ed7ecc14917503da.jpg', '2013-09-01 22:54:33', null);
INSERT INTO `yyg_attac` VALUES ('531', '0dc6f619f3bedfd926dffd1c8cc01e84.jpg', '/Upload/20130905/0dc6f619f3bedfd926dffd1c8cc01e84.jpg', '2013-09-05 22:14:49', null);
INSERT INTO `yyg_attac` VALUES ('530', '5a8c34513bfc066dd231e80ec8df08da.jpg', '/Upload/20130905/5a8c34513bfc066dd231e80ec8df08da.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('529', '0ce7bbf9c74e992dc493367af8219a87.jpg', '/Upload/20130905/0ce7bbf9c74e992dc493367af8219a87.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('528', '202c9347e27328770c3bc26d29db1b18.jpg', '/Upload/20130905/202c9347e27328770c3bc26d29db1b18.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('527', 'd6b90e344017fda881a887d592a1c3d7.jpg', '/Upload/20130905/d6b90e344017fda881a887d592a1c3d7.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('526', 'd2001111201264d085991d6f44bc3566.jpg', '/Upload/20130905/d2001111201264d085991d6f44bc3566.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('525', 'ac52775f9460d7a3364c420bcda054fe.jpg', '/Upload/20130905/ac52775f9460d7a3364c420bcda054fe.jpg', '2013-09-05 22:14:31', null);
INSERT INTO `yyg_attac` VALUES ('524', 'c456c6a01434551635ee3ce9bbfcdcb2.jpg', '/Upload/20130905/c456c6a01434551635ee3ce9bbfcdcb2.jpg', '2013-09-05 22:12:27', null);
INSERT INTO `yyg_attac` VALUES ('523', '655add3a1dbc52806303e4e44d570222.jpg', '/Upload/20130905/655add3a1dbc52806303e4e44d570222.jpg', '2013-09-05 22:12:27', null);
INSERT INTO `yyg_attac` VALUES ('522', 'b2910e630001bc6f4c293dcca808c9a2.jpg', '/Upload/20130905/b2910e630001bc6f4c293dcca808c9a2.jpg', '2013-09-05 22:12:27', null);
INSERT INTO `yyg_attac` VALUES ('521', '28509ec1555db66fbbf87b07a93a4852.jpg', '/Upload/20130905/28509ec1555db66fbbf87b07a93a4852.jpg', '2013-09-05 22:12:27', null);
INSERT INTO `yyg_attac` VALUES ('520', 'f8325f6b2f811bfac23e1d56ba6bc29a.jpg', '/Upload/20130905/f8325f6b2f811bfac23e1d56ba6bc29a.jpg', '2013-09-05 22:12:01', null);
INSERT INTO `yyg_attac` VALUES ('519', '1b454728b99ac447427ff1cf925a1ca4.jpg', '/Upload/20130905/1b454728b99ac447427ff1cf925a1ca4.jpg', '2013-09-05 22:12:01', null);
INSERT INTO `yyg_attac` VALUES ('518', '9a13d8ae3f946a671349ad4145b51adf.jpg', '/Upload/20130905/9a13d8ae3f946a671349ad4145b51adf.jpg', '2013-09-05 22:12:01', null);
INSERT INTO `yyg_attac` VALUES ('515', '288ca74d29e207eee850bb72e8f3d240.jpg', '/Upload/20130905/288ca74d29e207eee850bb72e8f3d240.jpg', '2013-09-05 22:11:42', null);
INSERT INTO `yyg_attac` VALUES ('516', 'ccf5452f2ed4360c1d1a6f1dde20a819.jpg', '/Upload/20130905/ccf5452f2ed4360c1d1a6f1dde20a819.jpg', '2013-09-05 22:12:01', null);
INSERT INTO `yyg_attac` VALUES ('517', 'b3a93e2b381f197fc0dc74b577170356.jpg', '/Upload/20130905/b3a93e2b381f197fc0dc74b577170356.jpg', '2013-09-05 22:12:01', null);
INSERT INTO `yyg_attac` VALUES ('514', 'f3a62f0f7c00dcd1d187066a68f020bb.jpg', '/Upload/20130905/f3a62f0f7c00dcd1d187066a68f020bb.jpg', '2013-09-05 22:11:42', null);
INSERT INTO `yyg_attac` VALUES ('513', 'e5d3a392374bc4805d7d38ce971dafe2.jpg', '/Upload/20130905/e5d3a392374bc4805d7d38ce971dafe2.jpg', '2013-09-05 22:11:42', null);
INSERT INTO `yyg_attac` VALUES ('512', '04707792afebdc3579e31c109b805609.jpg', '/Upload/20130905/04707792afebdc3579e31c109b805609.jpg', '2013-09-05 22:11:42', null);
INSERT INTO `yyg_attac` VALUES ('511', 'aa000279a0ea50bcdffc8d635a15a6d6.jpg', '/Upload/20130905/aa000279a0ea50bcdffc8d635a15a6d6.jpg', '2013-09-05 22:11:42', null);
INSERT INTO `yyg_attac` VALUES ('510', 'f4ee6f02c2203b6fd4f580f43c541f17.jpg', '/Upload/20130905/f4ee6f02c2203b6fd4f580f43c541f17.jpg', '2013-09-05 22:11:25', null);
INSERT INTO `yyg_attac` VALUES ('509', 'f76a5a19cd20c51316c988335719c27e.jpg', '/Upload/20130905/f76a5a19cd20c51316c988335719c27e.jpg', '2013-09-05 22:11:25', null);
INSERT INTO `yyg_attac` VALUES ('508', '94682eee70030f267a9ecda2c37c9e3f.jpg', '/Upload/20130905/94682eee70030f267a9ecda2c37c9e3f.jpg', '2013-09-05 22:11:25', null);
INSERT INTO `yyg_attac` VALUES ('500', '2bd4872018a3b8dc2e7f9e514efc181e.jpg', '/Upload/20130905/2bd4872018a3b8dc2e7f9e514efc181e.jpg', '2013-09-05 22:10:49', null);
INSERT INTO `yyg_attac` VALUES ('501', 'ecd8b8b19b4e67fb3f31ba89d5f58f10.jpg', '/Upload/20130905/ecd8b8b19b4e67fb3f31ba89d5f58f10.jpg', '2013-09-05 22:10:49', null);
INSERT INTO `yyg_attac` VALUES ('502', '844450a8d31a451ce13976416551d816.jpg', '/Upload/20130905/844450a8d31a451ce13976416551d816.jpg', '2013-09-05 22:10:49', null);
INSERT INTO `yyg_attac` VALUES ('503', 'a01fc324f5a72d52640d3e9a65be7827.jpg', '/Upload/20130905/a01fc324f5a72d52640d3e9a65be7827.jpg', '2013-09-05 22:11:08', null);
INSERT INTO `yyg_attac` VALUES ('504', '3b840ef6e9b6e2f6eaa330dd752e0e3e.jpg', '/Upload/20130905/3b840ef6e9b6e2f6eaa330dd752e0e3e.jpg', '2013-09-05 22:11:08', null);
INSERT INTO `yyg_attac` VALUES ('505', 'd05725a9eb1270d29dbb0222294f30d5.jpg', '/Upload/20130905/d05725a9eb1270d29dbb0222294f30d5.jpg', '2013-09-05 22:11:08', null);
INSERT INTO `yyg_attac` VALUES ('506', '3f5234b00ac8b58658149a1463459d7f.jpg', '/Upload/20130905/3f5234b00ac8b58658149a1463459d7f.jpg', '2013-09-05 22:11:08', null);
INSERT INTO `yyg_attac` VALUES ('507', '7aa196e8d48c5bd4ecc6c7f1ac36affc.jpg', '/Upload/20130905/7aa196e8d48c5bd4ecc6c7f1ac36affc.jpg', '2013-09-05 22:11:25', null);
INSERT INTO `yyg_attac` VALUES ('569', '18a2ccaacba4ab53fc0778deed20bb02.png', '/Upload/20131003/18a2ccaacba4ab53fc0778deed20bb02.png', '2013-10-03 10:35:07', null);
INSERT INTO `yyg_attac` VALUES ('568', '39c708acc76456947c01a8dfc80cf802.png', '/Upload/20131003/39c708acc76456947c01a8dfc80cf802.png', '2013-10-03 10:35:07', null);
INSERT INTO `yyg_attac` VALUES ('570', 'f0a7b6250263ade027610edab6eff088.jpg', '/Upload/20131003/f0a7b6250263ade027610edab6eff088.jpg', '2013-10-03 10:55:28', null);
INSERT INTO `yyg_attac` VALUES ('583', 'e327b554c69289af7ec5060e69e038cb.jpg', '/Upload/20131011/e327b554c69289af7ec5060e69e038cb.jpg', '2013-10-11 21:34:52', null);
INSERT INTO `yyg_attac` VALUES ('582', '3052c6fd0fe6edf020c8f6903d526cdb.jpg', '/Upload/20131011/3052c6fd0fe6edf020c8f6903d526cdb.jpg', '2013-10-11 21:34:52', null);
INSERT INTO `yyg_attac` VALUES ('581', '45d4512a1dc8737e460fd2340ad16c9b.jpg', '/Upload/20131011/45d4512a1dc8737e460fd2340ad16c9b.jpg', '2013-10-11 21:34:52', null);
INSERT INTO `yyg_attac` VALUES ('580', '1d6bbac7d0c1c1bf4d93d4cd79c2140a.jpg', '/Upload/20131011/1d6bbac7d0c1c1bf4d93d4cd79c2140a.jpg', '2013-10-11 21:34:52', null);
INSERT INTO `yyg_attac` VALUES ('577', 'fda616751133a5b95f7958bf89e7a4c5.jpg', '/Upload/20131011/fda616751133a5b95f7958bf89e7a4c5.jpg', '2013-10-11 21:25:27', null);
INSERT INTO `yyg_attac` VALUES ('578', 'd52b461a363a621d4ed142ae64c1bfe4.jpg', '/Upload/20131011/d52b461a363a621d4ed142ae64c1bfe4.jpg', '2013-10-11 21:25:27', null);
INSERT INTO `yyg_attac` VALUES ('579', 'b77526d6c21e3e721e4224339f47ee49.jpg', '/Upload/20131011/b77526d6c21e3e721e4224339f47ee49.jpg', '2013-10-11 21:25:27', null);
INSERT INTO `yyg_attac` VALUES ('584', '177f5603a5a3fdacddc96356a0785f47.jpg', '/Upload/20131011/177f5603a5a3fdacddc96356a0785f47.jpg', '2013-10-11 21:36:57', null);
INSERT INTO `yyg_attac` VALUES ('585', '984a0bb9f091eff74907ef0311520939.jpg', '/Upload/20131011/984a0bb9f091eff74907ef0311520939.jpg', '2013-10-11 21:36:57', null);
INSERT INTO `yyg_attac` VALUES ('586', '2bb95890ea52223919f5da0ed5540c3e.jpg', '/Upload/20131011/2bb95890ea52223919f5da0ed5540c3e.jpg', '2013-10-11 21:36:57', null);
INSERT INTO `yyg_attac` VALUES ('587', '5eb8d9f90598f67dab0926f4c6c2032d.jpg', '/Upload/20131011/5eb8d9f90598f67dab0926f4c6c2032d.jpg', '2013-10-11 21:36:57', null);
INSERT INTO `yyg_attac` VALUES ('588', '6f1bb29c6d448b0a77c52b7554b164c5.jpg', '/Upload/20131011/6f1bb29c6d448b0a77c52b7554b164c5.jpg', '2013-10-11 21:37:14', null);
INSERT INTO `yyg_attac` VALUES ('589', '1f1aa4e28621d3c9f89d43a9b24a299a.jpg', '/Upload/20131011/1f1aa4e28621d3c9f89d43a9b24a299a.jpg', '2013-10-11 21:37:14', null);
INSERT INTO `yyg_attac` VALUES ('590', 'a12dbdd07c96f7e91a1b9315623d390d.jpg', '/Upload/20131011/a12dbdd07c96f7e91a1b9315623d390d.jpg', '2013-10-11 21:37:14', null);
INSERT INTO `yyg_attac` VALUES ('591', '70954b54ebd48231c7f18d79caa4959d.jpg', '/Upload/20131011/70954b54ebd48231c7f18d79caa4959d.jpg', '2013-10-11 21:37:31', null);
INSERT INTO `yyg_attac` VALUES ('592', '499925259c3685d6b9009a0bc0a91f32.jpg', '/Upload/20131011/499925259c3685d6b9009a0bc0a91f32.jpg', '2013-10-11 21:37:31', null);
INSERT INTO `yyg_attac` VALUES ('593', 'fe2318bd083502397a50d16f6ca66e2c.jpg', '/Upload/20131011/fe2318bd083502397a50d16f6ca66e2c.jpg', '2013-10-11 21:37:31', null);
INSERT INTO `yyg_attac` VALUES ('594', 'acd22366fcc57cf8dafb5d0771a63778.jpg', '/Upload/20131011/acd22366fcc57cf8dafb5d0771a63778.jpg', '2013-10-11 21:37:31', null);
INSERT INTO `yyg_attac` VALUES ('595', '808aac3b7f89436fd18a8fae16628d5b.jpg', '/Upload/20131011/808aac3b7f89436fd18a8fae16628d5b.jpg', '2013-10-11 22:14:19', null);
INSERT INTO `yyg_attac` VALUES ('596', '1fffdc8b5a596f7d13ce2365099f791f.jpg', '/Upload/20131011/1fffdc8b5a596f7d13ce2365099f791f.jpg', '2013-10-11 22:14:19', null);
INSERT INTO `yyg_attac` VALUES ('597', '073372c9c5904104a41017637f9e5bdb.jpg', '/Upload/20131011/073372c9c5904104a41017637f9e5bdb.jpg', '2013-10-11 22:14:19', null);
INSERT INTO `yyg_attac` VALUES ('204', 'a9e099e98edb7d9cc57fd52a05c0182d.jpg', '/Upload/20130719/a9e099e98edb7d9cc57fd52a05c0182d.jpg', '2013-07-19 15:01:14', null);
INSERT INTO `yyg_attac` VALUES ('203', '6b094ae41417f6a9119102733d9cbfdc.jpg', '/Upload/20130719/6b094ae41417f6a9119102733d9cbfdc.jpg', '2013-07-19 14:35:02', null);
INSERT INTO `yyg_attac` VALUES ('201', '03fbd12c64a27e0c2e6addb10ac8fa33.jpg', '/Upload/20130719/03fbd12c64a27e0c2e6addb10ac8fa33.jpg', '2013-07-19 14:06:15', null);
INSERT INTO `yyg_attac` VALUES ('200', '6366a089102616bd01b30f0b8a4a500a.jpg', '/Upload/20130719/6366a089102616bd01b30f0b8a4a500a.jpg', '2013-07-19 14:06:15', null);
INSERT INTO `yyg_attac` VALUES ('199', '5b86462dabe0c66fd95f994d5e464ad2.jpg', '/Upload/20130719/5b86462dabe0c66fd95f994d5e464ad2.jpg', '2013-07-19 14:06:14', null);
INSERT INTO `yyg_attac` VALUES ('197', '860784b9cb176169cc964456d134e262.jpg', '/Upload/20130719/860784b9cb176169cc964456d134e262.jpg', '2013-07-19 13:59:09', null);
INSERT INTO `yyg_attac` VALUES ('198', '1fcb59aae89ba564469921df4f84fbc6.jpg', '/Upload/20130719/1fcb59aae89ba564469921df4f84fbc6.jpg', '2013-07-19 14:06:14', null);
INSERT INTO `yyg_attac` VALUES ('193', 'da4d2d0bb870a637862dcaabd30b1023.jpg', '/Upload/20130719/da4d2d0bb870a637862dcaabd30b1023.jpg', '2013-07-19 11:01:07', '1.莲花\r<br/>2.佛');
INSERT INTO `yyg_attac` VALUES ('192', '5d6315407096243f8953428c3753b3ac.jpg', '/Upload/20130719/5d6315407096243f8953428c3753b3ac.jpg', '2013-07-19 10:57:40', '1.人生\r\n2.等待');
INSERT INTO `yyg_attac` VALUES ('191', '6feae87ebdf6821fa4316c869bc97a83.jpg', '/Upload/20130719/6feae87ebdf6821fa4316c869bc97a83.jpg', '2013-07-19 10:54:43', null);
INSERT INTO `yyg_attac` VALUES ('190', '05ad62b6ec7d6ae3617aec25c848af5e.jpg', '/Upload/20130719/05ad62b6ec7d6ae3617aec25c848af5e.jpg', '2013-07-19 10:53:39', null);
INSERT INTO `yyg_attac` VALUES ('850', 'Zy5lSBLO25t7.jpeg', '/Uploads/topic/Zy5lSBLO25t7.jpeg', '2017-09-18 19:21:07', null);
INSERT INTO `yyg_attac` VALUES ('707', '2ec7de264f19af3fb23404906faca97e.jpg', '/Upload/20170828/2ec7de264f19af3fb23404906faca97e.jpg', '2017-08-28 22:05:28', null);
INSERT INTO `yyg_attac` VALUES ('706', '9ebd5d9f3d0dc3979ac59854ea3ef6cb.jpg', '/Upload/20170828/9ebd5d9f3d0dc3979ac59854ea3ef6cb.jpg', '2017-08-28 22:05:07', null);
INSERT INTO `yyg_attac` VALUES ('705', '97b631c0977e670c668aae57d22df7ac.jpg', '/Upload/20170828/97b631c0977e670c668aae57d22df7ac.jpg', '2017-08-28 22:04:24', null);
INSERT INTO `yyg_attac` VALUES ('703', '0d764c023d15d8a238662d29b697527f.jpg', '/Upload/20170828/0d764c023d15d8a238662d29b697527f.jpg', '2017-08-28 22:03:46', null);
INSERT INTO `yyg_attac` VALUES ('702', '82b6f22d64c2a94756d786d1154fb08c.jpg', '/Upload/20170828/82b6f22d64c2a94756d786d1154fb08c.jpg', '2017-08-28 22:03:09', null);
INSERT INTO `yyg_attac` VALUES ('701', '3ff3622342964c5a7b5f9a28ed6a6e36.jpg', '/Upload/20170828/3ff3622342964c5a7b5f9a28ed6a6e36.jpg', '2017-08-28 22:02:20', null);
INSERT INTO `yyg_attac` VALUES ('698', '4e4ed1a1d7954d8227efe56cc730c645.jpg', '/Upload//20170828/4e4ed1a1d7954d8227efe56cc730c645.jpg', '2017-08-28 21:42:35', null);
INSERT INTO `yyg_attac` VALUES ('699', '6459772d1cb104588cea871b4fcc3f5a.jpg', 'Upload/20170828/6459772d1cb104588cea871b4fcc3f5a.jpg', '2017-08-28 21:44:31', null);
INSERT INTO `yyg_attac` VALUES ('700', '2eefe990dbf351d11e0bea355e863482.jpg', '/Upload/20170828/2eefe990dbf351d11e0bea355e863482.jpg', '2017-08-28 21:45:04', null);
INSERT INTO `yyg_attac` VALUES ('389', '1e58a09d32fdb888c3842222afd67e74.jpg', '/Upload/20130825/1e58a09d32fdb888c3842222afd67e74.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('390', 'ef9124927dc2520bdda63118036968b9.jpg', '/Upload/20130825/ef9124927dc2520bdda63118036968b9.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('391', '228da7860653072f386e75be68c4b3af.jpg', '/Upload/20130825/228da7860653072f386e75be68c4b3af.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('392', 'a770437576ef1ebcbaa14536ed7a7a3b.jpg', '/Upload/20130825/a770437576ef1ebcbaa14536ed7a7a3b.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('393', '9e1f306b2ce580b9ea556156cb4398a4.jpg', '/Upload/20130825/9e1f306b2ce580b9ea556156cb4398a4.jpg', '2013-08-25 20:42:45', null);
INSERT INTO `yyg_attac` VALUES ('394', 'ceea78c3413abdc86d1f0f6a1e11c10d.jpg', '/Upload/20130825/ceea78c3413abdc86d1f0f6a1e11c10d.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('395', '4f6d05092f27af0c55692dfaea274bcb.jpg', '/Upload/20130825/4f6d05092f27af0c55692dfaea274bcb.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('396', '0b2eba952d5a87c1dcc26fc83ab351e3.jpg', '/Upload/20130825/0b2eba952d5a87c1dcc26fc83ab351e3.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('397', '659f07a29512f7c485378f43db843f38.jpg', '/Upload/20130825/659f07a29512f7c485378f43db843f38.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('398', '5ce8b3962373c4463a7e003a10ffc63c.jpg', '/Upload/20130825/5ce8b3962373c4463a7e003a10ffc63c.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('399', '32e19b5ffe8fc4075cd2407646a19672.jpg', '/Upload/20130825/32e19b5ffe8fc4075cd2407646a19672.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('400', '73fe728c1cc5a99f135473d71bc93b8a.jpg', '/Upload/20130825/73fe728c1cc5a99f135473d71bc93b8a.jpg', '2013-08-25 20:42:46', null);
INSERT INTO `yyg_attac` VALUES ('401', '331320999d4578ec4b68c87ade99065b.jpg', '/Upload/20130825/331320999d4578ec4b68c87ade99065b.jpg', '2013-08-25 20:43:52', null);
INSERT INTO `yyg_attac` VALUES ('402', '8cfae9eefa847bb7c79fbf18b5d6b4df.jpg', '/Upload/20130825/8cfae9eefa847bb7c79fbf18b5d6b4df.jpg', '2013-08-25 20:43:52', null);
INSERT INTO `yyg_attac` VALUES ('403', 'dd23f29b4f2440288fbbad5863760341.jpg', '/Upload/20130825/dd23f29b4f2440288fbbad5863760341.jpg', '2013-08-25 20:43:52', null);
INSERT INTO `yyg_attac` VALUES ('404', '0568e396fc2de5924bf0c0fece6c4bf6.jpg', '/Upload/20130825/0568e396fc2de5924bf0c0fece6c4bf6.jpg', '2013-08-25 20:44:05', null);
INSERT INTO `yyg_attac` VALUES ('405', 'a3ca9a8a87d0a6e8e5011e59707a06b8.jpg', '/Upload/20130825/a3ca9a8a87d0a6e8e5011e59707a06b8.jpg', '2013-08-25 20:44:05', null);
INSERT INTO `yyg_attac` VALUES ('406', '9bf3f423bb1110530067061487309f6e.jpg', '/Upload/20130825/9bf3f423bb1110530067061487309f6e.jpg', '2013-08-25 20:44:05', null);
INSERT INTO `yyg_attac` VALUES ('407', 'ba753e2d1e590589ea9001e9f637d348.jpg', '/Upload/20130825/ba753e2d1e590589ea9001e9f637d348.jpg', '2013-08-25 20:44:06', null);
INSERT INTO `yyg_attac` VALUES ('408', 'c5dea38ec7682984c0582c024ef90a4d.jpg', '/Upload/20130825/c5dea38ec7682984c0582c024ef90a4d.jpg', '2013-08-25 20:44:06', null);
INSERT INTO `yyg_attac` VALUES ('409', '6344a760cda914688e968a453f30fd57.jpg', '/Upload/20130825/6344a760cda914688e968a453f30fd57.jpg', '2013-08-25 20:46:21', null);
INSERT INTO `yyg_attac` VALUES ('410', '1346cf43048ee868fb9f6b73343d9fe2.jpg', '/Upload/20130825/1346cf43048ee868fb9f6b73343d9fe2.jpg', '2013-08-25 20:46:21', null);
INSERT INTO `yyg_attac` VALUES ('411', 'a1c679ec7d83d20ef7e57c4bb135bd2a.jpg', '/Upload/20130825/a1c679ec7d83d20ef7e57c4bb135bd2a.jpg', '2013-08-25 20:47:52', null);
INSERT INTO `yyg_attac` VALUES ('412', '31f1f9d4808c954461b480b68a495293.jpg', '/Upload/20130825/31f1f9d4808c954461b480b68a495293.jpg', '2013-08-25 20:47:52', null);
INSERT INTO `yyg_attac` VALUES ('413', '45eb02dbd33913cf406791f4b2d1fc7d.jpg', '/Upload/20130825/45eb02dbd33913cf406791f4b2d1fc7d.jpg', '2013-08-25 20:47:52', null);
INSERT INTO `yyg_attac` VALUES ('414', '0b009c6471b8ba9832e2af05f1f6c55e.jpg', '/Upload/20130825/0b009c6471b8ba9832e2af05f1f6c55e.jpg', '2013-08-25 20:47:52', null);
INSERT INTO `yyg_attac` VALUES ('415', '6de4f3a3c3d828a98943c78b9ad7a9ad.jpg', '/Upload/20130825/6de4f3a3c3d828a98943c78b9ad7a9ad.jpg', '2013-08-25 20:49:24', null);
INSERT INTO `yyg_attac` VALUES ('416', 'fc22c48ab9ab9af7090c80723a956659.jpg', '/Upload/20130825/fc22c48ab9ab9af7090c80723a956659.jpg', '2013-08-25 20:49:24', null);
INSERT INTO `yyg_attac` VALUES ('417', '841f7d5fe24e525aaaa5a575e0dadafa.jpg', '/Upload/20130825/841f7d5fe24e525aaaa5a575e0dadafa.jpg', '2013-08-25 20:49:25', null);
INSERT INTO `yyg_attac` VALUES ('418', 'c5989066d3cb9f67c3cf4d4265d1e62c.jpg', '/Upload/20130825/c5989066d3cb9f67c3cf4d4265d1e62c.jpg', '2013-08-25 20:49:25', null);
INSERT INTO `yyg_attac` VALUES ('419', 'ceafa951e0ba401b26ceb499388f97ee.jpg', '/Upload/20130825/ceafa951e0ba401b26ceb499388f97ee.jpg', '2013-08-25 20:49:25', null);
INSERT INTO `yyg_attac` VALUES ('420', '0358cccba890c61fcf2fb1189e4e126a.jpg', '/Upload/20130825/0358cccba890c61fcf2fb1189e4e126a.jpg', '2013-08-25 20:49:25', null);
INSERT INTO `yyg_attac` VALUES ('421', '6c8e90e3a454a455b477b08cc2c6578d.jpg', '/Upload/20130825/6c8e90e3a454a455b477b08cc2c6578d.jpg', '2013-08-25 20:50:20', null);
INSERT INTO `yyg_attac` VALUES ('422', '51427b70e6438d251706ead4ccd2a89b.jpg', '/Upload/20130825/51427b70e6438d251706ead4ccd2a89b.jpg', '2013-08-25 20:50:20', null);
INSERT INTO `yyg_attac` VALUES ('423', 'f9e8c3eaad69ac71404a6a1490197247.jpg', '/Upload/20130825/f9e8c3eaad69ac71404a6a1490197247.jpg', '2013-08-25 20:50:20', null);
INSERT INTO `yyg_attac` VALUES ('424', '33075266fd709efce455a6e13775a93b.jpg', '/Upload/20130825/33075266fd709efce455a6e13775a93b.jpg', '2013-08-25 20:50:29', null);
INSERT INTO `yyg_attac` VALUES ('425', 'eaa041ef9af337fb9c4bf34719a79664.jpg', '/Upload/20130825/eaa041ef9af337fb9c4bf34719a79664.jpg', '2013-08-25 20:50:29', null);
INSERT INTO `yyg_attac` VALUES ('426', 'b7dac3e613b3648db456089191cb74ac.jpg', '/Upload/20130825/b7dac3e613b3648db456089191cb74ac.jpg', '2013-08-25 20:50:29', null);
INSERT INTO `yyg_attac` VALUES ('427', '89b191f5596f185c3a33934cd540377f.jpg', '/Upload/20130825/89b191f5596f185c3a33934cd540377f.jpg', '2013-08-25 20:50:30', null);
INSERT INTO `yyg_attac` VALUES ('428', '3baee5d7f479ab3926645b87ce59fdc5.jpg', '/Upload/20130825/3baee5d7f479ab3926645b87ce59fdc5.jpg', '2013-08-25 20:50:43', null);
INSERT INTO `yyg_attac` VALUES ('429', '183bf18b3ea39a16ec874fa6960a3d81.jpg', '/Upload/20130825/183bf18b3ea39a16ec874fa6960a3d81.jpg', '2013-08-25 20:50:43', null);
INSERT INTO `yyg_attac` VALUES ('430', '7f4d9c31b9851aaafcfa6a7e4e5b9adc.jpg', '/Upload/20130825/7f4d9c31b9851aaafcfa6a7e4e5b9adc.jpg', '2013-08-25 20:50:43', null);
INSERT INTO `yyg_attac` VALUES ('431', '369a6f6a5d01f4947d0cf330e8f719f6.jpg', '/Upload/20130825/369a6f6a5d01f4947d0cf330e8f719f6.jpg', '2013-08-25 20:50:43', null);
INSERT INTO `yyg_attac` VALUES ('849', 'Zy5iSBqJBHU5.jpeg', '/Uploads/topic/Zy5iSBqJBHU5.jpeg', '2017-09-18 19:21:04', null);
INSERT INTO `yyg_attac` VALUES ('848', 'Zy5eSBdSC6GF.jpeg', '/Uploads/topic/Zy5eSBdSC6GF.jpeg', '2017-09-18 19:21:00', null);
INSERT INTO `yyg_attac` VALUES ('847', 'Zy5ZSBFG1Q4G.jpeg', '/Uploads/topic/Zy5ZSBFG1Q4G.jpeg', '2017-09-18 19:20:55', null);
INSERT INTO `yyg_attac` VALUES ('853', '5a1abeaf1035a.png', '/Uploads/20171126/5a1abeaf1035a.png', '2017-11-26 21:16:31', null);
INSERT INTO `yyg_attac` VALUES ('854', '5a1abf56b14a4.jpg', '/Uploads/20171126/5a1abf56b14a4.jpg', '2017-11-26 21:19:18', null);
INSERT INTO `yyg_attac` VALUES ('855', '5a1abf70191f9.jpg', '/Uploads/20171126/5a1abf70191f9.jpg', '2017-11-26 21:19:44', null);
INSERT INTO `yyg_attac` VALUES ('856', '5a1ac0d52c749.jpg', '/Uploads/20171126/5a1ac0d52c749.jpg', '2017-11-26 21:25:41', null);
INSERT INTO `yyg_attac` VALUES ('857', '5a1ac0d5534ad.jpg', '/Uploads/20171126/5a1ac0d5534ad.jpg', '2017-11-26 21:25:41', null);
INSERT INTO `yyg_attac` VALUES ('858', '5a1ac1a685ea0.jpg', '/Uploads/20171126/5a1ac1a685ea0.jpg', '2017-11-26 21:29:10', null);
INSERT INTO `yyg_attac` VALUES ('801', '59b150429e7cd.jpg', './Uploads/59b150429e7cd.jpg', '2017-09-07 21:57:22', null);
INSERT INTO `yyg_attac` VALUES ('802', '59b1508be1e5b.jpg', '/2017-09-07/59b1508be1e5b.jpg', '2017-09-07 21:58:35', null);
INSERT INTO `yyg_attac` VALUES ('803', '59b150be12a76.jpg', '/./Uploads/2017-09-07/59b150be12a76.jpg', '2017-09-07 21:59:26', null);
INSERT INTO `yyg_attac` VALUES ('804', '59b1511004c52.jpg', './Uploads/2017-09-07/59b1511004c52.jpg', '2017-09-07 22:00:48', null);
INSERT INTO `yyg_attac` VALUES ('805', '59b15151d56bf.jpg', '/Uploads/2017-09-07/59b15151d56bf.jpg', '2017-09-07 22:01:53', null);
INSERT INTO `yyg_attac` VALUES ('806', '59b1564a5fe34.jpg', '/Uploads/2017-09-07/59b1564a5fe34.jpg', '2017-09-07 22:23:06', null);
INSERT INTO `yyg_attac` VALUES ('807', '59b156563573d.jpg', '/Uploads/2017-09-07/59b156563573d.jpg', '2017-09-07 22:23:18', null);
INSERT INTO `yyg_attac` VALUES ('808', '59b156a1799e9.jpg', '/Uploads/2017-09-07/59b156a1799e9.jpg', '2017-09-07 22:24:33', null);
INSERT INTO `yyg_attac` VALUES ('809', '59b156c83ea97.jpg', '/Uploads/2017-09-07/59b156c83ea97.jpg', '2017-09-07 22:25:12', null);
INSERT INTO `yyg_attac` VALUES ('810', '59b156d889891.jpg', '/Uploads/2017-09-07/59b156d889891.jpg', '2017-09-07 22:25:28', null);
INSERT INTO `yyg_attac` VALUES ('811', '59b15704bf11b.jpg', '/Uploads/2017-09-07/59b15704bf11b.jpg', '2017-09-07 22:26:12', null);
INSERT INTO `yyg_attac` VALUES ('812', '59b1572e4e7de.jpg', '/Uploads/2017-09-07/59b1572e4e7de.jpg', '2017-09-07 22:26:54', null);
INSERT INTO `yyg_attac` VALUES ('813', '59b158449de79.jpg', '/Uploads/20170907/59b158449de79.jpg', '2017-09-07 22:31:32', null);
INSERT INTO `yyg_attac` VALUES ('814', '59b15852a2ecb.jpg', '/Uploads/20170907/59b15852a2ecb.jpg', '2017-09-07 22:31:46', null);
INSERT INTO `yyg_attac` VALUES ('815', '59b158bd7749f.jpg', '/Uploads/20170907/59b158bd7749f.jpg', '2017-09-07 22:33:33', null);
INSERT INTO `yyg_attac` VALUES ('816', '59b158c7b7642.jpg', '/Uploads/20170907/59b158c7b7642.jpg', '2017-09-07 22:33:43', null);
INSERT INTO `yyg_attac` VALUES ('817', '59b158e1a0a99.jpg', '/Uploads/20170907/59b158e1a0a99.jpg', '2017-09-07 22:34:09', null);
INSERT INTO `yyg_attac` VALUES ('818', '59b158fd56557.jpg', '/Uploads/20170907/59b158fd56557.jpg', '2017-09-07 22:34:37', null);
INSERT INTO `yyg_attac` VALUES ('819', '59b15955d2427.jpg', '/Uploads/20170907/59b15955d2427.jpg', '2017-09-07 22:36:05', null);
INSERT INTO `yyg_attac` VALUES ('820', '59b159a7e174b.jpg', '/Uploads/20170907/59b159a7e174b.jpg', '2017-09-07 22:37:27', null);
INSERT INTO `yyg_attac` VALUES ('821', '59b161192a062.jpg', '/Uploads/20170907/59b161192a062.jpg', '2017-09-07 23:09:13', null);
INSERT INTO `yyg_attac` VALUES ('822', '59b161bc8de1a.jpg', '/Uploads/20170907/59b161bc8de1a.jpg', '2017-09-07 23:11:56', null);
INSERT INTO `yyg_attac` VALUES ('823', '59b16238c9bdf.jpg', '/Uploads/20170907/59b16238c9bdf.jpg', '2017-09-07 23:14:00', null);
INSERT INTO `yyg_attac` VALUES ('824', '59b1623e954cf.jpg', '/Uploads/20170907/59b1623e954cf.jpg', '2017-09-07 23:14:06', null);
INSERT INTO `yyg_attac` VALUES ('829', 'Yy5ij8pd7Qj5.jpeg', '/Uploads/topic/Yy5ij8pd7Qj5.jpeg', '2017-09-17 22:14:10', null);
INSERT INTO `yyg_attac` VALUES ('830', 'Yy5tj8QP6jY4.jpeg', '/Uploads/topic/Yy5tj8QP6jY4.jpeg', '2017-09-17 22:14:21', null);
INSERT INTO `yyg_attac` VALUES ('831', 'Yy55n8MrARg4.jpeg', '/Uploads/topic/Yy55n8MrARg4.jpeg', '2017-09-17 22:17:39', null);
INSERT INTO `yyg_attac` VALUES ('832', 'Zy5UPBHb4Gt4.gif', '/Uploads/emotion/Zy5UPBHb4Gt4.gif', '2017-09-18 19:17:44', null);
INSERT INTO `yyg_attac` VALUES ('833', 'Zy5TRBjJ3eGF.gif', '/Uploads/emotion/Zy5TRBjJ3eGF.gif', '2017-09-18 19:19:47', null);
INSERT INTO `yyg_attac` VALUES ('834', 'Zy5qRBhvEUBG.gif', '/Uploads/emotion/Zy5qRBhvEUBG.gif', '2017-09-18 19:20:11', null);
INSERT INTO `yyg_attac` VALUES ('835', 'Zy5DSBaq2RPG.gif', '/Uploads/emotion/Zy5DSBaq2RPG.gif', '2017-09-18 19:20:33', null);
INSERT INTO `yyg_attac` VALUES ('836', 'Zy5PSBaO47HF.gif', '/Uploads/emotion/Zy5PSBaO47HF.gif', '2017-09-18 19:20:45', null);
INSERT INTO `yyg_attac` VALUES ('837', 'Zy5TSBHU3zx.jpeg', '/Uploads/topic/Zy5TSBHU3zx.jpeg', '2017-09-18 19:20:49', null);
INSERT INTO `yyg_attac` VALUES ('838', 'Zy5USBNi70M3.jpeg', '/Uploads/topic/Zy5USBNi70M3.jpeg', '2017-09-18 19:20:50', null);
INSERT INTO `yyg_attac` VALUES ('839', 'Zy5USBsSB52.jpeg', '/Uploads/topic/Zy5USBsSB52.jpeg', '2017-09-18 19:20:50', null);
INSERT INTO `yyg_attac` VALUES ('840', 'Zy5USBrwEvXF.jpeg', '/Uploads/topic/Zy5USBrwEvXF.jpeg', '2017-09-18 19:20:51', null);
INSERT INTO `yyg_attac` VALUES ('841', 'Zy5WSB2P5DOD.jpeg', '/Uploads/topic/Zy5WSB2P5DOD.jpeg', '2017-09-18 19:20:52', null);
INSERT INTO `yyg_attac` VALUES ('842', 'Zy5YSBic2me9.jpeg', '/Uploads/topic/Zy5YSBic2me9.jpeg', '2017-09-18 19:20:54', null);
INSERT INTO `yyg_attac` VALUES ('843', 'Zy5YSB6z5OUE.jpeg', '/Uploads/topic/Zy5YSB6z5OUE.jpeg', '2017-09-18 19:20:54', null);
INSERT INTO `yyg_attac` VALUES ('844', 'Zy5YSBcV8D8B.jpeg', '/Uploads/topic/Zy5YSBcV8D8B.jpeg', '2017-09-18 19:20:54', null);
INSERT INTO `yyg_attac` VALUES ('845', 'Zy5YSBKMBRG3.jpeg', '/Uploads/topic/Zy5YSBKMBRG3.jpeg', '2017-09-18 19:20:54', null);
INSERT INTO `yyg_attac` VALUES ('846', 'Zy5YSBY0EfL1.jpeg', '/Uploads/topic/Zy5YSBY0EfL1.jpeg', '2017-09-18 19:20:54', null);
INSERT INTO `yyg_attac` VALUES ('712', '20170829/59a567e46efe2.png', 'Upload/20170829/59a567e46efe2.png', '2017-08-29 21:11:00', null);
INSERT INTO `yyg_attac` VALUES ('711', 'QQ截图20170513003512.png', 'Upload/QQ截图20170513003512.png', '2017-08-29 21:09:42', null);
INSERT INTO `yyg_attac` VALUES ('710', '8y5TR2LO04G.jpg', '/Upload/20170828/8y5TR2LO04G.jpg', '2017-08-28 22:11:59', null);
INSERT INTO `yyg_attac` VALUES ('709', '5cc8072f160cc73f0d6df349c3186375.jpg', '/Upload/20170828/5cc8072f160cc73f0d6df349c3186375.jpg', '2017-08-28 22:08:49', null);
INSERT INTO `yyg_attac` VALUES ('708', '782cfe7968cddf4223c45450befc068e.jpg', '/Upload/20170828/782cfe7968cddf4223c45450befc068e.jpg', '2017-08-28 22:08:37', null);
INSERT INTO `yyg_attac` VALUES ('713', '20170829/59a5686a8dbb7.png', 'Upload/20170829/59a5686a8dbb7.png', '2017-08-29 21:13:14', null);
INSERT INTO `yyg_attac` VALUES ('714', '20170829/59a568741a7b6.png', 'Upload/20170829/59a568741a7b6.png', '2017-08-29 21:13:24', null);
INSERT INTO `yyg_attac` VALUES ('715', '20170829/59a5688eaa2d6.png', 'Upload/20170829/59a5688eaa2d6.png', '2017-08-29 21:13:50', null);
INSERT INTO `yyg_attac` VALUES ('728', '20170829/59a572e2b6e01.png', '/Upload/20170829/59a572e2b6e01.png', '2017-08-29 21:57:54', null);
INSERT INTO `yyg_attac` VALUES ('717', '20170829/59a568f76c9a1.png', 'Upload/20170829/59a568f76c9a1.png', '2017-08-29 21:15:35', null);
INSERT INTO `yyg_attac` VALUES ('718', '20170829/59a569868dbdc.png', 'Upload/20170829/59a569868dbdc.png', '2017-08-29 21:17:58', null);
INSERT INTO `yyg_attac` VALUES ('727', '20170829/59a572872a597.png', '/Upload/20170829/59a572872a597.png', '2017-08-29 21:56:23', null);
INSERT INTO `yyg_attac` VALUES ('720', '20170829/59a569a7b25ec.png', 'Upload/20170829/59a569a7b25ec.png', '2017-08-29 21:18:31', null);
INSERT INTO `yyg_attac` VALUES ('721', '20170829/59a57153b1606.png', 'Upload/20170829/59a57153b1606.png', '2017-08-29 21:51:15', null);
INSERT INTO `yyg_attac` VALUES ('722', '20170829/59a57199afa51.png', 'Upload/20170829/59a57199afa51.png', '2017-08-29 21:52:25', null);
INSERT INTO `yyg_attac` VALUES ('726', '20170829/59a5721f0a9e3.png', '/Upload/20170829/59a5721f0a9e3.png', '2017-08-29 21:54:39', null);
INSERT INTO `yyg_attac` VALUES ('725', '20170829/59a571e2e0732.png', 'Upload/20170829/59a571e2e0732.png', '2017-08-29 21:53:39', null);
INSERT INTO `yyg_attac` VALUES ('729', '20170829/59a573aa8046c.png', '/Upload/20170829/59a573aa8046c.png', '2017-08-29 22:01:14', null);
INSERT INTO `yyg_attac` VALUES ('730', '20170829/59a574401f590.png', '/Upload/20170829/59a574401f590.png', '2017-08-29 22:03:44', null);
INSERT INTO `yyg_attac` VALUES ('731', '20170829/59a57447ab25c.png', '/Upload/20170829/59a57447ab25c.png', '2017-08-29 22:03:51', null);
INSERT INTO `yyg_attac` VALUES ('732', '20170829/59a5752459356.png', '/Upload/20170829/59a5752459356.png', '2017-08-29 22:07:32', null);
INSERT INTO `yyg_attac` VALUES ('733', '20170829/59a575a3857f8.png', '/Upload/20170829/59a575a3857f8.png', '2017-08-29 22:09:39', null);
INSERT INTO `yyg_attac` VALUES ('734', '20170829/59a575f3265ac.png', '/Upload/20170829/59a575f3265ac.png', '2017-08-29 22:10:59', null);
INSERT INTO `yyg_attac` VALUES ('736', '20170829/59a57641a6e09.png', '/Upload/20170829/59a57641a6e09.png', '2017-08-29 22:12:17', null);
INSERT INTO `yyg_attac` VALUES ('737', '20170829/59a5766277fdf.png', '/Upload/20170829/59a5766277fdf.png', '2017-08-29 22:12:50', null);
INSERT INTO `yyg_attac` VALUES ('738', '20170829/59a576ad796fb.png', '/Upload/20170829/59a576ad796fb.png', '2017-08-29 22:14:05', null);
INSERT INTO `yyg_attac` VALUES ('739', '20170829/59a576c5d145c.png', '/Upload/20170829/59a576c5d145c.png', '2017-08-29 22:14:30', null);
INSERT INTO `yyg_attac` VALUES ('740', '20170829/59a576cf289fa.png', '/Upload/20170829/59a576cf289fa.png', '2017-08-29 22:14:39', null);
INSERT INTO `yyg_attac` VALUES ('741', '20170829/59a576d87c58f.png', '/Upload/20170829/59a576d87c58f.png', '2017-08-29 22:14:48', null);
INSERT INTO `yyg_attac` VALUES ('742', '20170829/59a576e5b54c9.png', '/Upload/20170829/59a576e5b54c9.png', '2017-08-29 22:15:01', null);
INSERT INTO `yyg_attac` VALUES ('743', '20170829/59a5773c1596e.png', '/Upload/20170829/59a5773c1596e.png', '2017-08-29 22:16:28', null);
INSERT INTO `yyg_attac` VALUES ('744', '20170829/59a578221f5a8.png', '/Upload/20170829/59a578221f5a8.png', '2017-08-29 22:20:18', null);
INSERT INTO `yyg_attac` VALUES ('745', '20170829/59a5783b4f779.png', '/Upload/20170829/59a5783b4f779.png', '2017-08-29 22:20:43', null);
INSERT INTO `yyg_attac` VALUES ('746', '20170829/59a5786ff1215.png', '/Upload/20170829/59a5786ff1215.png', '2017-08-29 22:21:36', null);
INSERT INTO `yyg_attac` VALUES ('747', '20170829/59a578818abc9.png', '/Upload/20170829/59a578818abc9.png', '2017-08-29 22:21:53', null);
INSERT INTO `yyg_attac` VALUES ('748', '20170829/59a578bbdaa0b.png', '/Upload/20170829/59a578bbdaa0b.png', '2017-08-29 22:22:52', null);
INSERT INTO `yyg_attac` VALUES ('749', '20170829/59a578fa61410.png', '/Upload/20170829/59a578fa61410.png', '2017-08-29 22:23:54', null);
INSERT INTO `yyg_attac` VALUES ('750', '20170829/59a57909b7610.png', '/Upload/20170829/59a57909b7610.png', '2017-08-29 22:24:09', null);
INSERT INTO `yyg_attac` VALUES ('751', '20170829/59a57916c3279.png', '/Upload/20170829/59a57916c3279.png', '2017-08-29 22:24:23', null);
INSERT INTO `yyg_attac` VALUES ('752', '20170829/59a579388108c.png', '/Upload/20170829/59a579388108c.png', '2017-08-29 22:24:56', null);
INSERT INTO `yyg_attac` VALUES ('753', '20170829/59a579415da62.png', '/Upload/20170829/59a579415da62.png', '2017-08-29 22:25:05', null);
INSERT INTO `yyg_attac` VALUES ('754', '20170829/59a57983a2390.png', '/Upload/20170829/59a57983a2390.png', '2017-08-29 22:26:11', null);
INSERT INTO `yyg_attac` VALUES ('755', '20170829/59a57a4ce09fd.png', '/Upload/20170829/59a57a4ce09fd.png', '2017-08-29 22:29:33', null);
INSERT INTO `yyg_attac` VALUES ('756', '20170829/59a57aa17a32d.png', '/Upload/20170829/59a57aa17a32d.png', '2017-08-29 22:30:57', null);
INSERT INTO `yyg_attac` VALUES ('757', '20170829/59a57ac4f31d5.png', '/Upload/20170829/59a57ac4f31d5.png', '2017-08-29 22:31:33', null);
INSERT INTO `yyg_attac` VALUES ('758', '20170829/59a57ad07e679.png', '/Upload/20170829/59a57ad07e679.png', '2017-08-29 22:31:44', null);
INSERT INTO `yyg_attac` VALUES ('759', '20170829/59a57ae5cfc89.png', '/Upload/20170829/59a57ae5cfc89.png', '2017-08-29 22:32:06', null);
INSERT INTO `yyg_attac` VALUES ('760', '20170829/59a57afb00d55.png', '/Upload/20170829/59a57afb00d55.png', '2017-08-29 22:32:27', null);
INSERT INTO `yyg_attac` VALUES ('761', '20170829/59a57b43c8c9e.png', '/Upload/20170829/59a57b43c8c9e.png', '2017-08-29 22:33:40', null);
INSERT INTO `yyg_attac` VALUES ('762', '20170829/59a57b5cc6f96.png', '/Upload/20170829/59a57b5cc6f96.png', '2017-08-29 22:34:05', null);
INSERT INTO `yyg_attac` VALUES ('763', '20170829/59a57b7c6e5d8.png', '/Upload/20170829/59a57b7c6e5d8.png', '2017-08-29 22:34:36', null);
INSERT INTO `yyg_attac` VALUES ('764', '20170829/59a57c0abc1a8.png', '/Upload/20170829/59a57c0abc1a8.png', '2017-08-29 22:36:59', null);
INSERT INTO `yyg_attac` VALUES ('765', '20170829/59a57c5a03ec9.png', '/Upload/20170829/59a57c5a03ec9.png', '2017-08-29 22:38:18', null);
INSERT INTO `yyg_attac` VALUES ('766', '20170829/59a57c7050a50.png', '/Upload/20170829/59a57c7050a50.png', '2017-08-29 22:38:40', null);
INSERT INTO `yyg_attac` VALUES ('767', '20170829/59a57c8e5604f.png', '/Upload/20170829/59a57c8e5604f.png', '2017-08-29 22:39:10', null);
INSERT INTO `yyg_attac` VALUES ('768', '20170829/59a57ca67d204.png', '/Upload/20170829/59a57ca67d204.png', '2017-08-29 22:39:34', null);
INSERT INTO `yyg_attac` VALUES ('769', '20170829/59a57d3731a9a.png', '/Upload/20170829/59a57d3731a9a.png', '2017-08-29 22:41:59', null);
INSERT INTO `yyg_attac` VALUES ('770', '20170829/59a57d7d567b2.png', '/Upload/20170829/59a57d7d567b2.png', '2017-08-29 22:43:09', null);
INSERT INTO `yyg_attac` VALUES ('771', '20170829/59a57db8f0ca6.png', '/Upload/20170829/59a57db8f0ca6.png', '2017-08-29 22:44:09', null);
INSERT INTO `yyg_attac` VALUES ('772', '20170829/59a57e0056904.png', '/Upload/20170829/59a57e0056904.png', '2017-08-29 22:45:20', null);
INSERT INTO `yyg_attac` VALUES ('773', '20170829/59a57e0db3a56.png', '/Upload/20170829/59a57e0db3a56.png', '2017-08-29 22:45:34', null);
INSERT INTO `yyg_attac` VALUES ('774', '20170829/59a57e665a14c.png', '/Upload/20170829/59a57e665a14c.png', '2017-08-29 22:47:02', null);
INSERT INTO `yyg_attac` VALUES ('775', '20170829/59a57edd5156e.png', '/Upload/20170829/59a57edd5156e.png', '2017-08-29 22:49:01', null);
INSERT INTO `yyg_attac` VALUES ('776', '20170829/59a57f684a8a2.png', '/Upload/20170829/59a57f684a8a2.png', '2017-08-29 22:51:20', null);
INSERT INTO `yyg_attac` VALUES ('777', '20170829/59a57f9f1764f.png', '/Upload/20170829/59a57f9f1764f.png', '2017-08-29 22:52:15', null);
INSERT INTO `yyg_attac` VALUES ('778', '20170829/59a57fc1d7205.png', '/Upload/20170829/59a57fc1d7205.png', '2017-08-29 22:52:50', null);
INSERT INTO `yyg_attac` VALUES ('779', '20170829/59a580841065d.png', '/Upload/20170829/59a580841065d.png', '2017-08-29 22:56:04', null);
INSERT INTO `yyg_attac` VALUES ('780', '20170831/59a816026db30.png', '/Upload/20170831/59a816026db30.png', '2017-08-31 21:58:26', null);
INSERT INTO `yyg_attac` VALUES ('781', '20170831/59a816f37d0fc.png', '/Upload/20170831/59a816f37d0fc.png', '2017-08-31 22:02:27', null);
INSERT INTO `yyg_attac` VALUES ('782', '20170831/59a817048e293.png', '/Upload/20170831/59a817048e293.png', '2017-08-31 22:02:44', null);
INSERT INTO `yyg_attac` VALUES ('783', '20170831/59a817bd2e33b.png', '/Upload/20170831/59a817bd2e33b.png', '2017-08-31 22:05:49', null);
INSERT INTO `yyg_attac` VALUES ('784', '20170831/59a819c682fe9.png', '/Upload/20170831/59a819c682fe9.png', '2017-08-31 22:14:30', null);
INSERT INTO `yyg_attac` VALUES ('785', '20170831/59a819e81c207.png', '/Upload/20170831/59a819e81c207.png', '2017-08-31 22:15:04', null);
INSERT INTO `yyg_attac` VALUES ('787', '20170902/59aa7203754e0.png', '/Upload/20170902/59aa7203754e0.png', '2017-09-02 16:55:31', null);
INSERT INTO `yyg_attac` VALUES ('852', '5a1abeaea3d06.png', '/Uploads/20171126/5a1abeaea3d06.png', '2017-11-26 21:16:30', null);
INSERT INTO `yyg_attac` VALUES ('851', '5a1abeae43c67.png', '/Uploads/20171126/5a1abeae43c67.png', '2017-11-26 21:16:30', null);
INSERT INTO `yyg_attac` VALUES ('859', '5a1ac1a6acfb1.jpg', '/Uploads/20171126/5a1ac1a6acfb1.jpg', '2017-11-26 21:29:10', null);
INSERT INTO `yyg_attac` VALUES ('860', '5a1ac2517f678.jpg', '/Uploads/20171126/5a1ac2517f678.jpg', '2017-11-26 21:32:01', null);

-- ----------------------------
-- Table structure for yyg_attac_deco
-- ----------------------------
DROP TABLE IF EXISTS `yyg_attac_deco`;
CREATE TABLE `yyg_attac_deco` (
  `att_id` int(10) unsigned NOT NULL,
  `deco_id` int(10) NOT NULL,
  PRIMARY KEY (`att_id`,`deco_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_attac_deco
-- ----------------------------

-- ----------------------------
-- Table structure for yyg_attac_design
-- ----------------------------
DROP TABLE IF EXISTS `yyg_attac_design`;
CREATE TABLE `yyg_attac_design` (
  `att_id` int(11) NOT NULL,
  `des_id` int(11) NOT NULL,
  PRIMARY KEY (`att_id`,`des_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_attac_design
-- ----------------------------
INSERT INTO `yyg_attac_design` VALUES ('363', '0');
INSERT INTO `yyg_attac_design` VALUES ('364', '0');
INSERT INTO `yyg_attac_design` VALUES ('365', '0');
INSERT INTO `yyg_attac_design` VALUES ('366', '0');
INSERT INTO `yyg_attac_design` VALUES ('389', '89');
INSERT INTO `yyg_attac_design` VALUES ('390', '89');
INSERT INTO `yyg_attac_design` VALUES ('391', '89');
INSERT INTO `yyg_attac_design` VALUES ('392', '89');
INSERT INTO `yyg_attac_design` VALUES ('393', '89');
INSERT INTO `yyg_attac_design` VALUES ('394', '89');
INSERT INTO `yyg_attac_design` VALUES ('395', '89');
INSERT INTO `yyg_attac_design` VALUES ('396', '89');
INSERT INTO `yyg_attac_design` VALUES ('397', '89');
INSERT INTO `yyg_attac_design` VALUES ('398', '89');
INSERT INTO `yyg_attac_design` VALUES ('399', '89');
INSERT INTO `yyg_attac_design` VALUES ('400', '89');
INSERT INTO `yyg_attac_design` VALUES ('401', '90');
INSERT INTO `yyg_attac_design` VALUES ('402', '90');
INSERT INTO `yyg_attac_design` VALUES ('403', '90');
INSERT INTO `yyg_attac_design` VALUES ('404', '90');
INSERT INTO `yyg_attac_design` VALUES ('405', '90');
INSERT INTO `yyg_attac_design` VALUES ('406', '90');
INSERT INTO `yyg_attac_design` VALUES ('407', '90');
INSERT INTO `yyg_attac_design` VALUES ('408', '90');
INSERT INTO `yyg_attac_design` VALUES ('409', '91');
INSERT INTO `yyg_attac_design` VALUES ('410', '91');
INSERT INTO `yyg_attac_design` VALUES ('411', '92');
INSERT INTO `yyg_attac_design` VALUES ('412', '92');
INSERT INTO `yyg_attac_design` VALUES ('413', '92');
INSERT INTO `yyg_attac_design` VALUES ('414', '92');
INSERT INTO `yyg_attac_design` VALUES ('415', '92');
INSERT INTO `yyg_attac_design` VALUES ('416', '92');
INSERT INTO `yyg_attac_design` VALUES ('417', '92');
INSERT INTO `yyg_attac_design` VALUES ('418', '92');
INSERT INTO `yyg_attac_design` VALUES ('419', '92');
INSERT INTO `yyg_attac_design` VALUES ('420', '92');
INSERT INTO `yyg_attac_design` VALUES ('421', '93');
INSERT INTO `yyg_attac_design` VALUES ('422', '93');
INSERT INTO `yyg_attac_design` VALUES ('423', '93');
INSERT INTO `yyg_attac_design` VALUES ('424', '93');
INSERT INTO `yyg_attac_design` VALUES ('425', '93');
INSERT INTO `yyg_attac_design` VALUES ('426', '93');
INSERT INTO `yyg_attac_design` VALUES ('427', '93');
INSERT INTO `yyg_attac_design` VALUES ('428', '93');
INSERT INTO `yyg_attac_design` VALUES ('429', '93');
INSERT INTO `yyg_attac_design` VALUES ('430', '93');
INSERT INTO `yyg_attac_design` VALUES ('431', '93');
INSERT INTO `yyg_attac_design` VALUES ('461', '86');
INSERT INTO `yyg_attac_design` VALUES ('462', '86');
INSERT INTO `yyg_attac_design` VALUES ('463', '86');
INSERT INTO `yyg_attac_design` VALUES ('464', '86');
INSERT INTO `yyg_attac_design` VALUES ('465', '86');

-- ----------------------------
-- Table structure for yyg_attac_rel
-- ----------------------------
DROP TABLE IF EXISTS `yyg_attac_rel`;
CREATE TABLE `yyg_attac_rel` (
  `att_id` int(10) unsigned NOT NULL,
  `rel_id` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`att_id`,`rel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_attac_rel
-- ----------------------------
INSERT INTO `yyg_attac_rel` VALUES ('190', '24');
INSERT INTO `yyg_attac_rel` VALUES ('191', '25');
INSERT INTO `yyg_attac_rel` VALUES ('192', '26');
INSERT INTO `yyg_attac_rel` VALUES ('193', '27');
INSERT INTO `yyg_attac_rel` VALUES ('197', '29');
INSERT INTO `yyg_attac_rel` VALUES ('198', '30');
INSERT INTO `yyg_attac_rel` VALUES ('199', '30');
INSERT INTO `yyg_attac_rel` VALUES ('200', '30');
INSERT INTO `yyg_attac_rel` VALUES ('201', '30');
INSERT INTO `yyg_attac_rel` VALUES ('203', '31');
INSERT INTO `yyg_attac_rel` VALUES ('204', '33');
INSERT INTO `yyg_attac_rel` VALUES ('851', '186');
INSERT INTO `yyg_attac_rel` VALUES ('852', '186');
INSERT INTO `yyg_attac_rel` VALUES ('853', '186');
INSERT INTO `yyg_attac_rel` VALUES ('854', '187');
INSERT INTO `yyg_attac_rel` VALUES ('855', '187');
INSERT INTO `yyg_attac_rel` VALUES ('856', '188');
INSERT INTO `yyg_attac_rel` VALUES ('857', '188');
INSERT INTO `yyg_attac_rel` VALUES ('858', '189');
INSERT INTO `yyg_attac_rel` VALUES ('859', '189');
INSERT INTO `yyg_attac_rel` VALUES ('860', '191');

-- ----------------------------
-- Table structure for yyg_attac_style
-- ----------------------------
DROP TABLE IF EXISTS `yyg_attac_style`;
CREATE TABLE `yyg_attac_style` (
  `att_id` int(11) NOT NULL,
  `sty_id` int(11) NOT NULL,
  PRIMARY KEY (`att_id`,`sty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_attac_style
-- ----------------------------
INSERT INTO `yyg_attac_style` VALUES ('500', '2');
INSERT INTO `yyg_attac_style` VALUES ('501', '2');
INSERT INTO `yyg_attac_style` VALUES ('502', '2');
INSERT INTO `yyg_attac_style` VALUES ('503', '3');
INSERT INTO `yyg_attac_style` VALUES ('504', '3');
INSERT INTO `yyg_attac_style` VALUES ('505', '3');
INSERT INTO `yyg_attac_style` VALUES ('506', '3');
INSERT INTO `yyg_attac_style` VALUES ('507', '4');
INSERT INTO `yyg_attac_style` VALUES ('508', '4');
INSERT INTO `yyg_attac_style` VALUES ('509', '4');
INSERT INTO `yyg_attac_style` VALUES ('510', '4');
INSERT INTO `yyg_attac_style` VALUES ('511', '5');
INSERT INTO `yyg_attac_style` VALUES ('512', '5');
INSERT INTO `yyg_attac_style` VALUES ('513', '5');
INSERT INTO `yyg_attac_style` VALUES ('514', '5');
INSERT INTO `yyg_attac_style` VALUES ('515', '5');
INSERT INTO `yyg_attac_style` VALUES ('516', '6');
INSERT INTO `yyg_attac_style` VALUES ('517', '6');
INSERT INTO `yyg_attac_style` VALUES ('518', '6');
INSERT INTO `yyg_attac_style` VALUES ('519', '6');
INSERT INTO `yyg_attac_style` VALUES ('520', '6');
INSERT INTO `yyg_attac_style` VALUES ('521', '7');
INSERT INTO `yyg_attac_style` VALUES ('522', '7');
INSERT INTO `yyg_attac_style` VALUES ('523', '7');
INSERT INTO `yyg_attac_style` VALUES ('524', '7');
INSERT INTO `yyg_attac_style` VALUES ('525', '8');
INSERT INTO `yyg_attac_style` VALUES ('526', '8');
INSERT INTO `yyg_attac_style` VALUES ('527', '8');
INSERT INTO `yyg_attac_style` VALUES ('528', '8');
INSERT INTO `yyg_attac_style` VALUES ('529', '8');
INSERT INTO `yyg_attac_style` VALUES ('530', '8');
INSERT INTO `yyg_attac_style` VALUES ('531', '9');
INSERT INTO `yyg_attac_style` VALUES ('532', '9');
INSERT INTO `yyg_attac_style` VALUES ('533', '9');
INSERT INTO `yyg_attac_style` VALUES ('534', '9');
INSERT INTO `yyg_attac_style` VALUES ('535', '9');
INSERT INTO `yyg_attac_style` VALUES ('536', '10');
INSERT INTO `yyg_attac_style` VALUES ('537', '10');
INSERT INTO `yyg_attac_style` VALUES ('538', '10');
INSERT INTO `yyg_attac_style` VALUES ('539', '10');
INSERT INTO `yyg_attac_style` VALUES ('540', '11');
INSERT INTO `yyg_attac_style` VALUES ('541', '11');
INSERT INTO `yyg_attac_style` VALUES ('542', '11');
INSERT INTO `yyg_attac_style` VALUES ('543', '11');
INSERT INTO `yyg_attac_style` VALUES ('544', '11');
INSERT INTO `yyg_attac_style` VALUES ('545', '12');
INSERT INTO `yyg_attac_style` VALUES ('546', '12');
INSERT INTO `yyg_attac_style` VALUES ('547', '12');
INSERT INTO `yyg_attac_style` VALUES ('548', '12');
INSERT INTO `yyg_attac_style` VALUES ('549', '13');
INSERT INTO `yyg_attac_style` VALUES ('550', '13');
INSERT INTO `yyg_attac_style` VALUES ('551', '13');
INSERT INTO `yyg_attac_style` VALUES ('552', '13');
INSERT INTO `yyg_attac_style` VALUES ('553', '14');
INSERT INTO `yyg_attac_style` VALUES ('554', '14');
INSERT INTO `yyg_attac_style` VALUES ('555', '15');
INSERT INTO `yyg_attac_style` VALUES ('556', '15');
INSERT INTO `yyg_attac_style` VALUES ('557', '15');
INSERT INTO `yyg_attac_style` VALUES ('558', '16');
INSERT INTO `yyg_attac_style` VALUES ('559', '16');
INSERT INTO `yyg_attac_style` VALUES ('560', '16');
INSERT INTO `yyg_attac_style` VALUES ('561', '16');
INSERT INTO `yyg_attac_style` VALUES ('562', '16');

-- ----------------------------
-- Table structure for yyg_category
-- ----------------------------
DROP TABLE IF EXISTS `yyg_category`;
CREATE TABLE `yyg_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `pagecode` varchar(120) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_category
-- ----------------------------
INSERT INTO `yyg_category` VALUES ('1', '0', '孕育知识', 'yun-yu-zhi-shi', '1', '2017-08-14 17:21:33', '2017-08-14 17:21:33');
INSERT INTO `yyg_category` VALUES ('2', '0', '育儿百科', 'yu-er-bai-ke', '1', '2017-08-14 17:22:14', '2017-08-14 17:22:14');
INSERT INTO `yyg_category` VALUES ('3', '1', '护理保健', 'hu-li-bao-jian', '1', '2017-08-14 17:22:27', '2017-08-14 17:22:27');
INSERT INTO `yyg_category` VALUES ('4', '1', '幼儿安全', 'you-er-an-quan', '1', '2017-08-14 17:22:35', '2017-08-14 17:22:35');
INSERT INTO `yyg_category` VALUES ('5', '1', '常见疾病', 'chang-jian-ji-bing', '1', '2017-08-14 17:22:42', '2017-08-14 17:22:42');
INSERT INTO `yyg_category` VALUES ('6', '2', '准备怀孕', 'zhun-bei-huai-yun', '1', '2017-08-14 17:22:55', '2017-08-14 17:22:55');
INSERT INTO `yyg_category` VALUES ('7', '2', '孕早期', 'yun-zao-qi', '1', '2017-08-14 17:23:03', '2017-08-14 17:23:03');
INSERT INTO `yyg_category` VALUES ('8', '2', '孕中期', 'yun-zhong-qi', '1', '2017-08-14 17:23:08', '2017-08-14 17:23:08');
INSERT INTO `yyg_category` VALUES ('9', '2', '孕晚期', 'yun-wan-qi', '1', '2017-08-14 17:23:12', '2017-08-14 17:23:12');
INSERT INTO `yyg_category` VALUES ('10', '2', '分娩', 'fen-mian', '1', '2017-08-14 17:23:21', '2017-08-14 17:23:21');
INSERT INTO `yyg_category` VALUES ('11', '2', '产后', 'chan-hou', '1', '2017-08-14 17:23:29', '2017-08-14 17:23:29');
INSERT INTO `yyg_category` VALUES ('32', '0', '母婴优品', 'mu-yin-you-pin', '1', '2017-08-20 15:51:00', '2017-08-20 15:51:00');
INSERT INTO `yyg_category` VALUES ('33', '0', '儿童故事', 'er-tong-gu-shi', '1', '2017-08-20 15:51:14', '2017-08-20 15:51:14');
INSERT INTO `yyg_category` VALUES ('38', '0', '儿童动画', 'er-tong-dong-hua', '1', '2017-08-20 21:55:28', '2017-08-20 21:55:28');
INSERT INTO `yyg_category` VALUES ('39', '0', '婆媳那点儿事', 'po-xi-na-dian-er-shi', '1', '2017-08-20 21:56:06', '2017-08-20 22:48:53');
INSERT INTO `yyg_category` VALUES ('42', '0', '育儿动态', 'yu-er-dong-tai', '1', '2017-09-17 22:03:58', '2017-09-17 22:03:58');
INSERT INTO `yyg_category` VALUES ('43', '0', '事件播报', 'shi-jian-bo-bao', '1', '2017-09-17 22:14:10', '2017-09-17 22:14:10');
INSERT INTO `yyg_category` VALUES ('44', '0', '视频报道', 'shi-pin-bao-dao', '1', '2017-09-18 19:21:07', '2017-09-18 19:21:07');

-- ----------------------------
-- Table structure for yyg_comment
-- ----------------------------
DROP TABLE IF EXISTS `yyg_comment`;
CREATE TABLE `yyg_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `audit` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_comment
-- ----------------------------
INSERT INTO `yyg_comment` VALUES ('3', '12112312', '155', '1', '0', '', '1', '2017-09-24 20:38:42', '2017-09-24 20:38:42');
INSERT INTO `yyg_comment` VALUES ('4', '1111', '155', '1', '0', '', '1', '2017-09-24 20:38:44', '2017-09-24 20:38:44');
INSERT INTO `yyg_comment` VALUES ('5', '2223', '155', '1', '0', '', '1', '2017-09-24 20:38:50', '2017-09-24 20:38:50');
INSERT INTO `yyg_comment` VALUES ('7', '强奸强奸强奸强奸', '155', '1', '0', '', '1', '2017-09-24 20:39:56', '2017-09-24 20:39:56');
INSERT INTO `yyg_comment` VALUES ('8', '强奸强奸强奸强奸强奸强奸强奸', '155', '1', '0', '垃圾内容', '0', '2017-09-24 20:40:02', '2017-09-24 20:40:02');
INSERT INTO `yyg_comment` VALUES ('9', '强奸强奸强奸强奸', '155', '1', '0', '', '1', '2017-09-24 20:40:24', '2017-09-24 20:40:24');
INSERT INTO `yyg_comment` VALUES ('10', '强奸强奸强奸强奸', '155', '1', '0', '', '1', '2017-09-24 20:40:49', '2017-09-24 20:40:49');
INSERT INTO `yyg_comment` VALUES ('11', '强奸强奸强奸强奸', '155', '1', '0', '', '1', '2017-09-24 20:41:49', '2017-09-24 20:41:49');
INSERT INTO `yyg_comment` VALUES ('12', '　如果妇女性生活放纵，或未成年便开始性生活', '155', '1', '0', '', '1', '2017-09-24 20:43:32', '2017-09-24 20:43:32');
INSERT INTO `yyg_comment` VALUES ('13', '　如果妇女性生活放纵，或未成年便开始性生活', '155', '1', '0', '', '1', '2017-09-24 20:43:33', '2017-09-24 20:43:33');
INSERT INTO `yyg_comment` VALUES ('14', '　　如果妇女性生活放纵，或未成年便开始性生活', '155', '1', '0', '', '1', '2017-09-24 20:43:41', '2017-09-24 20:43:41');
INSERT INTO `yyg_comment` VALUES ('15', '的点点滴滴多多', '155', '1', '0', '', '1', '2017-09-24 21:23:02', '2017-09-24 21:23:02');
INSERT INTO `yyg_comment` VALUES ('16', '[吃东西][流口水]', '155', '1', '0', '', '1', '2017-09-24 22:06:02', '2017-09-24 22:06:02');
INSERT INTO `yyg_comment` VALUES ('17', '[叹气][烧香]', '155', '1', '0', '', '1', '2017-09-24 22:32:59', '2017-09-24 22:32:59');
INSERT INTO `yyg_comment` VALUES ('18', '被[冰冻]了[发狂]我要发狂了', '155', '1', '0', '', '1', '2017-09-24 22:33:26', '2017-09-24 22:33:26');
INSERT INTO `yyg_comment` VALUES ('19', '如题，要交满两年社保才能买，8 月份就想换又担心辞了万一 一个月之内找不到工作社保断了。刚刚咨询了一下在杭州必需缴纳社保满十年才能自己缴纳社保。原来也想过找到下家再走，后来发现实行起来太难，本来就基本是 996，总不能经常请假。烦……', '155', '1', '0', 'ssadasdsaasasas', '1', '2017-10-29 15:42:41', '2017-10-29 15:42:41');
INSERT INTO `yyg_comment` VALUES ('20', '第一类似围棋 是因为项目技巧，竞技层次更高。 容易或者一些有钱有权的大佬的青睐。 相应的就能获得更多的资源。\n\n另一种情况是项目本身的商业价值就大，类似德州，赛车这样，有更多的相关品牌愿意投入，也会相应的购买广告和雇佣媒体作为喉舌。\n\n\n\n再回到王者荣耀，这个项目本身因为起点比较low。 这个其实早期英雄联盟 相比dota和星际 也是low的。\n\n\n\n但是该项目组，持续的“雇佣”媒体。分享利益，最终推到现在电竞第一项目的地位\n\n\n\n而类似 csgo，绝地这样项目，因为本身硬件需求高。利用外部资源就可以疯狂宣传\n\n王者因为带不动 周边“运动产品”的销售。 所以只有选择走英雄联盟的老路\n\n\n\n加上游戏策划运营人员本身的补强\n\n天美此前用太少的人，实现了太多的收益。\n\n需要更大更强的团队，更大的努力，分享更多的利润，才能维持一个比今年中旬低的收入。\n\n对于腾讯高层来说，心理有些膨胀的话。', '155', '1', '0', '不洁的性生活可引起阴道炎、宫颈炎、宫颈糜烂、输卵管炎症。\n\n　　别小看这些感染，它们可是外阴癌、阴道癌、宫颈癌及输卵管癌的重要发病因素。\n\n　　总之，现代医学证明，不洁性生活已经成为了诱发妇科肿瘤的“元凶”。', '0', '2017-10-29 15:43:23', '2017-10-29 15:43:23');

-- ----------------------------
-- Table structure for yyg_content
-- ----------------------------
DROP TABLE IF EXISTS `yyg_content`;
CREATE TABLE `yyg_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `intro` varchar(255) NOT NULL DEFAULT '',
  `embed_code` text NOT NULL,
  `relurl` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewnum` int(11) unsigned DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `topnum` int(11) unsigned DEFAULT '0',
  `indexdisplay` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_content
-- ----------------------------
INSERT INTO `yyg_content` VALUES ('169', '大嘴熊的鼓励', '<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	<img src=\"http://test.yygcms.cn/Upload/20170903/thumb_600_59abf43c73ab4.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	在一个美丽的小村庄里，住着一群可爱的小动物。活泼的大嘴熊和调皮的小熊三兄弟——欢实、皮实、结实，是最要好的朋友。一天，村里贴出了要举行讲故事比赛的通知，选出今年的故事大王。欢实、皮实和大嘴熊跃跃欲试，他们都觉得自己是讲故事的天才。只有结实偷偷地躲了起来，因为平时经常有小伙伴取笑他说话慢，还有点儿结巴。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“这个结实跑哪儿去了？”大嘴熊把脖子伸得长长的，东瞧瞧西望望，寻找着结实。大嘴熊非常了解结实的想法。每次有小伙伴取笑结实时，他都会伸出援（yuán）助之手。大嘴熊心想：“结实一定是因为没有自信才悄悄地躲起来，我得找到他，鼓励他，给他加油！”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“结实，可爱又帅气的结实兄弟，你在哪儿呢？”大嘴熊的喊声越来越大。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“嘘，小……小声点儿，别……别……别喊了，我在这儿呢。”结实从玉米地里钻了出来。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“你怎么躲在这里呀？要评选今年的故事大王了，你得参加比赛呀！”大嘴熊一边帮结实拍落身上的灰尘一边说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“我……我……我可不行。”结实胆怯（qiè）地说。“怕什么！从现在起，我每天都陪你练发音，说绕口令，只要多加练习，一定能行的。即使成不了故事大王，你也要锻炼一下胆量，不能总是不敢上台讲话呀。”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“我一上台，他……他们又该取笑我了。”结实低着头小声说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“谁再取笑你，我就把他的嘴封住！”大嘴熊愤愤地说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	从那以后，每天清晨，大嘴熊都陪着结实去鱼塘边练习发音。他还帮结实编了一个故事——《<a href=\"http://www.gushi365.com/info/9400.html\">小魔怪的树</a>》。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	大嘴熊和结实就这样练哪练，十天后，比赛的日子到了。结实精心打扮了一番——头上戴了顶西瓜帽，可爱极了。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	轮到结实上场了，主持人小喜鹊（què）说：“欢迎结实来参加比赛，我们大家给他掌声鼓励好不好？”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“好，好！结实结实你最棒！”母鸡罗丝姐妹，还有大嘴熊、欢实、皮实大声地给结实加油！\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	结实走上舞台，虽然紧张得不行，但想起大嘴熊的鼓励，心里就平静了许多。他昂着头，绘声绘色地讲起了《小魔怪的树》，观众们都听得入迷了。结实讲完后，台下响起了热烈的掌声。他简直不敢相信，自己居然可以表演得这么好。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“祝贺你，结实！我就说你能行嘛！”大嘴熊捧着一大束野花送给结实。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“谢谢你，大嘴熊！”结实激动地拥抱大嘴熊。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	比赛的最终结果是，结实获得了第三名。这个成绩真不错！更令大家高兴的是，从这以后，他彻（chè）底改掉了一紧张就结巴的毛病，村子里举行的各项活动，都少不了他的参与呢！\r\n</p>', '在一个美丽的小村庄里，住着一群可爱的小动物。活泼的大嘴熊和调皮的小熊三兄弟——欢实、皮实、结实，是最要好的朋友。一天，村里贴出了要举行讲故事比赛的通知，选出今年的故事大王。欢实、皮实和大嘴熊跃跃欲试，他们都觉得自己是讲故事的天才。', '', '', '33', '1', '2017-09-03 20:23:48', '2017-09-03 20:23:48', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('184', '姐姐被扯头发，依然实力护弟', ' <p>二胎家庭乐趣多，“矛盾”也多，两个熊孩子在一起免不了要磕磕碰碰。然而，下面这个视频中的小姐姐实在是太暖啦！尽管被弟弟扯了头发，忍着痛也要护着他。</p> <p><img class=\"size-full wp-image-111702 aligncenter\" title=\"1\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5lSBLO25t7.jpeg\" alt=\"\" width=\"350\" height=\"259\" /></p> <p>视频中，妈妈发现女儿的头发被弟弟拉扯，很是心疼，于是企图帮助女儿教训下弟弟。然而小姐姐却告诉妈妈，弟弟这么做只是一个意外，弟弟不是故意的，请求妈妈原谅弟弟。这一暖心举动简直就是实力护弟，姐弟情满满滴~</p> <p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/iframe/player.html?vid=o03996elr84&amp;tiny=0&amp;auto=0\" frameborder=\"0\" width=\"542\" height=\"422\"></iframe></p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 二胎家庭乐趣多，“矛盾”也多，两个熊孩子在一起免不了要磕磕碰碰。然而，下面这个视频中的小姐姐实在是太暖啦！尽管被弟弟扯了头发，忍着痛也要护', '', '', '44', '1', '2017-09-18 19:21:07', '2017-09-18 19:21:07', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('186', '3D动画《新成龙历险记》8月霸屏 成龙大哥动画新作带你惊喜一夏', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;继4月动画片《新成龙历险记》在北京举行“梦境守护计划”发布会后，日前该片在北京蓝天城职业体验中心开启全球首播仪式，第一季52集动画片正式和小朋友们见面。选择在蓝天城开启全球首播，是因为蓝天城是小朋友暑期的聚集地，《新成龙历险记》的主创团队希望小成龙和小朋友们在一起，共同守护小朋友们的假期。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1abeae43c67.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	（上图为蓝天城艺术学院、蜻蜓FM、上海俪薇杰影视文化有限公司、上海炫动卡通、新东方泡泡少儿教育嘉宾共同开启《新成龙历险记》全球首播仪式）\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	七年一剑 大作终成\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	你还记得17年前的《成龙历险记》吗？当年的《成龙历险记》是一部2D动画风格的冒险喜剧动画片，因有着与成龙电影如出一辙的冒险喜剧风格，在美国掀起了一股“成龙动画热”。该片在网络平台播放总量超过10亿次，用户评分高达9.1分，为《新成龙历险记》奠定了良好的品牌基础与用户口碑。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	而今《新成龙历险记》历经7年的打磨，主创团队和成龙大哥经过反复的磨砺终成大作，身为监制的他介绍称，该剧除了主人公Jackie依旧以自己为原型外，在动画风格、取材方向将全面创新。成龙透露，这部动画片以守护每个孩子美梦常伴为出发点，每集故事开头，自己都将现身影片中，亲自将小朋友带入一场梦境般的童话世界。并且，在每集故事的片尾都与小朋友互动，分享成长过程中的小烦恼，结合动画内容，告诉小朋友一些生活的哲理和常识，让孩子们学会面对生活中的困惑和难题，学会独自面对并解决问题，勇敢快乐的成长。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1abeaea3d06.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;（上图为首播仪式现场《新成龙历险记》精彩的人偶剧演出）&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1abeaf1035a.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		（上图为首播仪式现场《新成龙历险记》主题舞的精彩演出）\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		&amp;nbsp;\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		暑期发行 守护家庭\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		《新成龙历险记》提出“暑期健康看动画”倡议，因此在发行策略也做出相应调整，让这部动画片在暑期全面回归传统电视屏幕。《新成龙历险记》首轮暑期发行以电视台为主，8月14日开始，将全面登陆各大卡通卫视黄金档，同时百家地方台陆续开播，本次的“电视端全面霸屏“策略将引导小朋友们更加健康的观看方式。为了弥补孩子在碎片时间及移动场景下的需求，《新成龙历险记》将同期在蜻蜓FM首发音频版，让充满正能量的故事陪伴小朋友入睡，守护孩子们的美妙梦境。全电视平台（白天家庭亲子场景）+音频平台（移动场景、睡前场景）满足小朋友在不同时间段的需求。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;', '继4月动画片《新成龙历险记》在北京举行“梦境守护计划”发布会后，日前该片在北京蓝天城职业体验中心开启全球首播仪式，第一季52集动画片正式和小朋友们见面。选择在蓝天城开启全球首播，是因为蓝天城是小朋友暑期的聚集地，《新成龙历险记》的主创团队希望小成龙和小朋友们在一起，共同守护小朋友们的假期。', '', '', '43', '1', '2017-11-26 21:18:01', '2017-11-26 21:18:01', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('187', '谨记！及时打开新生儿的小拳头', '&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	每个宝宝生下来，他们都会紧紧握住自己的小拳头。对于这种现象，许多妈妈也许并不在意，可是儿科医生却提醒大家：要及时打开宝宝紧握的小拳头。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	为什么要及时打开宝宝的小拳头?\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　1、手的动作能促进神经系统的发育，而且对诱导婴儿心理发展起了前提的作用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　2、手指分开后，可以随心所欲地摆弄各种物品，使婴儿能够主动地学习和从事各种活动，知觉和具体思维能力得到发育。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1abf56b14a4.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	3、通过手部动作，婴儿和环境产生了互动，帮助婴儿建立自己和环境互动的概念，这种互动的经验对婴儿今后的发展意义重大。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	打开小拳头，妈妈该怎么做?\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　1、日常生活中要注意舒展\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　生活中，时常打开宝宝紧握的双拳，会让他有舒展手指的轻松感觉;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　洗澡的时候别忘洗宝宝的小手。把手指尖轻轻伸进宝宝的手掌里，在小手心里轻轻地来回转动，边清洗边按摩;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　喂奶的时候把宝宝搂在怀里，把手指伸进他的手心里，大手握小手，轻轻地摸一摸，缓缓地摇一摇;轻轻抚摸、张开宝宝的拳头，让小手掌触摸妈妈的乳房和妈妈的脸;不停地和宝宝说说话。吸吮妈妈的乳汁、感觉妈妈肌肤的温暖，宝宝满足又舒服。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　2、给宝宝的手指做按摩\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　*宝宝吃饱喝足、心情愉快的时候，可给宝宝的小手做按摩，肌肤温柔的触感能刺激宝宝触觉神经，使宝宝身心放松，小拳头很容易就松开了。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1abf70191f9.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		*拿起宝宝的手掌，轻轻掰开拇指，再将手指一起打开，闭拢，再打开，边做边说话、唱歌。握住宝宝的手指，轻轻地一根一根打开，再一根一根合拢，轻柔地抚摸。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　*鼓励宝宝频频“出拳”，练习手眼协调，触碰、抓拿东西。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　3、把玩具放入宝宝的手掌\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　让宝宝握住玩具，妈妈拿住宝宝的小手，一起摇摇，听听玩具会发出什么声音。在游戏中宝宝慢慢学习控制、使用自己的手。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　注意：正确握姿——姆指和4手指要相对而握。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　TIP1选择适合的玩具。适合宝宝手掌大小、会发声、材质柔软的玩具。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		　　TIP2宝宝玩的时候旁边一定要有大人陪伴。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;', '每个宝宝生下来，他们都会紧紧握住自己的小拳头。对于这种现象，许多妈妈也许并不在意，可是儿科医生却提醒大家：要及时打开宝宝紧握的小拳头。', '', '', '3', '1', '2017-11-26 21:20:25', '2017-11-26 21:20:25', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('188', '药不能乱吃，关于小儿感冒药的那些“坑”', '&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	禁止2 岁以下婴幼儿服用感冒药，不推荐4岁以下儿童服用感冒药，4~6岁的儿童要在医生的指导下使用感冒药。——FDA 组织\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	孩子，不是缩小的成人版\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1ac0d5534ad.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	由于儿童的肾脏系统还不是很完善，很多药物不能即使消解，会在体内积蓄，增加毒副作用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	另外，一些抗组胺药、减充剂、止咳药和化痰药，不管是单药还是处方药，都没有被明确证明对婴儿和儿童有帮助，反而被发现有潜在的、危险的副作用。因此，美国 FDA建议6岁以下的孩子不要使用这一类的药物。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	因为感冒是一种自限性疾病，即使不治疗，一般一周左右也就好了，所以感冒最主要的治疗就是对症治疗，目的是让孩子感觉不要那么难受，并不是为了防止病情加重或者让感冒更快痊愈。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	有些人认为一出现感冒症状就应该赶紧吃药，“将感冒扼杀在萌芽状态”，这种想法也是不正确的。只有当症状烦扰到孩子，例如影响睡眠、喝水或进食，感觉难受，才有可能需要进行对症治疗。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	感冒是着凉引起的吗？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	平常说的感冒是普通感冒和流行性感冒的总称，小编这回仅和大家讨论普通感冒。通感冒是由多种病毒引起的呼吸道常见病，比如鼻病毒、冠状病毒、腺病毒等；着凉并不是感冒的直接原因，一些研究认为主要是低温可能降低人的免疫力，所以更容易让感冒病毒入侵人体。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	既然最好不要吃药，那么儿童感冒了，家长应该怎么办呢？以下根据具体症状来谈谈如何对症治疗。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1ac0d52c749.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		发热\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		如果发热让孩子不舒服，可以口服解热镇痛药物，比如对乙酰氨基酚或者布洛芬。服药时，请参考说明书中的体重剂量比例服药，比如多少千克体重应该服用多少剂量，而不是参考年龄剂量比例服药。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		流涕和鼻塞\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		鼻塞可能会影响睡眠和进食，常常是婴儿和年幼儿最烦扰的症状。用吸鼻器清除鼻涕、使用滴鼻或者喷鼻盐水（大些的孩子可以用洗鼻盐水洗鼻）、喝足够的水（足够就可以了，不要喝到撑）、吸入冷蒸汽（可以用加湿器），这些方法很安全，可能可以改善症状。另外，当室内的湿度在 40%～60% 的时候，人们感觉最舒服，而且这样的湿度不利于病毒存活，可以减少空气中和物品表面的病毒数量。加湿器会让感冒的孩子舒服一些。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		咳嗽\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		咳嗽有可能影响孩子的睡眠、玩耍和上学。如果咳嗽很严重，或者超过预期的时间（例如超过 2 周仍没有好转，甚至加重了），应该先看医生找到咳嗽的原因。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		适当补充水分、喝温热的液体（例如热水、鸡汤）、睡前口服半勺或一小勺（2.5～5 毫升）蜂蜜（仅用于 1 岁以上的孩子）、硬糖（仅用于 3 岁以上，并且没有将糖吸入气道风险时）、增加空气湿度（用加湿器）这些方法有助于减轻喉咙的刺激、保持呼吸道湿润，对于缓解咳嗽可能有帮助。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		喉咙痛\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		明显的喉咙痛会影响孩子吞口水和吃东西，也可能提示其他疾病比如合并细菌感染，需要去看医生。中重度的喉咙痛可以口服对乙酰氨基酚或布洛芬。喝冷的饮料或者吃冰淇淋或者冰棒也是安全的缓解孩子喉咙痛的办法。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		感冒是一种自己能够好的疾病。家长需要做的是：\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		不慌不乱，按照上面的方法对症处理，让孩子舒服一些；仔细观察有没有让人担心的其他情况；平时采取措施预防感冒。\r\n	&lt;/p&gt;\r\n&lt;/p&gt;', '禁止2 岁以下婴幼儿服用感冒药，不推荐4岁以下儿童服用感冒药，4~6岁的儿童要在医生的指导下使用感冒药。', '', '', '7', '1', '2017-11-26 21:26:42', '2017-11-26 21:26:42', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('189', '安以轩发文称“当妈了”疑宣布喜讯', '&lt;p&gt;\r\n	&lt;img src=&quot; /Uploads/20171126/5a1ac1a685ea0.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot; /Uploads/20171126/5a1ac1a6acfb1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		安以轩3月15日和百亿CEO陈荣炼登记结婚，小两口在姊妹淘的见证下结为夫妻，十分幸福。而4月3日返台的她，隔天突在微博宣布“我当妈咪了”，并写下300字的新手妈咪心情，让粉丝又惊又喜。\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		安以轩昨日更新微博，第一句话就吓翻粉丝，“我当妈咪了！”原来是她早上起床时发现上个月30日买回的孔雀鱼，生了许多鱼宝宝，而同样当天也是好姐妹陈乔恩的生日，立刻分享给陈乔恩，“生日快乐，他们和你同月同日生~以后可以一起切蛋糕！”\r\n	&lt;/p&gt;\r\n	&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n		另外，安以轩的鱼家庭不仅有这次喜事，上个月18日买的2只蓝色虾子意外竟也是孕妇，结果整缸都是它们生的宝宝，“妈咪到家里说这叫：好孕到~好运到，我这新手妈咪其实紧张，请多多指教，谁有经验快分享一下！”\r\n	&lt;/p&gt;\r\n&lt;/p&gt;', '安以轩突在微博宣布“我当妈咪了”，并写下300字的新手妈咪心情，让粉丝又惊又喜。\r\n', '', '', '43', '1', '2017-11-26 21:29:47', '2017-11-26 21:29:47', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('190', '两个月宝宝长肿瘤越早发现预后越好', '&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	南京儿童医院近年来儿童肿瘤患者数量逐年上升，该院一年接诊150多个肿瘤患儿，平均每三天就新增一例，其中不少都是因为家长没有及时带来就医，导致错过最佳治疗期。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;女婴肚子一天天变大　家长以为孩子养得好&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	温州的包先生，今年1月份，二胎女儿出生。随着孩子一天天长大，包先生发现孩子的肚子比较鼓，觉得这孩子养得好胖得快。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	孩子42天时，包先生带着孩子到加附近的社区卫生院检查，医生一看孩子肚子，就赶紧让他们去大医院做检查。到了当地医院，B超检查显示，孩子腹腔内有一个橘子大小的肿块。包先生一家还乐观地以为肿块是生产时挤压形成的血块，会自己消散。直到一个月前，孩子开始出现呕吐、发烧等反应，送当地医院，几天后又转到浙大儿医。医生给孩子做了活检，报告出来：神经母细胞肿瘤，直径达到5-6cm。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	庆幸的是，经过化疗，目前孩子腹腔内的肿瘤正逐渐变小，下一步就将进行手术。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;一年接诊150多个患儿3岁是儿童肿瘤高发期&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	南京市儿童医院血液肿瘤科主任医师方拥军表示，他们一年能接诊150多个恶性肿瘤患儿，平均每两到三天就新增一例。据统计，患儿中，脑肿瘤最多，其次是恶性淋巴肿瘤、神经母细胞瘤，肝母细胞瘤、肾母细胞瘤患儿比较少。方主任表示，3岁是儿童实体肿瘤高发期，南京儿童医院最小的患儿只有几个月。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	孩子那么小，为什么会得恶性肿瘤呢？方主任表示可能有几个原因：一是胚胎细胞发育不良，可以说是“打娘胎里带出来的”；二是基因突变；三是环境因素，比如长期接触化学有毒物质等等，这里值得注意的是，如果母亲在妊娠期接触放射污染、化工污染等，也会对胎儿造成影响。此外还有遗传因素，这些都和儿童患肿瘤有关系。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;越早发现治愈率越高　家长平时要多“摸摸”&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	虽然儿童恶性肿瘤高发，但是治愈率相比成人却高得多。方主任介绍，如果儿童恶性肿瘤在早期阶段接受治疗，治愈率可以达到70%至80%。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	那么如何能早点发现儿童恶性肿瘤呢？方主任说，家长平时要多摸摸孩子，比如孩子躺着洗澡时。如果孩子突然出现生长变慢、不爱吃东西、发烧、面色苍白等情况，家长也可在孩子睡觉时，摸一下腹部、四肢看有无包块，如果发现可疑包块，尽快带孩子到医院做进一步检查。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	不过也有的肿瘤因为靠近腹后壁，早期不容易发现，因此建议3周岁以下的孩子每年做一次腹部B超，可以尽早发现是否有实体肿瘤。\r\n&lt;/p&gt;', '3岁是儿童实体肿瘤高发期，最小的患儿只有几个月。孩子那么小，为什么会得恶性肿瘤呢？', '', '', '2', '1', '2017-11-26 21:31:03', '2017-11-26 21:31:03', '0', '0', '0', '');
INSERT INTO `yyg_content` VALUES ('191', '12幼儿打疫苗被超量5倍恐患肺炎', '&lt;p&gt;\r\n	&lt;span style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;3月27日，凉山州(微博)德昌县六所镇12名幼儿在该镇中心卫生院接种卡介苗(卡介苗是用于预防结核病的疫苗 )，结果却被医院的一名女护士超量五倍注射，引发家长担忧。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;&lt;img src=&quot;http://test.yygcms.cn/Uploads/20171126/5a1ac2517f678.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt; &lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	31日，德昌县卫生与计划生育局回应称，因医院一名护士疏忽，拿错注射器致超量。目前，12名幼儿正在医院接受治疗并观察，而涉事的医院护士已被停职接受调查。点此查看12名幼儿接种卡介苗超量相关视频。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　&lt;strong&gt;家属反映：&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　幼儿打卡介苗&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　被超量5倍注射&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　31日上午，在德昌县人民医院，成都商报记者见到了多名幼儿的家属，虽然时隔多日，家属们仍然十分担心孩子的情况。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据一幼儿家长徐文胜介绍，他们是德昌县六所镇永兴村人，3月27日是镇中心卫生院接种疫苗的日子，当天他带着出生才69天的女儿到医院接种就卡介苗。当日上午10点过，一女医护人员为女儿打了卡介苗，“是护士还是医生，我们不清楚。”他说，当日上午，还有其他多名幼儿在该医院接种卡介苗。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据他介绍，接种后回家的当晚7点过，他接到镇中心卫生医院工作人员的电话称，“问孩子现在那里，疫苗打超量了，赶快到镇上卫生院接受处置。”为此，家人们都很担心，立即把孩子带到卫生院后，医院人员向他表示抱歉，称因医务人员责任心问题才导致事情发生，“原本标准只打0.1毫升，结果打了0.5毫升，超了五倍。”当晚，他们配合医务人员，给孩子打了一种封闭针。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据多名幼儿家属介绍，当天该镇一共有12名幼儿在该镇卫生院接种了卡介苗，这些幼儿均出生不到两个月。当他们家属接到医院通知后，按照处置要求，他们的幼儿均打了封闭针。“医生说，打这种针就是将卡介苗封闭，防止疫苗扩散。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　多名幼儿家属表示，从事发后，已经打了3次封闭针，31日下午将接受第四针。“有的幼儿出现了烦躁、嗜睡、吐奶，有的皮肤有点黄，不知道是不是受此影响。”目前，有8名幼儿在德昌县人民医院接受治疗并观察。另外，在30日，有一家的三胞胎及另外一名幼儿已经转院到攀枝花(微博)中心医院治疗。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据多名家属介绍，29日，医院对幼儿进行了抽血等检查，表示没有发现异常。30日上午，有关专家看了化验单等，表示也有幼儿没有出现异常反应，属正常范围。即便如此，家属们仍然最担心的是，“卡介苗打超量了，会不会有什么后遗症。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　&lt;strong&gt;医院回应：&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　女护士拿错注射器&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　0.5毫升当0.1毫升用&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　31日中午，德昌县六所镇中心卫生院长寸升兵在接受成都商报记者采访时表示，3月27日，一名女护士拿错了注射器，给每个幼儿注射了0.5毫升卡介疫苗，本来按照标准只能注射0.1毫升，“她拿错注射器，将0.5毫升的剂量当0.1毫升用了，导致过量注射。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　他表示，当事发后，这名女护士自己发现问题后，立即向卫生院报告情况。随即，卫生院将这一情况立即向县上的卫生及疾控等部门报告。之后启动应急预案，分成三个小组，于27日晚10点40分，12名接种卡介苗的幼儿均接受了异烟肼环形封闭针治疗。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　他表示，这个女护士已经工作7年，出现这样的事情，是卫生院及涉事医务人员工作失误造成的，“我们也很抱歉。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　&lt;strong&gt;卫计局回应：&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　涉事护士停职接受调查&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	&lt;strong&gt;　　12名幼儿暂无不良反应在密切观察中&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据德昌县卫生与计划生育局副局长李明三介绍，12个幼儿接种卡介苗超量是因医务人员工作失误造成的。当接到卫生院的报告后，德昌县委、政府都十分重视，第一时间成立了应急处置小组，尽全力对12名幼儿进行治疗，并对此事进行调查。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　李明三介绍，按照卡介苗过量接种处置规范，在接种后的24小时内，12名幼儿均接受了异烟肼环形封闭针等治疗。“通常情况下，卡介苗过量接种，都是采取这种办法。”28日至30日，12个娃娃均在县医院密切观察中，30日应两位家长(一个是三胞胎)要求，4名幼儿转院到攀枝花中心医院。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　据他介绍，事后，也邀请了省州有关专家进行指导。“省州疾控专家到德昌调查后也表示，处置过多起卡介苗接种过量的事件，通过规范的封闭处置，没有发生其他不良反应的案例。”他表示，只要规范处置得当，不会发生后续问题。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　家属提供的一份处置方案显示，成都市公共卫生临床医疗中心结核病防治专家在3月30日，为该县梳理了为期三个月的处理措施。除包括封闭针外，还有口服预防用药、血常规检查、每月做接种处彩超等。“这些娃娃一共要打8针封闭针。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　李明三介绍，根据初步调查，是该医院的拿错注射器，导致12名幼儿接种卡介苗超量。事发后，该名护士已经被停职接受调查，“她自己也很内疚，压力很大，情绪也不好。”另外，要求卫生院全力处置此事，完后再根据情况做进一步处理。同时，卫生部门要求全县各乡镇卫生院重视技能培训，并对其进行检查和监督。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#353535;font-family:&amp;quot;font-size:14px;&quot;&gt;\r\n	　　李明三介绍，目前这12名幼儿生命体征平稳，暂时没有出现不良反应。同时，卫生部门及医院也在密切关注这12名幼儿的情况。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', '四川凉山德昌县六所镇，12名幼儿在镇卫生院被超量5倍注射卡介疫苗。当地卫计局回应，系护士疏忽，拿错注射器导致超量。涉事护士已被停职接受调查。', '', '', '43', '1', '2017-11-26 21:32:22', '2017-11-26 21:32:22', '0', '0', '0', '');

-- ----------------------------
-- Table structure for yyg_customer
-- ----------------------------
DROP TABLE IF EXISTS `yyg_customer`;
CREATE TABLE `yyg_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `stage` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '1备孕，2孕早期，3孕中期，4孕晚期，5宝宝0-1岁，6宝宝1-3岁，7宝宝3-6岁，8宝宝6岁以上',
  `bbbirthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `age` smallint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `intro` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_email` (`email`) USING BTREE,
  UNIQUE KEY `idx_uniq_nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_customer
-- ----------------------------
INSERT INTO `yyg_customer` VALUES ('1', 'xingxing998@126.com', '13560092224', '星星妈4', '28f08a123d5b586a0d1591f9d4f051e2', '7', '2017-11-14 00:00:00', '44', '0', '娃娃', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-11-26 20:59:29', '1', '/Uploads/avatars/1/headpic.jpg', 'www');
INSERT INTO `yyg_customer` VALUES ('4', 'xingxing9728@126.com', '', '星星妈2', '28f08a123d5b586a0d1591f9d4f051e2', '2', '2017-07-01 15:17:49', '24', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-11-14 22:40:09', '1', '/Uploads/avatars/1/headpic.jpg', null);
INSERT INTO `yyg_customer` VALUES ('5', 'vagasnail@gmail.com', '', 'vagasnail', '28f08a123d5b586a0d1591f9d4f051e2', '0', '0000-00-00 00:00:00', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '', null);
INSERT INTO `yyg_customer` VALUES ('6', 'vagasnai2l@gmail.com', '', 'vagasnail2', '28f08a123d5b586a0d1591f9d4f051e2', '0', '0000-00-00 00:00:00', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-11-19 21:26:12', '1', '', null);
INSERT INTO `yyg_customer` VALUES ('7', 'vagasnail3@mgia.com', '', 'vagasnail3', '28f08a123d5b586a0d1591f9d4f051e2', '0', '0000-00-00 00:00:00', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-11-19 21:26:59', '1', '', null);
INSERT INTO `yyg_customer` VALUES ('8', 'vagasnail4@gmail.com', '', 'vagasnail4', '28f08a123d5b586a0d1591f9d4f051e2', '0', '0000-00-00 00:00:00', '0', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-11-19 21:27:53', '1', '', null);

-- ----------------------------
-- Table structure for yyg_forgotpasswd
-- ----------------------------
DROP TABLE IF EXISTS `yyg_forgotpasswd`;
CREATE TABLE `yyg_forgotpasswd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(100) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_uniq_email` (`email`) USING BTREE,
  KEY `idx_uniq_nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_forgotpasswd
-- ----------------------------
INSERT INTO `yyg_forgotpasswd` VALUES ('1', 'vagasnail@gmail.com', '', 'vagasnail', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for yyg_logintoken
-- ----------------------------
DROP TABLE IF EXISTS `yyg_logintoken`;
CREATE TABLE `yyg_logintoken` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `invalidtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_token` (`token`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_logintoken
-- ----------------------------
INSERT INTO `yyg_logintoken` VALUES ('1', 'kCdOtXgHgAjVIkWs', '1', '1511702093');
INSERT INTO `yyg_logintoken` VALUES ('2', 'aaBcwDOSkDNPCczV', '6', '1511098902');
INSERT INTO `yyg_logintoken` VALUES ('3', 'gPrOIOFleSQkNqHX', '7', '1511098955');
INSERT INTO `yyg_logintoken` VALUES ('4', 'oOvdYNKIWmaUzYUN', '8', '1511099873');

-- ----------------------------
-- Table structure for yyg_options
-- ----------------------------
DROP TABLE IF EXISTS `yyg_options`;
CREATE TABLE `yyg_options` (
  `name` varchar(32) NOT NULL,
  `value` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_options
-- ----------------------------
INSERT INTO `yyg_options` VALUES ('siteUrl', 'http://127.0.0.1/mpdeco/');
INSERT INTO `yyg_options` VALUES ('siteName', '美平方装饰');
INSERT INTO `yyg_options` VALUES ('pageSize', '20');
INSERT INTO `yyg_options` VALUES ('keywords', '开源,开源软件,开源网站,开源社区,开源中国社区,java开源,perl开源,python开源,ruby开源,php开源,开源项目,开源代码');
INSERT INTO `yyg_options` VALUES ('description', '开源中国 www.oschina.net 是目前中国最大的开源技术社区。我们传播开源的理念，推广开源项目，为 IT 开发者提供了一个发现、使用、并交流开源技术的平台。目前开源中国社区已收录超过两万款开源软件。&lt;?\\&quot;\\&quot;&gt;');
INSERT INTO `yyg_options` VALUES ('attachAllow', 'png,gif,jpeg,jpg');
INSERT INTO `yyg_options` VALUES ('seoName', '中国驰名商标 | 中国家居行业的领跑者');
INSERT INTO `yyg_options` VALUES ('copyright', 'Copyright © 360.CN All Rights Reserved.');
INSERT INTO `yyg_options` VALUES ('mail', 'daiming253685@126.com');
INSERT INTO `yyg_options` VALUES ('maxImgSize', '512000');
INSERT INTO `yyg_options` VALUES ('thumbMaxWidth', '100,200,600');
INSERT INTO `yyg_options` VALUES ('thumbMaxHeight', '100,200,600');
INSERT INTO `yyg_options` VALUES ('thumbPrefix', 'thumb_');

-- ----------------------------
-- Table structure for yyg_sensitive
-- ----------------------------
DROP TABLE IF EXISTS `yyg_sensitive`;
CREATE TABLE `yyg_sensitive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(40) NOT NULL DEFAULT '',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '添加的管理员',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_sensitive
-- ----------------------------
INSERT INTO `yyg_sensitive` VALUES ('1', '﻿阿扁推翻', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('2', '阿宾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('3', '阿賓', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('4', '挨了一炮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('5', '爱液横流', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('6', '安街逆', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('7', '安局办公楼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('8', '安局豪华', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('9', '安门事', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('10', '安眠藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('11', '案的准确', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('12', '八九民', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('13', '八九学', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('14', '八九政治', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('15', '把病人整', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('16', '把邓小平', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('17', '把学生整', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('18', '罢工门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('19', '白黄牙签', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('20', '败培训', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('21', '办本科', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('22', '办理本科', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('23', '办理各种', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('24', '办理票据', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('25', '办理文凭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('26', '办理真实', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('27', '办理证书', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('28', '办理资格', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('29', '办文凭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('30', '办怔', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('31', '办证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('32', '半刺刀', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('33', '辦毕业', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('34', '辦證', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('35', '谤罪获刑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('36', '磅解码器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('37', '磅遥控器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('38', '宝在甘肃修', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('39', '保过答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('40', '报复执法', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('41', '爆发骚', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('42', '北省委门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('43', '被打死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('44', '被指抄袭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('45', '被中共', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('46', '本公司担', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('47', '本无码', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('48', '毕业證', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('49', '变牌绝', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('50', '辩词与梦', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('51', '冰毒', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('52', '冰火毒', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('53', '冰火佳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('54', '冰火九重', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('55', '冰火漫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('56', '冰淫传', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('57', '冰在火上', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('58', '波推龙', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('59', '博彩娱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('60', '博会暂停', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('61', '博园区伪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('62', '不查都', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('63', '不查全', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('64', '不思四化', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('65', '布卖淫女', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('66', '部忙组阁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('67', '部是这样', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('68', '才知道只生', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('69', '财众科技', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('70', '采花堂', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('71', '踩踏事', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('72', '苍山兰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('73', '苍蝇水', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('74', '藏春阁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('75', '藏獨', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('76', '操了嫂', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('77', '操嫂子', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('78', '策没有不', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('79', '插屁屁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('80', '察象蚂', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('81', '拆迁灭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('82', '车牌隐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('83', '成人电', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('84', '成人卡通', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('85', '成人聊', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('86', '成人片', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('87', '成人视', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('88', '成人图', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('89', '成人文', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('90', '成人小', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('91', '城管灭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('92', '惩公安', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('93', '惩贪难', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('94', '充气娃', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('95', '冲凉死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('96', '抽着大中', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('97', '抽着芙蓉', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('98', '出成绩付', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('99', '出售发票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('100', '出售军', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('101', '穿透仪器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('102', '春水横溢', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('103', '纯度白', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('104', '纯度黄', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('105', '次通过考', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('106', '催眠水', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('107', '催情粉', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('108', '催情药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('109', '催情藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('110', '挫仑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('111', '达毕业证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('112', '答案包', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('113', '答案提供', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('114', '打飞机专', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('115', '打死经过', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('116', '打死人', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('117', '打砸办公', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('118', '大鸡巴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('119', '大雞巴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('120', '大纪元', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('121', '大揭露', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('122', '大奶子', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('123', '大批贪官', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('124', '大肉棒', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('125', '大嘴歌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('126', '代办发票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('127', '代办各', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('128', '代办文', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('129', '代办学', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('130', '代办制', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('131', '代辦', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('132', '代表烦', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('133', '代理发票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('134', '代理票据', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('135', '代您考', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('137', '代写毕', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('138', '代写论', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('139', '代孕', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('140', '贷办', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('141', '贷借款', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('142', '贷开', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('143', '戴海静', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('144', '当代七整', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('145', '当官要精', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('146', '当官在于', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('147', '党的官', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('148', '党后萎', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('149', '党前干劲', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('150', '刀架保安', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('151', '导的情人', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('152', '导叫失', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('153', '导人的最', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('154', '导人最', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('155', '导小商', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('156', '到花心', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('157', '得财兼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('158', '的同修', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('159', '灯草和', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('160', '等级證', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('161', '等屁民', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('162', '等人老百', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('163', '等人是老', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('164', '等人手术', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('165', '邓爷爷转', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('166', '邓玉娇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('167', '地产之歌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('168', '地下先烈', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('169', '地震哥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('170', '帝国之梦', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('171', '递纸死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('172', '点数优惠', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('173', '电狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('174', '电话监', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('175', '电鸡', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('176', '甸果敢', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('177', '蝶舞按', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('178', '丁香社', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('179', '丁子霖', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('180', '顶花心', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('181', '东北独立', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('182', '东复活', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('183', '东京热', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('184', '東京熱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('185', '洞小口紧', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('186', '都当警', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('187', '都当小姐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('188', '都进中央', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('189', '毒蛇钻', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('190', '独立台湾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('191', '赌球网', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('192', '短信截', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('193', '对日强硬', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('194', '多美康', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('195', '躲猫猫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('196', '俄羅斯', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('197', '恶势力操', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('198', '恶势力插', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('199', '恩氟烷', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('200', '儿园惨', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('201', '儿园砍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('202', '儿园杀', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('203', '儿园凶', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('204', '二奶大', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('205', '发牌绝', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('206', '发票出', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('207', '发票代', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('208', '发票销', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('209', '發票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('210', '法车仑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('211', '法伦功', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('212', '法轮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('213', '法轮佛', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('214', '法维权', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('215', '法一轮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('216', '法院给废', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('217', '法正乾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('218', '反测速雷', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('219', '反雷达测', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('220', '反屏蔽', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('221', '范燕琼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('222', '方迷香', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('223', '防电子眼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('224', '防身药水', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('225', '房贷给废', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('226', '仿真枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('227', '仿真证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('228', '诽谤罪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('229', '费私服', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('230', '封锁消', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('231', '佛同修', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('232', '夫妻交换', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('233', '福尔马林', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('234', '福娃的預', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('235', '福娃頭上', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('236', '福香巴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('237', '府包庇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('238', '府集中领', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('239', '妇销魂', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('240', '附送枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('241', '复印件生', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('242', '复印件制', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('243', '富民穷', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('244', '富婆给废', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('245', '改号软件', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('246', '感扑克', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('247', '冈本真', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('248', '肛交', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('249', '肛门是邻', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('250', '岡本真', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('251', '钢针狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('252', '钢珠枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('253', '港澳博球', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('254', '港馬會', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('255', '港鑫華', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('256', '高就在政', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('257', '高考黑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('258', '高莺莺', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('259', '搞媛交', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('260', '告长期', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('261', '告洋状', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('262', '格证考试', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('263', '各类考试', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('264', '各类文凭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('265', '跟踪器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('266', '工程吞得', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('267', '工力人', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('268', '公安错打', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('269', '公安网监', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('270', '公开小姐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('271', '攻官小姐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('272', '共狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('273', '共王储', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('274', '狗粮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('275', '狗屁专家', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('276', '鼓动一些', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('277', '乖乖粉', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('278', '官商勾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('279', '官也不容', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('280', '官因发帖', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('281', '光学真题', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('282', '跪真相', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('283', '滚圆大乳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('284', '国际投注', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('285', '国家妓', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('286', '国家软弱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('287', '国家吞得', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('288', '国库折', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('289', '国一九五七', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('290', '國內美', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('291', '哈药直销', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('292', '海访民', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('293', '豪圈钱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('294', '号屏蔽器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('295', '和狗交', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('296', '和狗性', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('297', '和狗做', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('298', '黑火药的', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('299', '红色恐怖', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('300', '红外透视', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('301', '紅色恐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('302', '胡江内斗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('303', '胡紧套', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('304', '胡錦濤', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('305', '胡适眼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('306', '胡耀邦', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('307', '湖淫娘', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('308', '虎头猎', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('309', '华国锋', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('310', '华门开', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('311', '化学扫盲', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('312', '划老公', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('313', '还会吹萧', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('314', '还看锦涛', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('315', '环球证件', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('316', '换妻', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('317', '皇冠投注', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('318', '黄冰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('319', '浑圆豪乳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('320', '活不起', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('321', '火车也疯', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('322', '机定位器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('323', '机号定', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('324', '机号卫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('325', '机卡密', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('326', '机屏蔽器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('327', '基本靠吼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('328', '绩过后付', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('329', '激情电', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('330', '激情短', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('331', '激情妹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('332', '激情炮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('333', '级办理', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('334', '级答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('335', '急需嫖', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('336', '集体打砸', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('337', '集体腐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('338', '挤乳汁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('339', '擠乳汁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('340', '佳静安定', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('341', '家一样饱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('342', '家属被打', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('343', '甲虫跳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('344', '甲流了', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('345', '奸成瘾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('346', '兼职上门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('347', '监听器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('348', '监听王', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('349', '简易炸', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('350', '江胡内斗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('351', '江太上', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('352', '江系人', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('353', '江贼民', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('354', '疆獨', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('355', '蒋彦永', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('356', '叫自慰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('357', '揭贪难', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('358', '姐包夜', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('359', '姐服务', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('360', '姐兼职', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('361', '姐上门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('362', '金扎金', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('363', '金钟气', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('364', '津大地震', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('365', '津地震', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('366', '进来的罪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('367', '京地震', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('368', '京要地震', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('369', '经典谎言', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('370', '精子射在', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('371', '警察被', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('372', '警察的幌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('373', '警察殴打', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('374', '警察说保', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('375', '警车雷达', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('376', '警方包庇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('377', '警用品', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('378', '径步枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('379', '敬请忍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('380', '究生答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('381', '九龙论坛', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('382', '九评共', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('383', '酒象喝汤', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('384', '酒像喝汤', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('385', '就爱插', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('386', '就要色', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('387', '举国体', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('388', '巨乳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('389', '据说全民', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('390', '绝食声', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('391', '军长发威', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('392', '军刺', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('393', '军品特', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('394', '军用手', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('395', '开邓选', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('396', '开锁工具', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('397', '開碼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('398', '開票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('399', '砍杀幼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('400', '砍伤儿', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('401', '康没有不', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('402', '康跳楼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('403', '考答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('404', '考后付款', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('405', '考机构', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('406', '考考邓', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('407', '考联盟', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('408', '考前答', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('409', '考前答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('410', '考前付', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('411', '考设备', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('412', '考试包过', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('413', '考试保', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('414', '考试答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('415', '考试机构', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('416', '考试联盟', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('417', '考试枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('418', '考研考中', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('419', '考中答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('420', '磕彰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('421', '克分析', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('422', '克千术', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('423', '克透视', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('424', '空和雅典', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('425', '孔摄像', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('426', '控诉世博', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('427', '控制媒', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('428', '口手枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('429', '骷髅死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('430', '快速办', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('431', '矿难不公', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('432', '拉登说', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('433', '拉开水晶', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('434', '来福猎', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('435', '拦截器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('436', '狼全部跪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('437', '浪穴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('438', '老虎机', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('439', '雷人女官', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('440', '类准确答', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('441', '黎阳平', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('442', '李洪志', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('443', '李咏曰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('444', '理各种证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('445', '理是影帝', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('446', '理证件', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('447', '理做帐报', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('448', '力骗中央', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('449', '力月西', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('450', '丽媛离', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('451', '利他林', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('452', '连发手', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('453', '聯繫電', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('454', '炼大法', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('455', '两岸才子', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('456', '两会代', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('457', '两会又三', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('458', '聊视频', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('459', '聊斋艳', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('460', '了件渔袍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('461', '猎好帮手', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('462', '猎枪销', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('463', '猎槍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('464', '獵槍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('465', '领土拿', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('466', '流血事', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('467', '六合彩', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('468', '六死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('469', '六四事', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('470', '六月联盟', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('471', '龙湾事件', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('472', '隆手指', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('473', '陆封锁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('474', '陆同修', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('475', '氯胺酮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('476', '乱奸', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('477', '乱伦类', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('478', '乱伦小', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('479', '亂倫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('480', '伦理大', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('481', '伦理电影', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('482', '伦理毛', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('483', '伦理片', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('484', '轮功', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('485', '轮手枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('486', '论文代', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('487', '罗斯小姐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('488', '裸聊网', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('489', '裸舞视', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('490', '落霞缀', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('491', '麻古', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('492', '麻果配', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('493', '麻果丸', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('494', '麻将透', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('495', '麻醉狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('496', '麻醉枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('497', '麻醉槍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('498', '麻醉藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('499', '蟆叫专家', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('500', '卖地财政', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('501', '卖发票', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('502', '卖银行卡', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('503', '卖自考', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('504', '漫步丝', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('505', '忙爱国', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('506', '猫眼工具', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('507', '毛一鲜', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('508', '媒体封锁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('509', '每周一死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('510', '美艳少妇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('511', '妹按摩', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('512', '妹上门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('513', '门按摩', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('514', '门保健', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('515', '門服務', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('516', '氓培训', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('517', '蒙汗药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('518', '迷幻型', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('519', '迷幻药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('520', '迷幻藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('521', '迷昏口', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('522', '迷昏药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('523', '迷昏藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('524', '迷魂香', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('525', '迷魂药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('526', '迷魂藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('527', '迷奸药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('528', '迷情水', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('529', '迷情药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('530', '迷藥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('531', '谜奸药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('532', '蜜穴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('533', '灭绝罪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('534', '民储害', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('535', '民九亿商', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('536', '民抗议', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('537', '明慧网', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('538', '铭记印尼', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('539', '摩小姐', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('540', '母乳家', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('541', '木齐针', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('542', '幕没有不', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('543', '幕前戲', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('544', '内射', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('545', '南充针', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('546', '嫩穴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('547', '嫩阴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('548', '泥马之歌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('549', '你的西域', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('550', '拟涛哥', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('551', '娘两腿之间', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('552', '妞上门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('553', '浓精', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('554', '怒的志愿', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('555', '女被人家搞', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('556', '女激情', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('557', '女技师', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('558', '女人和狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('559', '女任职名', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('560', '女上门', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('561', '女優', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('562', '鸥之歌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('563', '拍肩神药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('564', '拍肩型', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('565', '牌分析', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('566', '牌技网', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('567', '炮的小蜜', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('568', '陪考枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('569', '配有消', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('570', '喷尿', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('571', '嫖俄罗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('572', '嫖鸡', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('573', '平惨案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('574', '平叫到床', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('575', '仆不怕饮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('576', '普通嘌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('577', '期货配', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('578', '奇迹的黄', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('579', '奇淫散', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('580', '骑单车出', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('581', '气狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('582', '气枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('583', '汽狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('584', '汽枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('585', '氣槍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('586', '铅弹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('587', '钱三字经', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('588', '枪出售', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('589', '枪的参', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('590', '枪的分', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('591', '枪的结', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('592', '枪的制', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('593', '枪货到', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('594', '枪决女犯', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('595', '枪决现场', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('596', '枪模', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('597', '枪手队', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('598', '枪手网', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('599', '枪销售', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('600', '枪械制', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('601', '枪子弹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('602', '强权政府', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('603', '强硬发言', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('604', '抢其火炬', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('605', '切听器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('606', '窃听器', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('607', '禽流感了', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('608', '勤捞致', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('609', '氢弹手', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('610', '清除负面', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('611', '清純壆', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('612', '情聊天室', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('613', '情妹妹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('614', '情视频', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('615', '情自拍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('616', '氰化钾', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('617', '氰化钠', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('618', '请集会', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('619', '请示威', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('620', '请愿', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('621', '琼花问', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('622', '区的雷人', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('623', '娶韩国', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('624', '全真证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('625', '群奸暴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('626', '群起抗暴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('627', '群体性事', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('628', '绕过封锁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('629', '惹的国', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('630', '人权律', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('631', '人体艺', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('632', '人游行', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('633', '人在云上', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('634', '人真钱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('635', '认牌绝', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('636', '任于斯国', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('637', '柔胸粉', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('638', '肉洞', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('639', '肉棍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('640', '如厕死', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('641', '乳交', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('642', '软弱的国', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('643', '赛后骚', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('644', '三挫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('645', '三级片', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('646', '三秒倒', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('647', '三网友', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('648', '三唑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('649', '骚妇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('650', '骚浪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('651', '骚穴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('652', '骚嘴', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('653', '扫了爷爷', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('654', '色电影', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('655', '色妹妹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('656', '色视频', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('657', '色小说', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('658', '杀指南', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('659', '山涉黑', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('660', '煽动不明', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('661', '煽动群众', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('662', '上门激', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('663', '烧公安局', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('664', '烧瓶的', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('665', '韶关斗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('666', '韶关玩', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('667', '韶关旭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('668', '射网枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('669', '涉嫌抄袭', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('670', '深喉冰', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('671', '神七假', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('672', '神韵艺术', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('673', '生被砍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('674', '生踩踏', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('675', '生肖中特', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('676', '圣战不息', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('677', '盛行在舞', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('678', '尸博', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('679', '失身水', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('680', '失意药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('681', '狮子旗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('682', '十八等', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('683', '十大谎', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('684', '十大禁', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('685', '十个预言', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('686', '十类人不', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('687', '十七大幕', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('688', '实毕业证', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('689', '实体娃', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('690', '实学历文', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('691', '士康事件', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('692', '式粉推', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('693', '视解密', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('694', '是躲猫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('695', '手变牌', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('696', '手答案', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('697', '手狗', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('698', '手机跟', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('699', '手机监', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('700', '手机窃', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('701', '手机追', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('702', '手拉鸡', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('703', '手木仓', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('704', '手槍', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('705', '守所死法', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('706', '兽交', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('707', '售步枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('708', '售纯度', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('709', '售单管', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('710', '售弹簧刀', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('711', '售防身', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('712', '售狗子', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('713', '售虎头', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('714', '售火药', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('715', '售假币', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('716', '售健卫', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('717', '售军用', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('718', '售猎枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('719', '售氯胺', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('720', '售麻醉', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('721', '售冒名', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('722', '售枪支', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('723', '售热武', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('724', '售三棱', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('725', '售手枪', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('726', '售五四', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('727', '售信用', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('728', '售一元硬', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('729', '售子弹', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('730', '售左轮', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('731', '书办理', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('732', '熟妇', '0', '2017-09-24 14:21:13', '2017-09-24 14:21:13');
INSERT INTO `yyg_sensitive` VALUES ('733', '术牌具', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('734', '双管立', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('735', '双管平', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('736', '水阎王', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('737', '丝护士', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('738', '丝情侣', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('739', '丝袜保', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('740', '丝袜恋', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('741', '丝袜美', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('742', '丝袜妹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('743', '丝袜网', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('744', '丝足按', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('745', '司长期有', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('746', '司法黑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('747', '私房写真', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('748', '死法分布', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('749', '死要见毛', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('750', '四博会', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('751', '四大扯个', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('752', '四小码', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('753', '苏家屯集', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('754', '诉讼集团', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('755', '素女心', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('756', '速代办', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('757', '速取证', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('758', '酸羟亚胺', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('759', '蹋纳税', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('760', '太王四神', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('761', '泰兴幼', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('762', '泰兴镇中', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('763', '泰州幼', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('764', '贪官也辛', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('765', '探测狗', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('766', '涛共产', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('767', '涛一样胡', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('768', '特工资', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('769', '特码', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('770', '特上门', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('771', '体透视镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('772', '替考', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('773', '替人体', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('774', '天朝特', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('775', '天鹅之旅', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('776', '天推广歌', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('777', '田罢工', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('778', '田田桑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('779', '田停工', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('780', '庭保养', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('781', '庭审直播', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('782', '通钢总经', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('783', '偷電器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('784', '偷肃贪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('785', '偷听器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('786', '偷偷贪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('787', '头双管', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('788', '透视功能', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('789', '透视镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('790', '透视扑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('791', '透视器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('792', '透视眼镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('793', '透视药', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('794', '透视仪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('795', '秃鹰汽', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('796', '突破封锁', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('797', '突破网路', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('798', '推油按', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('799', '脱衣艳', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('800', '瓦斯手', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('801', '袜按摩', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('802', '外透视镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('803', '外围赌球', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('804', '湾版假', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('805', '万能钥匙', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('806', '万人骚动', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('807', '王立军', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('808', '王益案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('809', '网民案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('810', '网民获刑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('811', '网民诬', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('812', '微型摄像', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('813', '围攻警', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('814', '围攻上海', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('815', '维汉员', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('816', '维权基', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('817', '维权人', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('818', '维权谈', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('819', '委坐船', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('820', '谓的和谐', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('821', '温家堡', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('822', '温切斯特', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('823', '温影帝', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('824', '溫家寶', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('825', '瘟加饱', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('826', '瘟假饱', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('827', '文凭证', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('828', '文强', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('829', '纹了毛', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('830', '闻被控制', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('831', '闻封锁', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('832', '瓮安', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('833', '我的西域', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('834', '我搞台独', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('835', '乌蝇水', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('836', '无耻语录', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('837', '无码专', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('838', '五套功', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('839', '五月天', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('840', '午夜电', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('841', '午夜极', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('842', '武警暴', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('843', '武警殴', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('844', '武警已增', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('845', '务员答案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('846', '务员考试', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('847', '雾型迷', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('848', '西藏限', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('849', '西服进去', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('850', '希脏', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('851', '习进平', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('852', '习晋平', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('853', '席复活', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('854', '席临终前', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('855', '席指着护', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('856', '洗澡死', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('857', '喜贪赃', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('858', '先烈纷纷', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('859', '现大地震', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('860', '现金投注', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('861', '线透视镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('862', '限制言', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('863', '陷害案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('864', '陷害罪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('865', '相自首', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('866', '香港论坛', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('867', '香港马会', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('868', '香港一类', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('869', '香港总彩', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('870', '硝化甘', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('871', '小穴', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('872', '校骚乱', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('873', '协晃悠', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('874', '写两会', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('875', '泄漏的内', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('876', '新建户', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('877', '新疆叛', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('878', '新疆限', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('879', '新金瓶', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('880', '新唐人', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('881', '信访专班', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('882', '信接收器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('883', '兴中心幼', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('884', '星上门', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('885', '行长王益', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('886', '形透视镜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('887', '型手枪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('888', '姓忽悠', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('889', '幸运码', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('890', '性爱日', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('891', '性福情', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('892', '性感少', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('893', '性推广歌', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('894', '胸主席', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('895', '徐玉元', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('896', '学骚乱', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('897', '学位證', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('898', '學生妹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('899', '丫与王益', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('900', '烟感器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('901', '严晓玲', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('902', '言被劳教', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('903', '言论罪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('904', '盐酸曲', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('905', '颜射', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('906', '恙虫病', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('907', '姚明进去', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('908', '要人权', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('909', '要射精了', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('910', '要射了', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('911', '要泄了', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('912', '夜激情', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('913', '液体炸', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('914', '一小撮别', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('915', '遗情书', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('916', '蚁力神', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('917', '益关注组', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('918', '益受贿', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('919', '阴间来电', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('920', '陰唇', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('921', '陰道', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('922', '陰戶', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('923', '淫魔舞', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('924', '淫情女', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('925', '淫肉', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('926', '淫騷妹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('927', '淫兽', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('928', '淫兽学', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('929', '淫水', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('930', '淫穴', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('931', '隐形耳', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('932', '隐形喷剂', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('933', '应子弹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('934', '婴儿命', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('935', '咏妓', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('936', '用手枪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('937', '幽谷三', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('938', '游精佑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('939', '有奶不一', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('940', '右转是政', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('941', '幼齿类', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('942', '娱乐透视', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('943', '愚民同', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('944', '愚民政', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('945', '与狗性', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('946', '玉蒲团', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('947', '育部女官', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('948', '冤民大', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('949', '鸳鸯洗', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('950', '园惨案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('951', '园发生砍', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('952', '园砍杀', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('953', '园凶杀', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('954', '园血案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('955', '原一九五七', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('956', '原装弹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('957', '袁腾飞', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('958', '晕倒型', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('959', '韵徐娘', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('960', '遭便衣', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('961', '遭到警', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('962', '遭警察', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('963', '遭武警', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('964', '择油录', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('965', '曾道人', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('966', '炸弹教', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('967', '炸弹遥控', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('968', '炸广州', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('969', '炸立交', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('970', '炸药的制', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('971', '炸药配', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('972', '炸药制', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('973', '张春桥', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('974', '找枪手', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('975', '找援交', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('976', '找政法委副', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('977', '赵紫阳', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('978', '针刺案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('979', '针刺伤', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('980', '针刺事', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('981', '针刺死', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('982', '侦探设备', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('983', '真钱斗地', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('984', '真钱投注', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('985', '真善忍', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('986', '真实文凭', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('987', '真实资格', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('988', '震惊一个民', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('989', '震其国土', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('990', '证到付款', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('991', '证件办', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('992', '证件集团', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('993', '证生成器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('994', '证书办', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('995', '证一次性', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('996', '政府操', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('997', '政论区', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('998', '證件', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('999', '植物冰', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1000', '殖器护', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1001', '指纹考勤', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1002', '指纹膜', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1003', '指纹套', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1004', '至国家高', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1005', '志不愿跟', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1006', '制服诱', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1007', '制手枪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1008', '制证定金', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1009', '制作证件', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1010', '中的班禅', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1011', '中共黑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1012', '中国不强', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1013', '种公务员', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1014', '种学历证', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1015', '众像羔', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1016', '州惨案', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1017', '州大批贪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1018', '州三箭', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1019', '宙最高法', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1020', '昼将近', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1021', '主席忏', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1022', '住英国房', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1023', '助考', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1024', '助考网', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1025', '专业办理', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1026', '专业代', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1027', '专业代写', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1028', '专业助', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1029', '转是政府', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1030', '赚钱资料', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1031', '装弹甲', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1032', '装枪套', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1033', '装消音', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1034', '着护士的胸', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1035', '着涛哥', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1036', '姿不对死', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1037', '资格證', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1038', '资料泄', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1039', '梓健特药', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1040', '字牌汽', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1041', '自己找枪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1042', '自慰用', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1043', '自由圣', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1044', '自由亚', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1045', '总会美女', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1046', '足球玩法', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1047', '最牛公安', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1048', '醉钢枪', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1049', '醉迷药', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1050', '醉乙醚', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1051', '尊爵粉', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1052', '左转是政', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1053', '作弊器', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1054', '作各种证', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1055', '作硝化甘', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1056', '唑仑', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1057', '做爱小', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1058', '做原子弹', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1059', '做证件', '0', '2017-09-24 14:21:14', '2017-09-24 14:21:14');
INSERT INTO `yyg_sensitive` VALUES ('1060', '﻿做爱', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1061', '爱爱', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1062', '性行为', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1063', '性交', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1064', '打炮', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1065', '约炮', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1066', '性虐', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1067', 'SM', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1068', 'sm', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1069', 'Sm', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1070', 'sM', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1071', '肛交', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1072', '口交', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1073', '群交', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1074', '群P', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1075', '群p', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1076', '3P', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1077', '3p', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1078', '三P', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1079', '三p', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1080', '强奸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1081', '猥亵', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1082', '轮奸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1083', '诱奸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1084', '迷奸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1085', '强暴', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1086', '鸡巴', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1087', '阴茎', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1088', '睾丸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1089', '生殖器', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1090', '大保健', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1091', '一夜情', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1092', '换妻', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1093', '卖淫', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1094', '嫖娼', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1095', '打飞机', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1096', '兽交', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1097', '鸡奸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1098', '毒品', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1099', '冰毒', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1100', '摇头丸', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1101', '海洛因', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1102', '大麻', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1103', 'K粉', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1104', 'k粉', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1105', '枪', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1106', '中共', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1107', '共产党', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1108', '习近平', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1109', '李克强', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1110', '张德江', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1111', '俞正声', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1112', '刘云山', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1113', '王岐山', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1114', '张高丽', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1115', '江泽民', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1116', '朱镕基', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1117', '邓小平', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1118', '李鹏', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1119', '胡景涛', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1120', '温家宝', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1121', '文革', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1122', '64', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1123', '六四', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1124', '学生运动', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1125', '暴动', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1126', '暴乱', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1127', '法轮功', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1128', '李洪志', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1129', '台独', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1130', '港独', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1131', '土共', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1132', '共匪', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1133', '赤匪', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1134', '文化大革命', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1135', '陈天桥', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1136', '陈大年', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1137', 'wifi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1138', 'Wifi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1139', 'WIfi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1140', 'WIFi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1141', 'WIFI', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1142', 'wIfi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1143', 'wIFi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1144', 'wIFI', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1145', 'wiFi', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1146', 'wiFI', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');
INSERT INTO `yyg_sensitive` VALUES ('1147', 'wifI', '0', '2017-09-24 14:25:39', '2017-09-24 14:25:39');

-- ----------------------------
-- Table structure for yyg_signup
-- ----------------------------
DROP TABLE IF EXISTS `yyg_signup`;
CREATE TABLE `yyg_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_signup
-- ----------------------------
INSERT INTO `yyg_signup` VALUES ('17', '戴敏', '13560093349', '13560093349', '2013-08-04 22:30:38', '1');
INSERT INTO `yyg_signup` VALUES ('18', '曾小猪', '13232333', '', '2013-08-04 23:18:17', '1');

-- ----------------------------
-- Table structure for yyg_stage_rel
-- ----------------------------
DROP TABLE IF EXISTS `yyg_stage_rel`;
CREATE TABLE `yyg_stage_rel` (
  `cid` int(10) unsigned NOT NULL,
  `stage` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_stage_rel
-- ----------------------------
INSERT INTO `yyg_stage_rel` VALUES ('155', '备孕');
INSERT INTO `yyg_stage_rel` VALUES ('161', '备孕');
INSERT INTO `yyg_stage_rel` VALUES ('162', '0-1岁');
INSERT INTO `yyg_stage_rel` VALUES ('163', '孕期');
INSERT INTO `yyg_stage_rel` VALUES ('164', '0-1岁');
INSERT INTO `yyg_stage_rel` VALUES ('170', '0-1岁');
INSERT INTO `yyg_stage_rel` VALUES ('187', '0-1岁');
INSERT INTO `yyg_stage_rel` VALUES ('188', '孕期');
INSERT INTO `yyg_stage_rel` VALUES ('189', '备孕');
INSERT INTO `yyg_stage_rel` VALUES ('190', '0-1岁');

-- ----------------------------
-- Table structure for yyg_tags
-- ----------------------------
DROP TABLE IF EXISTS `yyg_tags`;
CREATE TABLE `yyg_tags` (
  `cid` int(10) unsigned NOT NULL,
  `tag` varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_tags
-- ----------------------------
INSERT INTO `yyg_tags` VALUES ('169', '');
INSERT INTO `yyg_tags` VALUES ('170', '22');
INSERT INTO `yyg_tags` VALUES ('171', '');
INSERT INTO `yyg_tags` VALUES ('172', '');
INSERT INTO `yyg_tags` VALUES ('173', '');
INSERT INTO `yyg_tags` VALUES ('185', '');
INSERT INTO `yyg_tags` VALUES ('186', '');
INSERT INTO `yyg_tags` VALUES ('187', '');
INSERT INTO `yyg_tags` VALUES ('188', '');
INSERT INTO `yyg_tags` VALUES ('189', '');
INSERT INTO `yyg_tags` VALUES ('190', '');
INSERT INTO `yyg_tags` VALUES ('191', '');

-- ----------------------------
-- Table structure for yyg_url_handled
-- ----------------------------
DROP TABLE IF EXISTS `yyg_url_handled`;
CREATE TABLE `yyg_url_handled` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` char(32) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_url_handled
-- ----------------------------
INSERT INTO `yyg_url_handled` VALUES ('138', '70ae88450231fed0fcae3bdb9265c5f0', '/webser/www/yygcms/Uploads/emotion/Xy5Tf38XKHD.gif');
INSERT INTO `yyg_url_handled` VALUES ('139', '26fecf347dca9d282d71288a1a16f9a5', '/webser/www/yygcms/Uploads/topic/Xy5Tf37r1Ax7.png');
INSERT INTO `yyg_url_handled` VALUES ('140', '83defcbf4474f1d232a177e46fc5aa93', '/webser/www/yygcms/Uploads/topic/Xy5Tf34Q3S1A.jpg');
INSERT INTO `yyg_url_handled` VALUES ('141', 'd88bcb42d68157ca91fda68b856d61fb', '/webser/www/yygcms/Uploads/topic/Xy5Tf3yI4BT1.png');
INSERT INTO `yyg_url_handled` VALUES ('142', '5a5206c075794377865af74129e5cee9', '/webser/www/yygcms/Uploads/topic/Xy5Tf3Nq6JKE.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('143', '9fe15996ef0abf0d0e68b37f1178e0f5', '/webser/www/yygcms/Uploads/topic/Xy5Tf3HO8bjA.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('144', 'ec86ef1278a620c1b6362a72b2f5eeef', '/webser/www/yygcms/Uploads/topic/Xy5Tf3YDAw5.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('145', '6ed5edb2ab4d6ba897996b10c47ddfcc', '/webser/www/yygcms/Uploads/topic/Xy5Tf3QQBnS4.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('146', '3282ae4a4431c085ad94cf7c0957ef79', '/webser/www/yygcms/Uploads/topic/Xy5Tf3jYDxT.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('147', '3144d193b71e635e63e32fa803923a3c', '/webser/www/yygcms/Uploads/topic/Xy5Uf3ua1t.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('148', '7e93eb7752722f63470bd9e91e069707', '/webser/www/yygcms/Uploads/topic/Xy5Uf3b93RwC.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('149', 'f8401ebc90681f0b5dfb8b9f46ddf5cb', '/webser/www/yygcms/Uploads/topic/Xy5Uf3484rNG.png');
INSERT INTO `yyg_url_handled` VALUES ('150', 'c1366fe47c4e96b1dafcb4ea9015f02b', '/webser/www/yygcms/Uploads/topic/Xy5Uf3N75Yg6.jpg');
INSERT INTO `yyg_url_handled` VALUES ('151', '5675dc38ae6f4d30c70cc1b1cde5216c', '/webser/www/yygcms/Uploads/topic/Xy5Uf39b7NX3.png');
INSERT INTO `yyg_url_handled` VALUES ('152', 'dea6cb4a3b56367034de9113d00e525c', '/webser/www/yygcms/Uploads/topic/Xy5Uf3Gn8Z6.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('153', '13a1e93ec66690f0e2a795afa965626b', '/webser/www/yygcms/Uploads/topic/Xy5Uf3wi9lG2.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('154', '82a672f1f251f6ac9fa6450723ea445b', '/webser/www/yygcms/Uploads/topic/Xy5Uf3FgA4CB.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('155', 'de3ea0d6bd7c8f4fb4c181fe1cb16170', '/webser/www/yygcms/Uploads/topic/Xy5Uf3odBqU.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('156', 'b58fd0bbb38745aabd996286a982dd67', '');
INSERT INTO `yyg_url_handled` VALUES ('158', '44330593aecb5542f87a20e3087a4dd2', '/data2/www/yygcms/Core//..//Uploads/topic/Yy5ij8pd7Qj5.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('159', '3d2cd1cce9d335b197b70f7a831f37a4', '/data2/www/yygcms/Core//..//Uploads/topic/Yy5tj8QP6jY4.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('160', '0f23c8389a9e979ef230d5987e447c79', 'http://news.ci123.com/article/111519.html');
INSERT INTO `yyg_url_handled` VALUES ('161', '386f59a78ff91df4bfc4faf232113697', '/data2/www/yygcms/Core//..//Uploads/topic/Yy55n8MrARg4.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('162', '7be23acddd6c68e4f542e9cc13d88e14', '/data2/www/yygcms/Core//..//Uploads/emotion/Zy5UPBHb4Gt4.gif');
INSERT INTO `yyg_url_handled` VALUES ('163', 'dd580a3d0822e5ed491febf488de53b2', '/data2/www/yygcms/Core//..//Uploads/emotion/Zy5TRBjJ3eGF.gif');
INSERT INTO `yyg_url_handled` VALUES ('164', '43be705abb1b2584fa9770697cd226fd', '/data2/www/yygcms/Core//..//Uploads/emotion/Zy5qRBhvEUBG.gif');
INSERT INTO `yyg_url_handled` VALUES ('165', 'b7bce10700f3d48946d0cee8ef35935b', '/data2/www/yygcms/Core//..//Uploads/emotion/Zy5DSBaq2RPG.gif');
INSERT INTO `yyg_url_handled` VALUES ('166', '398e76aa76bf869a6008421698fafbea', '/data2/www/yygcms/Core//..//Uploads/emotion/Zy5PSBaO47HF.gif');
INSERT INTO `yyg_url_handled` VALUES ('167', 'b62e18e12fa8668268d89ed3ee59eb8c', 'http://news.ci123.com/article/111561.html');
INSERT INTO `yyg_url_handled` VALUES ('168', '5a7cdb3b64132fc528f65eacfa2f730a', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5TSBHU3zx.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('169', '0daf15c9ba1b715eb5371606050864f1', 'http://news.ci123.com/article/111692.html');
INSERT INTO `yyg_url_handled` VALUES ('170', 'a450ed5c5e6cd2c97de3e67c9b125fe5', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBNi70M3.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('171', '7156d7b98027241ca8a648896e02ef40', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBsSB52.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('172', '284ee6ed8de00621d8075e68b43dc2f9', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBrwEvXF.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('173', 'b1c83a863ae7721950e9f551b2830c7d', 'http://news.ci123.com/article/107474.html');
INSERT INTO `yyg_url_handled` VALUES ('174', '747191f6b57014e7e76f550a68cc1726', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5WSB2P5DOD.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('175', 'bef2f6299e2604c8983285d55ae15f98', 'http://news.ci123.com/article/111698.html');
INSERT INTO `yyg_url_handled` VALUES ('176', 'f47e4a875708a1416c9a0b72f838451c', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBic2me9.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('177', '9f8f26ed6656d8ce05c8b6f956a102af', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSB6z5OUE.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('178', 'c44e1ba45e54d4c46be127d10c36d6c0', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBcV8D8B.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('179', '8c815043de5ae077b7af562d4e033f62', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBKMBRG3.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('180', 'c3c3cb91bd1b729262cdf1259d0eaf1b', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBY0EfL1.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('181', 'd467497eb53e154c8ca5ea8060c762da', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5ZSBFG1Q4G.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('182', '48577d9f5eebfbb3ae22e74407ba4330', 'http://news.ci123.com/article/111715.html');
INSERT INTO `yyg_url_handled` VALUES ('183', '42046c36774664417b6c92ec021c0eea', 'http://news.ci123.com/article/20957.html');
INSERT INTO `yyg_url_handled` VALUES ('184', '385a1e876be24ee782db024d93e035d7', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5eSBdSC6GF.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('185', '4075393570a79ec8e566c4616bc26a76', 'http://news.ci123.com/article/111694.html');
INSERT INTO `yyg_url_handled` VALUES ('186', '51699411b61fe2954aa358cde22ed387', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5iSBqJBHU5.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('187', 'fecb655e90b3b68baa32a650fde59d8e', 'http://news.ci123.com/article/111704.html');
INSERT INTO `yyg_url_handled` VALUES ('188', '7c940c21c0953ff74d82028bcdd786a0', '/data2/www/yygcms/Core//..//Uploads/topic/Zy5lSBLO25t7.jpeg');
INSERT INTO `yyg_url_handled` VALUES ('189', '74b823cbfeaeae71d03778cd1d28e029', 'http://news.ci123.com/article/111701.html');
