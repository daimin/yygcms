/*
Navicat MySQL Data Transfer

Source Server         : my-centos
Source Server Version : 50712
Source Host           : 192.168.199.138:3306
Source Database       : yygcms

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-08-14 23:15:32
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
INSERT INTO `yyg_admins` VALUES ('admin', '5875943b585efd90d60d32343f127004', '2013-07-16 15:43:05', '2017-08-14 23:14:19', '1', '1');
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
) ENGINE=MyISAM AUTO_INCREMENT=696 DEFAULT CHARSET=utf8;

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
INSERT INTO `yyg_attac` VALUES ('622', '459870795731117e339f0369a491f39c.jpg', '/Upload/20131014/459870795731117e339f0369a491f39c.jpg', '2013-10-14 22:16:38', null);
INSERT INTO `yyg_attac` VALUES ('621', '6c9d0deb809abdbd00d1a31790463cdd.jpg', '/Upload/20131014/6c9d0deb809abdbd00d1a31790463cdd.jpg', '2013-10-14 22:16:38', null);
INSERT INTO `yyg_attac` VALUES ('444', 'a04eaae6621295e3dabb20bef088dcc1.jpg', '/Upload/20130902/a04eaae6621295e3dabb20bef088dcc1.jpg', '2013-09-02 11:18:44', null);
INSERT INTO `yyg_attac` VALUES ('204', 'a9e099e98edb7d9cc57fd52a05c0182d.jpg', '/Upload/20130719/a9e099e98edb7d9cc57fd52a05c0182d.jpg', '2013-07-19 15:01:14', null);
INSERT INTO `yyg_attac` VALUES ('203', '6b094ae41417f6a9119102733d9cbfdc.jpg', '/Upload/20130719/6b094ae41417f6a9119102733d9cbfdc.jpg', '2013-07-19 14:35:02', null);
INSERT INTO `yyg_attac` VALUES ('201', '03fbd12c64a27e0c2e6addb10ac8fa33.jpg', '/Upload/20130719/03fbd12c64a27e0c2e6addb10ac8fa33.jpg', '2013-07-19 14:06:15', null);
INSERT INTO `yyg_attac` VALUES ('200', '6366a089102616bd01b30f0b8a4a500a.jpg', '/Upload/20130719/6366a089102616bd01b30f0b8a4a500a.jpg', '2013-07-19 14:06:15', null);
INSERT INTO `yyg_attac` VALUES ('199', '5b86462dabe0c66fd95f994d5e464ad2.jpg', '/Upload/20130719/5b86462dabe0c66fd95f994d5e464ad2.jpg', '2013-07-19 14:06:14', null);
INSERT INTO `yyg_attac` VALUES ('247', '3ba08bfdebc5a1acbc25199a5fc24128.jpg', '/Upload/20130725/3ba08bfdebc5a1acbc25199a5fc24128.jpg', '2013-07-25 23:49:00', null);
INSERT INTO `yyg_attac` VALUES ('197', '860784b9cb176169cc964456d134e262.jpg', '/Upload/20130719/860784b9cb176169cc964456d134e262.jpg', '2013-07-19 13:59:09', null);
INSERT INTO `yyg_attac` VALUES ('198', '1fcb59aae89ba564469921df4f84fbc6.jpg', '/Upload/20130719/1fcb59aae89ba564469921df4f84fbc6.jpg', '2013-07-19 14:06:14', null);
INSERT INTO `yyg_attac` VALUES ('193', 'da4d2d0bb870a637862dcaabd30b1023.jpg', '/Upload/20130719/da4d2d0bb870a637862dcaabd30b1023.jpg', '2013-07-19 11:01:07', '1.莲花\r<br/>2.佛');
INSERT INTO `yyg_attac` VALUES ('192', '5d6315407096243f8953428c3753b3ac.jpg', '/Upload/20130719/5d6315407096243f8953428c3753b3ac.jpg', '2013-07-19 10:57:40', '1.人生\r\n2.等待');
INSERT INTO `yyg_attac` VALUES ('191', '6feae87ebdf6821fa4316c869bc97a83.jpg', '/Upload/20130719/6feae87ebdf6821fa4316c869bc97a83.jpg', '2013-07-19 10:54:43', null);
INSERT INTO `yyg_attac` VALUES ('190', '05ad62b6ec7d6ae3617aec25c848af5e.jpg', '/Upload/20130719/05ad62b6ec7d6ae3617aec25c848af5e.jpg', '2013-07-19 10:53:39', null);
INSERT INTO `yyg_attac` VALUES ('218', 'fb110b708ae525bdf63ae435dbedcf5b.jpg', '/Upload/20130722/fb110b708ae525bdf63ae435dbedcf5b.jpg', '2013-07-22 23:00:49', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('219', '3039e037c109c9dcd4fb7eab05225a37.jpg', '/Upload/20130722/3039e037c109c9dcd4fb7eab05225a37.jpg', '2013-07-22 23:00:49', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('220', 'b3f963f8d281fe2ac1f326105e0ac379.jpg', '/Upload/20130722/b3f963f8d281fe2ac1f326105e0ac379.jpg', '2013-07-22 23:01:19', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('221', '7deaf2431378ebf94dab24f4ab1d5311.jpg', '/Upload/20130722/7deaf2431378ebf94dab24f4ab1d5311.jpg', '2013-07-22 23:01:19', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('222', 'f0697e1fbbca254eeef7c7626693d465.jpg', '/Upload/20130722/f0697e1fbbca254eeef7c7626693d465.jpg', '2013-07-22 23:02:29', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.地漏');
INSERT INTO `yyg_attac` VALUES ('223', 'eec244e9976c8e7cab77b592a0035ea9.jpg', '/Upload/20130722/eec244e9976c8e7cab77b592a0035ea9.jpg', '2013-07-22 23:02:29', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.地漏');
INSERT INTO `yyg_attac` VALUES ('224', 'c4620bf395633719fb3649ef1b3e2501.jpg', '/Upload/20130722/c4620bf395633719fb3649ef1b3e2501.jpg', '2013-07-22 23:02:41', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.地漏');
INSERT INTO `yyg_attac` VALUES ('225', 'a4e2da94f01821b85b55ab84329dd8d7.jpg', '/Upload/20130722/a4e2da94f01821b85b55ab84329dd8d7.jpg', '2013-07-22 23:02:42', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）');
INSERT INTO `yyg_attac` VALUES ('226', '0284087e2c1039902be02b237fca96fe.jpg', '/Upload/20130722/0284087e2c1039902be02b237fca96fe.jpg', '2013-07-22 23:03:45', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.卫生间及五金\r<br/>4.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）');
INSERT INTO `yyg_attac` VALUES ('227', 'a5f8bd328b0d231b64a10eae5a5c6c1d.jpg', '/Upload/20130722/a5f8bd328b0d231b64a10eae5a5c6c1d.jpg', '2013-07-22 23:03:51', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.卫生间及五金\r<br/>4.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）');
INSERT INTO `yyg_attac` VALUES ('228', '6de89acb7782db5912c1d96a9ff1b72b.jpg', '/Upload/20130722/6de89acb7782db5912c1d96a9ff1b72b.jpg', '2013-07-22 23:03:56', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.卫生间及五金\r<br/>4.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）');
INSERT INTO `yyg_attac` VALUES ('229', '84628cf91ef2bf838e1f879268f37118.jpg', '/Upload/20130722/84628cf91ef2bf838e1f879268f37118.jpg', '2013-07-22 23:04:01', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.卫生间及五金\r<br/>4.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）');
INSERT INTO `yyg_attac` VALUES ('230', 'effde22818e931501535d9208cc78faa.jpg', '/Upload/20130722/effde22818e931501535d9208cc78faa.jpg', '2013-07-22 23:04:46', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('231', '8c68e44d4369c721d3d46a8c7fd2b5ee.jpg', '/Upload/20130722/8c68e44d4369c721d3d46a8c7fd2b5ee.jpg', '2013-07-22 23:04:46', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('232', '4c32061955181807b787317b4ca426e9.jpg', '/Upload/20130722/4c32061955181807b787317b4ca426e9.jpg', '2013-07-22 23:04:47', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('233', 'a5438b14ca5559eb021777c6ab0ef91e.jpg', '/Upload/20130722/a5438b14ca5559eb021777c6ab0ef91e.jpg', '2013-07-22 23:04:47', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金\r<br/>7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r<br/>8.地漏');
INSERT INTO `yyg_attac` VALUES ('234', 'abb43666a3bbc619d2478ab6f23c819e.jpg', '/Upload/20130722/abb43666a3bbc619d2478ab6f23c819e.jpg', '2013-07-22 23:05:23', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金');
INSERT INTO `yyg_attac` VALUES ('235', 'eb8a5aedcd2db205a127e2475c96e882.jpg', '/Upload/20130722/eb8a5aedcd2db205a127e2475c96e882.jpg', '2013-07-22 23:05:23', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金');
INSERT INTO `yyg_attac` VALUES ('236', 'd203bce76b2bd84d4a14a79a339b8350.jpg', '/Upload/20130722/d203bce76b2bd84d4a14a79a339b8350.jpg', '2013-07-22 23:05:28', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金');
INSERT INTO `yyg_attac` VALUES ('237', '0960d91379b2be271b8390221bcd3e9b.jpg', '/Upload/20130722/0960d91379b2be271b8390221bcd3e9b.jpg', '2013-07-22 23:05:28', '1.铺地砖人工铺贴\r<br/>2.墙砖（含损耗）\r<br/>3.地板（含损耗）\r<br/>4.铝扣板吊顶（含损耗）\r<br/>5.门槛石\r<br/>6.卫生间及五金');
INSERT INTO `yyg_attac` VALUES ('248', 'e874962d20406f5cae794a45cd71fb53.jpg', '/Upload/20130808/e874962d20406f5cae794a45cd71fb53.jpg', '2013-08-08 21:51:50', null);
INSERT INTO `yyg_attac` VALUES ('249', '7348f9cf80eec8e98d1cbaaaa86cca36.jpg', '/Upload/20130808/7348f9cf80eec8e98d1cbaaaa86cca36.jpg', '2013-08-08 21:51:50', null);
INSERT INTO `yyg_attac` VALUES ('250', 'f32b3044d04dc2c9e8453a875e5b83e7.jpg', '/Upload/20130808/f32b3044d04dc2c9e8453a875e5b83e7.jpg', '2013-08-08 21:51:50', null);
INSERT INTO `yyg_attac` VALUES ('251', '0da2eba855ada2813ef9ac34496f77b3.jpg', '/Upload/20130808/0da2eba855ada2813ef9ac34496f77b3.jpg', '2013-08-08 21:51:50', null);
INSERT INTO `yyg_attac` VALUES ('252', '86c0f728058a1eb6e6aa8b4d926032a7.jpg', '/Upload/20130808/86c0f728058a1eb6e6aa8b4d926032a7.jpg', '2013-08-08 22:23:38', null);
INSERT INTO `yyg_attac` VALUES ('253', 'af0a68acba4b482d443242d47459e16d.jpg', '/Upload/20130808/af0a68acba4b482d443242d47459e16d.jpg', '2013-08-08 22:23:38', null);
INSERT INTO `yyg_attac` VALUES ('254', '135ed9a04a91924d51df7ea7e8297755.jpg', '/Upload/20130808/135ed9a04a91924d51df7ea7e8297755.jpg', '2013-08-08 22:23:38', null);
INSERT INTO `yyg_attac` VALUES ('255', '9deffa10e2593cb514f838e5983a47e2.jpg', '/Upload/20130808/9deffa10e2593cb514f838e5983a47e2.jpg', '2013-08-08 22:23:38', null);
INSERT INTO `yyg_attac` VALUES ('256', 'c6d7fac6034130b40c4726a896cee8fe.jpg', '/Upload/20130808/c6d7fac6034130b40c4726a896cee8fe.jpg', '2013-08-08 22:24:20', null);
INSERT INTO `yyg_attac` VALUES ('257', '74fb7a5957bec2e2c14362939e416606.jpg', '/Upload/20130808/74fb7a5957bec2e2c14362939e416606.jpg', '2013-08-08 22:24:21', null);
INSERT INTO `yyg_attac` VALUES ('258', 'fa93897b55f4cc98f787d165f2d6ecd1.jpg', '/Upload/20130808/fa93897b55f4cc98f787d165f2d6ecd1.jpg', '2013-08-08 22:24:21', null);
INSERT INTO `yyg_attac` VALUES ('259', 'e13de32dee748fcd2a6efab5e6c40d93.jpg', '/Upload/20130808/e13de32dee748fcd2a6efab5e6c40d93.jpg', '2013-08-08 22:24:21', null);
INSERT INTO `yyg_attac` VALUES ('260', 'b5ff701b51842ae3731459d0724419d5.jpg', '/Upload/20130808/b5ff701b51842ae3731459d0724419d5.jpg', '2013-08-08 22:26:39', null);
INSERT INTO `yyg_attac` VALUES ('261', '0abac35c86b16d1e9ef777bd2b8e6b4f.jpg', '/Upload/20130808/0abac35c86b16d1e9ef777bd2b8e6b4f.jpg', '2013-08-08 22:28:03', null);
INSERT INTO `yyg_attac` VALUES ('262', '68d7aad0ab7b42308c935fc3d59f8469.jpg', '/Upload/20130808/68d7aad0ab7b42308c935fc3d59f8469.jpg', '2013-08-08 22:28:03', null);
INSERT INTO `yyg_attac` VALUES ('263', '6dff179ac6d9ff106f059dcadd2cb3ef.jpg', '/Upload/20130808/6dff179ac6d9ff106f059dcadd2cb3ef.jpg', '2013-08-08 22:28:03', null);
INSERT INTO `yyg_attac` VALUES ('287', '2ef420db240d21ffcb4b51f80d6f1f3c.jpg', '/Upload/20130808/2ef420db240d21ffcb4b51f80d6f1f3c.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('285', '354da16ee0fca703bfea240d9627a866.jpg', '/Upload/20130808/354da16ee0fca703bfea240d9627a866.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('286', 'f0b9ef8f23dbfc8f58eb8b78a087b469.jpg', '/Upload/20130808/f0b9ef8f23dbfc8f58eb8b78a087b469.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('282', '867677f4219f8d82f3adf07139345b4e.jpg', '/Upload/20130808/867677f4219f8d82f3adf07139345b4e.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('284', 'f05500571c87679e1d02300b4162ce0d.jpg', '/Upload/20130808/f05500571c87679e1d02300b4162ce0d.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('283', '51c62faeccde2d771b21e247aa43839a.jpg', '/Upload/20130808/51c62faeccde2d771b21e247aa43839a.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('281', '2405fa33cacebf7e52a3ee51d4e54395.jpg', '/Upload/20130808/2405fa33cacebf7e52a3ee51d4e54395.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('280', '783949e49c84f49cfabeff9d5fd3cdae.jpg', '/Upload/20130808/783949e49c84f49cfabeff9d5fd3cdae.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('288', '7231c6f2d1ee77aa7f103b3cfc070d25.jpg', '/Upload/20130808/7231c6f2d1ee77aa7f103b3cfc070d25.jpg', '2013-08-08 22:29:44', null);
INSERT INTO `yyg_attac` VALUES ('289', 'e5bfd13efcc109295f202c74cd933599.jpg', '/Upload/20130808/e5bfd13efcc109295f202c74cd933599.jpg', '2013-08-08 22:29:45', null);
INSERT INTO `yyg_attac` VALUES ('290', '1eac2156dfb769f5924951745776a91f.jpg', '/Upload/20130808/1eac2156dfb769f5924951745776a91f.jpg', '2013-08-08 22:29:45', null);
INSERT INTO `yyg_attac` VALUES ('291', 'b3187ea0b2512066d146641cf63d438e.jpg', '/Upload/20130808/b3187ea0b2512066d146641cf63d438e.jpg', '2013-08-08 22:29:45', null);
INSERT INTO `yyg_attac` VALUES ('292', '606800eb8147dcbb74091ea1f2ee7a66.jpg', '/Upload/20130808/606800eb8147dcbb74091ea1f2ee7a66.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('293', 'be09bfcb207290ebd65584e1020ecc22.jpg', '/Upload/20130808/be09bfcb207290ebd65584e1020ecc22.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('294', '4259b60d36018a2a97b33e54ff53554e.jpg', '/Upload/20130808/4259b60d36018a2a97b33e54ff53554e.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('295', '6c16db206e75ca5862e827e3116c7e05.jpg', '/Upload/20130808/6c16db206e75ca5862e827e3116c7e05.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('296', '93b4e847112eded4a02dfd08adbaa6c3.jpg', '/Upload/20130808/93b4e847112eded4a02dfd08adbaa6c3.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('297', '7a870795a278e537c09bdfb424f4b918.jpg', '/Upload/20130808/7a870795a278e537c09bdfb424f4b918.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('298', '2b24e3c1200aff730f817564f40a8f3e.jpg', '/Upload/20130808/2b24e3c1200aff730f817564f40a8f3e.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('299', '0b7499717268fa0791095ef72be8528b.jpg', '/Upload/20130808/0b7499717268fa0791095ef72be8528b.jpg', '2013-08-08 22:30:08', null);
INSERT INTO `yyg_attac` VALUES ('300', 'c443e3d8d8f6da9e79b3e8501aac8d81.jpg', '/Upload/20130808/c443e3d8d8f6da9e79b3e8501aac8d81.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('301', 'bf3e034dd0ecef73fdab2d76e7ffea05.jpg', '/Upload/20130808/bf3e034dd0ecef73fdab2d76e7ffea05.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('302', 'c6984fa7e2864dc401d45778398ded40.jpg', '/Upload/20130808/c6984fa7e2864dc401d45778398ded40.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('303', '4465e420dadd5662776ddee7a6c109c8.jpg', '/Upload/20130808/4465e420dadd5662776ddee7a6c109c8.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('304', '19f8898dd4972f0b3959ed9e5be7046f.jpg', '/Upload/20130808/19f8898dd4972f0b3959ed9e5be7046f.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('305', '5b4ba4669fb4149dcab3f54d25dc36d0.jpg', '/Upload/20130808/5b4ba4669fb4149dcab3f54d25dc36d0.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('306', 'e939d836ced536084b91d1f9f1c3416b.jpg', '/Upload/20130808/e939d836ced536084b91d1f9f1c3416b.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('307', 'c2e262d85007c1de6da5cfe3f9d0b538.jpg', '/Upload/20130808/c2e262d85007c1de6da5cfe3f9d0b538.jpg', '2013-08-08 22:30:09', null);
INSERT INTO `yyg_attac` VALUES ('308', '42de9751ed399a155e5c6853ec76f523.jpg', '/Upload/20130808/42de9751ed399a155e5c6853ec76f523.jpg', '2013-08-08 22:30:36', null);
INSERT INTO `yyg_attac` VALUES ('309', 'df3408a8a301927369c4bc5c5c6928db.jpg', '/Upload/20130808/df3408a8a301927369c4bc5c5c6928db.jpg', '2013-08-08 22:30:36', null);
INSERT INTO `yyg_attac` VALUES ('310', '474155061327bf0cfb55555a9724f764.jpg', '/Upload/20130808/474155061327bf0cfb55555a9724f764.jpg', '2013-08-08 22:30:36', null);
INSERT INTO `yyg_attac` VALUES ('311', '03c07884c6c37d0ed17f9d7bfb388a49.jpg', '/Upload/20130808/03c07884c6c37d0ed17f9d7bfb388a49.jpg', '2013-08-08 22:30:36', null);
INSERT INTO `yyg_attac` VALUES ('312', '6af72977b092c1413a23cc6332a00712.jpg', '/Upload/20130808/6af72977b092c1413a23cc6332a00712.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('313', 'b6e370aa3bd83b74a3e0c033501e5247.jpg', '/Upload/20130808/b6e370aa3bd83b74a3e0c033501e5247.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('314', '8781c36fe8509f232c9e11463a41aeba.jpg', '/Upload/20130808/8781c36fe8509f232c9e11463a41aeba.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('315', '54298e8e84248e523351cf154709147c.jpg', '/Upload/20130808/54298e8e84248e523351cf154709147c.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('316', '1af91426f856b9a685c5f1bbb59272c0.jpg', '/Upload/20130808/1af91426f856b9a685c5f1bbb59272c0.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('317', '5ac9a2978453fe82645283e7dcd49a2d.jpg', '/Upload/20130808/5ac9a2978453fe82645283e7dcd49a2d.jpg', '2013-08-08 22:30:37', null);
INSERT INTO `yyg_attac` VALUES ('318', 'b7bbc62914dd6ea62aeb89862d14988c.jpg', '/Upload/20130808/b7bbc62914dd6ea62aeb89862d14988c.jpg', '2013-08-08 22:31:01', null);
INSERT INTO `yyg_attac` VALUES ('319', 'ac7eb2fd66baab1d4b0c9fe45efed52a.jpg', '/Upload/20130808/ac7eb2fd66baab1d4b0c9fe45efed52a.jpg', '2013-08-08 22:31:01', null);
INSERT INTO `yyg_attac` VALUES ('320', 'b3ba2f7e66fbeb49658a1a2f91142f59.jpg', '/Upload/20130808/b3ba2f7e66fbeb49658a1a2f91142f59.jpg', '2013-08-08 22:31:01', null);
INSERT INTO `yyg_attac` VALUES ('321', 'd8c6585f2fed1e402a57e0a9c7e71b72.jpg', '/Upload/20130808/d8c6585f2fed1e402a57e0a9c7e71b72.jpg', '2013-08-08 22:31:01', null);
INSERT INTO `yyg_attac` VALUES ('322', '880531785e43e6886bd1b36dc2fcb052.jpg', '/Upload/20130808/880531785e43e6886bd1b36dc2fcb052.jpg', '2013-08-08 22:32:03', null);
INSERT INTO `yyg_attac` VALUES ('323', '7756a158dd27b49ace39c133c41d651a.jpg', '/Upload/20130808/7756a158dd27b49ace39c133c41d651a.jpg', '2013-08-08 22:32:03', null);
INSERT INTO `yyg_attac` VALUES ('324', 'e691a0e7b9334ac35fb72390b95c2c6c.jpg', '/Upload/20130808/e691a0e7b9334ac35fb72390b95c2c6c.jpg', '2013-08-08 22:32:21', null);
INSERT INTO `yyg_attac` VALUES ('325', '6f803e0cbe42c8848fd78acaca92dc6e.jpg', '/Upload/20130808/6f803e0cbe42c8848fd78acaca92dc6e.jpg', '2013-08-08 22:32:21', null);
INSERT INTO `yyg_attac` VALUES ('326', 'c1c82f0493ffd0d3cec2b24d2cb26958.jpg', '/Upload/20130808/c1c82f0493ffd0d3cec2b24d2cb26958.jpg', '2013-08-08 22:32:43', null);
INSERT INTO `yyg_attac` VALUES ('327', 'ab95d69b0fb973f76dae75a41bd302ee.jpg', '/Upload/20130808/ab95d69b0fb973f76dae75a41bd302ee.jpg', '2013-08-08 22:33:23', null);
INSERT INTO `yyg_attac` VALUES ('328', '709c510bd3626f9ff52c196808a64b26.jpg', '/Upload/20130808/709c510bd3626f9ff52c196808a64b26.jpg', '2013-08-08 22:33:23', null);
INSERT INTO `yyg_attac` VALUES ('329', 'fd91af1889296d096221ca5fedb5a7fa.jpg', '/Upload/20130808/fd91af1889296d096221ca5fedb5a7fa.jpg', '2013-08-08 22:33:23', null);
INSERT INTO `yyg_attac` VALUES ('330', '994e5aab1e4152764894b63ad41f3ea0.jpg', '/Upload/20130808/994e5aab1e4152764894b63ad41f3ea0.jpg', '2013-08-08 22:33:23', null);
INSERT INTO `yyg_attac` VALUES ('331', 'd0d9bcb33ea39d8245ab2e49d1a01ece.jpg', '/Upload/20130808/d0d9bcb33ea39d8245ab2e49d1a01ece.jpg', '2013-08-08 22:33:23', null);
INSERT INTO `yyg_attac` VALUES ('332', '41fde650f7a365c31f8a7de6eeffd565.jpg', '/Upload/20130808/41fde650f7a365c31f8a7de6eeffd565.jpg', '2013-08-08 22:33:49', null);
INSERT INTO `yyg_attac` VALUES ('333', 'd371f2fb64b141e3ca9749a1045a53d3.jpg', '/Upload/20130808/d371f2fb64b141e3ca9749a1045a53d3.jpg', '2013-08-08 22:33:49', null);
INSERT INTO `yyg_attac` VALUES ('334', '72bc037ec1373c45b6888aa1776dc25a.jpg', '/Upload/20130808/72bc037ec1373c45b6888aa1776dc25a.jpg', '2013-08-08 22:33:50', null);
INSERT INTO `yyg_attac` VALUES ('335', 'd15fbb9964a68550e2d2776394870438.jpg', '/Upload/20130808/d15fbb9964a68550e2d2776394870438.jpg', '2013-08-08 22:33:50', null);
INSERT INTO `yyg_attac` VALUES ('336', '0213cbce24bb6443ca769cd34a39fc33.jpg', '/Upload/20130808/0213cbce24bb6443ca769cd34a39fc33.jpg', '2013-08-08 22:33:50', null);
INSERT INTO `yyg_attac` VALUES ('337', '2bd6cb34b49c7e9a43b0cb24b6346423.jpg', '/Upload/20130808/2bd6cb34b49c7e9a43b0cb24b6346423.jpg', '2013-08-08 22:33:50', null);
INSERT INTO `yyg_attac` VALUES ('338', 'e505d1bbee4de2e221d94376f1d1984d.jpg', '/Upload/20130808/e505d1bbee4de2e221d94376f1d1984d.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('339', '421df04c687ccabf0d2aac57bb4ab526.jpg', '/Upload/20130808/421df04c687ccabf0d2aac57bb4ab526.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('340', 'eaca817945cdb0f81b6f51b8c3ff1b8c.jpg', '/Upload/20130808/eaca817945cdb0f81b6f51b8c3ff1b8c.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('341', 'aab26e9c6ea7ff536ebfafbde4c019af.jpg', '/Upload/20130808/aab26e9c6ea7ff536ebfafbde4c019af.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('342', '2ee41219057de56d753dd95a1adee656.jpg', '/Upload/20130808/2ee41219057de56d753dd95a1adee656.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('343', '3148c2a5a7286480d98a271072b72ff7.jpg', '/Upload/20130808/3148c2a5a7286480d98a271072b72ff7.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('344', '2ea17e699079aa9c952dbe4d95d6f434.jpg', '/Upload/20130808/2ea17e699079aa9c952dbe4d95d6f434.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('345', 'ac08854402ba037e3c36a90d82c68164.jpg', '/Upload/20130808/ac08854402ba037e3c36a90d82c68164.jpg', '2013-08-08 22:34:11', null);
INSERT INTO `yyg_attac` VALUES ('346', 'e14a1198f4be72fa0b74252d64a4d1f7.jpg', '/Upload/20130808/e14a1198f4be72fa0b74252d64a4d1f7.jpg', '2013-08-08 22:34:34', null);
INSERT INTO `yyg_attac` VALUES ('347', 'a4b4cad58f14dd22d3083fc0da089f73.jpg', '/Upload/20130808/a4b4cad58f14dd22d3083fc0da089f73.jpg', '2013-08-08 22:34:34', null);
INSERT INTO `yyg_attac` VALUES ('348', 'f06e3180d0d196c041cdb3c86fc310e8.jpg', '/Upload/20130808/f06e3180d0d196c041cdb3c86fc310e8.jpg', '2013-08-08 22:34:56', null);
INSERT INTO `yyg_attac` VALUES ('349', 'b4ce459b66fd7e64cb01d8910d9a41fb.jpg', '/Upload/20130808/b4ce459b66fd7e64cb01d8910d9a41fb.jpg', '2013-08-08 22:35:10', null);
INSERT INTO `yyg_attac` VALUES ('350', '00bbbfa9b12abdc3d4c1b8e6b70c6e19.jpg', '/Upload/20130808/00bbbfa9b12abdc3d4c1b8e6b70c6e19.jpg', '2013-08-08 22:35:10', null);
INSERT INTO `yyg_attac` VALUES ('351', 'bb24351bf6dc811b7eae76e646fe740c.jpg', '/Upload/20130808/bb24351bf6dc811b7eae76e646fe740c.jpg', '2013-08-08 22:35:11', null);
INSERT INTO `yyg_attac` VALUES ('352', 'c6678492909037a5165574526b5ea7a4.jpg', '/Upload/20130808/c6678492909037a5165574526b5ea7a4.jpg', '2013-08-08 22:35:11', null);
INSERT INTO `yyg_attac` VALUES ('353', '6fd49899e646a2b3294756dcf1d8adec.jpg', '/Upload/20130808/6fd49899e646a2b3294756dcf1d8adec.jpg', '2013-08-08 22:35:11', null);
INSERT INTO `yyg_attac` VALUES ('354', 'e344e5132d4c6b0ffdcdbdc16f6b7eb4.jpg', '/Upload/20130808/e344e5132d4c6b0ffdcdbdc16f6b7eb4.jpg', '2013-08-08 22:35:35', null);
INSERT INTO `yyg_attac` VALUES ('620', '37de4a50e88f79bcbb60245aa86c0427.jpg', '/Upload/20131014/37de4a50e88f79bcbb60245aa86c0427.jpg', '2013-10-14 22:16:38', null);
INSERT INTO `yyg_attac` VALUES ('619', 'd13aab27aadd822f599cc085a61b8658.jpg', '/Upload/20131014/d13aab27aadd822f599cc085a61b8658.jpg', '2013-10-14 22:16:38', null);
INSERT INTO `yyg_attac` VALUES ('618', '09e4334e612997b8394003521d6a810b.jpg', '/Upload/20131014/09e4334e612997b8394003521d6a810b.jpg', '2013-10-14 22:16:10', null);
INSERT INTO `yyg_attac` VALUES ('617', '2004edfdf6da7954d2e13add71a74331.jpg', '/Upload/20131014/2004edfdf6da7954d2e13add71a74331.jpg', '2013-10-14 22:16:10', null);
INSERT INTO `yyg_attac` VALUES ('389', '1e58a09d32fdb888c3842222afd67e74.jpg', '/Upload/20130825/1e58a09d32fdb888c3842222afd67e74.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('390', 'ef9124927dc2520bdda63118036968b9.jpg', '/Upload/20130825/ef9124927dc2520bdda63118036968b9.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('391', '228da7860653072f386e75be68c4b3af.jpg', '/Upload/20130825/228da7860653072f386e75be68c4b3af.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('392', 'a770437576ef1ebcbaa14536ed7a7a3b.jpg', '/Upload/20130825/a770437576ef1ebcbaa14536ed7a7a3b.jpg', '2013-08-25 20:38:39', null);
INSERT INTO `yyg_attac` VALUES ('616', '71c962c92e978aa21ba31dda386bef3e.jpg', '/Upload/20131014/71c962c92e978aa21ba31dda386bef3e.jpg', '2013-10-14 22:16:09', null);
INSERT INTO `yyg_attac` VALUES ('615', '3baf079ff27b24c48749b3c2152e6c2f.jpg', '/Upload/20131014/3baf079ff27b24c48749b3c2152e6c2f.jpg', '2013-10-14 22:16:09', null);
INSERT INTO `yyg_attac` VALUES ('614', 'c9bf1bc99e69a5647f8f24043cfff1da.jpg', '/Upload/20131014/c9bf1bc99e69a5647f8f24043cfff1da.jpg', '2013-10-14 22:14:55', null);
INSERT INTO `yyg_attac` VALUES ('613', '35b7a8fff4a5b93d66a54fc5392dc3e3.jpg', '/Upload/20131014/35b7a8fff4a5b93d66a54fc5392dc3e3.jpg', '2013-10-14 22:14:55', null);
INSERT INTO `yyg_attac` VALUES ('612', '9d6c61990fb04be3a3e7967a26bd4188.jpg', '/Upload/20131014/9d6c61990fb04be3a3e7967a26bd4188.jpg', '2013-10-14 22:14:55', null);
INSERT INTO `yyg_attac` VALUES ('611', 'f53e4efcadc0426d7b17270826e5d044.jpg', '/Upload/20131014/f53e4efcadc0426d7b17270826e5d044.jpg', '2013-10-14 22:14:55', null);
INSERT INTO `yyg_attac` VALUES ('610', '2a51e0aef9c12fc714cf662f1b4d5b6e.jpg', '/Upload/20131014/2a51e0aef9c12fc714cf662f1b4d5b6e.jpg', '2013-10-14 22:14:35', null);
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
INSERT INTO `yyg_attac` VALUES ('609', 'c98185f5baed9e3619a5c1d91e2651fe.jpg', '/Upload/20131014/c98185f5baed9e3619a5c1d91e2651fe.jpg', '2013-10-14 22:14:35', null);
INSERT INTO `yyg_attac` VALUES ('608', 'bfdf5ecf6611b81534703409d4727657.jpg', '/Upload/20131014/bfdf5ecf6611b81534703409d4727657.jpg', '2013-10-14 22:14:35', null);
INSERT INTO `yyg_attac` VALUES ('607', '13db7598e97547ee58086aa49790168e.jpg', '/Upload/20131014/13db7598e97547ee58086aa49790168e.jpg', '2013-10-14 22:14:35', null);
INSERT INTO `yyg_attac` VALUES ('606', 'dfd05d2567ea88add8351585fdb93a2d.jpg', '/Upload/20131014/dfd05d2567ea88add8351585fdb93a2d.jpg', '2013-10-14 22:14:34', null);
INSERT INTO `yyg_attac` VALUES ('605', '5be8d846e6d80499e6f50cc8ed8ff17a.jpg', '/Upload/20131014/5be8d846e6d80499e6f50cc8ed8ff17a.jpg', '2013-10-14 22:14:05', null);
INSERT INTO `yyg_attac` VALUES ('604', '07bf3261d16fb717345f437319042b2b.jpg', '/Upload/20131014/07bf3261d16fb717345f437319042b2b.jpg', '2013-10-14 22:14:05', null);
INSERT INTO `yyg_attac` VALUES ('603', '224476d0dd0fdb3a865aee261e0ab7b1.jpg', '/Upload/20131014/224476d0dd0fdb3a865aee261e0ab7b1.jpg', '2013-10-14 22:14:05', null);
INSERT INTO `yyg_attac` VALUES ('602', '60be3af927dcd9e7214b8ccd24043cb7.jpg', '/Upload/20131014/60be3af927dcd9e7214b8ccd24043cb7.jpg', '2013-10-14 22:14:05', null);
INSERT INTO `yyg_attac` VALUES ('601', 'ff38fe859ce598c41384aebab4ae8c1a.jpg', '/Upload/20131014/ff38fe859ce598c41384aebab4ae8c1a.jpg', '2013-10-14 22:13:17', null);
INSERT INTO `yyg_attac` VALUES ('600', '5c2b2f375df25fee01918b1e1b38b783.jpg', '/Upload/20131014/5c2b2f375df25fee01918b1e1b38b783.jpg', '2013-10-14 22:13:17', null);
INSERT INTO `yyg_attac` VALUES ('599', 'e9dfd566f1e56ae9fe316fa914c87b0e.jpg', '/Upload/20131014/e9dfd566f1e56ae9fe316fa914c87b0e.jpg', '2013-10-14 22:13:17', null);
INSERT INTO `yyg_attac` VALUES ('598', 'ee36348ed3486e49059a089baefa940b.jpg', '/Upload/20131014/ee36348ed3486e49059a089baefa940b.jpg', '2013-10-14 22:13:17', null);
INSERT INTO `yyg_attac` VALUES ('623', '873753394bdfe502d039ec09a488d8e7.jpg', '/Upload/20131014/873753394bdfe502d039ec09a488d8e7.jpg', '2013-10-14 22:16:59', null);
INSERT INTO `yyg_attac` VALUES ('624', '80f2342879ab4c57e0d8c3dbb5317752.jpg', '/Upload/20131014/80f2342879ab4c57e0d8c3dbb5317752.jpg', '2013-10-14 22:16:59', null);
INSERT INTO `yyg_attac` VALUES ('625', '241aec30d3bed0aeca12733715f56677.jpg', '/Upload/20131014/241aec30d3bed0aeca12733715f56677.jpg', '2013-10-14 22:16:59', null);
INSERT INTO `yyg_attac` VALUES ('626', 'fe8196fef2696c52b92a6e6b72fb4869.jpg', '/Upload/20131014/fe8196fef2696c52b92a6e6b72fb4869.jpg', '2013-10-14 22:16:59', null);
INSERT INTO `yyg_attac` VALUES ('645', 'b9b2a4882e04862ef60ec29032a06efa.jpg', '/Upload/20131016/b9b2a4882e04862ef60ec29032a06efa.jpg', '2013-10-16 21:54:54', null);
INSERT INTO `yyg_attac` VALUES ('644', '7572475b81e3ed8a335837637cd13b56.jpg', '/Upload/20131016/7572475b81e3ed8a335837637cd13b56.jpg', '2013-10-16 21:54:54', null);
INSERT INTO `yyg_attac` VALUES ('643', 'b60cdf81cae4cbdf543d89547cb5a0a3.jpg', '/Upload/20131016/b60cdf81cae4cbdf543d89547cb5a0a3.jpg', '2013-10-16 21:54:54', null);
INSERT INTO `yyg_attac` VALUES ('639', '9638a7387b86cb13b44b902ce6c92d54.jpg', '/Upload/20131016/9638a7387b86cb13b44b902ce6c92d54.jpg', '2013-10-16 21:54:17', null);
INSERT INTO `yyg_attac` VALUES ('640', '262fd390fa69e44244157ec17f6a36c0.jpg', '/Upload/20131016/262fd390fa69e44244157ec17f6a36c0.jpg', '2013-10-16 21:54:18', null);
INSERT INTO `yyg_attac` VALUES ('641', 'f9657ae858846bb0bd29b33758f1e674.jpg', '/Upload/20131016/f9657ae858846bb0bd29b33758f1e674.jpg', '2013-10-16 21:54:18', null);
INSERT INTO `yyg_attac` VALUES ('642', 'b912a9f87c784dc3024ca337bd264f76.jpg', '/Upload/20131016/b912a9f87c784dc3024ca337bd264f76.jpg', '2013-10-16 21:54:18', null);
INSERT INTO `yyg_attac` VALUES ('646', '6be6ffdca7eab0817e7ccc8a7a1facf3.jpg', '/Upload/20131016/6be6ffdca7eab0817e7ccc8a7a1facf3.jpg', '2013-10-16 21:54:54', null);
INSERT INTO `yyg_attac` VALUES ('647', 'd6b376eb227affbcbd9008aaa0b2ff96.jpg', '/Upload/20131016/d6b376eb227affbcbd9008aaa0b2ff96.jpg', '2013-10-16 21:54:54', null);
INSERT INTO `yyg_attac` VALUES ('648', 'bcc6e996c0fb571e903db2e8765414ae.jpg', '/Upload/20131016/bcc6e996c0fb571e903db2e8765414ae.jpg', '2013-10-16 21:55:17', null);
INSERT INTO `yyg_attac` VALUES ('649', '63f224436008e76c163fe128d3f7e6cb.jpg', '/Upload/20131016/63f224436008e76c163fe128d3f7e6cb.jpg', '2013-10-16 21:55:17', null);
INSERT INTO `yyg_attac` VALUES ('650', '246eaa47e78e2b95e0dee8137978cba5.jpg', '/Upload/20131016/246eaa47e78e2b95e0dee8137978cba5.jpg', '2013-10-16 21:55:18', null);
INSERT INTO `yyg_attac` VALUES ('651', '228f0becc3f42fee0fcb18cd8fefacef.jpg', '/Upload/20131016/228f0becc3f42fee0fcb18cd8fefacef.jpg', '2013-10-16 21:55:18', null);
INSERT INTO `yyg_attac` VALUES ('652', 'f5fec30f2f4ae61146d45778c54acf9a.jpg', '/Upload/20131016/f5fec30f2f4ae61146d45778c54acf9a.jpg', '2013-10-16 21:55:18', null);
INSERT INTO `yyg_attac` VALUES ('653', 'ea8c0489345d31ba10a65e00b44a9a71.jpg', '/Upload/20131016/ea8c0489345d31ba10a65e00b44a9a71.jpg', '2013-10-16 21:55:18', null);
INSERT INTO `yyg_attac` VALUES ('654', 'bf7f7553c099e5d0aabc9870b7f67d90.jpg', '/Upload/20131016/bf7f7553c099e5d0aabc9870b7f67d90.jpg', '2013-10-16 21:55:18', null);
INSERT INTO `yyg_attac` VALUES ('655', 'f69f70001987d7298d7636db5f29c44c.jpg', '/Upload/20131016/f69f70001987d7298d7636db5f29c44c.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('656', 'ce9696a6dd5ab409c087532cc706e592.jpg', '/Upload/20131016/ce9696a6dd5ab409c087532cc706e592.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('657', '03dd4732e0a74f0e71c246d9166db4f7.jpg', '/Upload/20131016/03dd4732e0a74f0e71c246d9166db4f7.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('658', 'fd87ef22f842d958777530d42022c8c5.jpg', '/Upload/20131016/fd87ef22f842d958777530d42022c8c5.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('659', '46faf42fe8f9d09ff25cf43f462e0aa6.jpg', '/Upload/20131016/46faf42fe8f9d09ff25cf43f462e0aa6.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('660', '763713ff5269eabeeeb8b05da465333b.jpg', '/Upload/20131016/763713ff5269eabeeeb8b05da465333b.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('661', '22fbf2dbe842a1c021fe8c6ea00c8599.jpg', '/Upload/20131016/22fbf2dbe842a1c021fe8c6ea00c8599.jpg', '2013-10-16 21:55:46', null);
INSERT INTO `yyg_attac` VALUES ('662', 'a535fccb9b3f1c1fe98440df55b0384b.jpg', '/Upload/20131016/a535fccb9b3f1c1fe98440df55b0384b.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('663', 'eafbf87d6d222ce7311c36f0e9aaf66a.jpg', '/Upload/20131016/eafbf87d6d222ce7311c36f0e9aaf66a.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('664', 'fa36db368b204333a77da8525493ae8d.jpg', '/Upload/20131016/fa36db368b204333a77da8525493ae8d.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('665', 'af32d320216dc73bd1a7075567cbd209.jpg', '/Upload/20131016/af32d320216dc73bd1a7075567cbd209.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('666', '5cbda364557d3d74f7ccca896abb4cd6.jpg', '/Upload/20131016/5cbda364557d3d74f7ccca896abb4cd6.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('667', 'b2469b6e602f68b95b9048ab0fe23ca9.jpg', '/Upload/20131016/b2469b6e602f68b95b9048ab0fe23ca9.jpg', '2013-10-16 21:56:07', null);
INSERT INTO `yyg_attac` VALUES ('668', '33958a7229b7cb260ff53339c6077dad.jpg', '/Upload/20131016/33958a7229b7cb260ff53339c6077dad.jpg', '2013-10-16 21:56:33', null);
INSERT INTO `yyg_attac` VALUES ('669', '44bf6bf738475a7c17d31a93f8667d60.jpg', '/Upload/20131016/44bf6bf738475a7c17d31a93f8667d60.jpg', '2013-10-16 21:56:33', null);
INSERT INTO `yyg_attac` VALUES ('670', 'cb29b6bbdc961de9e7b72d94aa0f37cd.jpg', '/Upload/20131016/cb29b6bbdc961de9e7b72d94aa0f37cd.jpg', '2013-10-16 21:56:33', null);
INSERT INTO `yyg_attac` VALUES ('671', '38e2c4b4ca42bfd0d2ec4edfa8aa4ce5.jpg', '/Upload/20131016/38e2c4b4ca42bfd0d2ec4edfa8aa4ce5.jpg', '2013-10-16 21:56:34', null);
INSERT INTO `yyg_attac` VALUES ('672', '1b2a0dfbf21e69baf66d34a215b472a9.jpg', '/Upload/20131016/1b2a0dfbf21e69baf66d34a215b472a9.jpg', '2013-10-16 21:56:34', null);
INSERT INTO `yyg_attac` VALUES ('673', 'b795ef8fd64e866553729df4d7227b64.jpg', '/Upload/20131016/b795ef8fd64e866553729df4d7227b64.jpg', '2013-10-16 21:56:58', null);
INSERT INTO `yyg_attac` VALUES ('674', '5c22ef7eed58c06d81ed7ccaff54dd61.jpg', '/Upload/20131016/5c22ef7eed58c06d81ed7ccaff54dd61.jpg', '2013-10-16 21:56:58', null);
INSERT INTO `yyg_attac` VALUES ('675', 'ce1fae58c32254aa6c42a1ad75f35f4d.jpg', '/Upload/20131016/ce1fae58c32254aa6c42a1ad75f35f4d.jpg', '2013-10-16 21:56:58', null);
INSERT INTO `yyg_attac` VALUES ('676', 'd829f8f1566b4c348c3fec7ce567e584.jpg', '/Upload/20131016/d829f8f1566b4c348c3fec7ce567e584.jpg', '2013-10-16 21:56:59', null);
INSERT INTO `yyg_attac` VALUES ('677', '4551cdf033c3f1958c4ab842bcceb1ff.jpg', '/Upload/20131016/4551cdf033c3f1958c4ab842bcceb1ff.jpg', '2013-10-16 21:56:59', null);
INSERT INTO `yyg_attac` VALUES ('678', '7d8ecb041fad1243f958a52f99018ce7.jpg', '/Upload/20131016/7d8ecb041fad1243f958a52f99018ce7.jpg', '2013-10-16 21:56:59', null);
INSERT INTO `yyg_attac` VALUES ('679', '5a99ce334aaaeeb29dffbb74ccf619af.jpg', '/Upload/20131016/5a99ce334aaaeeb29dffbb74ccf619af.jpg', '2013-10-16 21:57:20', null);
INSERT INTO `yyg_attac` VALUES ('680', '6e1095ff03e656b3c9fb6efa66558a86.jpg', '/Upload/20131016/6e1095ff03e656b3c9fb6efa66558a86.jpg', '2013-10-16 21:57:20', null);
INSERT INTO `yyg_attac` VALUES ('681', '3ee7bbe3ae4217f60ba48212ee6f562b.jpg', '/Upload/20131016/3ee7bbe3ae4217f60ba48212ee6f562b.jpg', '2013-10-16 21:57:21', null);
INSERT INTO `yyg_attac` VALUES ('682', 'b66e64eb05639c4b7f5bd90d14e0fbee.jpg', '/Upload/20131016/b66e64eb05639c4b7f5bd90d14e0fbee.jpg', '2013-10-16 21:57:21', null);
INSERT INTO `yyg_attac` VALUES ('683', '9fdeaa0570bb17cec55fdbc56712aafa.jpg', '/Upload/20131016/9fdeaa0570bb17cec55fdbc56712aafa.jpg', '2013-10-16 21:57:21', null);
INSERT INTO `yyg_attac` VALUES ('695', 'c4bd56dc6ec5bbd4bd1ffbdfea686a20.jpg', '/Upload/20131016/c4bd56dc6ec5bbd4bd1ffbdfea686a20.jpg', '2013-10-16 21:58:57', null);
INSERT INTO `yyg_attac` VALUES ('694', 'e80ef3f2c95586ab42c658e1397a6e22.jpg', '/Upload/20131016/e80ef3f2c95586ab42c658e1397a6e22.jpg', '2013-10-16 21:58:57', null);
INSERT INTO `yyg_attac` VALUES ('693', '63699050e37255d8d2ebf5350471311d.jpg', '/Upload/20131016/63699050e37255d8d2ebf5350471311d.jpg', '2013-10-16 21:58:56', null);
INSERT INTO `yyg_attac` VALUES ('692', '1495cf9d9e6decc8438ec931876a66e6.jpg', '/Upload/20131016/1495cf9d9e6decc8438ec931876a66e6.jpg', '2013-10-16 21:58:56', null);
INSERT INTO `yyg_attac` VALUES ('691', '8cf2ea734f9b22c031d757358e8fe59f.jpg', '/Upload/20131016/8cf2ea734f9b22c031d757358e8fe59f.jpg', '2013-10-16 21:58:56', null);

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
INSERT INTO `yyg_attac_rel` VALUES ('213', '48');
INSERT INTO `yyg_attac_rel` VALUES ('218', '68');
INSERT INTO `yyg_attac_rel` VALUES ('219', '68');
INSERT INTO `yyg_attac_rel` VALUES ('220', '68');
INSERT INTO `yyg_attac_rel` VALUES ('221', '68');
INSERT INTO `yyg_attac_rel` VALUES ('222', '69');
INSERT INTO `yyg_attac_rel` VALUES ('223', '69');
INSERT INTO `yyg_attac_rel` VALUES ('224', '69');
INSERT INTO `yyg_attac_rel` VALUES ('225', '69');
INSERT INTO `yyg_attac_rel` VALUES ('226', '70');
INSERT INTO `yyg_attac_rel` VALUES ('227', '70');
INSERT INTO `yyg_attac_rel` VALUES ('228', '70');
INSERT INTO `yyg_attac_rel` VALUES ('229', '70');
INSERT INTO `yyg_attac_rel` VALUES ('230', '71');
INSERT INTO `yyg_attac_rel` VALUES ('231', '71');
INSERT INTO `yyg_attac_rel` VALUES ('232', '71');
INSERT INTO `yyg_attac_rel` VALUES ('233', '71');
INSERT INTO `yyg_attac_rel` VALUES ('234', '72');
INSERT INTO `yyg_attac_rel` VALUES ('235', '72');
INSERT INTO `yyg_attac_rel` VALUES ('236', '72');
INSERT INTO `yyg_attac_rel` VALUES ('237', '72');
INSERT INTO `yyg_attac_rel` VALUES ('247', '67');
INSERT INTO `yyg_attac_rel` VALUES ('248', '90');
INSERT INTO `yyg_attac_rel` VALUES ('249', '90');
INSERT INTO `yyg_attac_rel` VALUES ('250', '90');
INSERT INTO `yyg_attac_rel` VALUES ('251', '90');
INSERT INTO `yyg_attac_rel` VALUES ('252', '91');
INSERT INTO `yyg_attac_rel` VALUES ('253', '91');
INSERT INTO `yyg_attac_rel` VALUES ('254', '91');
INSERT INTO `yyg_attac_rel` VALUES ('255', '91');
INSERT INTO `yyg_attac_rel` VALUES ('256', '91');
INSERT INTO `yyg_attac_rel` VALUES ('257', '91');
INSERT INTO `yyg_attac_rel` VALUES ('258', '91');
INSERT INTO `yyg_attac_rel` VALUES ('259', '91');
INSERT INTO `yyg_attac_rel` VALUES ('260', '92');
INSERT INTO `yyg_attac_rel` VALUES ('261', '94');
INSERT INTO `yyg_attac_rel` VALUES ('262', '94');
INSERT INTO `yyg_attac_rel` VALUES ('263', '94');
INSERT INTO `yyg_attac_rel` VALUES ('280', '95');
INSERT INTO `yyg_attac_rel` VALUES ('281', '95');
INSERT INTO `yyg_attac_rel` VALUES ('282', '95');
INSERT INTO `yyg_attac_rel` VALUES ('283', '95');
INSERT INTO `yyg_attac_rel` VALUES ('284', '95');
INSERT INTO `yyg_attac_rel` VALUES ('285', '95');
INSERT INTO `yyg_attac_rel` VALUES ('286', '95');
INSERT INTO `yyg_attac_rel` VALUES ('287', '95');
INSERT INTO `yyg_attac_rel` VALUES ('288', '95');
INSERT INTO `yyg_attac_rel` VALUES ('289', '95');
INSERT INTO `yyg_attac_rel` VALUES ('290', '95');
INSERT INTO `yyg_attac_rel` VALUES ('291', '95');
INSERT INTO `yyg_attac_rel` VALUES ('292', '96');
INSERT INTO `yyg_attac_rel` VALUES ('293', '96');
INSERT INTO `yyg_attac_rel` VALUES ('294', '96');
INSERT INTO `yyg_attac_rel` VALUES ('295', '96');
INSERT INTO `yyg_attac_rel` VALUES ('296', '96');
INSERT INTO `yyg_attac_rel` VALUES ('297', '96');
INSERT INTO `yyg_attac_rel` VALUES ('298', '96');
INSERT INTO `yyg_attac_rel` VALUES ('299', '96');
INSERT INTO `yyg_attac_rel` VALUES ('300', '96');
INSERT INTO `yyg_attac_rel` VALUES ('301', '96');
INSERT INTO `yyg_attac_rel` VALUES ('302', '96');
INSERT INTO `yyg_attac_rel` VALUES ('303', '96');
INSERT INTO `yyg_attac_rel` VALUES ('304', '96');
INSERT INTO `yyg_attac_rel` VALUES ('305', '96');
INSERT INTO `yyg_attac_rel` VALUES ('306', '96');
INSERT INTO `yyg_attac_rel` VALUES ('307', '96');
INSERT INTO `yyg_attac_rel` VALUES ('308', '97');
INSERT INTO `yyg_attac_rel` VALUES ('309', '97');
INSERT INTO `yyg_attac_rel` VALUES ('310', '97');
INSERT INTO `yyg_attac_rel` VALUES ('311', '97');
INSERT INTO `yyg_attac_rel` VALUES ('312', '97');
INSERT INTO `yyg_attac_rel` VALUES ('313', '97');
INSERT INTO `yyg_attac_rel` VALUES ('314', '97');
INSERT INTO `yyg_attac_rel` VALUES ('315', '97');
INSERT INTO `yyg_attac_rel` VALUES ('316', '97');
INSERT INTO `yyg_attac_rel` VALUES ('317', '97');
INSERT INTO `yyg_attac_rel` VALUES ('318', '98');
INSERT INTO `yyg_attac_rel` VALUES ('319', '98');
INSERT INTO `yyg_attac_rel` VALUES ('320', '98');
INSERT INTO `yyg_attac_rel` VALUES ('321', '98');
INSERT INTO `yyg_attac_rel` VALUES ('322', '99');
INSERT INTO `yyg_attac_rel` VALUES ('323', '99');
INSERT INTO `yyg_attac_rel` VALUES ('324', '100');
INSERT INTO `yyg_attac_rel` VALUES ('325', '100');
INSERT INTO `yyg_attac_rel` VALUES ('326', '101');
INSERT INTO `yyg_attac_rel` VALUES ('327', '102');
INSERT INTO `yyg_attac_rel` VALUES ('328', '102');
INSERT INTO `yyg_attac_rel` VALUES ('329', '102');
INSERT INTO `yyg_attac_rel` VALUES ('330', '102');
INSERT INTO `yyg_attac_rel` VALUES ('331', '102');
INSERT INTO `yyg_attac_rel` VALUES ('332', '103');
INSERT INTO `yyg_attac_rel` VALUES ('333', '103');
INSERT INTO `yyg_attac_rel` VALUES ('334', '103');
INSERT INTO `yyg_attac_rel` VALUES ('335', '103');
INSERT INTO `yyg_attac_rel` VALUES ('336', '103');
INSERT INTO `yyg_attac_rel` VALUES ('337', '103');
INSERT INTO `yyg_attac_rel` VALUES ('338', '104');
INSERT INTO `yyg_attac_rel` VALUES ('339', '104');
INSERT INTO `yyg_attac_rel` VALUES ('340', '104');
INSERT INTO `yyg_attac_rel` VALUES ('341', '104');
INSERT INTO `yyg_attac_rel` VALUES ('342', '104');
INSERT INTO `yyg_attac_rel` VALUES ('343', '104');
INSERT INTO `yyg_attac_rel` VALUES ('344', '104');
INSERT INTO `yyg_attac_rel` VALUES ('345', '104');
INSERT INTO `yyg_attac_rel` VALUES ('346', '105');
INSERT INTO `yyg_attac_rel` VALUES ('347', '105');
INSERT INTO `yyg_attac_rel` VALUES ('348', '106');
INSERT INTO `yyg_attac_rel` VALUES ('349', '107');
INSERT INTO `yyg_attac_rel` VALUES ('350', '107');
INSERT INTO `yyg_attac_rel` VALUES ('351', '107');
INSERT INTO `yyg_attac_rel` VALUES ('352', '107');
INSERT INTO `yyg_attac_rel` VALUES ('353', '107');
INSERT INTO `yyg_attac_rel` VALUES ('354', '108');
INSERT INTO `yyg_attac_rel` VALUES ('444', '48');
INSERT INTO `yyg_attac_rel` VALUES ('566', '46');
INSERT INTO `yyg_attac_rel` VALUES ('598', '119');
INSERT INTO `yyg_attac_rel` VALUES ('599', '119');
INSERT INTO `yyg_attac_rel` VALUES ('600', '119');
INSERT INTO `yyg_attac_rel` VALUES ('601', '119');
INSERT INTO `yyg_attac_rel` VALUES ('602', '120');
INSERT INTO `yyg_attac_rel` VALUES ('603', '120');
INSERT INTO `yyg_attac_rel` VALUES ('604', '120');
INSERT INTO `yyg_attac_rel` VALUES ('605', '120');
INSERT INTO `yyg_attac_rel` VALUES ('606', '121');
INSERT INTO `yyg_attac_rel` VALUES ('607', '121');
INSERT INTO `yyg_attac_rel` VALUES ('608', '121');
INSERT INTO `yyg_attac_rel` VALUES ('609', '121');
INSERT INTO `yyg_attac_rel` VALUES ('610', '121');
INSERT INTO `yyg_attac_rel` VALUES ('611', '122');
INSERT INTO `yyg_attac_rel` VALUES ('612', '122');
INSERT INTO `yyg_attac_rel` VALUES ('613', '122');
INSERT INTO `yyg_attac_rel` VALUES ('614', '122');
INSERT INTO `yyg_attac_rel` VALUES ('615', '123');
INSERT INTO `yyg_attac_rel` VALUES ('616', '123');
INSERT INTO `yyg_attac_rel` VALUES ('617', '123');
INSERT INTO `yyg_attac_rel` VALUES ('618', '123');
INSERT INTO `yyg_attac_rel` VALUES ('619', '124');
INSERT INTO `yyg_attac_rel` VALUES ('620', '124');
INSERT INTO `yyg_attac_rel` VALUES ('621', '124');
INSERT INTO `yyg_attac_rel` VALUES ('622', '124');
INSERT INTO `yyg_attac_rel` VALUES ('623', '125');
INSERT INTO `yyg_attac_rel` VALUES ('624', '125');
INSERT INTO `yyg_attac_rel` VALUES ('625', '125');
INSERT INTO `yyg_attac_rel` VALUES ('626', '125');
INSERT INTO `yyg_attac_rel` VALUES ('639', '129');
INSERT INTO `yyg_attac_rel` VALUES ('640', '129');
INSERT INTO `yyg_attac_rel` VALUES ('641', '129');
INSERT INTO `yyg_attac_rel` VALUES ('642', '129');
INSERT INTO `yyg_attac_rel` VALUES ('643', '130');
INSERT INTO `yyg_attac_rel` VALUES ('644', '130');
INSERT INTO `yyg_attac_rel` VALUES ('645', '130');
INSERT INTO `yyg_attac_rel` VALUES ('646', '130');
INSERT INTO `yyg_attac_rel` VALUES ('647', '130');
INSERT INTO `yyg_attac_rel` VALUES ('648', '131');
INSERT INTO `yyg_attac_rel` VALUES ('649', '131');
INSERT INTO `yyg_attac_rel` VALUES ('650', '131');
INSERT INTO `yyg_attac_rel` VALUES ('651', '131');
INSERT INTO `yyg_attac_rel` VALUES ('652', '131');
INSERT INTO `yyg_attac_rel` VALUES ('653', '131');
INSERT INTO `yyg_attac_rel` VALUES ('654', '131');
INSERT INTO `yyg_attac_rel` VALUES ('655', '132');
INSERT INTO `yyg_attac_rel` VALUES ('656', '132');
INSERT INTO `yyg_attac_rel` VALUES ('657', '132');
INSERT INTO `yyg_attac_rel` VALUES ('658', '132');
INSERT INTO `yyg_attac_rel` VALUES ('659', '132');
INSERT INTO `yyg_attac_rel` VALUES ('660', '132');
INSERT INTO `yyg_attac_rel` VALUES ('661', '132');
INSERT INTO `yyg_attac_rel` VALUES ('662', '133');
INSERT INTO `yyg_attac_rel` VALUES ('663', '133');
INSERT INTO `yyg_attac_rel` VALUES ('664', '133');
INSERT INTO `yyg_attac_rel` VALUES ('665', '133');
INSERT INTO `yyg_attac_rel` VALUES ('666', '133');
INSERT INTO `yyg_attac_rel` VALUES ('667', '133');
INSERT INTO `yyg_attac_rel` VALUES ('668', '134');
INSERT INTO `yyg_attac_rel` VALUES ('669', '134');
INSERT INTO `yyg_attac_rel` VALUES ('670', '134');
INSERT INTO `yyg_attac_rel` VALUES ('671', '134');
INSERT INTO `yyg_attac_rel` VALUES ('672', '134');
INSERT INTO `yyg_attac_rel` VALUES ('673', '135');
INSERT INTO `yyg_attac_rel` VALUES ('674', '135');
INSERT INTO `yyg_attac_rel` VALUES ('675', '135');
INSERT INTO `yyg_attac_rel` VALUES ('676', '135');
INSERT INTO `yyg_attac_rel` VALUES ('677', '135');
INSERT INTO `yyg_attac_rel` VALUES ('678', '135');
INSERT INTO `yyg_attac_rel` VALUES ('679', '136');
INSERT INTO `yyg_attac_rel` VALUES ('680', '136');
INSERT INTO `yyg_attac_rel` VALUES ('681', '136');
INSERT INTO `yyg_attac_rel` VALUES ('682', '136');
INSERT INTO `yyg_attac_rel` VALUES ('683', '136');
INSERT INTO `yyg_attac_rel` VALUES ('691', '138');
INSERT INTO `yyg_attac_rel` VALUES ('692', '138');
INSERT INTO `yyg_attac_rel` VALUES ('693', '138');
INSERT INTO `yyg_attac_rel` VALUES ('694', '138');
INSERT INTO `yyg_attac_rel` VALUES ('695', '138');

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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_category
-- ----------------------------

-- ----------------------------
-- Table structure for yyg_content
-- ----------------------------
DROP TABLE IF EXISTS `yyg_content`;
CREATE TABLE `yyg_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `relurl` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifytime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `viewnum` int(11) DEFAULT '0',
  `parentid` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_content
-- ----------------------------
INSERT INTO `yyg_content` VALUES ('46', '家装一站', '家装一站<img alt=\"\" src=\" /Upload/20130911/309d136e935cc67b671c43705108d3a0.jpg\" />', '', 'index', '1', '2013-07-21 12:00:02', '2013-09-11 22:39:42', '1', '0', '3');
INSERT INTO `yyg_content` VALUES ('47', '360套餐推荐', '360套餐推荐<img alt=\"\" src=\" /Upload/20130911/0e995b21462b97e264cb94861637f807.jpg\" />', 'http://gzmpf.gotoip3.com/index.php/P360/taocan/', 'index', '1', '2013-07-21 12:00:37', '2013-09-11 22:38:38', '1', '0', '1');
INSERT INTO `yyg_content` VALUES ('48', '促销', '促销<img alt=\"\" src=\" /Upload/20130902/a04eaae6621295e3dabb20bef088dcc1.jpg\" /><img alt=\"\" src=\" /Upload/20130902/a04eaae6621295e3dabb20bef088dcc1.jpg\" />', 'http://gzmpf.gotoip3.com/index.php/cuxiao', 'index', '1', '2013-07-21 12:01:04', '2013-09-11 22:39:19', '1', '0', '2');
INSERT INTO `yyg_content` VALUES ('49', '明确目标 高效落实 稳步迈向二季度', '明确目标 高效落实 稳步迈向二季度', '', 'dnews', '1', '2013-07-21 12:41:59', '2013-07-21 12:41:59', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('50', '热烈祝贺爱屋集屋家装“新模式”发布会成功举办', '热烈祝贺爱屋集屋家装“新模式”发布会成功举办', '', 'dnews', '1', '2013-07-21 12:42:13', '2013-07-21 12:42:13', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('51', 'C业务运营中心员工表扬通报', 'C业务运营中心员工表扬通报', '', 'dnews', '1', '2013-07-21 12:42:23', '2013-07-21 12:42:23', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('52', '南北派行业精英深度对话 共谋长远发展', '南北派行业精英深度对话 共谋长远发展', '', 'dnews', '1', '2013-07-21 12:42:34', '2013-07-21 12:42:34', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('53', '总裁杨劲亲临上海分公司指导开业筹备工作', '总裁杨劲亲临上海分公司指导开业筹备工作', '', 'dnews', '1', '2013-07-21 12:42:42', '2013-07-21 12:42:42', '0', '0', '1');
INSERT INTO `yyg_content` VALUES ('55', '西安公司增加案例 - 瑞麟君府', '西安公司增加案例 - 瑞麟君府', '', 'dcast', '1', '2013-07-21 12:56:45', '2013-07-21 12:56:45', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('56', '西安公司增加案例 - 就掌灯', '西安公司增加案例 - 就掌灯', '', 'dcast', '1', '2013-07-21 12:56:54', '2013-07-21 12:56:54', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('57', '上海公司增加案例 - 名都新城', '上海公司增加案例 - 名都新城', '', 'dcast', '1', '2013-07-21 12:57:01', '2013-07-21 12:57:01', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('58', '上海公司增加案例 - 尚海湾', '上海公司增加案例 - 尚海湾', '', 'dcast', '1', '2013-07-21 12:57:09', '2013-07-21 12:57:09', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('59', '郑州公司增加案例 - 自建房', '郑州公司增加案例 - 自建房', '', 'dcast', '1', '2013-07-21 12:57:17', '2013-07-21 12:57:17', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('60', '西安公司增加案例 - 曲江兰亭', '西安公司增加案例 - 曲江兰亭', '', 'dcast', '1', '2013-07-21 12:58:32', '2013-07-21 12:58:32', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('61', '西安公司增加案例 - 龙湖香醍', '西安公司增加案例 - 龙湖香醍', '', 'dcast', '1', '2013-07-21 12:58:39', '2013-07-21 12:58:39', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('62', '西安公司增加案例 - 华远海蓝城', '西安公司增加案例 - 华远海蓝城', '', 'dcast', '1', '2013-07-21 12:58:46', '2013-07-21 12:58:46', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('63', '西安公司增加案例 - 华远海蓝城', '西安公司增加案例 - 华远海蓝城', '', 'dcast', '1', '2013-07-21 12:58:53', '2013-07-21 12:58:53', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('64', '西安公司增加案例 - 小户型', '西安公司增加案例 - 小户型', '', 'dcast', '1', '2013-07-21 12:59:00', '2013-07-21 12:59:00', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('65', '西安公司增加案例 - 乾唐华府', '西安公司增加案例 - 乾唐华府', '', 'dcast', '1', '2013-07-21 12:59:07', '2013-07-21 12:59:07', '0', '0', '1');
INSERT INTO `yyg_content` VALUES ('66', '360优势，我们的优势', '360优势，我们的优势', 'http://gzmpf.gotoip3.com/index.php/P360/youshi.html', 'dnews', '1', '2013-07-21 20:37:15', '2013-09-01 16:33:45', '1', '0', '0');
INSERT INTO `yyg_content` VALUES ('67', '套餐内容', '1.廉价\r\n2.专业\r\n3.耐磨', '', '360taocan', '1', '2013-07-22 23:00:15', '2013-07-25 23:52:29', '1', '0', '1');
INSERT INTO `yyg_content` VALUES ('68', '客餐厅', '1.铺地砖人工铺贴\r\n2.墙砖（含损耗）\r\n3.地板（含损耗）\r\n4.铝扣板吊顶（含损耗）\r\n5.门槛石\r\n6.卫生间及五金\r\n7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r\n8.地漏', '', '360taocan', '1', '2013-07-22 23:01:57', '2013-07-24 22:05:48', '1', '0', '2');
INSERT INTO `yyg_content` VALUES ('69', '卧室', '1.铺地砖人工铺贴\r\n2.墙砖（含损耗）\r\n3.地板（含损耗）\r\n4.铝扣板吊顶（含损耗）\r\n5.门槛石\r\n6.卫生间及五金\r\n7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r\n8.地漏', '', '360taocan', '1', '2013-07-22 23:03:22', '2013-07-24 22:05:54', '1', '0', '3');
INSERT INTO `yyg_content` VALUES ('70', '卫生间', '1.铺地砖人工铺贴\r\n2.墙砖（含损耗）\r\n3.地板（含损耗）\r\n4.铝扣板吊顶（含损耗）\r\n5.门槛石\r\n6.卫生间及五金', '', '360taocan', '1', '2013-07-22 23:04:24', '2013-07-24 22:06:08', '1', '0', '4');
INSERT INTO `yyg_content` VALUES ('71', '厨房', '1.铺地砖人工铺贴\r\n2.墙砖（含损耗）\r\n3.地板（含损耗）\r\n4.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）', '', '360taocan', '1', '2013-07-22 23:05:08', '2013-07-24 22:06:27', '1', '0', '5');
INSERT INTO `yyg_content` VALUES ('72', '入户花园及阳台', '1.铺地砖人工铺贴\r\n2.墙砖（含损耗）\r\n3.地板（含损耗）\r\n4.铝扣板吊顶（含损耗）\r\n5.门槛石\r\n6.卫生间及五金\r\n7.洁具4件套（浴室柜，水龙头，淋浴花酒，坐便器或蹲便器）\r\n8.地漏\r\n9.优雅', '', '360taocan', '1', '2013-07-22 23:05:50', '2013-07-24 22:06:47', '1', '0', '6');
INSERT INTO `yyg_content` VALUES ('73', '奈乐', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:07:11', '2013-08-05 23:07:11', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('74', '明发', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:07:33', '2013-08-05 23:07:33', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('75', '久盛', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:07:55', '2013-08-05 23:07:55', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('76', '合兴世家', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:02', '2013-08-05 23:08:02', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('77', '凯莱', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:11', '2013-08-05 23:08:11', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('78', '罗兰', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:17', '2013-08-05 23:08:17', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('79', '多乐土', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:44', '2013-08-05 23:08:44', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('80', '华润', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:52', '2013-08-05 23:08:52', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('81', '美涂土', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:08:58', '2013-08-05 23:08:58', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('82', '法恩莎', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:09', '2013-08-05 23:09:09', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('83', '金顿', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:16', '2013-08-05 23:09:16', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('84', '金牌', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:24', '2013-08-05 23:09:24', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('85', '摩恩', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:32', '2013-08-05 23:09:32', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('86', '尚高', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:43', '2013-08-05 23:09:43', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('87', '圣象', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:09:49', '2013-08-05 23:09:49', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('88', '圣罗伦', '360材料内容', '', '360cailiao', '1', '2013-08-05 23:10:00', '2013-08-05 23:10:00', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('89', '厨房橱柜', '360材料内容', '', '360cailiao', '1', '2013-08-08 21:50:28', '2013-08-08 21:50:28', '0', '0', '11');
INSERT INTO `yyg_content` VALUES ('90', '默认', '360材料厨房橱柜内容', '', '360cailiao', '1', '2013-08-08 21:51:52', '2013-08-08 21:51:52', '0', '89', '0');
INSERT INTO `yyg_content` VALUES ('91', '门', '360材料奈乐内容', '', '360cailiao', '1', '2013-08-08 22:24:22', '2013-08-08 22:24:22', '0', '73', '0');
INSERT INTO `yyg_content` VALUES ('92', '门槛石', '360材料明发内容', '', '360cailiao', '1', '2013-08-08 22:26:40', '2013-08-08 22:26:40', '0', '74', '0');
INSERT INTO `yyg_content` VALUES ('93', '地板展厅', '360材料内容', '', '360cailiao', '1', '2013-08-08 22:27:33', '2013-08-08 22:27:33', '0', '0', '12');
INSERT INTO `yyg_content` VALUES ('94', '木地板', '360材料地板展厅内容', '', '360cailiao', '1', '2013-08-08 22:28:04', '2013-08-08 22:28:04', '0', '93', '0');
INSERT INTO `yyg_content` VALUES ('95', '木地板', '360材料合兴世家内容', '', '360cailiao', '1', '2013-08-08 22:29:46', '2013-08-08 22:29:46', '0', '76', '0');
INSERT INTO `yyg_content` VALUES ('96', '木地板', '360材料久盛内容', '', '360cailiao', '1', '2013-08-08 22:30:11', '2013-08-08 22:30:11', '0', '75', '0');
INSERT INTO `yyg_content` VALUES ('97', '木地板', '360材料凯莱内容', '', '360cailiao', '1', '2013-08-08 22:30:39', '2013-08-08 22:30:39', '0', '77', '0');
INSERT INTO `yyg_content` VALUES ('98', '木地板', '360材料罗兰内容', '', '360cailiao', '1', '2013-08-08 22:31:03', '2013-08-08 22:31:03', '0', '78', '0');
INSERT INTO `yyg_content` VALUES ('99', '乳胶漆', '360材料多乐土内容', '', '360cailiao', '1', '2013-08-08 22:32:04', '2013-08-08 22:32:04', '0', '79', '0');
INSERT INTO `yyg_content` VALUES ('100', '乳胶漆', '360材料华润内容', '', '360cailiao', '1', '2013-08-08 22:32:22', '2013-08-08 22:32:22', '0', '80', '0');
INSERT INTO `yyg_content` VALUES ('101', '乳胶漆', '360材料美涂土内容', '', '360cailiao', '1', '2013-08-08 22:32:44', '2013-08-08 22:32:44', '0', '81', '0');
INSERT INTO `yyg_content` VALUES ('102', '卫生间洁具', '360材料法恩莎内容', '', '360cailiao', '1', '2013-08-08 22:33:24', '2013-08-08 22:33:24', '0', '82', '0');
INSERT INTO `yyg_content` VALUES ('103', '卫生间洁具', '360材料金顿内容', '', '360cailiao', '1', '2013-08-08 22:33:51', '2013-08-08 22:33:51', '0', '83', '0');
INSERT INTO `yyg_content` VALUES ('104', '卫生间洁具', '360材料金牌内容', '', '360cailiao', '1', '2013-08-08 22:34:12', '2013-08-08 22:34:12', '0', '84', '0');
INSERT INTO `yyg_content` VALUES ('105', '卫生间洁具', '360材料摩恩内容', '', '360cailiao', '1', '2013-08-08 22:34:35', '2013-08-08 22:34:35', '0', '85', '0');
INSERT INTO `yyg_content` VALUES ('106', '卫生间洁具', '360材料尚高内容', '', '360cailiao', '1', '2013-08-08 22:34:57', '2013-08-08 22:34:57', '0', '86', '0');
INSERT INTO `yyg_content` VALUES ('107', '卫生间洁具', '360材料圣象内容', '', '360cailiao', '1', '2013-08-08 22:35:12', '2013-08-08 22:35:12', '0', '87', '0');
INSERT INTO `yyg_content` VALUES ('108', '阳台砖', '360材料圣罗伦内容', '', '360cailiao', '1', '2013-08-08 22:35:36', '2013-08-08 22:35:36', '0', '88', '0');
INSERT INTO `yyg_content` VALUES ('109', '输入你的标题', '<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 贵州每平方装饰工程有限公司是一家以承接公共建筑装饰、住宅、店面、别墅、商务空间、等室内外装饰装修、设计、施工及配套服务于一体的专业性企业。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 每平方秉承“义、信、诚”企业经营理念，视质量为生命，视服务为根源，强化现代化管理，不断引进高素质人才及先进技术。通过不断提高，公司现拥有一批在装饰装修行业设计、施工、管理等方面专业的优秀人才。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 公司自成立之初，独家推出第二代家装套餐模式，即《360元/平方第二代家装套餐》，包含12大主材、包设计、包施工、包辅料、包损耗，36000元/100平米（户型面积），迅速赢得市场一致好评。为全方位体现透明化服务，公司投入重金在贵阳市商圈中心时代广场北8楼设立1200平方的材料实景展示厅，所有主材看得见、摸得着，让家装更透明、更省心。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 360第二代家装套餐以“户型面积”计价方式彻底打破第一代家装套餐以“建筑面积”计价方式，让消费者不再为无需装修的公摊面积买单，计价方式更科学合理；依托每平方强大的资源整合力，360第二代家装套餐更好的弥补了第一代家装套餐的材料缺陷，材料品质更高、更全面，套餐包含的项目更多，使之性价比更好好。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 2011年岁末，每平方迈出第一步，在兴义市未来的城市中心“富康国际商务公馆”设立近1000平米的“360整装家居体验馆”，汇集各大品牌建材，致力给消费者提供轻松一站式完整家装服务，360度全方位家装服务。</span>\r\n</p>', '', 'aboutus', '1', '2013-10-14 21:28:55', '2013-10-14 21:30:11', '1', '0', '0');
INSERT INTO `yyg_content` VALUES ('110', '输入你的标题', '输入你的内容', '', '0', '1', '2013-10-14 21:29:39', '2013-10-14 21:29:39', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('111', '联系我们', '<p>\r\n	<span style=\"font-size:16px;\">美平方贵阳公司电话：0851-5855333 5855222 传真：0851-5847800</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">美平方贵阳公司地址：中华中路时代广场北8楼全层</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">美平方兴义公司电话：0859-3198333 传真：0859-3198222</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">美平方兴义公司地址：瑞金大道富康国际商务公馆12楼全层</span>\r\n</p>', '', 'contactus', '1', '2013-10-14 21:30:18', '2013-10-14 21:30:43', '1', '0', '0');
INSERT INTO `yyg_content` VALUES ('112', '输入你的标题', '输入你的内容', '', '0', '1', '2013-10-14 21:30:31', '2013-10-14 21:30:31', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('113', '输入你的标题', '输入你的内容', '', 'rongyu', '1', '2013-10-14 21:30:47', '2013-10-14 21:30:47', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('114', '输入你的标题', '输入你的内容', '', '0', '1', '2013-10-14 21:31:03', '2013-10-14 21:31:03', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('115', '“家装一站”操作更透明', '<h1 style=\"text-align:center;\">\r\n	“家装一站”操作更透明\r\n</h1>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 长期以来套餐类装饰公司采用的材料“一站式”购齐都是装饰公司与材料供应商合作，其中利益链到底如何却不得而知。久而久之，这种“一站式”购齐被越来越多的业主质疑其可信度。不过，在每平方装饰，一种新的“一站式”模式让利润真正透明起来。</span>\r\n</p>\r\n<h2>\r\n	传统受冲击：不透明\r\n</h2>\r\n<p>\r\n	&nbsp;<span style=\"font-size:14px;\">&nbsp;“起初他还以为能得到很多好处，听上去价格也不算贵，可是通过装修他才发现与自己所想的不同，不仅很多品牌听上去都很难陌生，还发现材料价格并没有得到实惠。”家住世纪南山校区的许女士依然有些懊悔，装修初期家装公司介绍“一站式”购齐，声称这种模式是联合了很多材料商，共同让利，价位都是最优惠的。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 知道装修完毕许女士都未产生过任何海一，后来经朋友透露，其实很多“一站式”购得的材料并未享受到优惠，和经销商零售价格相差不大。知道此时，许女士才恍然大悟，仔细回想，所有材料都是装饰公司定好的价格，自己从未和材料商面谈过，根本搞不清楚到底是不是优惠价。</span>\r\n</p>\r\n<h2>\r\n	打破传统：更放心、更优惠\r\n</h2>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; “与一味将利益放在首位的装饰公司相比，我们更愿意拿出更多的实际行动为业主多解决难题，包括质量保障、材料优惠方面。”居美平方装饰周总满怀信心地告诉记者，只有真心为客户着想，才是长期的策略。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\">&nbsp; 在美平方的众多品牌材料联盟中，各品牌商家已签约承诺，扣除中间环节，把利益直接让给消费者，共同维护消费者利益。而此次推出的居彩·美平方式“家装1站”与以往别家公司采用模式有所不同，所有客户可以在不表明是美平方客户身份的情况下，自行到联盟商家选购商品，自己洽谈、砍价，美平方装饰不会参与，这样就能避免装饰公司从中拿回扣的现象发生。等到谈定价格之后，便可出示由居彩</span><span style=\"font-size:14px;\">·美平方装饰为每一位签约客户提供的“家装1站惠通卡”，便可以在谈定的价格上享受折上折的更多惊喜。</span>\r\n</p>', '', 'onesite', '1', '2013-10-14 21:53:47', '2013-10-14 21:55:15', '1', '0', '0');
INSERT INTO `yyg_content` VALUES ('116', '输入你的标题', '输入你的内容', '', 'zhinan', '1', '2013-10-14 21:55:38', '2013-10-14 21:55:38', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('117', '输入你的标题', '输入你的内容', '', 'zhaopin', '1', '2013-10-14 21:55:44', '2013-10-14 21:55:44', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('118', '输入你的标题', '输入你的内容', '', 'huanbaobaozhang', '1', '2013-10-14 21:59:20', '2013-10-14 21:59:20', '0', '0', '0');
INSERT INTO `yyg_content` VALUES ('119', '水路施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:13:20', '2013-10-16 21:51:23', '1', '0', '1');
INSERT INTO `yyg_content` VALUES ('120', '电路施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:14:07', '2013-10-16 21:51:37', '1', '0', '2');
INSERT INTO `yyg_content` VALUES ('121', '防水施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:14:36', '2013-10-16 21:52:09', '1', '0', '3');
INSERT INTO `yyg_content` VALUES ('122', '铺贴施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:14:56', '2013-10-16 21:52:26', '1', '0', '4');
INSERT INTO `yyg_content` VALUES ('123', '吊顶施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:16:11', '2013-10-16 21:52:41', '1', '0', '5');
INSERT INTO `yyg_content` VALUES ('124', '涂饰施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:16:39', '2013-10-16 21:52:59', '1', '0', '6');
INSERT INTO `yyg_content` VALUES ('125', '涂料施工保障', '工程保障内容', '', 'Gongchengbaozhang', '1', '2013-10-14 22:17:00', '2013-10-16 21:53:17', '1', '0', '7');
INSERT INTO `yyg_content` VALUES ('129', '电', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:54:19', '2013-10-16 21:54:19', '0', '0', '1');
INSERT INTO `yyg_content` VALUES ('130', '洁具', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:54:56', '2013-10-16 21:54:56', '0', '0', '2');
INSERT INTO `yyg_content` VALUES ('131', '砖', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:55:20', '2013-10-16 21:55:20', '0', '0', '3');
INSERT INTO `yyg_content` VALUES ('132', '地板', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:55:48', '2013-10-16 21:55:48', '0', '0', '4');
INSERT INTO `yyg_content` VALUES ('133', '门', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:56:09', '2013-10-16 21:56:09', '0', '0', '5');
INSERT INTO `yyg_content` VALUES ('134', '橱柜', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:56:36', '2013-10-16 21:56:36', '0', '0', '6');
INSERT INTO `yyg_content` VALUES ('135', '涂料', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:57:00', '2013-10-16 21:57:00', '0', '0', '7');
INSERT INTO `yyg_content` VALUES ('136', '水', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:57:22', '2013-10-16 21:57:22', '0', '0', '8');
INSERT INTO `yyg_content` VALUES ('138', '家具', '材料保障内容', '', 'Cailiaobaozhang', '1', '2013-10-16 21:58:58', '2013-10-16 21:58:58', '0', '0', '0');

-- ----------------------------
-- Table structure for yyg_designer
-- ----------------------------
DROP TABLE IF EXISTS `yyg_designer`;
CREATE TABLE `yyg_designer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `rank` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `photo` varchar(200) NOT NULL DEFAULT '',
  `group` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  `degree` varchar(20) NOT NULL DEFAULT '',
  `school` varchar(40) NOT NULL DEFAULT '',
  `worktime` float NOT NULL DEFAULT '0',
  `motto` text,
  `expert` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_designer
-- ----------------------------
INSERT INTO `yyg_designer` VALUES ('90', '张健豪', '高级设计师', '设计师', '/Upload/20130825/68b8e9e6a5e92ba343733216bff5e7cd.png', '1', '2013-08-25 20:44:11', '大专', '海口经济学院', '6', '以诚感人者，人亦诚而应', '现代，欧式，中式，田园');
INSERT INTO `yyg_designer` VALUES ('86', '刘春艳', '高级设计师', '设计师', '/Upload/20130825/2ad70250c32d4ae25bcc9fa5b5c09c1d.png', '1', '2013-08-25 20:16:39', '本科', '吉首大学', '6', '对于设计有着不断探索，追求一种真实与想象空间结合的成果，适用各种实质的物料，光线与影像的新技术做法；色彩，质感，艺术品时尚的家具搭配；合理的的人性空间;完美的设计理念；为业主创造完善的生活空间，演绎自我的居饰品味.', '简欧、田园');
INSERT INTO `yyg_designer` VALUES ('89', '徐鹏峰', '高级设计师', '设计师', '/Upload/20130825/27b443ba3fcb17598c5568a3a7fd1506.png', '1', '2013-08-25 20:42:49', '本科', '黑龙江佳木斯大学', '6', '人之所以能，是因为相信。', '现代简约，中式，简约');
INSERT INTO `yyg_designer` VALUES ('91', '杨荷英', '高级设计师', '设计师', '/Upload/20130825/1730e5546eeba9781515e3cc736025ea.png', '1', '2013-08-25 20:46:23', '本科', '贵阳学院', '3', '人是自身的设计师，需要自己去增光添彩', '现代，中式，田园');
INSERT INTO `yyg_designer` VALUES ('92', '邱月霞', '高级设计师', '设计师', '/Upload/20130825/7d24238ea5a7288760df300cb8cf277d.png', '1', '2013-08-25 20:49:27', '本科', '贵州民族学院', '4', '设计无处不在', '现代简约，欧式');
INSERT INTO `yyg_designer` VALUES ('93', '李和林', '高级设计师', '设计师', '/Upload/20130825/dd4f4f7cfc88fd4cb882bd70e09dc36a.png', '4', '2013-08-25 20:50:45', '本科', '贵州轻工学院', '3', '装饰美的享受是属于客户的,创意的快乐是属于设计师的！', '欧式，现代简约，中式');
INSERT INTO `yyg_designer` VALUES ('94', '吴芳权', '高级设计师', '经理', '/Upload/20130825/f7ab27c764f662007933af7c71ebf4e8.png', '3', '2013-08-25 20:51:50', '本科', '重庆信息工程学院', '8', '设计不是个人的表现，设计师的任务不是保持现状，而是设法改变它。', '现代，田园，简欧');

-- ----------------------------
-- Table structure for yyg_designer_yuding
-- ----------------------------
DROP TABLE IF EXISTS `yyg_designer_yuding`;
CREATE TABLE `yyg_designer_yuding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `mail` varchar(40) NOT NULL DEFAULT '',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `brief` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_designer_yuding
-- ----------------------------
INSERT INTO `yyg_designer_yuding` VALUES ('36', '李贺春', '12122112', '', '', '2013-08-28 16:20:56', '这个不能叫试色了，因为温莎我用了很有一阵了，只是最近越发感觉此水彩的情绪捉摸不定，时常有惊人之处，所以想想把我用过的温莎艺术家水彩记录一下，给大家当做选色时候的参考。');
INSERT INTO `yyg_designer_yuding` VALUES ('34', '刘春艳', '1231221', '', '', '2013-08-28 16:03:05', '$mail$mail$mail‘’\'\'‘’\'\'\'&quot;&quot;&quot;&quot;');
INSERT INTO `yyg_designer_yuding` VALUES ('35', '撒手', '1232111', '', '', '2013-08-28 16:11:17', '向日葵。：让夫妻成为一辈子的情人！\r\n一、男人的五大需求：\r\n1、被理解； 2、被信任；\r\n3、被支持； 4、被认同;\r\n5、被尊重。\r\n二、女人的三大需求\r\n　1、安全感；　2、浪漫；\r\n　3、被宠和被哄。\r\n三、夫妻之间离不开的三大问题\r\n　1、经济问题； 2、性的问题；');
INSERT INTO `yyg_designer_yuding` VALUES ('37', '四大圣地', '112212121', '', '', '2013-08-28 16:21:38', '这个不能叫试色了，因为温莎我用了很有一阵了，只是最近越发感觉此水彩的情绪捉摸不定，时常有惊人之处，所以想想把我用过的温莎艺术家水彩记录一下，给大家当做选色时候的参考。\r\n\r\n温莎总体来说是比较稳定，显色鲜亮，扩散性强，混色性能优异，易开花的水彩，可以说能够当做水彩中的标杆，看水彩颜料的各方面性能都以它来做参考。\r\n但是吧，就是这样好的温莎，其实也有几个奇葩……也可能是我奇葩色买太多了……');
INSERT INTO `yyg_designer_yuding` VALUES ('38', '戴身孝', '32132112', '', '', '2013-08-28 16:31:11', '你好\r\n，哈哈\r\n21312,\r\n121221\r\n12312\r\n123\r\n12312\r\n312');
INSERT INTO `yyg_designer_yuding` VALUES ('39', '宿松县', '12312312', '', '', '2013-08-28 16:32:59', '这个不能叫试色了，因为温莎我用了很有一阵了，只是最近越发感觉此水彩的情绪捉摸不定，时常有惊人之处，所以想想把我用过的温莎艺术家水彩记录一下，给大家当做选色时候的参考。\r<br/>\r<br/>温莎总体来说是比较稳定，显色鲜亮，扩散性强，混色性能优异，易开花的水彩，可以说能够当做水彩中的标杆，看水彩颜料的各方面性能都以它来做参考。\r<br/>但是吧，就是这样好的温莎，其实也有几个奇葩……也可能是我奇葩色买太多了……');

-- ----------------------------
-- Table structure for yyg_homedeco
-- ----------------------------
DROP TABLE IF EXISTS `yyg_homedeco`;
CREATE TABLE `yyg_homedeco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(12) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `caption` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_user_date` (`userid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_homedeco
-- ----------------------------
INSERT INTO `yyg_homedeco` VALUES ('10', '9', '2013-10-09', '112');
INSERT INTO `yyg_homedeco` VALUES ('11', '9', '2013-10-08', '');
INSERT INTO `yyg_homedeco` VALUES ('12', '9', '2013-10-07', '');
INSERT INTO `yyg_homedeco` VALUES ('8', '9', '2013-10-10', '112');
INSERT INTO `yyg_homedeco` VALUES ('9', '9', '2013-10-11', '');

-- ----------------------------
-- Table structure for yyg_homedeco_rel
-- ----------------------------
DROP TABLE IF EXISTS `yyg_homedeco_rel`;
CREATE TABLE `yyg_homedeco_rel` (
  `att_id` int(11) NOT NULL DEFAULT '0',
  `hd_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`att_id`,`hd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_homedeco_rel
-- ----------------------------
INSERT INTO `yyg_homedeco_rel` VALUES ('568', '6');
INSERT INTO `yyg_homedeco_rel` VALUES ('569', '6');
INSERT INTO `yyg_homedeco_rel` VALUES ('570', '6');
INSERT INTO `yyg_homedeco_rel` VALUES ('577', '8');
INSERT INTO `yyg_homedeco_rel` VALUES ('578', '8');
INSERT INTO `yyg_homedeco_rel` VALUES ('579', '8');
INSERT INTO `yyg_homedeco_rel` VALUES ('580', '9');
INSERT INTO `yyg_homedeco_rel` VALUES ('581', '9');
INSERT INTO `yyg_homedeco_rel` VALUES ('582', '9');
INSERT INTO `yyg_homedeco_rel` VALUES ('583', '9');
INSERT INTO `yyg_homedeco_rel` VALUES ('584', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('585', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('586', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('587', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('588', '11');
INSERT INTO `yyg_homedeco_rel` VALUES ('589', '11');
INSERT INTO `yyg_homedeco_rel` VALUES ('590', '11');
INSERT INTO `yyg_homedeco_rel` VALUES ('591', '10');
INSERT INTO `yyg_homedeco_rel` VALUES ('592', '10');
INSERT INTO `yyg_homedeco_rel` VALUES ('593', '10');
INSERT INTO `yyg_homedeco_rel` VALUES ('594', '10');
INSERT INTO `yyg_homedeco_rel` VALUES ('595', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('596', '12');
INSERT INTO `yyg_homedeco_rel` VALUES ('597', '12');

-- ----------------------------
-- Table structure for yyg_homedeco_users
-- ----------------------------
DROP TABLE IF EXISTS `yyg_homedeco_users`;
CREATE TABLE `yyg_homedeco_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_homedeco_users
-- ----------------------------
INSERT INTO `yyg_homedeco_users` VALUES ('9', 'test', 'e66bcb901c8891f4749305bc6c1132f0', '2013-10-10 21:38:53', '1');

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
INSERT INTO `yyg_options` VALUES ('pageSize', '15');
INSERT INTO `yyg_options` VALUES ('keywords', '开源,开源软件,开源网站,开源社区,开源中国社区,java开源,perl开源,python开源,ruby开源,php开源,开源项目,开源代码');
INSERT INTO `yyg_options` VALUES ('description', '开源中国 www.oschina.net 是目前中国最大的开源技术社区。我们传播开源的理念，推广开源项目，为 IT 开发者提供了一个发现、使用、并交流开源技术的平台。目前开源中国社区已收录超过两万款开源软件。&lt;?\\&quot;\\&quot;&gt;');
INSERT INTO `yyg_options` VALUES ('attachAllow', 'png,gif,jpeg,jpg,bmp,zip');
INSERT INTO `yyg_options` VALUES ('seoName', '中国驰名商标 | 中国家居行业的领跑者');
INSERT INTO `yyg_options` VALUES ('copyright', 'Copyright © 360.CN All Rights Reserved.');
INSERT INTO `yyg_options` VALUES ('mail', 'daiming253685@126.com');

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
-- Table structure for yyg_style
-- ----------------------------
DROP TABLE IF EXISTS `yyg_style`;
CREATE TABLE `yyg_style` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `designer` varchar(20) NOT NULL DEFAULT '',
  `huxing` varchar(20) NOT NULL DEFAULT '',
  `area` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_style
-- ----------------------------
INSERT INTO `yyg_style` VALUES ('2', '成功新天地', '乌当', '李合林', '1团-A户型', '110', '2013-09-04 21:18:48');
INSERT INTO `yyg_style` VALUES ('3', '帝景传说', '白云', '李合林', '1团-A户型', '128', '2013-09-04 21:30:39');
INSERT INTO `yyg_style` VALUES ('4', '花果园', '南明', '李合林', '1团-A户型', '90', '2013-09-04 21:54:25');
INSERT INTO `yyg_style` VALUES ('5', '花果园', '南明', '刘春艳', '1团-A户型', '105', '2013-09-04 21:57:59');
INSERT INTO `yyg_style` VALUES ('6', '银海元龙', '云岩', '刘春艳', '1团-A户型', '130', '2013-09-04 21:59:28');
INSERT INTO `yyg_style` VALUES ('7', '银海元隆', '云岩', '邱月霞', '1团-A户型', '110', '2013-09-04 22:00:30');
INSERT INTO `yyg_style` VALUES ('8', '中铁逸都', '白云', '邱月霞', '1团-A户型', '140', '2013-09-04 22:01:11');
INSERT INTO `yyg_style` VALUES ('9', '贝地卢加诺', '云岩', '吴芳权', '1团-A户型', '100', '2013-09-04 22:02:17');
INSERT INTO `yyg_style` VALUES ('10', '保利温泉', '乌当', '吴芳权', '1团-A户型', '130', '2013-09-04 22:02:48');
INSERT INTO `yyg_style` VALUES ('11', '国际城', '小河', '徐鹏峰', '1团-A户型', '98', '2013-09-04 22:04:36');
INSERT INTO `yyg_style` VALUES ('12', '世纪城', '白云', '徐鹏峰', '1团-A户型', '130', '2013-09-04 22:05:15');
INSERT INTO `yyg_style` VALUES ('13', '中铁逸都', '白云', '徐鹏峰', '1团-A户型', '110', '2013-09-04 22:05:53');
INSERT INTO `yyg_style` VALUES ('14', '乌江怡院', '云岩', '杨荷英', '1团-A户型', '90', '2013-09-04 22:06:30');
INSERT INTO `yyg_style` VALUES ('15', '保利温泉', '乌当', '张建豪', '1团-A户型', '110', '2013-09-04 22:07:07');
INSERT INTO `yyg_style` VALUES ('16', '金元国际', '白云', '张建豪', '1团-A户型', '160', '2013-09-04 22:07:41');

-- ----------------------------
-- Table structure for yyg_style_rel
-- ----------------------------
DROP TABLE IF EXISTS `yyg_style_rel`;
CREATE TABLE `yyg_style_rel` (
  `sid` int(11) NOT NULL,
  `style` int(11) NOT NULL,
  PRIMARY KEY (`sid`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_style_rel
-- ----------------------------
INSERT INTO `yyg_style_rel` VALUES ('2', '1');
INSERT INTO `yyg_style_rel` VALUES ('2', '3');
INSERT INTO `yyg_style_rel` VALUES ('2', '4');
INSERT INTO `yyg_style_rel` VALUES ('3', '2');
INSERT INTO `yyg_style_rel` VALUES ('3', '4');
INSERT INTO `yyg_style_rel` VALUES ('4', '1');
INSERT INTO `yyg_style_rel` VALUES ('4', '2');
INSERT INTO `yyg_style_rel` VALUES ('5', '6');
INSERT INTO `yyg_style_rel` VALUES ('6', '4');
INSERT INTO `yyg_style_rel` VALUES ('7', '4');
INSERT INTO `yyg_style_rel` VALUES ('8', '1');
INSERT INTO `yyg_style_rel` VALUES ('9', '2');
INSERT INTO `yyg_style_rel` VALUES ('9', '4');
INSERT INTO `yyg_style_rel` VALUES ('10', '2');
INSERT INTO `yyg_style_rel` VALUES ('10', '4');
INSERT INTO `yyg_style_rel` VALUES ('11', '1');
INSERT INTO `yyg_style_rel` VALUES ('12', '1');
INSERT INTO `yyg_style_rel` VALUES ('12', '2');
INSERT INTO `yyg_style_rel` VALUES ('13', '1');
INSERT INTO `yyg_style_rel` VALUES ('14', '1');
INSERT INTO `yyg_style_rel` VALUES ('15', '1');
INSERT INTO `yyg_style_rel` VALUES ('15', '2');
INSERT INTO `yyg_style_rel` VALUES ('16', '1');
INSERT INTO `yyg_style_rel` VALUES ('16', '3');
INSERT INTO `yyg_style_rel` VALUES ('17', '2');
INSERT INTO `yyg_style_rel` VALUES ('17', '3');

-- ----------------------------
-- Table structure for yyg_yuding
-- ----------------------------
DROP TABLE IF EXISTS `yyg_yuding`;
CREATE TABLE `yyg_yuding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) NOT NULL DEFAULT '0',
  `shi` int(11) NOT NULL DEFAULT '0',
  `ting` int(11) NOT NULL DEFAULT '0',
  `wei` int(11) NOT NULL DEFAULT '0',
  `city` varchar(30) NOT NULL,
  `xiaoqu` varchar(30) NOT NULL,
  `style` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(4) NOT NULL DEFAULT '男',
  `phone` varchar(30) NOT NULL,
  `yusuan` decimal(10,0) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyg_yuding
-- ----------------------------
INSERT INTO `yyg_yuding` VALUES ('37', '102', '2', '1', '1', '广州', '天朗明居', '欧式', '戴敏', '男', '13560093349', '900000', '2013-10-06 10:49:30');
