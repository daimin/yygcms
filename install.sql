/*
Navicat MySQL Data Transfer

Source Server         : my-centos
Source Server Version : 50712
Source Host           : 192.168.33.10:3306
Source Database       : yygcms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-09-21 23:00:00
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
INSERT INTO `yyg_admins` VALUES ('admin', 'a44f75e56684fcbb89d46ef2be701265', '2013-07-16 15:43:05', '2017-09-17 21:04:32', '1', '1');
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
) ENGINE=MyISAM AUTO_INCREMENT=851 DEFAULT CHARSET=utf8;

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
INSERT INTO `yyg_attac` VALUES ('795', '20170903/59abf2f91b28e.jpg', '/Upload/20170903/59abf2f91b28e.jpg', '2017-09-03 20:18:01', null);
INSERT INTO `yyg_attac` VALUES ('796', '20170903/59abf341e667d.jpg', '/Upload/20170903/59abf341e667d.jpg', '2017-09-03 20:19:14', null);
INSERT INTO `yyg_attac` VALUES ('797', '20170903/59abf3779e356.jpg', '/Upload/20170903/59abf3779e356.jpg', '2017-09-03 20:20:07', null);
INSERT INTO `yyg_attac` VALUES ('798', '20170903/59abf392e5dfa.jpg', '/Upload/20170903/59abf392e5dfa.jpg', '2017-09-03 20:20:34', null);
INSERT INTO `yyg_attac` VALUES ('799', '20170903/59abf3dc357dd.jpg', '/Upload/20170903/59abf3dc357dd.jpg', '2017-09-03 20:21:48', null);
INSERT INTO `yyg_attac` VALUES ('800', '20170903/59abf43c73ab4.jpg', '/Upload/20170903/59abf43c73ab4.jpg', '2017-09-03 20:23:24', null);
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
INSERT INTO `yyg_attac` VALUES ('825', '59b162752f858.jpg', '/Uploads/20170907/59b162752f858.jpg', '2017-09-07 23:15:01', null);
INSERT INTO `yyg_attac` VALUES ('826', '59b16278e84b4.jpg', '/Uploads/20170907/59b16278e84b4.jpg', '2017-09-07 23:15:04', null);
INSERT INTO `yyg_attac` VALUES ('827', '59be734f96910.jpg', '/Uploads/20170917/59be734f96910.jpg', '2017-09-17 21:06:23', null);
INSERT INTO `yyg_attac` VALUES ('828', '59be7376c3b9a.jpg', '/Uploads/20170917/59be7376c3b9a.jpg', '2017-09-17 21:07:02', null);
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
INSERT INTO `yyg_attac` VALUES ('794', '20170903/59abf2dd4e18d.jpg', '/Upload/20170903/59abf2dd4e18d.jpg', '2017-09-03 20:17:33', null);
INSERT INTO `yyg_attac` VALUES ('787', '20170902/59aa7203754e0.png', '/Upload/20170902/59aa7203754e0.png', '2017-09-02 16:55:31', null);
INSERT INTO `yyg_attac` VALUES ('792', '20170903/59abf26adca6f.jpg', '/Upload/20170903/59abf26adca6f.jpg', '2017-09-03 20:15:38', null);
INSERT INTO `yyg_attac` VALUES ('793', '20170903/59abf28185482.jpg', '/Upload/20170903/59abf28185482.jpg', '2017-09-03 20:16:01', null);
INSERT INTO `yyg_attac` VALUES ('790', '20170903/59ab84833ac91.jpg', '/Upload/20170903/59ab84833ac91.jpg', '2017-09-03 12:26:43', null);
INSERT INTO `yyg_attac` VALUES ('791', '20170903/59abf16cef3d9.jpg', '/Upload/20170903/59abf16cef3d9.jpg', '2017-09-03 20:11:25', null);

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
INSERT INTO `yyg_attac_rel` VALUES ('790', '155');
INSERT INTO `yyg_attac_rel` VALUES ('791', '163');
INSERT INTO `yyg_attac_rel` VALUES ('792', '165');
INSERT INTO `yyg_attac_rel` VALUES ('793', '165');
INSERT INTO `yyg_attac_rel` VALUES ('794', '166');
INSERT INTO `yyg_attac_rel` VALUES ('795', '166');
INSERT INTO `yyg_attac_rel` VALUES ('796', '167');
INSERT INTO `yyg_attac_rel` VALUES ('797', '167');
INSERT INTO `yyg_attac_rel` VALUES ('798', '167');
INSERT INTO `yyg_attac_rel` VALUES ('799', '168');
INSERT INTO `yyg_attac_rel` VALUES ('800', '169');
INSERT INTO `yyg_attac_rel` VALUES ('825', '170');
INSERT INTO `yyg_attac_rel` VALUES ('826', '170');
INSERT INTO `yyg_attac_rel` VALUES ('827', '172');
INSERT INTO `yyg_attac_rel` VALUES ('828', '173');

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
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_comment
-- ----------------------------

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
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `viewnum` int(11) unsigned DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `topnum` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_content
-- ----------------------------
INSERT INTO `yyg_content` VALUES ('155', '女性备孕 远离子宫10“怕”', '<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong><img src=\"http://test.yygcms.cn/Upload/20170903/thumb_200_59ab84833ac91.jpg\" alt=\"\" /><br />\r\n</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>一、怕多次妊娠</strong> \r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　据调查，怀孕3次以上，子宫患病及发生危害的可能性显著增加。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>二、怕反复人工流产</strong> \r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　女人一生流产不要超过3次，一年之内流产不要超过2次。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　短时期内反复人工流产，是导致子宫伤病的重要因素。通常医生在做人流手术时不能看见宫腔，是“盲操作”。往往有少数因术前未查清楚子宫位置、大 小，手术时器械进入方向与子宫曲度不一致，或用力过猛等而造成子宫损伤，甚至穿孔。或者造成宫腔感染、宫颈或宫腔粘连，导致继发性不孕。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　总而言之，人流有很多的害处，甚至可以出现“人流综合征”。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"><br />\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>三、怕私自堕胎</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　这样做的严重后果是子宫破损或继发感染者甚多。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>四、怕忽视产前检查</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　忽视产前检查，不能及时发现孕妇和胎儿的异常，会导致难产甚至子宫破裂等严重后果。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>五、怕畸胎、多胎</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　由于畸胎和多胎容易发生难产，从而危及子宫安全，故孕期应注意检查，如发现畸胎、多胎，就应采取有效措施。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>六、怕滥用催生药</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　子宫体部或子宫下段在妊娠期或分娩期发生破裂称为子宫破裂。子宫破裂是严重的产科并发症之一，常引起母儿死亡。多由于产道、胎儿、胎位的异常如骨产道狭窄、巨大儿、脑积水、忽略性横位等引起胎先露下降受阻，子宫强烈收缩而发生。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　子宫破裂为产科最严重并发症之一。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>七、怕不正规接生</strong> \r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　少数落后地区仍然采取旧法接生，严重威胁到产妇和胎儿的生命安全。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"><br />\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>八、怕妊娠期性生活</strong> \r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　妊娠头三个月要禁房事。此时胚胎附着于子宫尚不十分牢固，是流产的好发时期。此时性高潮时强烈子宫收缩，有使妊娠中断的危险。特别对有流产史、妊娠曾出现少量阴道流血的先兆流产妇女，或年龄较大、求子心切者等等，应禁止性交。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　妊娠早期对性生活造成的细菌感染也要注意。怀孕期分泌物增多，外阴部不仅容易溃烂，而且对细菌的抵抗力也减弱。被细菌感染，症状如加重就有流产的危险。所以平时要注意保持局部清洁，同时在性行为前必须特别注意。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　妊娠后三个月也要禁房事。性交易刺激子宫收缩而导致流产、早产、子宫出血或产褥热。尤其是妊娠末4周，性交可能引起胎膜炎，招致胎膜早破、早产及产后感染等危险，应严禁性生活。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　临产前1个月或者3星期时胎儿已经成熟，子宫已经下降，子宫口逐渐张开。如果这时性交，羊水感染的可能性更大。还容易造成早产，胎儿在子宫内也可以受到母亲感染疾病的影响，使身心发育受到障碍。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　有自然流产和习惯性流产的孕妇，应在整个妊娠期间都避免性交，千万不要为一时的冲动造成永久的悔恨。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　总之，特殊时期的性生活要注意。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>九、怕性生活不洁</strong> \r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　不洁的性生活可引起阴道炎、宫颈炎、宫颈糜烂、输卵管炎症。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　别小看这些感染，它们可是外阴癌、阴道癌、宫颈癌及输卵管癌的重要发病因素。\r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　总之，现代医学证明，不洁性生活已经成为了诱发妇科肿瘤的“元凶”。\r\n	</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\"> <strong>十、怕性生活紊乱</strong> \r\n</p>\r\n<p style=\"color:#353535;font-family:\" font-size:14px;\"=\"\">\r\n	　　如果妇女性生活放纵，或未成年便开始性生活，将对自己的身心健康造成损害，而可能导致宫颈糜烂以及子宫颈癌等疾病。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>', '子宫是女性孕育宝宝最初的地方，若是子宫不好，自然对宝宝的健康也不好。所以，女性要好好地保护自己的子宫。下面就跟亲宝小编一去看看女性备孕要远离的子宫10“怕”吧！', '', '', '6', '1', '2017-09-03 12:27:02', '2017-09-03 18:23:12', '1', '0', '0');
INSERT INTO `yyg_content` VALUES ('161', '基础体温', '<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	人体在较长时间(6小时)的后醒来，尚未进行任何活动之前所到的体温称之为基础体温。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>1、判断是否排卵</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　虽然在一般情况下人体的正常体温是37℃，但在不同的身体状况下也会略微有些差别。通常女性在来月经之前，体温较高，处于高温期;来月经之后，体温则相对较低，处于低温期。如果在24小时之内，体温了0.3～0.6℃，甚至更高，那么则表示处于排卵的状态。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　另外，基础体温也大略可以看出排出卵子的质量优劣程度。如果基础体温高温期较长，可以持续13～14天，那么就表示卵子的质量不错。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>2、怀孕的早期诊断</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　如果持续两周以上较高的基础体温，就要考虑去医院检查一下，因为你有可能是怀孕了。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>3、卵巢机能</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　基础体温处于高温期代表黄体机能的减弱、甲状腺素过低、泌乳激素过高，代表排卵的质量会比较差，甚至会不排卵。\r\n</p>\r\n<span style=\"color:#353535;font-family:&quot;font-size:14px;\">&nbsp;</span>\r\n<p id=\"p3\" style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<span style=\"color:#FF6600;\">　　<strong>基础体温的原理是什么?</strong></span>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　正常育龄妇女的基础体温与月经周期一样，呈周期性变化，这种体温变化与排卵有关。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　女性月经周期以月经见红第一天为周期的开始，周期的长短因人而异，约为21-35天不等，平均约为28天，其中又以排卵日为分隔，分为排卵前的滤泡期，与排卵后的黄体期。滤泡期长短不一定，但黄体期固定约为14天上下两天。排卵后次日，因卵巢形成黄体，分泌黄体素会使体温上升摄氏0。6度左右，而使体温呈现高低两相变化。高温期约持续12-16天(平均14天)。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　1、若无怀孕，黄体萎缩停止分泌黄体素，体温下降，回到基本线，月经来潮。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　2、若是已经怀孕，因黄体受到胚胎分泌荷尔蒙支持，继续分泌黄体素，体温持续高温。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　3、若卵巢功能不良，没有排卵也没有黄体形成，体温将持续低温。\r\n</p>\r\n<p id=\"p4\" style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<span style=\"color:#FF6600;\">　　<strong>如何测量与记录基础体温?</strong></span>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　1、买一支基础体温计。基础体温计与一般体温计不同，它的刻度较密，一般以摄氏36.7度(刻度24)为高低温的分界。 (36度--刻度10;38度--刻度50)。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　2、将基础体温计于睡前放在枕边可随手拿到之处，于次日睡醒，尚未起床活动时，放在舌下测量三分钟，并记录在基础体温表上。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　3、早晨量记体温有困难者，可在每天某一固定时间量，切记事前半小时不可激烈或饮用冷热食品。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　4、月经来潮和同房日须附加记号标示，遇有发烧饮酒过度晚睡晚起等会影响体温的状况，亦应特别注记说明。\r\n</p>\r\n<p id=\"p5\" style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<span style=\"color:#FF6600;\">　　<strong>体础温线图曲</strong></span>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　1、周期28天正常排卵的基础体温曲线图 (看好周期是28天的)\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　2、一个有可能怀孕的基础体温曲线图\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　3、一个周期28天体黄素不足的基础体温曲线图\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　4、一个周期28天无排卵的基础体温曲线图\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　以上的图大家可以参考对照，但想要达到完全一样，应该是不可能，因为每个人都不一样。\r\n</p>\r\n<p id=\"p6\" style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<span style=\"color:#FF6600;\">　　<strong>常见的基础体温变化解读</strong></span>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>1、排卵</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　当女性月经来临时，基础体温为低温;排卵之后，基础体温则会转为高温。一般来说，女性在排卵24小时之后，受精的比率会变得比较低;但是，男性的精子大约可以在女性的子宫里存活72小时。所以，在女性基础体温处于低温、接近时就应该行房，这样可以增加受精几率;若等到基础体温达到高温时再行房，那怀孕的几率就已经降低了。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>2、多囊卵巢</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　此类病患以“胖”为表征，往往容易发胖、长青春痘、毛发浓密、月经经常性不准。表现在基础体温上则是：高温期较短，严重的还可能是经常性低温。有这种情况的女性，通常有家族性遗传，如怀孕生子，则属于的高危险群。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>3、卵巢功能不好</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　卵巢功能不好的人，通常基础体温的循环周期会缩短，原本的28天，可能慢慢会变为24天或22天，高温期也相应缩短。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>4、泌乳素过高</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　泌乳素高，基础体温的高温期就会缩短，其卵子的质量也较差，所以不容易怀孕或容易流产。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　<strong>5、危险期</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　基础体温为高温期属于，低温期则属于危险期，但低温期也会有个别差异。比如对年轻女孩而言，她们的卵巢功能好，分泌物多，危险期就相应的长一些，精子在子宫内存活的几率也会相对比较高。所以，很可能在排卵前5天开始，就必须看作是危险期。\r\n</p>', '人体在较长时间(6小时)的后醒来，尚未进行任何活动之前所到的体温称之为基础体温。 1、判断是否排卵 虽然在一般情况下人体的正', '', '', '6', '1', '2017-09-03 20:09:34', '2017-09-03 20:09:34', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('162', '怀孕一个月的症状有哪些?', '<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	妊娠期的算法是从末次月经第一天起，以满多少天，满多少孕周来计算的。月经周期28天，通常前14天是不会受孕的，所以末次月经后约14天才可能受精，故孕妇自己知道怀孕后才开始计算的妊娠期，在第一个孕月中只占最初妊娠的2周。&nbsp;&nbsp;\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 妊娠期的算法是从末次月经第一天起，以满多少天，满多少孕周来计算的。月经周期28天，通常前14天是不会受孕的，所以末次月经后约14天才可能受精，故孕妇自己知道怀孕后才开始计算的妊娠期，在第一个孕月中只占最初妊娠的2周。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;<strong>&nbsp; 1.胎儿的成长</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 受精后约7-10日，受精卵便在子宫内膜着床，并从母体中吸收养分，开始发育。在前8周时，应该称为胚胎，还不能称作胎儿。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 胚胎的大小在怀孕第3周后期约长0.5-1.0厘米，体重不及1克，但肉眼已能看出其外形。外表上，胚胎无法明显地区分头部和身体，并且长有鳃弓和尾巴，和其他动物的胚胎发育并无两样。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 而此时原始的胎盘开始成形，胎膜（亦称绒毛膜）亦于此时形成。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;<strong>&nbsp; 2.母体的变化</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 实际上，受精卵形成的一周之内还不能称为怀孕。孕妇开始呈现怀孕迹象，常在两周以后，因此这时期尚未有任何症状。不过有些人的身体会有发寒、发热、慵懒困倦及难以成眠的症状，因一时未察觉是怀孕往往还误以为是患了感冒呢。这时子宫的大小与未怀孕时相同，还没有增大的现象。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;<strong>&nbsp; 3.生活上应注意的事项</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 初次怀孕的女性，在身体和心理上，都会发生一连串的变化，因为是第一次，孕妇自己往往还浑然不觉，而且原本没有生育的计划，或是根本不了解身体的反应，以致误食药物或疏忽了生活上的细节，都很可能对胎儿和母体产生不良的影响\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 就身体反应而言，怀孕初期可能会类似感冒的症状，若胡乱买成药吃，不仅不能达到治疗的效果，说不定还会生出畸形儿呢！所以平日在任何情况下，都不要任意服用成药，最安全的办法是去看医生，找出病因。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;<strong>&nbsp;&nbsp; 4.应该了解与准备的事</strong>\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	&nbsp;&nbsp;&nbsp; 此时虽还没有特别应该准备的事，不过在怀孕约一个月时，会有孕吐的现象，应多准备一些缓和孕吐情况的食物，如酸梅、水果等。\r\n</p>', '怀孕一个月的女人，受精卵还比较小，所以胎儿和孕妇都不会有什么反应，身形也不会有什么变化，但是到快一个月的时候，孕妇会有孕吐现象。', '', '', '11', '1', '2017-09-03 20:10:33', '2017-09-03 20:10:33', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('163', '尿频通常是怀孕的标志', '<p style=\"text-align:center;color:#353535;font-family:&quot;font-size:14px;\">\r\n	<img src=\"http://test.yygcms.cn/Upload/20170903/thumb_200_59abf16cef3d9.jpg\" alt=\"\" />\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	很多孕妇在刚开始怀孕的时候出现尿频的现象，甚至很多人是在发现尿频而去医院检查的时候才发现自己怀孕的。其实尿频是怀孕期间大多数孕妇必经的阶段。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　为什么怀孕后会经常想上厕所\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　频繁有尿意通常是确定怀孕的标志，通常很多人是在发现尿频而去医院检查的时候才发现自己怀孕的。孕妇在怀孕初期和末期都会出现不同程度的尿频。在怀孕初期出现尿频主要是因为身体荷尔蒙分泌改变而导致的。晚期出现尿频主要是由于胎儿逐渐落入盆中，压迫膀胱导致尿意。<br />\r\n……〉怀孕后尿频，外阴红肿会影响胎儿吗？\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　是否有什么好的方法可以减少上厕所的时间和次数\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　到现在为止还没有特别好的办法来控制这种情况的发生。唯一可行的就是控制饮水量，要想不在晚上起来，最好在临睡前1——2小时内不要喝水。很多做了妈妈的人经常说，产前尿频未尝不是件好事情，因为它可以提前锻炼您晚间起床，要知道这在宝宝出生后是您必须要经历的过程呦！ ……〉孕期尿频影响睡眠\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　如何判断正常与异常的尿频\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　怀孕尿频什么时候可以停止\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　通常在分娩几天后尿频会终止，不过在最初的几天尿还会很多，这主要是因为身体要将体内多余的液体全部排净的原因。当然，在怀孕期间除了开始和末期尿频外，大多数时间您还是会相对好些，您不会因为这件小事情天天烦恼的。\r\n</p>', '很多孕妇在刚开始怀孕的时候出现尿频的现象，甚至很多人是在发现尿频而去医院检查的时候才发现自己怀孕的。', '', '', '8', '1', '2017-09-03 20:11:46', '2017-09-03 20:11:46', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('164', '0-10岁宝宝身高体重对照表', '月龄<span> </span>体重（单位kg ）<span> </span>身高（单位cm）<br />\r\n男<span> </span>女<span> </span>男<span> </span>女<br />\r\n01月<span> </span>3.6-5.0<span> </span>2.7-3.6<span> </span>48.2-52.8<span> </span>47.7-52.0<br />\r\n02月<span> </span>4.3-6.0<span> </span>3.4-4.5<span> </span>52.1-57.0<span> </span>51.2-55.8<br />\r\n03月<span> </span>5.0-6.9<span> </span>4.0-5.4<span> </span>55.5-60.7<span> </span>54.4-59.2<br />\r\n04月<span> </span>5.7-7.6<span> </span>4.7-6.2<span> </span>58.5-63.7<span> </span>57.1-59.5<br />\r\n05月<span> </span>6.3-8.2<span> </span>5.3-6.9<span> </span>61.0-66.4<span> </span>59.4-64.5<br />\r\n06月<span> </span>6.9-8.8<span> </span>6.3-8.1<span> </span>65.1-70.5<span> </span>63.3-68.6<br />\r\n08月<span> </span>7.8-9.8<span> </span>7.2-9.1<span> </span>68.3-73.6<span> </span>66.4-71.8<br />\r\n10月<span> </span>8.6-10.6<span> </span>7.9-9.9<span> </span>71.0-76.3<span> </span>69.0-74.5<br />\r\n12月<span> </span>9.1-11.3<span> </span>8.5-10.6<span> </span>73.4-78.8<span> </span>71.5-77.1<br />\r\n15月<span> </span>9.8-12.0<span> </span>9.1-11.3<span> </span>76.6-82.3<span> </span>74.8-80.7<br />\r\n18月<span> </span>10.3-12.7<span> </span>9.7-12.0<span> </span>79.4-85.4<span> </span>80.6-87.0<br />\r\n21月<span> </span>10.8-13.3<span> </span>10.2-12.6<span> </span>81.9-88.4<span> </span>83.3-89.8<br />\r\n2岁<span> </span>11.2-14.0<span> </span>10.6-13.2<span> </span>84.3-91.0<span> </span>83.3-89.8<br />\r\n2.5岁<span> </span>12.1-15.3<span> </span>11.7-14.7<span> </span>88.9-95.8<span> </span>87.9-94.7<br />\r\n3 岁<span> </span>13.0-16.4<span> </span>12.6-16.1<span> </span>91.1-98.7<span> </span>90.2-98.1<br />\r\n3.5岁<span> </span>13.9-17.6<span> </span>13.5-17.2<span> </span>95.0-103.1<span> </span>94.0-101.8<br />\r\n4 岁<span> </span>14.8-18.7<span> </span>14.3-18.3<span> </span>98.7-107.2<span> </span>97.6-105.7<br />\r\n4.5岁<span> </span>15.7-19.9<span> </span>15.0-19.4<span> </span>102.1-111.0<span> </span>100.9-109.3<br />\r\n5 岁<span> </span>16.6-21.1<span> </span>15.7-20.4<span> </span>105.3-114.5<span> </span>104.0-112.8<br />\r\n5.5岁<span> </span>17.4-22.3<span> </span>16.5-21.6<span> </span>108.4-117.8<span> </span>106.9-116.2<br />\r\n6 岁<span> </span>18.4-23.6<span> </span>17.3-22.9<span> </span>111.2-121.0<span> </span>109.7-119.6<br />\r\n7岁<span> </span>20.2-26.5<span> </span>19.1-26.0<span> </span>116.6-126.8<span> </span>115.1-126.2<br />\r\n8岁<span> </span>22.2-30.0<span> </span>21.4-30.2<span> </span>121.6-132.2<span> </span>120.4-132.4<br />\r\n9岁<span> </span>24.3-34.0<span> </span>24.1-35.3<span> </span>126.5-137.8<span> </span>125.7-138.7<br />\r\n10岁<span> </span>26.8-38.7<span> </span>27.2-40.9<span> </span>131.4-143.6<span> </span>131.5-145.1<br />', '身高没有同龄宝宝高、体重也没隔壁家宝宝重，这些都是妈妈们常常讨论的问题。其实，宝宝身高、体重只要处在某个正常范围，就是健康的，妈妈们，不妨把下面的宝宝身高体重对照表收藏起来吧！', '', '', '11', '1', '2017-09-03 20:13:30', '2017-09-03 20:13:30', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('165', '谨记！及时打开新生儿的小拳头', '<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	每个宝宝生下来，他们都会紧紧握住自己的小拳头。对于这种现象，许多妈妈也许并不在意，可是儿科医生却提醒大家：要及时打开宝宝紧握的小拳头。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	为什么要及时打开宝宝的小拳头?\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　1、手的动作能促进神经系统的发育，而且对诱导婴儿心理发展起了前提的作用。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　2、手指分开后，可以随心所欲地摆弄各种物品，使婴儿能够主动地学习和从事各种活动，知觉和具体思维能力得到发育。\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_200_59abf26adca6f.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	3、通过手部动作，婴儿和环境产生了互动，帮助婴儿建立自己和环境互动的概念，这种互动的经验对婴儿今后的发展意义重大。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	打开小拳头，妈妈该怎么做?\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　1、日常生活中要注意舒展\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　生活中，时常打开宝宝紧握的双拳，会让他有舒展手指的轻松感觉;\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　洗澡的时候别忘洗宝宝的小手。把手指尖轻轻伸进宝宝的手掌里，在小手心里轻轻地来回转动，边清洗边按摩;\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　喂奶的时候把宝宝搂在怀里，把手指伸进他的手心里，大手握小手，轻轻地摸一摸，缓缓地摇一摇;轻轻抚摸、张开宝宝的拳头，让小手掌触摸妈妈的乳房和妈妈的脸;不停地和宝宝说说话。吸吮妈妈的乳汁、感觉妈妈肌肤的温暖，宝宝满足又舒服。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　2、给宝宝的手指做按摩\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　*宝宝吃饱喝足、心情愉快的时候，可给宝宝的小手做按摩，肌肤温柔的触感能刺激宝宝触觉神经，使宝宝身心放松，小拳头很容易就松开了。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_200_59abf28185482.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		*拿起宝宝的手掌，轻轻掰开拇指，再将手指一起打开，闭拢，再打开，边做边说话、唱歌。握住宝宝的手指，轻轻地一根一根打开，再一根一根合拢，轻柔地抚摸。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　*鼓励宝宝频频“出拳”，练习手眼协调，触碰、抓拿东西。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　3、把玩具放入宝宝的手掌\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　让宝宝握住玩具，妈妈拿住宝宝的小手，一起摇摇，听听玩具会发出什么声音。在游戏中宝宝慢慢学习控制、使用自己的手。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　注意：正确握姿——姆指和4手指要相对而握。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　TIP1选择适合的玩具。适合宝宝手掌大小、会发声、材质柔软的玩具。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　TIP2宝宝玩的时候旁边一定要有大人陪伴。\r\n	</p>\r\n	<div>\r\n		<br />\r\n	</div>\r\n</p>', '每个宝宝生下来，他们都会紧紧握住自己的小拳头。对于这种现象，许多妈妈也许并不在意，可是儿科医生却提醒大家：要及时打开宝宝紧握的小拳头。', '', '', '1', '1', '2017-09-03 20:16:36', '2017-09-03 20:16:36', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('166', '十月大女宝体重只有11斤？为什么宝宝体重增长缓慢', '<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	孩子是爸爸妈妈的掌上明珠，在抚育孩子的历程中，肯定都会给孩子供给最棒的物质条件，让孩子吃好喝好。对小孩子来说，假如体重不合格的话，那么作为爸爸妈妈就应该思考自个的一些做法，是不是真的做到了爸爸妈妈的职责。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　孙女士的女儿现已十个月大了，相对比同龄的孩子来说，孙女士的女儿严峻发育不良，体重格外的轻。孙女士本人做事粗心大意，并且也没有任何的育儿经历，所以孙女士的女儿也就跟母亲一同受苦。孩子一向都是喝奶粉长大的，现在女儿现已十个月大了，体重却只有11斤。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　在平时的日子里孙女士由于各种因素常常和老公闹矛盾，心情不好，所以也不常常照料孩子。有一次和老公吵架以后，孙女士气急就带着孩子一同回娘家了。孙女士回家以后，孩子的外婆看见孙女枯瘦的姿态，立马将孙女士狠狠地骂了一顿。作为母亲的竟然没有尽到母亲的职责，让孩子变得这么瘦弱。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　孙女士也觉得自个格外冤枉，自个也常常给孩子喂奶，可是女儿总是不喜欢吃奶，自个也想不出来啥方法，所以孩子这么大了也没见体重增长多少。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_600_59abf2dd4e18d.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	后来外婆在给孙女喂奶的时候，发现了一个情况，宝宝在吃奶，可是奶瓶里的奶不怎么减少。宝宝在喝奶的进程中使用了很大的劲，可是没有喝多少奶。后来外婆就查看了一下奶嘴，发现奶嘴根本就没有开口，跟刚买回来的奶嘴一样，只一点点大的口儿。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　本来宝宝并不是不喜欢吃奶，只是天天抱着奶瓶只能喝到一点点，所以时间久了，孩子也懒的吃奶。后来外婆就将奶嘴开了一个很大的口儿，宝宝喝了格外多的奶，将奶瓶里的奶全部都喝完了。孙女士见此，对自个的做法也感到十分的懊悔。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　在平时日子里，假如宝宝有发育不良的状况，体重严峻的不合格的话，家长们就要仔细的找出自个的因素。究竟是由于啥形成孩子发育不良，是不是由于宝宝不常常就餐？家长们必定要找出因素，要让孩子好好就餐，这么才能给孩子补充满足的养分。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_600_59abf2f91b28e.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		由于每个孩子的身体健康状况不同，所以也不能用相同的规范去衡量孩子的身高和体重，家长们首要根据孩子的本身状况来判断孩子体重是不是合格。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　用体重丈量的公式来看孩子体重是不是合格，对前六个月大的孩子来说，拿出世体重加上他的月龄乘上0.7千克。对一岁以内的孩子来说，用6千克，加上月龄乘上0.25千克，得出来的数据即是宝宝的正常体重。对两岁以内的孩子来说，基本上体重相对比以往会添加大概2千克或许3千克。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　至于两岁至12岁的孩童来说，年纪的2倍加上8千克即是正常体重。家长们能够用这个简单的公式测一下孩子的体重是不是合格，假如孩子不合格的话，那么家长们必定要给孩子多补充一些养分。\r\n	</p>\r\n</p>', '孩子是爸爸妈妈的掌上明珠，在抚育孩子的历程中，肯定都会给孩子供给最棒的物质条件，让孩子吃好喝好。对小孩子来说，假如体重不合格的话，那么作为爸爸妈妈就应该思考自个的一些做法，是不是真的做到了爸爸妈妈的职责', '', '', '1', '1', '2017-09-03 20:18:23', '2017-09-03 20:18:23', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('167', '宝宝越补钙却越缺钙，这些偷钙的食物宝宝还在吃吗', '<p>\r\n	<span style=\"color:#353535;font-family:&quot;font-size:14px;\">孩子从各种食物中获取生长发育所需的养分。所以如今许多家长都会重视孩子平时饮食的调配，可是许多家长都不知道，有的食物却会阻碍孩子吸收养分，让孩子体内的养分白白丢失。今日就为我们罗列几个食物例子，这些食物会阻碍孩子去吸收钙质，甚至会加速身体内钙质的丢失。经常吃这些食物的孩子，基本上越是补钙越是缺钙。</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#353535;font-family:&quot;font-size:14px;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_600_59abf341e667d.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	精粮食物\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　加工过的精粮会丢失掉食物中的钙质。再加上精粮含糖分比较高，糖的新陈代谢需钙，如果食物里边的含钙量缺乏，人体就会主动运用体内储存的钙去继续新陈代谢。所以就会形成体内的钙大量丢失，影响孩子的身体发育。这时家长能够调整一下孩子的饮食，多让孩子吃一些小麦、玉米、红薯之类的粗粮，促进钙的吸收。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_600_59abf3779e356.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	高磷食物\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　如果孩子体内磷过剩的话，由于磷是很容易与钙发生化学反应，最终随着大便排出人体。所以家长要适当给孩子吃动物肝脏和坚果。让孩子体内的钙磷份额平衡，削减钙质丢失。并且在进食这些食物时，尽量是跟服用钙片的时间错开。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　肉类\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　肉类的过量进食不只会让孩子的体重飙升，有脂肪超支情况。并且肉类自身的含钙量比较低，吃太多会致使膳食蛋白过量，致使尿钙大量丢失。可是并不是说不要让孩子吃肉，家长要调整好饮食，让孩子养成荤素调配合理的饮食习惯。在煮羊肉时能够放点胡萝卜，做牛肉时放点西红柿，炖鱼时加点豆腐，这都是防止孩子钙质丢失的不错方法\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<img src=\" /Upload/20170903/thumb_600_59abf392e5dfa.jpg\" alt=\"\" />', '孩子从各种食物中获取生长发育所需的养分。所以如今许多家长都会重视孩子平时饮食的调配，可是许多家长都不知道，有的食物却会阻碍孩子吸收养分，让孩子体内的养分白白丢失。今日就为我们罗列几个食物例子，这些食物会阻碍孩子去吸收钙质，甚至会加速身体内钙质的丢失。经常吃这些食物的孩子，基本上越是补钙越是缺钙。', '', '', '1', '1', '2017-09-03 20:20:40', '2017-09-03 20:20:40', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('168', ' 喂奶后少做这一步 后果很严重', '<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	喂奶时，如果你看到宝宝吮吸的速度变慢了，眼皮正在打架，眼看就要睡着了，接下来，你会怎么做?\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　A、就让宝宝含着奶嘴睡吧，反正大人也困到不行了，先睡了再说。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　B、把奶嘴拔出来，再让宝宝躺下来睡觉。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	　　C、把宝宝竖抱片刻(15分钟以上)，听见宝宝打嗝的声音平静下来了，再让宝宝入睡。\r\n</p>\r\n<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\" /Upload/20170903/thumb_600_59abf3dc357dd.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　眼尖的妈妈或许一眼就看出来了，前两种做法明显没有第三种靠谱，答案明显是C。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　不过，能选对答案，不代表实际操作的时候就能做对。现实中很多妈妈常常忽略拍嗝这一步，让宝宝喝完奶了马上就睡。然而，这样真有可能会导致不可挽回的后果!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　2月27日上午10点多，浙江一6个月大的宝宝喝完一瓶奶后仰躺着睡着了。一个多小时后孩子父亲回家看宝宝，却发现孩子全身皮肤发黑，气息全无。着急的家人赶紧将孩子送到医院急救，但由于奶液呛入呼吸道已久，孩子早就没了呼吸，再也无法醒过来了。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　父母悲痛万分，这是他们的第一个孩子，没想到因为大人一时疏忽，孩子还没来得及好好长大，就这样离开了他们。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　以前，我了解到类似的事件多是在报纸或电视，虽然也会非常心疼，但体会没有那么深。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　今年春节前的前一周，朵妈一个亲戚家的宝宝(尚未满月)，因躺着给宝宝喂奶，结果宝宝把奶液呛入到肺部了，由于情况比较严重，宝宝的春节最终是在重症监护室中度过的(所幸抢救及时，宝宝后来康复出院了)。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　说实在的，当时听到这个消息，我除了非常心疼孩子之外，又非常自责“为什么我不早点提醒他们，不能躺着给宝宝喂奶呢?”我妈知道我心里的矛盾后，回我一句：“人家这是二胎了，第一胎孩子比朵朵还大，论经验你还不如人家，你说了人家也不一定会留心听……”\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　我竟无言以对，只能说：经验不一定就是对的!老司机一旦粗心，也会闯下大祸!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　此前还看到这样一条新闻：\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　四川成都一女婴，因呛奶造成吸入性肺炎，大脑严重缺氧，女婴面临脑瘫的危险……\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　孩子因呛奶导致脑瘫，想想也是很悲剧!所以说，只要宝宝还需要喂奶，呛奶这事随时都有可能会发生，有关呛奶的一些知识，每个妈妈都要知道。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　严重呛奶时，只有4分钟时间解救!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　由于消化系统尚未发育成熟，对于1岁内的宝宝来说，吐奶、或呛奶是时有发生的事，越小的宝宝发生吐奶的几率越大。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　通常认为，呛奶属于比较紧急的情况，严重呛奶时，抢救时间只有4分钟!因为此时的奶液进入了呼吸道中，要是不及时处理，孩子就会因为窒息的缘故导致死亡。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　宝宝呛奶应竖着抱?90%的妈妈都错了!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　那么，孩子发生呛奶了，到底应该怎么处理呢?很多妈妈可能会回答：竖着抱一会，把奶拍出来!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　很遗憾，答案是错误的!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　喂完奶后竖着抱，可以预防吐奶或呛奶，但是一旦发生吐奶或呛奶了，竖着抱只会导致奶越呛越深，甚至进入到肺部!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　正确的应对方法是什么呢?\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　1、轻微呛奶时，快速让婴儿躺下来，将头部侧向一边，手掌握成空心巴掌，拍打婴儿的背部，使吸入的奶液流出来，同时注意及时清理婴儿口腔鼻道中的异物。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　(简要步骤：使婴儿躺下、侧脸→空心巴掌拍背→及时清理分泌物)\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　2、严重呛奶时，应让婴儿俯卧在家长的大腿上，头部稍低于身体，手握空心巴掌，叩击孩子的背部，使孩子把奶液咳出来，同时也要注意清理分泌物。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　(紧要步骤：使婴儿俯卧→空心巴掌叩击背部→及时清理分泌物)\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　如何避免呛奶的发生?拍嗝是关键!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　新闻事件中的父母，如果喂完奶后注意帮宝宝拍嗝，也许悲剧就不会发生了!\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　拍嗝能帮助宝宝排出胃部的气体，减少吐奶或呛奶的发生。喂完奶后，将宝宝竖着抱片刻(宝宝还不能自主抬头之前，大人的手部应给予宝宝头颈背部平稳的支撑)，轻轻拍打其背部，最好听到宝宝有打嗝的声音，等到停止打嗝了，再将宝宝放到床上平躺。\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　此外，预防呛奶，以下几点也不能忽略：\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　1、少量多次喂奶，以免给宝宝的胃部带来太大的压力;\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　2、母乳亲喂时，妈妈可用中指和食指按压住乳晕，控制出奶量;\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　3、人工喂养时，奶嘴不宜开得太大;\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　4、无论是何种喂养方式，都要注意抱姿，斜抱的方式更能预防呛奶，切忌不要让宝宝平躺着喂奶;\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　5、避免在宝宝哭闹时喂奶，更不宜在宝宝喂奶时逗他笑;\r\n	</p>\r\n	<p style=\"color:#353535;font-family:&quot;font-size:14px;\">\r\n		　　6、宝宝熟睡后，大人最好陪伴在身旁，或至少应定期观察宝宝是否有发生吐奶、呛奶等情况。\r\n	</p>\r\n</p>', '喂奶时，如果你看到宝宝吮吸的速度变慢了，眼皮正在打架，眼看就要睡着了，接下来，你会怎么做?', '', '', '1', '1', '2017-09-03 20:22:04', '2017-09-03 20:22:04', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('169', '大嘴熊的鼓励', '<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	<img src=\"http://test.yygcms.cn/Upload/20170903/thumb_600_59abf43c73ab4.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	在一个美丽的小村庄里，住着一群可爱的小动物。活泼的大嘴熊和调皮的小熊三兄弟——欢实、皮实、结实，是最要好的朋友。一天，村里贴出了要举行讲故事比赛的通知，选出今年的故事大王。欢实、皮实和大嘴熊跃跃欲试，他们都觉得自己是讲故事的天才。只有结实偷偷地躲了起来，因为平时经常有小伙伴取笑他说话慢，还有点儿结巴。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“这个结实跑哪儿去了？”大嘴熊把脖子伸得长长的，东瞧瞧西望望，寻找着结实。大嘴熊非常了解结实的想法。每次有小伙伴取笑结实时，他都会伸出援（yuán）助之手。大嘴熊心想：“结实一定是因为没有自信才悄悄地躲起来，我得找到他，鼓励他，给他加油！”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“结实，可爱又帅气的结实兄弟，你在哪儿呢？”大嘴熊的喊声越来越大。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“嘘，小……小声点儿，别……别……别喊了，我在这儿呢。”结实从玉米地里钻了出来。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“你怎么躲在这里呀？要评选今年的故事大王了，你得参加比赛呀！”大嘴熊一边帮结实拍落身上的灰尘一边说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“我……我……我可不行。”结实胆怯（qiè）地说。“怕什么！从现在起，我每天都陪你练发音，说绕口令，只要多加练习，一定能行的。即使成不了故事大王，你也要锻炼一下胆量，不能总是不敢上台讲话呀。”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“我一上台，他……他们又该取笑我了。”结实低着头小声说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“谁再取笑你，我就把他的嘴封住！”大嘴熊愤愤地说。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	从那以后，每天清晨，大嘴熊都陪着结实去鱼塘边练习发音。他还帮结实编了一个故事——《<a href=\"http://www.gushi365.com/info/9400.html\">小魔怪的树</a>》。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	大嘴熊和结实就这样练哪练，十天后，比赛的日子到了。结实精心打扮了一番——头上戴了顶西瓜帽，可爱极了。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	轮到结实上场了，主持人小喜鹊（què）说：“欢迎结实来参加比赛，我们大家给他掌声鼓励好不好？”\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“好，好！结实结实你最棒！”母鸡罗丝姐妹，还有大嘴熊、欢实、皮实大声地给结实加油！\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	结实走上舞台，虽然紧张得不行，但想起大嘴熊的鼓励，心里就平静了许多。他昂着头，绘声绘色地讲起了《小魔怪的树》，观众们都听得入迷了。结实讲完后，台下响起了热烈的掌声。他简直不敢相信，自己居然可以表演得这么好。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“祝贺你，结实！我就说你能行嘛！”大嘴熊捧着一大束野花送给结实。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	“谢谢你，大嘴熊！”结实激动地拥抱大嘴熊。\r\n</p>\r\n<p style=\"font-family:&quot;font-size:22px;vertical-align:baseline;text-align:justify;text-indent:2em;color:#444444;background-color:#FFFFFF;\">\r\n	比赛的最终结果是，结实获得了第三名。这个成绩真不错！更令大家高兴的是，从这以后，他彻（chè）底改掉了一紧张就结巴的毛病，村子里举行的各项活动，都少不了他的参与呢！\r\n</p>', '在一个美丽的小村庄里，住着一群可爱的小动物。活泼的大嘴熊和调皮的小熊三兄弟——欢实、皮实、结实，是最要好的朋友。一天，村里贴出了要举行讲故事比赛的通知，选出今年的故事大王。欢实、皮实和大嘴熊跃跃欲试，他们都觉得自己是讲故事的天才。', '', '', '33', '1', '2017-09-03 20:23:48', '2017-09-03 20:23:48', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('170', '222', '222&lt;img src=&quot; /Uploads/20170907/thumb_600_59b16278e84b4.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot; /Uploads/20170907/thumb_600_59b162752f858.jpg&quot; alt=&quot;&quot; /&gt;', '222', '', '', '1', '1', '2017-09-07 23:16:08', '2017-09-07 23:16:08', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('171', 'sss', 'sss', 'ddd', 'dd', '', '1', '1', '2017-09-07 23:17:20', '2017-09-07 23:17:20', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('172', '222', '333222', '2222', '', '', '1', '1', '2017-09-07 23:18:52', '2017-09-07 23:18:52', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('173', 'dddddddddddddddddddddd', 'dddddddd&lt;img src=&quot; /Uploads/20170917/thumb_200_59be7376c3b9a.jpg&quot; alt=&quot;&quot; /&gt;', '22222222222222', '', '', '1', '1', '2017-09-17 21:07:16', '2017-09-17 21:07:16', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('174', '乱给孩子“贴秋膘”，当心招来各种病', ' <p>秋天到了，不少妈妈每天准备各种好吃的，想要在冬天到来前给孩子“贴秋膘”，促使其脏器功能得到恢复和调节。这里育姐提醒大家，“贴秋膘”也要适度，可不能乱来，不然可能会让孩子生病哦~究竟该怎样给孩子“贴秋膘”呢？一起来看看吧。</p> <p><img class=\"aligncenter size-full wp-image-111622\" title=\"456\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-10310251.jpeg\" alt=\"\" width=\"350\" height=\"262\" /></p> <p><img class=\"aligncenter size-full wp-image-111620\" title=\"1_1\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-10310287.jpeg\" alt=\"\" width=\"543\" height=\"109\" /></p> <p>“贴秋膘”可不等于“猛补”，不然会对孩子的健康不利。以下是常见错误，妈妈们可千万别犯哟~</p> <p><span style=\"color: #3366ff;\"><strong>✘ 进补越多越好</strong></span></p> <p>做任何事都要适度，“贴秋膘”也是如此。若一下进补太多，不但会使孩子脾胃和肝脏的负担加重，还会让暂时虚弱的消化器官无法应付，造成消化系统紊乱。</p> <p><span style=\"color: #3366ff;\"><strong>✘ 没病乱补</strong></span></p> <p>孩子的身体状况不同，需要进补的食品和药品也会有所不同。假如孩子无病乱补，反而会使身体平衡被打破，从而发生紊乱。</p> <p><img class=\"size-full wp-image-111636 aligncenter\" title=\"342\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-14241096.jpeg\" alt=\"\" width=\"350\" height=\"262\" /></p> <p><span style=\"color: #3366ff;\"><strong>✘ 重“吃”不重“排”</strong></span></p> <p>给孩子“贴秋膘”，不但要重视吃，还要重视排泄，减少“肠毒”在体内的滞留时间。如果新陈代谢产生的废物不能及时排泄，不利于孩子的身体健康。</p> <p><span style=\"color: #3366ff;\"><strong>✘ 一定要吃肉</strong></span></p> <p>很多妈妈认为，肉类有营养，给孩子“贴秋膘”一定要多吃肉。其实这种观点是错误的，孩子的脾胃在入秋时还没有完全恢复，多吃肉易引起消化不良，从而诱发疾病。建议注重孩子营养均衡，新鲜的蔬果别忽视了。</p> <p><span style=\"color: #3366ff;\"><strong>✘ 用药物代替食物</strong></span></p> <p>尽管药补起效快，针对性强，但药物毕竟存在副作用。食补不但副作用少，而且不同食物的保健作用也不一样。所以，对孩子来说，食补才是最适合的“贴秋膘”方式。</p> <p><img class=\"aligncenter size-full wp-image-111618\" title=\"1_2\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-10310220.jpeg\" alt=\"\" width=\"543\" height=\"109\" /></p> <p>所说“贴秋膘”虽然有利于孩子身体健康，但并不是所有的孩子都要这么做。</p> <p><span style=\"color: #3366ff;\"><strong>▼ 哪些孩子不宜贴秋膘</strong></span></p> <p><strong>* 肠胃功能不佳的孩子</strong></p> <p>这类孩子肠胃功能不佳，消化食物存在困难。如果再大量进补，反而会使肠胃负担加重，引起身体不适，妨碍营养吸收。若想给这类孩子进补，那么必须先把他们的肠胃功能调理好，等到肠胃功能恢复后才能“贴秋膘”。</p> <p><strong>* 正在生病的孩子</strong></p> <p>如果孩子正在生病，要采取有利于疾病恢复的饮食方案。胡乱给孩子“贴秋膘”反而会造成“虚不受补”，不利于疾病康复。</p> <p><strong>* 身体肥胖的孩子</strong></p> <p>孩子身体肥胖，往往体内能量过剩，此时不宜“贴秋膘”。</p> <p><img class=\"aligncenter size-full wp-image-111627\" title=\"431\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-1057026.jpeg\" alt=\"\" width=\"350\" height=\"194\" /></p> <p><span style=\"color: #3366ff;\"><strong>▼ 哪些孩子需要贴秋膘</strong></span></p> <p><strong>* 先天不足发育迟缓的孩子</strong></p> <p>如果孩子在胎儿期营养不良，出生后吸收营养不太好，影响正常生长发育的话，那么在秋天时就需要进补。</p> <p><strong>* 抵抗力较低的孩子</strong></p> <p>秋天是肠道传染病的高发期，如果孩子身体抵抗力较低，易被细菌或病毒感染，那么请给他“贴秋膘”。</p> <p><strong>* 有偏食挑食习惯的孩子</strong></p> <p>孩子有偏食、挑食的坏习惯，必然导致营养摄取不全面也不充足。在夏天身体流失了部分营养，而冬天天气寒冷身体需要储备营养，所以给这类孩子“贴秋膘”很有必要。</p> <p><img class=\"aligncenter size-full wp-image-111619\" title=\"1_3\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-10310285.jpeg\" alt=\"\" width=\"543\" height=\"109\" /></p> <p>那么，妈妈究竟该怎么给孩子贴秋膘呢？一起来学一学：</p> <p><span style=\"color: #3366ff;\"><strong>☛ 补充优质蛋白质</strong></span></p> <p>到了秋天，孩子的食欲有所改善，这时可以给他多吃含有大量优质蛋白质的食物，比如鱼虾、瘦肉、蛋类等等。</p> <p><span style=\"color: #3366ff;\"><strong>☛ 提供丰富主食</strong></span></p> <p>除了米饭，小麦、黑米、小米、薯类都可以当孩子的主食。薯类除了含有大量维生素和矿物质元素，还含有膳食纤维，可帮助孩子提升肠胃消化能力；玉米或小米制成的粉条和粥食含有大量营养元素且易于消化，也是很好的选择。</p> <p><span style=\"color: #3366ff;\"><strong>☛ 多吃时令的瓜果蔬菜</strong></span></p> <p>秋天时有大量瓜果蔬菜上市，这些时令的食物不但味道好且富含营养。给孩子贴秋膘，一定要让他多吃些。</p> <p><span style=\"color: #3366ff;\"><strong>☛ 注意少食多餐</strong></span></p> <p>孩子运动量较多，但肠胃消化能力较差，因此要注意少吃多餐。除了一日三餐，最好安排两三次加餐。这样不但能防止孩子暴饮暴食，还能有效补充营养。</p> <p><img class=\"size-full wp-image-111637 aligncenter\" title=\"0987\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-14-14241070.jpeg\" alt=\"\" width=\"350\" height=\"262\" /></p> <p><strong>Tip：“贴秋膘”食谱推荐</strong></p> <p><span style=\"color: #3366ff;\">1.白萝卜豆腐脑</span></p> <p>食材：白萝卜1个，水豆腐500克，淀粉、食盐、香油、蒜末各适量。</p> <p>做法：</p> <p>（1）把白萝卜洗净切丝，备用;</p> <p>（2）水豆腐在沸水里焯一下，再切成薄片;</p> <p>（3）把萝卜丝裹上淀粉后，放入油锅里炒;</p> <p>（4） 在油锅里加水煮开，再放入水豆腐煮10分钟;</p> <p>（5）勾芡，加盐，加蒜末，淋上香油，加蒜末，调匀后即可食用。</p> <p><span style=\"color: #3366ff;\">2. 胡萝卜炒猪肝</span></p> <p>食材：猪肝100克，胡萝卜200克，植物油、生姜、大蒜、高汤各适量。</p> <p>做法：</p> <p>（1） 把猪肝和胡萝卜分别洗净后切成片，备用;</p> <p>（2）把生姜和大葱分别洗净，生姜切片，大葱切段;</p> <p>（3）把油锅烧热，加入姜片、大葱和胡萝卜翻炒;</p> <p>（4）在锅中倒入适量高汤，等到胡萝卜半熟时，倒入猪肝翻炒;</p> <p>（5） 所有食材炒熟后即可以出锅食用。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 秋天到了，不少妈妈每天准备各种好吃的，想要在冬天到来前给孩子“贴秋膘”，促使其脏器功能得到恢复和调节。这里育姐提醒大家，“贴秋膘”也要适度', '', '', '42', '1', '2017-09-17 22:10:39', '2017-09-17 22:10:39', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('175', '女子被老公家暴惨死 只因和他人吃饭', ' <p>9月3日凌晨，安徽芜湖一位年轻漂亮的宝妈黄某被遭丈夫家暴惨死。据悉，导火索是黄某和男同事一起吃饭触怒了其丈夫。目前，黄某丈夫戴某因涉嫌故意伤害致人死亡罪已被警方逮捕。</p> <p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/iframe/player.html?vid=w05489is4xy&amp;tiny=0&amp;auto=0\" frameborder=\"0\" width=\"504\" height=\"392\"></iframe></p> <p>这位不幸身亡的宝妈黄某今年26岁，是安徽芜湖人，其丈夫戴某是江西人。两人育有一子，在无锡打工。据了解，黄某生前曾多次遭戴某家暴，戴某的前妻就是因为不堪虐待离了婚。</p> <p><span style=\"color: #ff6600;\"><strong>因和男同事吃个饭被家暴致死</strong></span></p> <p>9月2日晚10点，戴某打电话给在老家的黄某姐姐，称要把黄某弄死。黄某随即让在无锡的丈夫赶到戴某夫妻俩租房处救场。</p> <p><img class=\"aligncenter size-full wp-image-111522\" title=\"1\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-11-17561052.jpeg\" alt=\"\" width=\"300\" height=\"195\" /></p> <p>等到黄某姐夫王某赶到时，出租屋里一片狼藉，黄某浑身是伤躺在床上。之后，在王某、房东夫妇俩和一对合租小夫妻的劝说下，黄某被送往医院。出门时，黄某和姐夫说“<strong>离开这个门，我就再也不想回来了。</strong>”</p> <p>经检查，黄某没有致命伤。众人从医院回来见戴某看着有所收敛，便各自返家。<strong>可是，9月3日凌晨1点半左右，戴某又打电话给岳母说要把黄某给弄死。凌晨4点多，戴某朋友打电话告诉黄某妈妈黄某已死。</strong></p> <p>1小时后，王某又一次赶到出租屋时，警方正在现场取证。此时，小姨子黄某遗体已经运走，戴某也已被警方带离。</p> <p>这一场悲剧是怎么发生的？原来戴某怀疑妻子黄某出轨。<strong>黄某生前告诉姐夫，自己因为和男同事一起吃饭所以被打。黄某姐姐事后得知，当日妹妹被男同事送回家触怒了戴某。</strong></p> <p>据周围居民反映，<strong>黄某当晚至少被殴打了2个小时</strong>。有人见情况严重报警，民警赶到后进行一番劝说后离开。</p> <p>事发后，戴某主动打110投案自首。<strong>根据尸检报告显示，黄某因颅内硬膜出血而死，这和戴某殴打直接相关</strong>。所以，目前戴某因涉嫌故意伤害致人死亡罪被警方逮捕。现在，这起案件还在进一步审查中，相关细节有待进一步调查。</p> <p><span style=\"color: #ff6600;\"><strong>领证后才知男方有婚史，还有2个女儿</strong></span></p> <p>据了解，黄某和戴某数年前相识，当时戴某是黄某的领导。两人很快坠入爱河，过起了同居生活。</p> <p><img class=\"aligncenter size-full wp-image-111523\" title=\"2\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-11-17561040.jpeg\" alt=\"\" width=\"300\" height=\"314\" /></p> <p>直到有孕，黄某才告诉姐姐，并说“<strong>如果是女的戴某让打掉，就分手，否则两人就领证结婚。</strong>”当时戴某对黄某还不错，加之经不住妹妹一再央求，黄某姐姐便未将此事告诉父母。等怀孕7个月时，黄某才向父母摊牌。尽管黄某家人不看好两人婚事，但没能拗过黄某。</p> <p>更让一家人难以接受的是，<strong>戴某此前有婚史，和前妻还有2个女儿。</strong>而直到两人领证后，大家才知道这个事实。</p> <p><span style=\"color: #ff6600;\"><strong>被威胁“弄死你们全家”不敢离婚</strong></span></p> <p>2012年初，孩子出生后，<strong>两人仅在黄某老家办了婚礼</strong>。</p> <p>婚后，戴某暴虐的性格逐渐显露，黄某屡遭家暴，仅家人知道的家暴就有5次。频被虐打后，<strong>黄某才告诉家人戴某的前妻就是因为不堪毒打才离婚</strong>。</p> <p>家人劝黄某离婚，但黄某不敢，因为她每次提到都会被戴某威胁“<strong>弄死你们全家</strong>”。有一次，黄某被家暴后甚至对姐姐这么说“<strong>如果有一天我突然死了，肯定是被丈夫打死的。</strong>”</p> <p>除了向姐姐诉苦，黄某也曾多次在朋友圈表达对婚姻的不满。早前，她曾发布一条动态内容是“<strong>我只想不拖累我身边爱护我的人，人生就是生不如死地活着。一步错全盘皆输 ……</strong>”</p> <p><span style=\"color: #ff6600;\">遇人不淑，黄某搭上了自己的性命。可悲，可叹！</span></p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 9月3日凌晨，安徽芜湖一位年轻漂亮的宝妈黄某被遭丈夫家暴惨死。据悉，导火索是黄某和男同事一起吃饭触怒了其丈夫。目前，黄某丈夫戴某因涉嫌故意', '', '', '43', '1', '2017-09-17 22:17:38', '2017-09-17 22:17:38', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('176', '大力摇晃宝宝：多的是你不知道的坏处', ' <p>前两天，有一朋友吐槽自己婆婆在哄孩子睡觉时总是摇晃宝宝，怎么说都不听。生活中，确实有不少家长在哄宝宝时会习惯性做摇晃动作。其实，达妈已经多次说过这个问题，但还是有不少家长不以为然。本文再次强调，大力摇晃宝宝不安全，特别是对小宝宝来说，可能会引发婴儿摇晃综合征。大家一定要注意啊~</p> <p><span style=\"color: #ff6600;\"><strong>▼ 什么是婴儿摇晃综合征？</strong></span></p> <p>中英文简称摇婴症或SBS，指的是宝宝因为受到不当摇晃致使大脑受到损害。美国儿科学会(AAP)将其划分在头部虐待损伤(Abusive Head Trauma，AHT)。大家可将其视作一种严重虐待孩子的形式。</p> <p>据美国一项调查显示，美国每年有大概1300例SBS报告，其中不满6个月的宝宝是多发人群，有8成患儿终身残疾，4成左右不幸身亡。</p> <p><span style=\"color: #ff6600;\"><strong>▼ 为什么会造成婴儿摇晃综合征？</strong></span></p> <p>要知道，婴儿很脆弱。他们的脑袋占身体比例大，但发育没有稳固，而且颈部肌肉较弱难以支撑脑袋。一旦受到强力摇晃，无论是否有其他物体发生碰撞，都可能造成脑内或脑附近出血，脑内神经连接的断裂，还可导致眼内出血和其他(骨头的)伤害。</p> <p>这里给大家看一组动图，大家就能直观了解到摇晃宝宝有多恐怖了。</p> <p><img class=\"aligncenter  wp-image-111562\" title=\"1\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-12-18285251.gif\" alt=\"\" width=\"400\" height=\"226\" /></p> <p><img class=\"aligncenter  wp-image-111563\" title=\"2\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-12-18285248.gif\" alt=\"\" width=\"400\" height=\"227\" /></p> <p><img class=\"aligncenter  wp-image-111564\" title=\"3\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-12-18285268.gif\" alt=\"\" width=\"400\" height=\"226\" /></p> <p><span style=\"color: #ff6600;\"><strong>▼ 婴儿摇晃综合征症状和后果</strong></span></p> <p>不知道大家还记得那个猛烈摇晃宝宝的无良保姆吗？这人竟然用这么残忍的方式哄宝宝睡觉。之后宝宝不哭闹根本不是睡着了，而是被摇晕了！</p> <p><img class=\"aligncenter size-full wp-image-111565\" title=\"4\" src=\"http://news.ci123.com/uploads/2017/09/2017-09-12-18285290.gif\" alt=\"\" width=\"400\" height=\"230\" /></p> <p>一般，SBS患儿轻则烦躁不安、倦怠，重则反应迟钝、精神恍惚、惊厥、昏迷、呼吸困难、失明等情况。若是患儿情况严重，以后可能会出现发育迟缓、智力低下，甚至会因颅内血肿而夭折。</p> <p>幸而，经过检查这名宝宝没有表现出明显的SBS症状。</p> <p>通常，宝宝没有发生一以下情况，大家就不要太担心，比如表情淡漠、眼神呆滞、精神不振、食欲差等情况，但请注意以后千万不要再大力摇晃宝宝了。</p> <p><span style=\"color: #ff6600;\"><strong>▼ 留心更多生活细节</strong></span></p> <p>生活中，很多家长会用轻轻摇晃来和宝宝互动。这种规律、轻柔的动作没有问题，大家不用太担心，注意下摇晃幅度、频率不要太大即可。</p> <p>像这种就太激烈了，宝宝还小大家可别这么做！</p> <p><img class=\"aligncenter  wp-image-111566\" title=\"5\" src=\"/data2/www/yygcms/Core//..//Uploads/emotion/Zy5PSBaO47HF.gif\" alt=\"\" width=\"400\" height=\"227\" /></p> <p>还有，抛接宝宝、让宝宝坐在膝盖上向后翻躺这2种也很危险，大家谨记！此外，从另一方面给大家强调给宝宝使用安全座椅的重要性：对宝宝来说，急刹车时那一瞬间造成的冲击力可能会宝宝头部造成伤害。</p> <p>现在，大家是否相对全面认识到婴儿摇晃综合征了呢？希望各位都能呵护好宝宝，切勿大力摇晃他们。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 前两天，有一朋友吐槽自己婆婆在哄孩子睡觉时总是摇晃宝宝，怎么说都不听。生活中，确实有不少家长在哄宝宝时会习惯性做摇晃动作。其实，达妈已经多', '', '', '42', '1', '2017-09-18 19:20:48', '2017-09-18 19:20:48', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('177', 'Stop！孕妈咪餐后不能做的5件事', ' <p>女性在怀孕以后需要注意的事情有很多，要知道有时候饭后的一些小动作习惯也会影响宝宝的发育，所以孕妈在饭后这些事情是绝对不能做的：</p> <p><img class=\"size-full wp-image-111693 aligncenter\" title=\"184\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5TSBHU3zx.jpeg\" alt=\"\" width=\"275\" height=\"366\" /></p> <p><strong>1.立即躺床上休息</strong></p> <p>很多孕妈在吃完饭之后会立即躺倒床上休息，这样是不可取的。要知道食物在胃里消化是需要一段时间的，如果立即躺下休息，会造成胃部不适，消化不良，给身体带来困扰的同时，也会给宝宝带来伤害。</p> <p><strong>2.立即喝水或是饮料</strong></p> <p>有些孕妈在吃完饭之后喜欢喝上一杯水或是饮料，这样只会加重孕妇肠胃负担，造成胃部不适，严重的话还会影响胎儿的正常发育。所以孕妈在饭后不要立即喝水或是饮料，最好等到半小时之后，这样既是为了自身健康也是为了让胎儿健康成长。</p> <p><strong>3.立即饭后吃水果</strong></p> <p>孕期，女性为了补充营养会吃各种新鲜的蔬菜与水果，这很正确。但也要选好时间才行，吃完饭以后，孕妈需要一段时间消化，如果这时候再吃水果，往往会造成消化不良，甚至出现便秘的情况，所以孕妈最好饭后等一段时间之后再吃水果。</p> <p><strong>4.饭后激烈运动</strong></p> <p>吃完饭以后，胃里的食物是需要一段时间来消化的。如果这时候激烈运动，很容易造成胃痉挛引发呕吐腹泻情况，严重的话还有可能引发流产。所以孕妈在饭后不要立即做瑜伽或是激烈运动。如果想运动，可以跟家人一起去散散步，促进消化。</p> <p><strong>5.饭后立马洗澡</strong></p> <p>很多孕妈喜欢在吃完饭之后立马就洗澡，这样的做法并不可取。因为饭后食物还没有消化，如果这时候洗澡，很容易引发消化问题，严重的话还有可能造成休克情况出现。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 女性在怀孕以后需要注意的事情有很多，要知道有时候饭后的一些小动作习惯也会影响宝宝的发育，所以孕妈在饭后这些事情是绝对不能做的：  1.立即', '', '', '42', '1', '2017-09-18 19:20:49', '2017-09-18 19:20:49', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('178', '孩子不爱玩玩具，原因竟是妈妈太爱收拾屋子', ' <p>如果宝宝不爱玩玩具，那么有些妈妈们应该反思一下是不是自己太勤劳了。对，你没有看错，家里太整洁可能会让宝宝对玩具失去热情哟~~</p> <p><img class=\"aligncenter size-full wp-image-107480\" title=\"361\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBNi70M3.jpeg\" alt=\"\" width=\"300\" height=\"450\" /></p> <p><span style=\"color: #ff6600;\"><strong>▼ 宝宝不爱玩玩具，原因竟在这里</strong></span></p> <p>有个妈妈很爱干净，家里打扫的纤尘不染，甚至连孩子的玩具都擦拭的干干净净、摆放的整整齐齐，但是孩子却不怎么爱玩。还有一位妈妈，家里收拾的明显没有上一位妈妈家里整洁，包括孩子的玩具，从来没有整齐收拾过，但是她的孩子却对自己的这些玩具爱不释手。各位家长们看到这里是否很奇怪，难道孩子爱不爱玩具和家里的整洁度有关吗?</p> <p>在心理学上有这么一个故事，有一栋房子的玻璃被熊孩子砸破了，直至所有的玻璃都没能幸免。后来房子换了主人，新主人每次都在玻璃被砸破后及时的换上了新玻璃，正是这块崭新的玻璃，阻止了熊孩子想要砸玻璃的心，这就是心理学上的破窗理论。</p> <p>孩子之所以不爱玩玩具，正符合了破窗理论，由于妈妈把玩具收拾的整整齐齐，孩子的内心本能的不想去破坏，所以渐渐失去了玩玩具的兴致。如果这个孩子还整天被爸爸妈妈强迫收拾玩具，或者经常因为乱放玩具而被指责，那么孩子肯定更不想去触碰那些收拾好的玩具了。</p> <p>反之，如果家长对孩子玩玩具没有任何的约束，孩子会觉得很自由很开心，自然而然就会经常玩玩具。</p> <p>所以喽，大家不妨多包容孩子一些，玩具乱一点也不要太介意。有一位著名的经济学家蒂姆.哈福德曾经说过：“混乱更能激发创造力。”所以，玩具间的混乱更能激发孩子无限的想象力和创造力，千万不要让干净整洁毁掉了孩子的创造力。</p> <p><img class=\"aligncenter size-full wp-image-107477\" title=\"401\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBsSB52.jpeg\" alt=\"\" width=\"350\" height=\"262\" /></p> <p><span style=\"color: #ff6600;\"><strong>▼ 宝宝爱玩玩具，能力发展快</strong></span></p> <p>为孩子提供一个宽松的环境，他们玩玩具能更尽兴，这样不仅能使亲子关系更加亲密，还能让孩子在玩玩具的过程中潜移默化的提升相应的能力。</p> <p><strong>1.手眼协调能力</strong></p> <p>玩具有很多种，玩法也各异。宝宝在玩玩具的过程中，能锻炼孩子手指的精细动作，还能提升手眼协调能力，促进大脑发育，让宝宝越来越聪明。比如，毛绒玩具能使宝宝的手指抓握能力得到锻炼。</p> <p><strong>2.智力发展</strong></p> <p>现在的玩具越来越多种多样，除了能让宝宝感受到玩耍的快乐，还能促进智力发展。就比如现在的益智玩具，它们能加快宝宝神经系统发育，让神经元联结变得紧密。益智玩具有：七巧板、积木、魔方等等。</p> <p><strong>3.语言沟通能力</strong></p> <p>宝宝的语言沟通能力越强，他未来的发展也就更顺利。加强宝宝的语言沟通能力可以从表达、协商、合作三个方面入手，有一些玩具在这三方面作用很突出，比如拟人化的布娃娃。拟人化的布娃娃在日常生活中能扮演宝宝的伙伴，让宝宝的语言能力变得更强。</p> <p><strong>4.健康向上的性格</strong></p> <p>如果宝宝从小就喜欢玩玩具，那么他就不会变得很孤僻，有利于健康向上的性格的养成。经常玩玩玩具，能让宝宝获得乐趣笑口常开，保持乐观积极的生活态度。</p> <p><img class=\"aligncenter size-full wp-image-107478\" title=\"403\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5USBrwEvXF.jpeg\" alt=\"\" width=\"350\" height=\"194\" /></p> <p><span style=\"color: #ff6600;\"><strong>▼ 孩子乱丢玩具，父母请这样做</strong></span></p> <p>玩具摆放乱一点对孩子有好处，但是并不代表纵容他乱丢玩具，因为很多时候孩子乱丢玩具是带有情绪的。所以，当孩子出现乱丢玩具的现象时，家长应该及时教育。</p> <p><strong>1.丢盒子里</strong></p> <p>如果孩子喜欢扔，那家长们就给他提供盒子让他扔进去。</p> <p><strong>2.不予理睬</strong></p> <p>当孩子乱扔玩具时可以采取冷处理，随便他折腾。等到孩子再要用却找不到时，家长们就帮他一起收拾，让孩子知道，只有收拾好玩具才能方便下一次玩耍，这样孩子便能慢慢领会到整理玩具的好处了。</p> <p><strong>3.增加有声玩具</strong></p> <p>有些孩子乱扔玩具纯粹是喜欢听东西砸到地上的声音，家长们可以买一些自带声音的玩具，来转移孩子的好奇心。</p> <p><strong>5.正确引导孩子</strong></p> <p>当孩子开始会乱扔的时候，家长应该提供一些可以扔的玩具，比如皮球等。当孩子过了那个年龄段后，家长就要开始教育孩子不能乱扔东西。所以说，关键还是要看家长能否把握好这个度。</p> <p><strong>6.寻找合适的“游戏地”</strong></p> <p>家长们可以把玩具分散在家里的各个地方，或者在车子里、爷爷奶奶家也放几个玩具，这样能提高玩具的使用率。</p> <p><strong>7.巧妙循环保持新鲜感</strong></p> <p>不要一下子把所有玩具都堆在孩子面前，这样容易让孩子不专心，而且孩子很容易对这些玩具丧失新鲜感。家长们应该循环的把玩具给孩子玩，以保持新鲜感。</p> <p><strong>8.保持房间卫生</strong></p> <p>以上所说的让玩具乱一点并不代表让屋子脏，所以懒癌妈妈们可不要暗自高兴了。如果屋子经常不打扫卫生，灰尘满天飞，孩子经常在这种环境下生活、玩耍，很容易生病。所以家长们还是要保持家里的卫生，勤打扫，至于孩子的玩具还是交给孩子自己处理吧。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 如果宝宝不爱玩玩具，那么有些妈妈们应该反思一下是不是自己太勤劳了。对，你没有看错，家里太整洁可能会让宝宝对玩具失去热情哟~~  ▼ 宝宝不', '', '', '42', '1', '2017-09-18 19:20:51', '2017-09-18 19:20:51', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('179', '能做到这六点 你的孩子绝不会笨', ' <p>聪明孩子使每个家长都想拥有的，这样孩子长大以后才会有所作为。但是在生活中，许多孩子并不如意。其实，出现这种原因主要还是因为家长没有让他们坚持做这几件事情：</p> <p><img class=\"size-full wp-image-111699 aligncenter\" title=\"6\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5WSB2P5DOD.jpeg\" alt=\"\" width=\"350\" height=\"250\" /></p> <p><span style=\"color: #008080;\"><strong>1.健康饮食</strong></span></p> <p>合理健康的饮食习惯才能满足孩子对营养的各种需求。但是，现在大部分的孩子都有各种不良的饮食习惯，比如吃零食，这样不仅危害身体健康，还会影响孩子大脑发育。所以家长要让孩子健康饮食，以满足孩子的成长需求，提高孩子的大脑兴奋度。不要再让孩子吃垃圾食品（糖果、色素、爆米花）等。家长在平时也可以多给孩子吃些有助于智力发育的食物，比如香、蕉苹果等。</p> <p><span style=\"color: #008080;\"><strong>2.适度游戏</strong></span></p> <p>为了让孩子好好学习，有的家长都不允许孩子玩游戏。过度的玩游戏是会影响孩子的效率，甚至会导致孩子孤僻或是思维沉闷。但是适度的游戏则可以让孩子放松心情，缓解学习压力，甚至在虚拟的世界中看见不同的景象，以提高孩子的想象力与反应能力。家长可以跟孩子玩些益智类的游戏，把握好时间就行。孩子是否聪明除了天赋之外，还跟孩子平时的生活与学习习惯有很大关系。</p> <p><span style=\"color: #008080;\"><strong>3.保持阅读习惯</strong></span></p> <p>随着电子产品的普及，现在很多孩子都没有阅读的习惯了、长此以往，孩子的大脑变得越来越匮乏，记忆力越来越差，思维也变得懒散，在学习上也跟不上节奏。所以家长还是要让孩子养成阅读的习惯，这样对孩子的成长以及智力发育都是非常有帮助的。</p> <p><span style=\"color: #008080;\"><strong>4.让孩子学点音乐</strong></span></p> <p>音乐有着潜移默化的教化功能，孩子经常听音乐一方面能感受到音乐的美，另一方面也能陶冶孩子的性情，对身心发育有很大益处，它能提升孩子的生活品味以及个人魅力、更重要的是，它能促进孩子脑细胞的发展，提高孩子的智力、想象力。</p> <p><span style=\"color: #008080;\"><strong>5.坚持运动</strong></span></p> <p>现在很多家庭都没有运动的习惯，这就导致孩子的身体素质变差，身体各个方面的反应能力也随之下降。为此，家长不如让孩子多多运动，这不仅是为了改善孩子的心血功能，让孩子长个子，更是为了刺激大脑发育，增强自身记忆力。家长在周末的时候可以让孩子跟着自己去户外走走，跑跑步，或是去游泳。</p> <p><span style=\"color: #008080;\"><strong>6.早睡早起</strong></span></p> <p>现在，很多孩子因为参加了各种培训班导致作业量加大或是孩子沉迷于电视、游戏而导致熬夜或是晚睡。这不仅会造成孩子的抵抗能力下降，还会影响孩子的大脑以及智力发育。长此以往只会让孩子的精神压力越来越大，产生更多的负面情绪。但如果让孩子早睡早起，孩子的精神状态、身体素质都会非常的好。这样不仅能锻炼孩子的意志还能促进宝宝大脑发育。这就需要家长要以身作则，调整好自己的生活作息。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 聪明孩子使每个家长都想拥有的，这样孩子长大以后才会有所作为。但是在生活中，许多孩子并不如意。其实，出现这种原因主要还是因为家长没有让他们坚', '', '', '42', '1', '2017-09-18 19:20:52', '2017-09-18 19:20:52', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('180', '【育网辟谣】喂奶就不会怀孕？', ' <p><img class=\"size-full wp-image-111716 aligncenter\" title=\"630-200(22)\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBic2me9.jpeg\" alt=\"\" width=\"630\" height=\"200\" /></p> <p>不少妈妈觉得哺乳期不需要避孕，因为没来月经就不会排卵，所以在哺乳期和老公同房时都没有采取避孕措施。事实真的如此吗？今天的《<a href=\"http://news.ci123.com/article/tag/%e8%82%b2%e7%bd%91%e8%be%9f%e8%b0%a3\">育网辟谣</a>》就给大家揭开真相。</p> <p><img class=\"size-full wp-image-111717 alignleft\" title=\"1\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSB6z5OUE.jpeg\" alt=\"\" width=\"85\" height=\"85\" /><strong>哺乳期不会怀孕。</strong></p> <p>哺乳期没有月经就不会排卵，不用担心会怀孕。</p> <p><img class=\"size-full wp-image-111718 alignleft\" title=\"2\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBcV8D8B.jpeg\" alt=\"\" width=\"86\" height=\"86\" /><strong>哺乳期有可能会怀孕。</strong></p> <p>哺乳期没来月经不代表不排卵，同房有可能会怀孕。</p> <p><img class=\"alignnone size-full wp-image-111719\" title=\"3\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBKMBRG3.jpeg\" alt=\"\" width=\"630\" height=\"70\" /></p> <p><span style=\"color: #ff6699;\"><strong>哺乳期有可能会怀孕</strong></span></p> <p>生活中，不少妈妈认为产后没来月经就不会怀孕，不用采取避孕措施。真的是这样吗？我们一起来看看：</p> <p><span style=\"color: #000000;\"><strong>产后不来月经≠不排卵</strong></span></p> <p>哺乳期怀孕的可能性很低，但并不是说完全不会怀孕。通常而言，哺乳期妈妈第一次来月经在产后2-8个月这段时间，而<a href=\"http://news.ci123.com/article/tag/%e4%ba%a7%e5%90%8e\">产后</a>排卵功能恢复最快只需36-42天。</p> <p>这就是说产后虽然很久不来月经，但第一次月经来潮前卵巢可能已经开始排卵了。如果妈妈在月经来潮前没有采取正确的避孕措施，就存在着怀孕的可能。在民间人们把这种哺乳期怀孕的现象，称为“暗怀”。</p> <p><span style=\"color: #000000;\"><strong>哺乳期怀孕风险大</strong></span></p> <p>再说女性在分娩后很虚弱，身体各个组织器官想要恢复到怀孕前的状态需要很长时间。如果在哺乳期怀孕会有很大风险：</p> <p>1.产后子宫没有复原，此时怀孕有可能引起很多并发症，比如胎盘粘连、<a href=\"http://news.ci123.com/article/20957.html\">前置胎盘</a>等。</p> <p>2.产后体虚需要及时补充营养促进身体恢复，此时怀孕有可能造成妈妈贫血、机体免疫力下降。</p> <p>3.产后妈妈需要悉心照顾新生儿，此时再次怀孕不但不利于宝宝的健康成长，还会增加身体负担，有可能会落下病根。</p> <p>育姐在这里提醒各位妈妈，哺乳期≠安全期。虽然产后8周内怀孕的可能性很小，但不是没有怀孕的可能。为了自己的身体和宝宝的健康成长，产后同房时一定要采取避孕措施哦~</p> <p style=\"text-align: center;\"><strong>• 哺乳期避孕的4大原因</strong></p> <p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/iframe/player.html?vid=s00138g5vhs&amp;tiny=0&amp;auto=0\" frameborder=\"0\" width=\"481\" height=\"312\"></iframe></p> <p><span style=\"color: #ff6699;\"><strong>哺乳期避孕的正确打开方式</strong></span></p> <p>那么，问题来了：在哺乳期，大家该如何科学避孕呢？我们一起来了解一下。</p> <p><span style=\"color: #000000;\"><strong>1.产后第一次同房就要避孕</strong></span></p> <p>有的妈妈产后排卵功能恢复很迅速，虽然没有来月经，但排卵可能已经发生了。因此，避孕工作应从产后第一次同房就开始。</p> <p><span style=\"color: #000000;\"><strong>2.剖腹产妈妈更要注意避孕</strong></span></p> <p>剖腹产会在子宫上留下疤痕，如果产后再次怀孕，有胚囊可能会在疤痕处着床。一旦发生这种情况，会给妈妈带来很大的危险。</p> <p>另外，剖腹产妈妈一旦在哺乳期怀孕，想要人工流产存在一定困难，方法不当有可能会造成子宫穿孔。所以，<a href=\"http://news.ci123.com/article/107523.html\">剖腹产</a>妈妈在同房时一定要做好避孕措施啊~</p> <p><span style=\"color: #000000;\"><strong>3.采取正确的避孕方式，不要吃避孕药</strong></span></p> <p><strong>（1）避孕套</strong></p> <p>避孕套使用起来很方便，不但能有效预防性病，还不影响月经的恢复，是哺乳期避孕不错的选择。</p> <p><strong>（2）宫内节育器</strong></p> <p>宫内节育器在子宫内放置好后，避孕效果能达数年之久，十分显著。如果想要再次怀孕，取出来即可。顺产妈妈只要产后没有发生感染，可以马上放宫内节育器；而剖腹产妈妈则需等待6个月才能放置宫内节育器。</p> <p><strong>（3）其他避孕方法</strong></p> <p>比如外用避孕药、阴道隔膜、绝育手术等，大家可根据实际情况选用。</p> <p><span style=\"color: #000000;\">TIP：莫选避孕药</span></p> <p>虽然<a href=\"http://news.ci123.com/article/100791.html\">避孕药</a>使用起来很方便，但它含有黄体酮、雌激素、睾丸酮等成分。服用避孕药不仅会阻碍身体生成泌乳素，影响母乳分泌，而且其有效性成分还会通过母乳进入宝宝体内，不利于宝宝的正常发育，所以产后避孕最好别吃避孕药。另外，提醒大家，紧急避孕药副作用更大，更不建议服用。</p> <p><img class=\"size-full wp-image-111721 aligncenter\" title=\"642\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5YSBY0EfL1.jpeg\" alt=\"\" width=\"350\" height=\"210\" /></p> <p><span style=\"color: #ff6699;\"><strong>哺乳期再次怀孕，究竟该怎么办？</strong></span></p> <p>如果妈妈在哺乳期怀孕了，那该怎么办才好呢？别着急，育姐来告诉你：</p> <p><span style=\"color: #000000;\"><strong>1.尽快检查，采取应对措施</strong></span></p> <p>如果发现自己怀孕了，妈妈要及时去医院做检查，积极跟医生沟通，避免错过最佳的流产时间。至于能不能继续给宝宝喂奶，要根据自身恢复情况和宝宝的适应情况来决定。</p> <p><span style=\"color: #000000;\"><strong>2.若选择流产，应选择合适的流产方式</strong></span></p> <p>如果选择<a href=\"http://news.ci123.com/article/111345.html\">流产</a>，那么就要选择合适的方式进行流产。哺乳期流产有两种方式可以选择：无痛流产和普通流产。</p> <p>无痛流产需要全麻，手术当天不能给宝宝喂奶，等到药物完全代谢后，就可以给宝宝喂奶了。而普通流产不需要麻醉，手术时会有点疼，但不影响给宝宝喂奶。</p> <p>需要注意的是，无论采取何种方式流产都要告诉医生自己正在哺乳期，方便医生选择合适的抗生素。</p> <p><span style=\"color: #000000;\"><strong>3.怀孕后停止给宝宝喂奶</strong></span></p> <p>哺乳期怀孕会使体内的激素分泌发生改变，影响母乳正常分泌。因此育姐建议大家：发现自己怀孕了，要马上停止给宝宝喂奶；选择做人流且在手术中没有使用特殊药物，可以在两个星期后恢复给宝宝喂母乳。</p> <p><img class=\"alignnone  wp-image-111720\" title=\"4\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5ZSBFG1Q4G.jpeg\" alt=\"\" width=\"630\" height=\"50\" /></p> <p>哺乳期也可能会怀孕，而且风险还不小，所以大家哺乳期同房时一定要做好避孕措施！</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', '  不少妈妈觉得哺乳期不需要避孕，因为没来月经就不会排卵，所以在哺乳期和老公同房时都没有采取避孕措施。事实真的如此吗？今天的《育网辟谣》就给', '', '', '43', '1', '2017-09-18 19:20:55', '2017-09-18 19:20:55', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('181', '前置胎盘威胁母子安全,孕期全方位观察须到位', ' <p>正常情况下，胎盘是覆盖子宫的顶部的，但如果你是前置胎盘，胎盘就只是部分覆盖宫颈。每200至250次怀孕案例中有一例会出现这种情况，并且前置胎盘的严重程度不等。子宫颈可能是完全地（称为一个完整的或全部的前置），部分地，或者只是轻微由胎盘覆盖着。</p> <div> <p><strong>前置胎盘可能会使婴儿遭受失血，畸形等</strong></p> <p>大多数情况下，前置胎盘随着妊娠的进展会自我纠正，然而，在大约10％的情况下，前置胎盘从目前来看仍可能会导致并发症。由于胎盘无法提供最佳的营养，婴儿可能遭受失血，先天性畸形，或者胎儿在子宫内发育迟缓等。妈妈可能处于出血，剖腹产，或胎盘侵袭的较高风险之中，需要进行子宫切除术。</p> <p><strong>前置胎盘多影响高龄孕妇，曾做过子宫手术的妇女等</strong></p> <p>前置胎盘最常见的是影响高龄孕妇，抽烟的妇女，生育过很多次或者生过多胞胎的妇女，妇女在早期的妊娠过程中出现过前置胎盘，或在之前曾经做过子宫手术，如剖腹产或人工流产等。许多妇女提醒她们的照顾者，在孕中期和孕晚期会出现无痛性出血的前置胎盘。出血可能或轻或重，也可能会突然停止，但通常会再次出现。其他常见的适应症包括早产宫缩，宝宝的异常定位，子宫测量得比正常的大。如果这些症状都存在，你的医生会为你进行超声检查，以确定或排除前置胎盘。很少会进行阴道检查，通常在手术室里，在出血的情况下，医疗小组会准备进行剖宫产。</p> <p><strong>前置胎盘的解决方法</strong></p> <p>如果你被诊断为前置胎盘，但是不会出现出血的现象，你的医生可能会给宝宝更多的时间来成熟，会建议你卧床休息，对阴道区域进行额外的护理，避免使用卫生棉条，避免性交和灌洗等。如果你开始流血了，你的医生将评估你的宝宝的肺部发展，以防需要进行紧急剖腹产，并且你需要通过验血，将研究你的失血以及会做好输血的准备。如果你的宝宝还没有准备好迎接这个世界，你的医生可能给你的宝宝一个促进宝宝的肺部生长的类固醇注射，并且你也会被给予静脉注射的液体和氧气，以确保你和你的宝宝都不会遭受失血。</p> <p>大多数妇女被诊断为前置胎盘会采取剖腹分娩，防止出现不受控制的出血。有些胎盘边际前置的，可能也会采取阴道分娩。但无论你的胎儿是通过阴道分娩的还是通过剖腹分娩的，都需要得到周到的照顾。</p> </div> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 正常情况下，胎盘是覆盖子宫的顶部的，但如果你是前置胎盘，胎盘就只是部分覆盖宫颈。每200至250次怀孕案例中有一例会出现这种情况，并且前置', '', '', '42', '1', '2017-09-18 19:20:56', '2017-09-18 19:20:56', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('182', '出现这些迹象 说明你的北鼻很累了', ' <p>婴幼儿很容易变得疲劳。一旦他们感到疲惫，你会更难哄他们入睡，因此你如果能提前发现疲倦的迹象，你就能让孩子轻松入睡。</p> <p><img class=\"size-full wp-image-111695 aligncenter\" title=\"111\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5eSBdSC6GF.jpeg\" alt=\"\" width=\"350\" height=\"233\" /></p> <p><span style=\"color: #ff6600;\"><strong>疲惫的迹象：发现它们很重要</strong></span></p> <p>孩子们会通过行为的改变来表示厌倦。例如，孩子可能突然变得易怒、过度活跃或有过高的要求。</p> <p>寻找孩子的“疲倦迹象”是很重要的。这些迹象让你知道什么时候该减少刺激，让孩子逐渐入睡。如果你等到孩子变得过度劳累，那你就很难安顿他了。</p> <p><span style=\"color: #ff6600;\"><strong>新生儿疲惫的迹象</strong></span></p> <p>新生儿如果已经醒了一到一个半小时，他们很可能就已经开始感到疲惫了。如果新生儿很疲惫，你可能会看到以下这些症状：拉耳朵、握拳头、打呵欠、抖动眼皮或难以集中注意力，除此之外，还可能有皱眉、吮吸手指等动作&#8211;这是个好兆头，可能意味着宝宝正在试图找到入睡的方法。</p> <p><span style=\"color: #ff6600;\"><strong>婴儿和幼儿疲惫的迹象</strong></span></p> <p>3-6个月：宝宝可能会在醒后半个小时到一个小时后感到疲惫。</p> <p>6-12个月：宝宝可能会在2-3小时的清醒后感到疲倦。</p> <p>12-18个月：如果孩子错过了早上或下午的睡眠，他可能会感到疲劳。</p> <p>如果宝宝累了，你可能会看到以下这些疲惫的迹象：举止笨拙、粘人、哭泣、要求持续的关注、对玩具感到厌烦和对进食感到烦躁。</p> <p><span style=\"color: #ff6600;\"><strong>如何分别是疲惫还是饥饿</strong></span></p> <p>有时候当孩子表现出烦躁和哭闹的时候，你很难分辨出孩子是累了还是饿了。如果宝宝在过去的两个小时内吃过东西但是还在不住地哭闹，他可能已经累了。如果你不确定，那就试着喂他一下，如果他只喝一点奶，而且还在哭闹，那么他就需要睡觉。</p> <p><span style=\"color: #ff6600;\"><strong>孩子很疲倦，就要减少刺激</strong></span></p> <p>如果孩子表现出疲倦的迹象，通过减少刺激，让他准备好睡觉是一个好主意。你可以这样做：带孩子去他通常睡觉的地方，把玩具放回原位，轻声说话、哄他去睡觉，关闭窗帘和百叶窗，如果需要的话，把灯也关掉或者安静地播放音乐&#8211;这有助于减少背景噪音。</p> <p>通常孩子可能只需要几分钟的安静时间，就会放松，准备好上床睡觉。如果你的家庭氛围比较吵闹，你的孩子可能需要一些额外的安静时间来睡觉。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 婴幼儿很容易变得疲劳。一旦他们感到疲惫，你会更难哄他们入睡，因此你如果能提前发现疲倦的迹象，你就能让孩子轻松入睡。  疲惫的迹象：发现它们', '', '', '42', '1', '2017-09-18 19:21:00', '2017-09-18 19:21:00', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('183', '嫌老师胖 英国女子要为孩子转学', ' <p>见过转学的，没见过这么转学的！据美国《纽约邮报》报道，英国一名女子不允许女儿再去上幼儿园，并且将转学，这其中的缘由竟然是嫌弃女儿的老师太胖了。这一举动引起了众人热议。</p> <p><img class=\"size-full wp-image-111705 aligncenter\" title=\"8\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5iSBqJBHU5.jpeg\" alt=\"\" width=\"275\" height=\"366\" /></p> <p><span style=\"color: #ff6600;\"><strong>老师挺好的 就是太胖了</strong></span></p> <p>这名女子名叫弗里曼，她专门撰文来解释此事，她表示女儿的老师很好，对女儿非常好，人很不错。但是，当她看到她2岁的女儿和老师一起玩的时候，很不放心：老师因为胖，总是气喘吁吁，动作也很是迟缓。考虑到孩子的安全，也考虑到老师的榜样作用对孩子的影响，她决定让孩子停止上幼儿园，并准备转学。</p> <p><span style=\"color: #ff6600;\"><strong>遭受众人指责 依旧我行我素</strong></span></p> <p>而后，很多网友表示弗里曼的行为太过分了，这是在歧视肥胖人士，甚至是“反女权者”。对此，弗里曼不认可，她表示自己之前因为生病，也曾经是个胖妹，而她的奶奶也是严重肥胖人士。她这么做，只是不希望将这种不好的生活方式传授给女儿。她表示，歧视是不对的，但是肥胖也是不可取的，人们没必要如此维护。</p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 见过转学的，没见过这么转学的！据美国《纽约邮报》报道，英国一名女子不允许女儿再去上幼儿园，并且将转学，这其中的缘由竟然是嫌弃女儿的老师太胖', '', '', '43', '1', '2017-09-18 19:21:05', '2017-09-18 19:21:05', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('184', '姐姐被扯头发，依然实力护弟', ' <p>二胎家庭乐趣多，“矛盾”也多，两个熊孩子在一起免不了要磕磕碰碰。然而，下面这个视频中的小姐姐实在是太暖啦！尽管被弟弟扯了头发，忍着痛也要护着他。</p> <p><img class=\"size-full wp-image-111702 aligncenter\" title=\"1\" src=\"/data2/www/yygcms/Core//..//Uploads/topic/Zy5lSBLO25t7.jpeg\" alt=\"\" width=\"350\" height=\"259\" /></p> <p>视频中，妈妈发现女儿的头发被弟弟拉扯，很是心疼，于是企图帮助女儿教训下弟弟。然而小姐姐却告诉妈妈，弟弟这么做只是一个意外，弟弟不是故意的，请求妈妈原谅弟弟。这一暖心举动简直就是实力护弟，姐弟情满满滴~</p> <p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/iframe/player.html?vid=o03996elr84&amp;tiny=0&amp;auto=0\" frameborder=\"0\" width=\"542\" height=\"422\"></iframe></p> <p> </p> <p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p> ', ' 二胎家庭乐趣多，“矛盾”也多，两个熊孩子在一起免不了要磕磕碰碰。然而，下面这个视频中的小姐姐实在是太暖啦！尽管被弟弟扯了头发，忍着痛也要护', '', '', '44', '1', '2017-09-18 19:21:07', '2017-09-18 19:21:07', '0', '0', '0');

-- ----------------------------
-- Table structure for yyg_customer
-- ----------------------------
DROP TABLE IF EXISTS `yyg_customer`;
CREATE TABLE `yyg_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_customer
-- ----------------------------

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
