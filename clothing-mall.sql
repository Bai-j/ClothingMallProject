/*
Navicat MySQL Data Transfer

Source Server         : graduate
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : clothing-mall

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2021-10-09 12:55:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `aname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员姓名',
  `apassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员密码',
  `aemail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员邮箱',
  `aphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员电话',
  `astatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员状态',
  `acode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员激活码',
  `log_time` datetime DEFAULT NULL COMMENT '缁狅紕鎮婇崨妯兼瑜版洘妞傞梻?',
  `logout_time` datetime DEFAULT NULL COMMENT '缁狅紕鎮婇崨妯绘付鏉╂垿鈧偓閸戠儤妞傞梻?',
  `reg_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '绠＄悊鍛樻敞鍐屾椂闂?',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', '123456', '775015864@qq.com', '15899998686', 'Y', '0eefd2c5e9f04986bbbdbd978487267f', '2021-09-28 13:26:18', '2021-09-28 13:29:04', '2021-09-28 13:29:04');
INSERT INTO `admin` VALUES ('2', 'admin2', '123456', '775015864@qq.com', '15899998686', 'Y', '3b0a140569a74a2098757bbd6178a2d1', null, null, '2021-09-14 12:27:53');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `tid` int NOT NULL AUTO_INCREMENT COMMENT '商品类型',
  `tname` varchar(255) NOT NULL COMMENT '商品类型名称',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '女装');
INSERT INTO `category` VALUES ('2', '男装');
INSERT INTO `category` VALUES ('3', '饰品');
INSERT INTO `category` VALUES ('4', '鞋子');

-- ----------------------------
-- Table structure for `clothes`
-- ----------------------------
DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes` (
  `gid` int NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `gname` varchar(255) NOT NULL COMMENT '商品名称',
  `gprice` varchar(255) NOT NULL COMMENT '商品价格',
  `gnum` int NOT NULL COMMENT '商品数量',
  `gcategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品种类',
  `gdescription` varchar(255) NOT NULL COMMENT '商品描述',
  `gimg` varchar(255) NOT NULL COMMENT '商品图片',
  `gup_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '商品上架时间',
  `gdown_time` datetime DEFAULT NULL COMMENT '商品下架时间',
  `gsize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '琛ｆ湇灏虹爜',
  `gcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '鐞涳絾婀囨０婊嗗',
  `gmaterial` varchar(255) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clothes
-- ----------------------------
INSERT INTO `clothes` VALUES ('1', '民国风女装', '298', '200', '1', '民国风女装冬装茶艺服装复古中国风旗袍上衣改良汉服中式唐装茶服，民国中式唐装改良旗袍上衣汉服女中国风秋冬复古丝绒茶服长袖套装，中式唐装，大摆下身裙', 'img/clothes/1.jpg', '2021-09-07 15:10:49', null, 'M，L，均码', '红色', '复古丝绒');
INSERT INTO `clothes` VALUES ('2', '淡如菊（原创中国风）', '198', '200', '1', '淡如菊 清水溪原创中国风女装手绘菊花改良汉服对襟长袖棉麻上衣', 'img/clothes/2.jpg', '2021-09-07 16:02:58', null, 'S，M，L，均码', '米白', '棉麻');
INSERT INTO `clothes` VALUES ('3', '改良汉服', '458', '200', '1', '初蝉原创女装春夏中式中国风真丝复古改良汉服', 'img/clothes/3.jpg', '2021-09-07 15:20:22', null, 'S，M，L，XL', '绿色', '真丝');
INSERT INTO `clothes` VALUES ('4', '阿坡饵古典舞演出服', '109', '200', '1', '阿坡饵古典舞演出服女飘逸 新款 中国风民族舞扇子舞现代舞舞蹈服装', 'img/clothes/4.jpg', '2021-09-07 15:27:11', null, 'M，L，XL', '白色', '其他');
INSERT INTO `clothes` VALUES ('5', '儿童古装汉服', '316', '200', '1', '儿童古装女童汉服仙女裙古代贵妃公主拖尾中国风秋季舞蹈表演服装 ', 'img/clothes/6.jpg', '2021-09-07 15:42:30', null, '均码', '浅黄色', '网纱');
INSERT INTO `clothes` VALUES ('6', '连衣裙', '165.02', '200', '1', '改良文艺棉麻连衣裙中长款两件套套装中国风女装禅意茶人服旗袍秋', 'img/clothes/f1.jpg', '2021-09-07 15:50:20', null, 'S，M，L，XL', '粉色', '棉麻');
INSERT INTO `clothes` VALUES ('7', '改良旗袍', '248', '200', '1', '女装 改良旗袍 夏季新款女 复古中国风连衣裙中长款春秋名族风夏装', 'img/clothes/f2.jpg', '2021-09-07 15:54:48', null, 'S，M，L，XL', '香槟色', '棉麻');
INSERT INTO `clothes` VALUES ('8', '原创汉服', '426', '200', '1', '女装 试罗香清梦原创中国风汉元素精美刺绣云肩飘带汉服', 'img/clothes/f3.jpg', '2021-09-07 16:08:11', null, 'M，L', '银色', '真丝');
INSERT INTO `clothes` VALUES ('9', '吴歌菡萏（原创中国风）', '198', '200', '1', '清水溪中国风女装手绘荷花改良汉服右衽棉麻', 'img/clothes/f4.jpg', '2021-09-07 16:09:42', null, 'S，M，L，均码', '粉色', '棉麻');
INSERT INTO `clothes` VALUES ('10', '长款连衣裙', '150.10', '200', '1', '新款女装夏装复古长款连衣裙女雪纺印花立领短袖裙中风长裙', 'img/clothes/f5.jpg', '2021-09-07 16:04:32', null, 'M，L，XL', '蓝色', '舒适面料');
INSERT INTO `clothes` VALUES ('11', '汉服改良旗袍', '338', '200', '1', '大码女装2021新款夏气质收腰中国风汉服改良旗袍雪纺', 'img/clothes/f6.jpg', '2021-09-07 16:11:13', null, 'M，L，XL', '绿色', '雪纺');
INSERT INTO `clothes` VALUES ('12', '齐胸襦裙', '206', '200', '1', '新款上市汉服女中国风古装古风女装齐腰白菜全套夏季飘逸仙气齐胸襦裙', 'img/clothes/f7.jpg', '2021-09-07 16:15:49', null, 'M，L，XL', '白色', '其他');
INSERT INTO `clothes` VALUES ('13', '水袖裙', '178', '200', '1', '古典舞蹈服女飘逸水袖古风套装中国风演出服清新淡雅渐变色表演服 ', 'img/clothes/f8.jpg', '2021-09-07 16:24:41', null, 'S，M，L，XL，XXL，XXXL', '墨绿色', '棉麻');
INSERT INTO `clothes` VALUES ('14', '邕州司马', '545', '200', '1', '现货【邕州司马】红白刺绣水袖舞姬古风COS古装【流风】锦鲤抄', 'img/clothes/f9.jpg', '2021-09-07 16:24:20', null, 'S，M，L，XL', '红白色', '提花棉 定制双面染色渐变雪纺');
INSERT INTO `clothes` VALUES ('15', '古筝水袖演出服', '298', '200', '1', '汉服女中国风古装高端成人礼服长裙学生古筝水袖演出服装古风红色', 'img/clothes/f10.jpg', '2021-09-07 16:25:57', null, 'S，M，L，XL', '红色', '锦缎');
INSERT INTO `clothes` VALUES ('16', '古琴服', '364.50', '200', '1', '夏季新款古风白色水袖仙女飘逸禅舞服古琴服超仙连衣裙长裙', 'img/clothes/f11.jpg', '2021-09-07 16:27:43', null, 'S，M，L', '白色', '其他');
INSERT INTO `clothes` VALUES ('17', '汉服', '375', '200', '1', '魏晋古风菊花绣袄裙红色绣花马面裙连帽短披风斗蓬忘川汉服秋冬装', 'img/clothes/f12.jpg', '2021-09-07 16:30:31', null, 'S，M，L', '米色上袄 红色马面裙', '涤纶');
INSERT INTO `clothes` VALUES ('18', '藏族水袖', '98', '200', '1', '藏族舞蹈裙练习上衣水袖大摆裙族舞蹈成人演出服水袖', 'img/clothes/f13.jpg', '2021-09-07 16:33:39', null, 'S，M，L', '红色', '其他');
INSERT INTO `clothes` VALUES ('19', '雪丝腾 ', '699', '200', '1', '电视剧司藤同款衣服景甜开衫民族服饰汉服剧服披风外套班晓雪丝腾', 'img/clothes/f15.jpg', '2021-09-07 16:38:41', null, 'M，L，XL', '桃黄色', '蚕丝');
INSERT INTO `clothes` VALUES ('20', '蚀骨旗袍', '310', '200', '1', '2021新款春法式温柔风司藤同款改良蚀骨旗袍泡泡袖碎花连衣裙女夏 花色', 'img/clothes/f16.jpg', '2021-09-07 16:42:15', null, 'S', '花色', '其他');
INSERT INTO `clothes` VALUES ('21', '中式女士唐装', '628', '200', '1', '华族经典复古中式女装唐装女七分袖夏季新款桑蚕丝盘扣上衣中国风\r\n\r\n真丝上衣 经典葫芦扣 大包边 全开襟', 'img/clothes/f17.jpg', '2021-09-07 16:44:46', null, 'S，M，L，XL，XXL，XXXL', '蓝底', '蚕丝 桑蚕丝90% 聚氨酯弹性纤维（氨纶）100%');
INSERT INTO `clothes` VALUES ('22', '中式马褂', '512', '200', '2', '相声服装民国风相声长袍长衫大褂评书经典中国风中式马褂演出服男', 'img/clothes/5.jpg', '2021-09-07 16:44:12', null, 'S，M，L', '黑色', '其他100%');
INSERT INTO `clothes` VALUES ('23', '国潮衬衣', '298', '200', '2', '中国风汉服龙纹图案kimono道袍国潮复古男宽松防晒披风男装衬衣 ', 'img/clothes/m1_1.jpg', '2021-09-07 16:55:00', null, 'L，XL，2XL', '黑色', '聚酯纤维95% 聚氨酯弹性纤（氨纶）5%');
INSERT INTO `clothes` VALUES ('24', '醒狮风衣', '399', '200', '2', '轻漫物语冬季潮牌醒狮风衣男连帽中长款潮流外套加绒加厚大衣国超', 'img/clothes/m2.jpg', '2021-09-07 16:55:03', null, 'M，L，XL，2XL', '白色', '聚酯纤维95% 聚氨酯弹性纤（氨纶）5%');
INSERT INTO `clothes` VALUES ('25', '休闲裤', '202', '200', '2', '轻漫物语原创手绘风国潮雷神火神印画图案裤子潮流男裤休闲裤运动 ', 'img/clothes/m3.jpg', '2021-09-07 16:57:27', null, 'L，XL，2XL', '蓝色', '聚酯纤维95% 聚氨酯弹性纤（氨纶）5%');
INSERT INTO `clothes` VALUES ('26', '连帽外套', '299', '200', '2', '克苏鲁神话游戏卫衣周边男女学生潮牌印花衣服章鱼同款连帽外套潮 ', 'img/clothes/m4.jpg', '2021-09-07 16:58:34', null, 'M，L，XL', '白色', '聚酯纤维95% 聚氨酯弹性纤（氨纶）5%');
INSERT INTO `clothes` VALUES ('27', '醒狮长裤', '256', '200', '2', '轻漫物语醒狮国潮中国风休闲裤男潮舞狮加绒百搭帅气休闲裤长裤子 ', 'img/clothes/m5.jpg', '2021-09-07 17:00:23', null, 'M，L，XL', '黄色', '聚酯纤维95% 聚氨酯弹性纤（氨纶）5%');
INSERT INTO `clothes` VALUES ('28', '中山装', '358', '200', '2', '刺绣立领中山装演出服男士大合唱团舞台表演服主持人歌手礼服套装', 'img/clothes/m6.jpg', '2021-09-07 17:07:35', null, 'S，M，L，XL，2XL', '黑色，白色', '加厚华达呢');
INSERT INTO `clothes` VALUES ('29', '韩版修身中山装', '458', '200', '2', '中山装男中青年韩版修身中华立领西装中国风中式结婚伴郎礼服酒红', 'img/clothes/m7.jpg', '2021-09-07 17:08:49', null, 'S，M，L，XL', '玫红，酒红，浅灰，深灰', '聚酯纤维70% 粘胶纤维（粘纤）30%');
INSERT INTO `clothes` VALUES ('30', '铜扇耳饰', '158', '200', '3', '石七独立设计古董首饰中国风宫廷铜扇挂流苏美国14K包金耳环耳夹', 'img/clothes/a1.jpg', '2021-10-09 11:03:31', null, '均码', '铜金色', '铜、美国14k包金、老琉璃珠');
INSERT INTO `clothes` VALUES ('31', '京剧脸谱毛衣链', '118', '200', '3', '国风京剧刀马旦毛衣链女长款流苏吊坠复古民族风项链气质简约配饰', 'img/clothes/a2.jpg', '2021-10-09 11:07:22', null, '均码', '红色', '合成立方氧化锆/水钻');
INSERT INTO `clothes` VALUES ('32', '中国风美甲', '3.50', '200', '3', '风美甲饰品新款网红京剧戏曲脸谱指甲钻装饰锆石水钻结婚专用', 'img/clothes/a4.jpg', '2021-10-09 12:22:29', null, '长11mm*宽15mm', '01#青衣,02#闺门旦,03#花旦,04#小生,05#公子哥,06#彩旦,07#状元', '合金');
INSERT INTO `clothes` VALUES ('33', '朱砂手机挂饰', '19', '200', '3', '万事大吉 原创朱砂手机挂饰挂链吊坠挂绳 中国风转运手机饰品挂件', 'img/clothes/a5.jpg', '2021-10-09 12:24:53', null, '均码', '红色，白色', '朱砂');
INSERT INTO `clothes` VALUES ('34', '中国风金属书签', '21', '200', '3', '锦鲤团扇古典中国风金属书签创意小清新学生用古风文创礼品礼物 建议10页以下书籍使用', 'img/clothes/a6.jpg', '2021-10-09 12:27:58', null, '均码', '金色', '其他');
INSERT INTO `clothes` VALUES ('35', '簪花记', '65', '200', '3', '簪花记●包邮长流苏簪子发簪古典步摇汉服配饰古装头饰手工中国风', 'img/clothes/a7.jpg', '2021-10-09 12:29:43', null, '17cm', '白色', '禾木');
INSERT INTO `clothes` VALUES ('36', '老北京布鞋', '39.90', '200', '4', '老北京布鞋男刺绣社会鞋子懒人一脚蹬透气韩版潮流中国风快手网红', 'img/clothes/s1.jpg', '2021-10-09 12:33:31', null, '35,36,37', '黑色，白色，红色，花色', '橡胶');
INSERT INTO `clothes` VALUES ('37', '古风汉服松糕鞋', '298', '200', '4', '古风汉服鞋真皮8cm高跟坡跟松糕绣花单鞋民族风内增高古装女鞋夏', 'img/clothes/s2.jpg', '2021-10-09 12:36:09', null, '35,36,37', '浅口，绣花', '二层牛皮（除牛反绒），超细纤维');
INSERT INTO `clothes` VALUES ('38', '旗袍秀模特鞋', '298', '200', '4', '旗袍秀专用T台女鞋真皮高跟单鞋女粗跟防水台白色舒适走秀模特鞋', 'img/clothes/s3.jpg', '2021-10-09 12:38:09', null, '35,36,37,38,39,40', '浅口，水钻', '头层牛皮（除牛反绒），头层猪皮');
INSERT INTO `clothes` VALUES ('39', '汉服鞋', '130', '200', '4', '夏配旗袍的鞋复古布鞋老北京绣花鞋高跟单鞋汉服鞋春秋古风茶服鞋', 'img/clothes/s4.jpg', '2021-10-09 12:40:10', null, '35,36,37,38', '植物花卉', '布');
INSERT INTO `clothes` VALUES ('40', '汉服平底婚鞋', '396', '200', '4', '叁坑少女澜瑶原创古风汉服鞋子平底女配古装淡雅绣花鞋子婚鞋夏季', 'img/clothes/s5.jpg', '2021-10-09 12:44:42', null, '35,36,37', '绣花', '复合材质');
INSERT INTO `clothes` VALUES ('41', '汉服古装翘头鞋', '109', '200', '4', '原创流苏古风汉服鞋子女内增高超仙古装翘头鞋唐制绣花鞋学生夏季', 'img/clothes/s6.jpg', '2021-10-09 12:43:49', null, '35,36,37', '车缝线，绣花', '橡胶');

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT '收藏编号',
  `uid` int NOT NULL COMMENT '用户编号',
  `gid` int NOT NULL COMMENT '鍟嗗搧缂栧彿',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('2', '2', '2');
INSERT INTO `collect` VALUES ('3', '9', '9');
INSERT INTO `collect` VALUES ('4', '2', '3');
INSERT INTO `collect` VALUES ('6', '2', '1');
INSERT INTO `collect` VALUES ('10', '8', '2');
INSERT INTO `collect` VALUES ('11', '8', '1');
INSERT INTO `collect` VALUES ('12', '1', '1');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `coid` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `gid` int NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '8', '1', '很喜欢，穿起来很好看！', '2021-09-24 15:40:40');
INSERT INTO `comment` VALUES ('2', '8', '1', '第二次购买了，很喜欢！', '2021-09-24 15:41:39');
INSERT INTO `comment` VALUES ('3', '8', '28', '给爸爸买的，很合身，穿上显得特别精神。', '2021-09-27 10:58:19');
INSERT INTO `comment` VALUES ('4', '1', '1', '非常喜欢，推荐大家购买哦~', '2021-09-28 13:25:29');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `uid` int NOT NULL COMMENT '用户编号',
  `gid` int NOT NULL COMMENT '商品编号',
  `onum` int NOT NULL COMMENT '下单数量',
  `oprice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '璁㈠崟浠锋牸',
  `order_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '濞戞挸顑呭畷鐔煎籍閸洘锛?',
  `onote` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ostatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `oaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ocode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('9', '8', '1', '4', '1192', '2021-09-24 10:08:56', 'M号', '0', '白忆 14588889898 山西省晋城市', 'cb76340437864920a3d40ca51248abe1');
INSERT INTO `orders` VALUES ('10', '8', '4', '6', '654', '2021-09-24 10:11:37', 'L号', '0', '白忆 11487879999 山西省晋中市', '2e7b5f76ef314fac8620b7d3cc6aa131');
INSERT INTO `orders` VALUES ('11', '8', '1', '1', '298', '2021-09-24 10:12:52', 'L号', '0', '白忆 15588885555 山西省太原市', '2ebecdf4a4ee4e518fa4083bb3489812');
INSERT INTO `orders` VALUES ('12', '8', '2', '1', '198', '2021-09-24 11:04:14', '均码', '0', '白忆 15588885858 江苏省南京市', '1b607fcc1d834e0f9adf39ac8b1c3b22');
INSERT INTO `orders` VALUES ('13', '8', '2', '2', '396', '2021-09-24 11:11:38', 'S号', '0', '白忆 15555558888 山西省太原市小店区', '59693f881b764ef5b318532dc33d10ba');
INSERT INTO `orders` VALUES ('14', '8', '1', '1', '298', '2021-09-24 11:22:02', '', '0', '', '46130c90f32b4095bf28330b1c5b358d');
INSERT INTO `orders` VALUES ('15', '8', '28', '2', '716', '2021-09-27 10:43:50', '一套黑色，一套白色，均要XL号。', '0', '白忆 12555556636 山西省晋城市泽州县', '34b06eda25464962a85977eeb9c61e34');
INSERT INTO `orders` VALUES ('16', '1', '1', '2', '596', '2021-09-28 13:23:31', '均要L号。', '0', '牛十七 15588852252 重庆市永川大数据产业园', '5db8c18132bd40c896fec3d96b09e2c4');

-- ----------------------------
-- Table structure for `shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `sid` int NOT NULL AUTO_INCREMENT COMMENT '购物车编号',
  `uid` int NOT NULL COMMENT '用户编号',
  `gid` int NOT NULL COMMENT '商品编号',
  `add_num` int DEFAULT '1' COMMENT '闁告梻濮鹃崰姗€寮导鏉戞',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('5', '2', '4', '1');
INSERT INTO `shopcart` VALUES ('6', '2', '6', '1');
INSERT INTO `shopcart` VALUES ('7', '1', '1', '1');
INSERT INTO `shopcart` VALUES ('8', '1', '9', '1');
INSERT INTO `shopcart` VALUES ('10', '8', '1', '1');
INSERT INTO `shopcart` VALUES ('12', '8', '4', '1');
INSERT INTO `shopcart` VALUES ('13', '8', '2', '1');
INSERT INTO `shopcart` VALUES ('14', '8', '28', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `uname` varchar(255) NOT NULL COMMENT '用户姓名',
  `upassword` varchar(255) NOT NULL COMMENT '用户密码',
  `uemail` varchar(255) NOT NULL COMMENT '用户邮箱',
  `uphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '鐢ㄦ埛鐢佃瘽',
  `ustatus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '閻劍鍩涢悩鑸碘偓?',
  `ucode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '鐢ㄦ埛婵€娲荤爜',
  `log_time` datetime DEFAULT NULL COMMENT '闂佹椿娼块崝宥夊春濞戙垺鍎岄悹鍥皺缁夊潡鏌￠崘銊у煟婵?',
  `logout_time` datetime DEFAULT NULL COMMENT '闂佹椿娼块崝宥夊春濞戙垹瀚夐柍褜鍓氬濠氬箣閿旂懓浜鹃柍褜鍓熷畷娆撴倻濡椿妲梻?',
  `reg_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '闂佹椿娼块崝宥夊春濞戞ǚ鏋栭柕濞垮劚閺傗偓闂佸搫鍟悥鐓幬?',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'baiyi1', '123456', '775015864@qq.com', null, 'Y', '7470e63b8de342d58ce7732662e02a5a', '2021-09-28 13:19:06', '2021-09-28 13:25:38', '2021-09-28 13:25:38');
INSERT INTO `user` VALUES ('2', 'baiyi2', '123456', '775015864@qq.com', null, 'Y', '6461d2a774dc4b07a813d4917072ea4c', '2021-09-23 16:09:52', '2021-09-03 14:33:47', '2021-09-23 16:09:52');
INSERT INTO `user` VALUES ('7', 'baiyi3', '123456', '775015864@qq.com', '15386867777', 'Y', 'a10602207c2b4fe1b2b7ca5f78744aa6', '2021-10-06 23:13:41', null, '2021-10-06 23:13:41');
INSERT INTO `user` VALUES ('8', 'baiyi4', '123456', '763895864@qq.com', '12345678901', 'Y', null, '2021-09-27 10:23:07', '2021-09-26 00:13:54', '2021-09-27 10:23:07');
