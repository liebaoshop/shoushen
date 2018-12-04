-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-06-05 18:17:58
-- 服务器版本： 5.5.57-log
-- PHP Version: 7.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `democrmeb`
--

-- --------------------------------------------------------

--
-- 表的结构 `eb_article_category`
--

CREATE TABLE IF NOT EXISTS `eb_article_category` (
  `id` int(10) unsigned NOT NULL COMMENT '文章分类id',
  `title` varchar(255) NOT NULL COMMENT '文章分类标题',
  `intr` varchar(255) DEFAULT NULL COMMENT '文章分类简介',
  `image` varchar(255) NOT NULL COMMENT '文章分类图片',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除0未删除',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_cache`
--

CREATE TABLE IF NOT EXISTS `eb_cache` (
  `key` varchar(32) NOT NULL,
  `result` text COMMENT '缓存数据',
  `add_time` int(10) DEFAULT NULL COMMENT '缓存时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `eb_cache`
--

INSERT INTO `eb_cache` (`key`, `result`, `add_time`) VALUES
('wechat_menus', '[{"type":"view","name":"\\u5546\\u57ce\\u9996\\u9875","sub_button":[],"url":"http:\\/\\/shop.crmeb.net\\/wap"},{"type":"view","name":"\\u8054\\u7cfb\\u5ba2\\u670d","sub_button":[],"url":"http:\\/\\/shop.crmeb.net\\/wap\\/service\\/service_list.html"},{"type":"view","name":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","sub_button":[],"url":"http:\\/\\/shop.crmeb.net\\/wap\\/my\\/index.html"}]', 1527502997);

-- --------------------------------------------------------

--
-- 表的结构 `eb_express`
--

CREATE TABLE IF NOT EXISTS `eb_express` (
  `id` mediumint(11) unsigned NOT NULL COMMENT '快递公司id',
  `code` varchar(50) NOT NULL COMMENT '快递公司简称',
  `name` varchar(50) NOT NULL COMMENT '快递公司全称',
  `sort` int(11) NOT NULL COMMENT '排序',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示'
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

--
-- 转存表中的数据 `eb_express`
--

INSERT INTO `eb_express` (`id`, `code`, `name`, `sort`, `is_show`) VALUES
(1, 'LIMINWL', '利民物流', 1, 1),
(2, 'XINTIAN', '鑫天顺物流', 1, 1),
(3, 'henglu', '恒路物流', 1, 1),
(4, 'klwl', '康力物流', 1, 1),
(5, 'meiguo', '美国快递', 1, 1),
(6, 'a2u', 'A2U速递', 1, 1),
(7, 'benteng', '奔腾物流', 1, 1),
(8, 'ahdf', '德方物流', 1, 1),
(9, 'timedg', '万家通', 1, 1),
(10, 'ztong', '智通物流', 1, 1),
(11, 'xindan', '新蛋物流', 1, 1),
(12, 'bgpyghx', '挂号信', 1, 1),
(13, 'XFHONG', '鑫飞鸿物流快递', 1, 1),
(14, 'ALP', '阿里物流', 1, 1),
(15, 'BFWL', '滨发物流', 1, 1),
(16, 'SJWL', '宋军物流', 1, 1),
(17, 'SHUNFAWL', '顺发物流', 1, 1),
(18, 'TIANHEWL', '天河物流', 1, 1),
(19, 'YBWL', '邮联物流', 1, 1),
(20, 'SWHY', '盛旺货运', 1, 1),
(21, 'TSWL', '汤氏物流', 1, 1),
(22, 'YUANYUANWL', '圆圆物流', 1, 1),
(23, 'BALIANGWL', '八梁物流', 1, 1),
(24, 'ZGWL', '振刚物流', 1, 1),
(25, 'JIAYU', '佳宇物流', 1, 1),
(26, 'SHHX', '昊昕物流', 1, 1),
(27, 'ande', '安得物流', 1, 1),
(28, 'ppbyb', '贝邮宝', 1, 1),
(29, 'dida', '递达快递', 1, 1),
(30, 'jppost', '日本邮政', 1, 1),
(31, 'intmail', '中国邮政', 96, 1),
(32, 'HENGCHENGWL', '恒诚物流', 1, 1),
(33, 'HENGFENGWL', '恒丰物流', 1, 1),
(34, 'gdems', '广东ems快递', 1, 1),
(35, 'xlyt', '祥龙运通', 1, 1),
(36, 'gjbg', '国际包裹', 1, 1),
(37, 'uex', 'UEX', 1, 1),
(38, 'singpost', '新加坡邮政', 1, 1),
(39, 'guangdongyouzhengwuliu', '广东邮政', 1, 1),
(40, 'bht', 'BHT', 1, 1),
(41, 'cces', 'CCES快递', 1, 1),
(42, 'cloudexpress', 'CE易欧通国际速递', 1, 1),
(43, 'dasu', '达速物流', 1, 1),
(44, 'pfcexpress', '皇家物流', 1, 1),
(45, 'hjs', '猴急送', 1, 1),
(46, 'huilian', '辉联物流', 1, 1),
(47, 'huanqiu', '环球速运', 1, 1),
(48, 'huada', '华达快运', 1, 1),
(49, 'htwd', '华通务达物流', 1, 1),
(50, 'hipito', '海派通', 1, 1),
(51, 'hqtd', '环球通达', 1, 1),
(52, 'airgtc', '航空快递', 1, 1),
(53, 'haoyoukuai', '好又快物流', 1, 1),
(54, 'hanrun', '韩润物流', 1, 1),
(55, 'ccd', '河南次晨达', 1, 1),
(56, 'hfwuxi', '和丰同城', 1, 1),
(57, 'Sky', '荷兰', 1, 1),
(58, 'hongxun', '鸿讯物流', 1, 1),
(59, 'hongjie', '宏捷国际物流', 1, 1),
(60, 'httx56', '汇通天下物流', 1, 1),
(61, 'lqht', '恒通快递', 1, 1),
(62, 'jinguangsudikuaijian', '京广速递快件', 1, 1),
(63, 'junfengguoji', '骏丰国际速递', 1, 1),
(64, 'jiajiatong56', '佳家通', 1, 1),
(65, 'jrypex', '吉日优派', 1, 1),
(66, 'jinchengwuliu', '锦程国际物流', 1, 1),
(67, 'jgwl', '景光物流', 1, 1),
(68, 'pzhjst', '急顺通', 1, 1),
(69, 'ruexp', '捷网俄全通', 1, 1),
(70, 'jmjss', '金马甲', 1, 1),
(71, 'lanhu', '蓝弧快递', 1, 1),
(72, 'ltexp', '乐天速递', 1, 1),
(73, 'lutong', '鲁通快运', 1, 1),
(74, 'ledii', '乐递供应链', 1, 1),
(75, 'lundao', '论道国际物流', 1, 1),
(76, 'mailikuaidi', '麦力快递', 1, 1),
(77, 'mchy', '木春货运', 1, 1),
(78, 'meiquick', '美快国际物流', 1, 1),
(79, 'valueway', '美通快递', 1, 1),
(80, 'nuoyaao', '偌亚奥国际', 1, 1),
(81, 'euasia', '欧亚专线', 1, 1),
(82, 'pca', '澳大利亚PCA快递', 1, 1),
(83, 'pingandatengfei', '平安达腾飞', 1, 1),
(84, 'pjbest', '品骏快递', 1, 1),
(85, 'qbexpress', '秦邦快运', 1, 1),
(86, 'quanxintong', '全信通快递', 1, 1),
(87, 'quansutong', '全速通国际快递', 1, 1),
(88, 'qinyuan', '秦远物流', 1, 1),
(89, 'qichen', '启辰国际物流', 1, 1),
(90, 'quansu', '全速快运', 1, 1),
(91, 'qzx56', '全之鑫物流', 1, 1),
(92, 'qskdyxgs', '千顺快递', 1, 1),
(93, 'runhengfeng', '全时速运', 1, 1),
(94, 'rytsd', '日益通速递', 1, 1),
(95, 'ruidaex', '瑞达国际速递', 1, 1),
(96, 'shiyun', '世运快递', 1, 1),
(97, 'sfift', '十方通物流', 1, 1),
(98, 'stkd', '顺通快递', 1, 1),
(99, 'bgn', '布谷鸟快递', 1, 1),
(100, 'jiahuier', '佳惠尔快递', 1, 1),
(101, 'pingyou', '小包', 1, 1),
(102, 'yumeijie', '誉美捷快递', 1, 1),
(103, 'meilong', '美龙快递', 1, 1),
(104, 'guangtong', '广通速递', 1, 1),
(105, 'STARS', '星晨急便', 1, 1),
(106, 'NANHANG', '中国南方航空股份有限公司', 1, 1),
(107, 'lanbiao', '蓝镖快递', 1, 1),
(109, 'baotongda', '宝通达物流', 1, 1),
(110, 'dashun', '大顺物流', 1, 1),
(111, 'dada', '大达物流', 1, 1),
(112, 'fangfangda', '方方达物流', 1, 1),
(113, 'hebeijianhua', '河北建华物流', 1, 1),
(114, 'haolaiyun', '好来运快递', 1, 1),
(115, 'jinyue', '晋越快递', 1, 1),
(116, 'kuaitao', '快淘快递', 1, 1),
(117, 'peixing', '陪行物流', 1, 1),
(118, 'hkpost', '香港邮政', 1, 1),
(119, 'ytfh', '一统飞鸿快递', 1, 1),
(120, 'zhongxinda', '中信达快递', 1, 1),
(121, 'zhongtian', '中天快运', 1, 1),
(122, 'zuochuan', '佐川急便', 1, 1),
(123, 'chengguang', '程光快递', 1, 1),
(124, 'cszx', '城市之星', 1, 1),
(125, 'chuanzhi', '传志快递', 1, 1),
(126, 'feibao', '飞豹快递', 1, 1),
(127, 'huiqiang', '汇强快递', 1, 1),
(128, 'lejiedi', '乐捷递', 1, 1),
(129, 'lijisong', '成都立即送快递', 1, 1),
(130, 'minbang', '民邦速递', 1, 1),
(131, 'ocs', 'OCS国际快递', 1, 1),
(132, 'santai', '三态速递', 1, 1),
(133, 'saiaodi', '赛澳递', 1, 1),
(134, 'jingdong', '京东快递', 1, 1),
(135, 'zengyi', '增益快递', 1, 1),
(136, 'fanyu', '凡宇速递', 1, 1),
(137, 'fengda', '丰达快递', 1, 1),
(138, 'coe', '东方快递', 1, 1),
(139, 'ees', '百福东方快递', 1, 1),
(140, 'disifang', '递四方速递', 1, 1),
(141, 'rufeng', '如风达快递', 1, 1),
(142, 'changtong', '长通物流', 1, 1),
(143, 'chengshi100', '城市100快递', 1, 1),
(144, 'feibang', '飞邦物流', 1, 1),
(145, 'haosheng', '昊盛物流', 1, 1),
(146, 'yinsu', '音速速运', 1, 1),
(147, 'kuanrong', '宽容物流', 1, 1),
(148, 'tongcheng', '通成物流', 1, 1),
(149, 'tonghe', '通和天下物流', 1, 1),
(150, 'zhima', '芝麻开门', 1, 1),
(151, 'ririshun', '日日顺物流', 1, 1),
(152, 'anxun', '安迅物流', 1, 1),
(153, 'baiqian', '百千诚国际物流', 1, 1),
(154, 'chukouyi', '出口易', 1, 1),
(155, 'diantong', '店通快递', 1, 1),
(156, 'dajin', '大金物流', 1, 1),
(157, 'feite', '飞特物流', 1, 1),
(159, 'gnxb', '国内小包', 1, 1),
(160, 'huacheng', '华诚物流', 1, 1),
(161, 'huahan', '华翰物流', 1, 1),
(162, 'hengyu', '恒宇运通', 1, 1),
(163, 'huahang', '华航快递', 1, 1),
(164, 'jiuyi', '久易快递', 1, 1),
(165, 'jiete', '捷特快递', 1, 1),
(166, 'jingshi', '京世物流', 1, 1),
(167, 'kuayue', '跨越快递', 1, 1),
(168, 'mengsu', '蒙速快递', 1, 1),
(169, 'nanbei', '南北快递', 1, 1),
(171, 'pinganda', '平安达快递', 1, 1),
(172, 'ruifeng', '瑞丰速递', 1, 1),
(173, 'rongqing', '荣庆物流', 1, 1),
(174, 'suijia', '穗佳物流', 1, 1),
(175, 'simai', '思迈快递', 1, 1),
(176, 'suteng', '速腾快递', 1, 1),
(177, 'shengbang', '晟邦物流', 1, 1),
(178, 'suchengzhaipei', '速呈宅配', 1, 1),
(179, 'wuhuan', '五环速递', 1, 1),
(180, 'xingchengzhaipei', '星程宅配', 1, 1),
(181, 'yinjie', '顺捷丰达', 1, 1),
(183, 'yanwen', '燕文物流', 1, 1),
(184, 'zongxing', '纵行物流', 1, 1),
(185, 'aae', 'AAE快递', 1, 1),
(186, 'dhl', 'DHL快递', 1, 1),
(187, 'feihu', '飞狐快递', 1, 1),
(188, 'shunfeng', '顺丰速运', 92, 1),
(189, 'spring', '春风物流', 1, 1),
(190, 'yidatong', '易达通快递', 1, 1),
(191, 'PEWKEE', '彪记快递', 1, 1),
(192, 'PHOENIXEXP', '凤凰快递', 1, 1),
(193, 'CNGLS', 'GLS快递', 1, 1),
(194, 'BHTEXP', '华慧快递', 1, 1),
(195, 'B2B', '卡行天下', 1, 1),
(196, 'PEISI', '配思货运', 1, 1),
(197, 'SUNDAPOST', '上大物流', 1, 1),
(198, 'SUYUE', '苏粤货运', 1, 1),
(199, 'F5XM', '伍圆速递', 1, 1),
(200, 'GZWENJIE', '文捷航空速递', 1, 1),
(201, 'yuancheng', '远成物流', 1, 1),
(202, 'dpex', 'DPEX快递', 1, 1),
(203, 'anjie', '安捷快递', 1, 1),
(204, 'jldt', '嘉里大通', 1, 1),
(205, 'yousu', '优速快递', 1, 1),
(206, 'wanbo', '万博快递', 1, 1),
(207, 'sure', '速尔物流', 1, 1),
(208, 'sutong', '速通物流', 1, 1),
(209, 'JUNCHUANWL', '骏川物流', 1, 1),
(210, 'guada', '冠达快递', 1, 1),
(211, 'dsu', 'D速快递', 1, 1),
(212, 'LONGSHENWL', '龙胜物流', 1, 1),
(213, 'abc', '爱彼西快递', 1, 1),
(214, 'eyoubao', 'E邮宝', 1, 1),
(215, 'aol', 'AOL快递', 1, 1),
(216, 'jixianda', '急先达物流', 1, 1),
(217, 'haihong', '山东海红快递', 1, 1),
(218, 'feiyang', '飞洋快递', 1, 1),
(219, 'rpx', 'RPX保时达', 1, 1),
(220, 'zhaijisong', '宅急送', 1, 1),
(221, 'tiantian', '天天快递', 99, 1),
(222, 'yunwuliu', '云物流', 1, 1),
(223, 'jiuye', '九曳供应链', 1, 1),
(224, 'bsky', '百世快运', 1, 1),
(225, 'higo', '黑狗物流', 1, 1),
(226, 'arke', '方舟速递', 1, 1),
(227, 'zwsy', '中外速运', 1, 1),
(228, 'jxy', '吉祥邮', 1, 1),
(229, 'aramex', 'Aramex', 1, 1),
(230, 'guotong', '国通快递', 1, 1),
(231, 'jiayi', '佳怡物流', 1, 1),
(232, 'longbang', '龙邦快运', 1, 1),
(233, 'minhang', '民航快递', 1, 1),
(234, 'quanyi', '全一快递', 1, 1),
(235, 'quanchen', '全晨快递', 1, 1),
(236, 'usps', 'USPS快递', 1, 1),
(237, 'xinbang', '新邦物流', 1, 1),
(238, 'yuanzhi', '元智捷诚快递', 1, 1),
(239, 'zhongyou', '中邮物流', 1, 1),
(240, 'yuxin', '宇鑫物流', 1, 1),
(241, 'cnpex', '中环快递', 1, 1),
(242, 'shengfeng', '盛丰物流', 1, 1),
(243, 'yuantong', '圆通速递', 97, 1),
(244, 'jiayunmei', '加运美物流', 1, 1),
(245, 'ywfex', '源伟丰快递', 1, 1),
(246, 'xinfeng', '信丰物流', 1, 1),
(247, 'wanxiang', '万象物流', 1, 1),
(248, 'menduimen', '门对门', 1, 1),
(249, 'mingliang', '明亮物流', 1, 1),
(250, 'fengxingtianxia', '风行天下', 1, 1),
(251, 'gongsuda', '共速达物流', 1, 1),
(252, 'zhongtong', '中通快递', 100, 1),
(253, 'quanritong', '全日通快递', 1, 1),
(254, 'ems', 'EMS', 1, 1),
(255, 'wanjia', '万家物流', 1, 1),
(256, 'yuntong', '运通快递', 1, 1),
(257, 'feikuaida', '飞快达物流', 1, 1),
(258, 'haimeng', '海盟速递', 1, 1),
(259, 'zhongsukuaidi', '中速快件', 1, 1),
(260, 'yuefeng', '越丰快递', 1, 1),
(261, 'shenghui', '盛辉物流', 1, 1),
(262, 'datian', '大田物流', 1, 1),
(263, 'quanjitong', '全际通快递', 1, 1),
(264, 'longlangkuaidi', '隆浪快递', 1, 1),
(265, 'neweggozzo', '新蛋奥硕物流', 1, 1),
(266, 'shentong', '申通快递', 95, 1),
(267, 'haiwaihuanqiu', '海外环球', 1, 1),
(268, 'yad', '源安达快递', 1, 1),
(269, 'jindawuliu', '金大物流', 1, 1),
(270, 'sevendays', '七天连锁', 1, 1),
(271, 'tnt', 'TNT快递', 1, 1),
(272, 'huayu', '天地华宇物流', 1, 1),
(273, 'lianhaotong', '联昊通快递', 1, 1),
(274, 'nengda', '港中能达快递', 1, 1),
(275, 'LBWL', '联邦物流', 1, 1),
(276, 'ontrac', 'onTrac', 1, 1),
(277, 'feihang', '原飞航快递', 1, 1),
(278, 'bangsongwuliu', '邦送物流', 1, 1),
(279, 'huaxialong', '华夏龙物流', 1, 1),
(280, 'ztwy', '中天万运快递', 1, 1),
(281, 'fkd', '飞康达物流', 1, 1),
(282, 'anxinda', '安信达快递', 1, 1),
(283, 'quanfeng', '全峰快递', 1, 1),
(284, 'shengan', '圣安物流', 1, 1),
(285, 'jiaji', '佳吉物流', 1, 1),
(286, 'yunda', '韵达快运', 94, 1),
(287, 'ups', 'UPS快递', 1, 1),
(288, 'debang', '德邦物流', 1, 1),
(289, 'yafeng', '亚风速递', 1, 1),
(290, 'kuaijie', '快捷速递', 98, 1),
(291, 'huitong', '百世快递', 93, 1),
(293, 'aolau', 'AOL澳通速递', 1, 1),
(294, 'anneng', '安能物流', 1, 1),
(295, 'auexpress', '澳邮中国快运', 1, 1),
(296, 'exfresh', '安鲜达', 1, 1),
(297, 'bcwelt', 'BCWELT', 1, 1),
(298, 'youzhengguonei', '挂号信', 1, 1),
(299, 'xiaohongmao', '北青小红帽', 1, 1),
(300, 'lbbk', '宝凯物流', 1, 1),
(301, 'byht', '博源恒通', 1, 1),
(302, 'idada', '百成大达物流', 1, 1),
(303, 'baitengwuliu', '百腾物流', 1, 1),
(304, 'birdex', '笨鸟海淘', 1, 1),
(305, 'bsht', '百事亨通', 1, 1),
(306, 'dayang', '大洋物流快递', 1, 1),
(307, 'dechuangwuliu', '德创物流', 1, 1),
(308, 'donghanwl', '东瀚物流', 1, 1),
(309, 'dfpost', '达方物流', 1, 1),
(310, 'dongjun', '东骏快捷物流', 1, 1),
(311, 'dindon', '叮咚澳洲转运', 1, 1),
(312, 'dazhong', '大众佐川急便', 1, 1),
(313, 'decnlh', '德中快递', 1, 1),
(314, 'dekuncn', '德坤供应链', 1, 1),
(315, 'eshunda', '俄顺达', 1, 1),
(316, 'ewe', 'EWE全球快递', 1, 1),
(317, 'fedexuk', 'FedEx英国', 1, 1),
(318, 'fox', 'FOX国际速递', 1, 1),
(319, 'rufengda', '凡客如风达', 1, 1),
(320, 'fandaguoji', '颿达国际快递', 1, 1),
(321, 'hnfy', '飞鹰物流', 1, 1),
(322, 'flysman', '飞力士物流', 1, 1),
(323, 'sccod', '丰程物流', 1, 1),
(324, 'farlogistis', '泛远国际物流', 1, 1),
(325, 'gsm', 'GSM', 1, 1),
(326, 'gaticn', 'GATI快递', 1, 1),
(327, 'gts', 'GTS快递', 1, 1),
(328, 'gangkuai', '港快速递', 1, 1),
(329, 'gtsd', '高铁速递', 1, 1),
(330, 'tiandihuayu', '华宇物流', 1, 1),
(331, 'huangmajia', '黄马甲快递', 1, 1),
(332, 'ucs', '合众速递', 1, 1),
(333, 'huoban', '伙伴物流', 1, 1),
(334, 'nedahm', '红马速递', 1, 1),
(335, 'huiwen', '汇文配送', 1, 1),
(336, 'nmhuahe', '华赫物流', 1, 1),
(337, 'hangyu', '航宇快递', 1, 1),
(338, 'minsheng', '闽盛物流', 1, 1),
(339, 'riyu', '日昱物流', 1, 1),
(340, 'sxhongmajia', '山西红马甲', 1, 1),
(341, 'syjiahuier', '沈阳佳惠尔', 1, 1),
(342, 'shlindao', '上海林道货运', 1, 1),
(343, 'shunjiefengda', '顺捷丰达', 1, 1),
(344, 'subida', '速必达物流', 1, 1),
(345, 'bphchina', '速方国际物流', 1, 1),
(346, 'sendtochina', '速递中国', 1, 1),
(347, 'suning', '苏宁快递', 1, 1),
(348, 'sihaiet', '四海快递', 1, 1),
(349, 'tianzong', '天纵物流', 1, 1),
(350, 'chinatzx', '同舟行物流', 1, 1),
(351, 'nntengda', '腾达速递', 1, 1),
(352, 'sd138', '泰国138', 1, 1),
(353, 'tongdaxing', '通达兴物流', 1, 1),
(354, 'tlky', '天联快运', 1, 1),
(355, 'youshuwuliu', 'UC优速快递', 1, 1),
(356, 'ueq', 'UEQ快递', 1, 1),
(357, 'weitepai', '微特派快递', 1, 1),
(358, 'wtdchina', '威时沛运', 1, 1),
(359, 'wzhaunyun', '微转运', 1, 1),
(360, 'gswtkd', '万通快递', 1, 1),
(361, 'wotu', '渥途国际速运', 1, 1),
(362, 'xiyoute', '希优特快递', 1, 1),
(363, 'xilaikd', '喜来快递', 1, 1),
(364, 'xsrd', '鑫世锐达', 1, 1),
(365, 'xtb', '鑫通宝物流', 1, 1),
(366, 'xintianjie', '信天捷快递', 1, 1),
(367, 'xaetc', '西安胜峰', 1, 1),
(368, 'xianfeng', '先锋快递', 1, 1),
(369, 'sunspeedy', '新速航', 1, 1),
(370, 'xipost', '西邮寄', 1, 1),
(371, 'sinatone', '信联通', 1, 1),
(372, 'sunjex', '新杰物流', 1, 1),
(373, 'yundaexus', '韵达美国件', 1, 1),
(374, 'yxwl', '宇鑫物流', 1, 1),
(375, 'yitongda', '易通达', 1, 1),
(376, 'yiqiguojiwuliu', '一柒物流', 1, 1),
(377, 'yilingsuyun', '亿领速运', 1, 1),
(378, 'yujiawuliu', '煜嘉物流', 1, 1),
(379, 'gml', '英脉物流', 1, 1),
(380, 'leopard', '云豹国际货运', 1, 1),
(381, 'czwlyn', '云南中诚', 1, 1),
(382, 'sdyoupei', '优配速运', 1, 1),
(383, 'yongchang', '永昌物流', 1, 1),
(384, 'yufeng', '御风速运', 1, 1),
(385, 'yamaxunwuliu', '亚马逊物流', 1, 1),
(386, 'yousutongda', '优速通达', 1, 1),
(387, 'yishunhang', '亿顺航', 1, 1),
(388, 'yongwangda', '永旺达快递', 1, 1),
(389, 'ecmscn', '易满客', 1, 1),
(390, 'yingchao', '英超物流', 1, 1),
(391, 'edlogistics', '益递物流', 1, 1),
(392, 'yyexpress', '远洋国际', 1, 1),
(393, 'onehcang', '一号仓', 1, 1),
(394, 'ycgky', '远成快运', 1, 1),
(395, 'lineone', '一号线', 1, 1),
(396, 'ypsd', '壹品速递', 1, 1),
(397, 'vipexpress', '鹰运国际速递', 1, 1),
(398, 'el56', '易联通达物流', 1, 1),
(399, 'yyqc56', '一运全成物流', 1, 1),
(400, 'zhongtie', '中铁快运', 1, 1),
(401, 'ZTKY', '中铁物流', 1, 1),
(402, 'zzjh', '郑州建华快递', 1, 1),
(403, 'zhongruisudi', '中睿速递', 1, 1),
(404, 'zhongwaiyun', '中外运速递', 1, 1),
(405, 'zengyisudi', '增益速递', 1, 1),
(406, 'sujievip', '郑州速捷', 1, 1),
(407, 'zhichengtongda', '至诚通达快递', 1, 1),
(408, 'zhdwl', '众辉达物流', 1, 1),
(409, 'kuachangwuliu', '直邮易', 1, 1),
(410, 'topspeedex', '中运全速', 1, 1),
(411, 'otobv', '中欧快运', 1, 1),
(412, 'zsky123', '准实快运', 1, 1),
(413, 'donghong', '东红物流', 1, 1),
(414, 'kuaiyouda', '快优达速递', 1, 1),
(415, 'balunzhi', '巴伦支快递', 1, 1),
(416, 'hutongwuliu', '户通物流', 1, 1),
(417, 'xianchenglian', '西安城联速递', 1, 1),
(418, 'youbijia', '邮必佳', 1, 1),
(419, 'feiyuan', '飞远物流', 1, 1),
(420, 'chengji', '城际速递', 1, 1),
(421, 'huaqi', '华企快运', 1, 1),
(422, 'yibang', '一邦快递', 1, 1),
(423, 'citylink', 'CityLink快递', 1, 1),
(424, 'meixi', '美西快递', 1, 1),
(425, 'acs', 'ACS', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_access_token`
--

CREATE TABLE IF NOT EXISTS `eb_routine_access_token` (
  `id` int(11) unsigned NOT NULL COMMENT '小程序access_token表ID',
  `access_token` varchar(256) NOT NULL COMMENT 'openid',
  `stop_time` int(11) unsigned NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='小程序access_token表';

--
-- 转存表中的数据 `eb_routine_access_token`
--

INSERT INTO `eb_routine_access_token` (`id`, `access_token`, `stop_time`) VALUES
(1, '10_55ngs3FAlZOsvvbnyaZON46GTFrnqMaFdAAjMH36GtLjZGF8l_npKwuEZz_zeyJg7fOtj6UcGEfoVDhGI0swou_xguhWQF4Asr2lsCHToSBcpN7EhSSKVYh30loh9QvohIUGgutcHb4wfqw5KZWeAEAAPM', 1527701299);

-- --------------------------------------------------------

--
-- 表的结构 `eb_routine_form_id`
--

CREATE TABLE IF NOT EXISTS `eb_routine_form_id` (
  `id` int(11) unsigned NOT NULL COMMENT '表单ID表ID',
  `form_id` varchar(32) NOT NULL COMMENT '表单ID',
  `stop_time` int(11) unsigned DEFAULT NULL COMMENT '表单ID失效时间',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态1 未使用 2不能使用'
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='表单id表记录表';

--
-- 转存表中的数据 `eb_routine_form_id`
--

INSERT INTO `eb_routine_form_id` (`id`, `form_id`, `stop_time`, `status`) VALUES
(1, '1527218790919', 1527737190, 1),
(2, '1527218795445', 1527737195, 1),
(3, '1527218802623', 1527737202, 1),
(4, '1527219992546', 1527738392, 1),
(5, '18ed60695c60477263362db1fcd57711', 1528028492, 1),
(6, '4ac27cf74f1874089e7b9978b1655330', 1528028822, 1),
(7, 'd1c09ce577252707a6a3d37749e4fb89', 1528041339, 1),
(8, '587137c710636610dfac3434468bf59f', 1528041357, 1),
(9, 'fd26d2192ac2c9c39f33c4dbca0feb23', 1528041362, 1),
(10, 'e1ec0351a083cf7cdb16b01edb33e835', 1528041455, 1),
(11, '3f37c5dc20bc4f70f542def3ffc059dc', 1528041457, 1),
(12, '999c5282f1be9f952ddb126e38575c8c', 1528073720, 1),
(13, '1527555687142', 1528074086, 1),
(14, '1527561323929', 1528079722, 1),
(15, '1527561340989', 1528079739, 1),
(16, '1527561825052', 1528080224, 1),
(17, '1527580340878', 1528098739, 1),
(18, '1527580488444', 1528098887, 1),
(19, '7025a9ade58735b2042eb1736e534cdf', 1528161187, 1),
(20, 'b076d5a90fa7e4bd80ac8a9ca2d11f22', 1528161734, 1),
(21, 'aca6b85e10199c71edfbd17094660dda', 1528161867, 1),
(22, '7c375bfc6f48e99dd3c7ebae27be33be', 1528161872, 1),
(23, 'd6cf09152119814664124cd5ef7285f6', 1528161877, 1),
(24, '288510d01ec0c14182ea21c162c41e3d', 1528161890, 1),
(25, '57ba79e638b3f37903901b12bbb61c65', 1528162265, 1),
(26, '1ab1098aff8af0331a6e6d39436b295a', 1528162272, 1),
(27, '957bc8ef5ae594f4b21cfd05f499eee3', 1528162389, 1),
(28, 'a16f9c7fcbfe27266e4dc15be7157def', 1528162404, 1),
(29, 'bbc619f610dac7327861d1021a1a203b', 1528163111, 1),
(30, '1527678037164', 1528196436, 1),
(31, '1527681662506', 1528200061, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain`
--

CREATE TABLE IF NOT EXISTS `eb_store_bargain` (
  `id` int(11) unsigned NOT NULL COMMENT '砍价产品ID',
  `product_id` int(11) unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) NOT NULL COMMENT '砍价活动名称',
  `image` varchar(64) NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `stock` int(11) unsigned DEFAULT NULL COMMENT '库存',
  `sales` int(11) unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(1000) NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int(11) unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int(11) unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='砍价表';

--
-- 转存表中的数据 `eb_store_bargain`
--

INSERT INTO `eb_store_bargain` (`id`, `product_id`, `title`, `image`, `unit_name`, `stock`, `sales`, `images`, `start_time`, `stop_time`, `store_name`, `price`, `min_price`, `num`, `bargain_max_price`, `bargain_min_price`, `bargain_num`, `status`, `description`, `give_integral`, `info`, `cost`, `sort`, `is_hot`, `is_del`, `add_time`, `is_postage`, `postage`) VALUES
(1, 653, '砍价活动名称', '/public/uploads/store/bargain/20180531/s_5b0fe886cd78c.jpg', '件', 100, 0, '["\\/public\\/uploads\\/store\\/product\\/s_5ae6742400c83.jpg","\\/public\\/uploads\\/store\\/bargain\\/20180601\\/s_5b10a10809135.jpg"]', 1525881600, 1529510400, '凤梨酥1', '99.00', '20.00', 1, '100.00', '80.00', 1, 1, '<p>测试.....</p><p></p>', '99.00', '砍价活动简介', '88.00', 0, 1, 0, 1526604680, 1, '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain_user`
--

CREATE TABLE IF NOT EXISTS `eb_store_bargain_user` (
  `id` int(11) unsigned NOT NULL COMMENT '用户参与砍价表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '参与时间'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户参与砍价表';

--
-- 转存表中的数据 `eb_store_bargain_user`
--

INSERT INTO `eb_store_bargain_user` (`id`, `uid`, `bargain_id`, `bargain_price_min`, `bargain_price`, `price`, `status`, `add_time`) VALUES
(1, 102, 1, '20.00', '99.00', '79.00', 1, 1527068935),
(2, 100, 1, '20.00', '99.00', '79.00', 3, 1527124929),
(3, 100, 1, '20.00', '99.00', '79.00', 3, 1527126211),
(4, 103, 1, '20.00', '99.00', '79.00', 3, 1527145840),
(5, 101, 1, '20.00', '99.00', '18.00', 1, 1527156228),
(6, 103, 1, '20.00', '99.00', '79.00', 1, 1527219968),
(7, 100, 1, '20.00', '99.00', '79.00', 3, 1527220079),
(8, 100, 1, '20.00', '99.00', '79.00', 3, 1527220378),
(9, 100, 1, '20.00', '99.00', '79.00', 3, 1527220539),
(10, 100, 1, '20.00', '99.00', '79.00', 3, 1527220607),
(11, 100, 1, '20.00', '99.00', '79.00', 1, 1527220709),
(12, 108, 1, '20.00', '99.00', '79.00', 1, 1527680043),
(13, 111, 1, '20.00', '99.00', '79.00', 1, 1527694099);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_bargain_user_help`
--

CREATE TABLE IF NOT EXISTS `eb_store_bargain_user_help` (
  `id` int(11) unsigned NOT NULL COMMENT '砍价用户帮助表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int(11) unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='砍价用户帮助表';

--
-- 转存表中的数据 `eb_store_bargain_user_help`
--

INSERT INTO `eb_store_bargain_user_help` (`id`, `uid`, `bargain_id`, `bargain_user_id`, `price`, `add_time`) VALUES
(1, 102, 1, 1, '79.00', 1527068936),
(2, 100, 1, 2, '79.00', 1527124930),
(3, 100, 1, 3, '79.00', 1527126573),
(4, 103, 1, 4, '79.00', 1527145841),
(5, 101, 1, 5, '10.00', 1527156228),
(6, 100, 1, 5, '8.00', 1527156255),
(7, 103, 1, 6, '79.00', 1527219969),
(8, 100, 1, 7, '79.00', 1527220080),
(9, 100, 1, 8, '79.00', 1527220379),
(10, 100, 1, 9, '79.00', 1527220539),
(11, 100, 1, 10, '79.00', 1527220607),
(12, 100, 1, 11, '79.00', 1527220709),
(13, 108, 1, 12, '79.00', 1527680043),
(14, 111, 1, 13, '79.00', 1527694099);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_cart`
--

CREATE TABLE IF NOT EXISTS `eb_store_cart` (
  `id` bigint(8) unsigned NOT NULL COMMENT '购物车表ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(16) NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int(11) unsigned NOT NULL COMMENT '拼团id',
  `seckill_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '砍价id'
) ENGINE=MyISAM AUTO_INCREMENT=813 DEFAULT CHARSET=utf8 COMMENT='购物车表';

--
-- 转存表中的数据 `eb_store_cart`
--

INSERT INTO `eb_store_cart` (`id`, `uid`, `type`, `product_id`, `product_attr_unique`, `cart_num`, `add_time`, `is_pay`, `is_del`, `is_new`, `combination_id`, `seckill_id`, `bargain_id`) VALUES
(749, 102, 'product', 552, '', 1, 1527062884, 0, 0, 0, 0, 0, 0),
(748, 100, 'product', 552, '', 1, 1527152006, 0, 0, 0, 0, 0, 0),
(747, 102, 'product', 632, 'e131ce4b', 3, 1527215460, 0, 0, 0, 0, 0, 0),
(719, 100, 'product', 632, '436b1943', 1, 1526374069, 1, 0, 0, 0, 0, 0),
(720, 100, 'product', 547, '53e942e0', 3, 1526374131, 1, 0, 0, 0, 0, 0),
(721, 100, 'product', 641, '', 1, 1526536275, 0, 1, 0, 0, 0, 0),
(722, 100, 'product', 632, '436b1943', 1, 1526467667, 0, 0, 1, 0, 0, 0),
(723, 1, 'product', 649, '', 1, 1526572917, 1, 0, 1, 0, 18, 0),
(724, 100, 'product', 632, '515df17c', 1, 1526693489, 1, 0, 1, 0, 0, 0),
(725, 100, 'product', 632, '515df17c', 1, 1526693886, 1, 0, 0, 0, 0, 0),
(726, 100, 'product', 632, '515df17c', 1, 1526693976, 1, 0, 1, 0, 0, 0),
(727, 100, 'product', 632, '515df17c', 1, 1526694054, 1, 0, 1, 0, 0, 0),
(728, 100, 'product', 552, '', 1, 1526697008, 0, 1, 0, 0, 0, 0),
(729, 101, 'product', 552, '', 1, 1526702310, 0, 0, 0, 0, 0, 0),
(730, 101, 'product', 552, '', 1, 1526703495, 0, 0, 1, 0, 0, 0),
(731, 101, 'product', 547, '53e942e0', 1, 1526710578, 1, 0, 1, 0, 0, 0),
(732, 101, 'product', 547, '53e942e0', 2, 1526710642, 0, 0, 1, 0, 0, 0),
(733, 101, 'product', 632, '515df17c', 1, 1526710670, 1, 0, 1, 0, 0, 0),
(734, 101, 'product', 547, '4dfafbdb', 1, 1526710765, 1, 0, 1, 0, 0, 0),
(735, 100, 'product', 632, '515df17c', 1, 1526712748, 0, 1, 0, 0, 0, 0),
(736, 100, 'product', 552, '', 1, 1526725984, 0, 0, 1, 0, 0, 0),
(737, 100, 'product', 547, '4dfafbdb', 1, 1526725996, 1, 0, 1, 0, 0, 0),
(738, 100, 'product', 547, '4dfafbdb', 1, 1526726033, 1, 0, 1, 0, 0, 0),
(739, 100, 'product', 632, 'e131ce4b', 1, 1526882843, 1, 0, 1, 0, 0, 0),
(740, 100, 'product', 632, 'bffac593', 1, 1526876450, 0, 0, 0, 0, 0, 0),
(741, 100, 'product', 649, '', 1, 1526950985, 1, 0, 1, 0, 18, 0),
(746, 102, 'product', 550, 'a5766ae5', 1, 1527062209, 0, 0, 0, 0, 0, 0),
(742, 102, 'product', 632, 'bffac593', 1, 1527211734, 0, 0, 0, 0, 0, 0),
(743, 102, 'product', 547, '53e942e0', 1, 1527135717, 0, 0, 0, 0, 0, 0),
(744, 102, 'product', 551, '59643e7b', 1, 1527135807, 0, 0, 0, 0, 0, 0),
(745, 102, 'product', 545, '5b96c5da', 1, 1527135712, 0, 0, 0, 0, 0, 0),
(750, 102, 'product', 653, '', 1, 1527070690, 1, 0, 1, 0, 0, 1),
(751, 102, 'product', 632, 'bffac593', 1, 1527124473, 1, 0, 1, 0, 0, 0),
(752, 100, 'product', 653, '', 1, 1527126179, 1, 0, 1, 0, 0, 1),
(753, 103, 'product', 653, '', 1, 1527145856, 0, 0, 1, 0, 0, 1),
(754, 100, 'product', 546, '7159d72b', 1, 1527209940, 0, 0, 0, 0, 0, 0),
(755, 100, 'product', 632, 'bffac593', 1, 1527213128, 1, 0, 1, 0, 0, 0),
(756, 102, 'product', 573, '', 1, 1527215519, 0, 0, 0, 0, 0, 0),
(757, 100, 'product', 653, '', 1, 1527220067, 1, 0, 1, 0, 0, 1),
(758, 100, 'product', 653, '', 1, 1527220688, 0, 0, 1, 0, 0, 1),
(759, 105, 'product', 632, 'bffac593', 1, 1527510092, 1, 0, 1, 0, 0, 0),
(760, 105, 'product', 547, '53e942e0', 1, 1527510422, 1, 0, 1, 0, 0, 0),
(761, 100, 'product', 632, 'e131ce4b', 1, 1527510596, 1, 0, 1, 0, 0, 0),
(762, 65, 'product', 632, 'bffac593', 1, 1527510881, 0, 0, 1, 0, 0, 0),
(763, 65, 'product', 632, 'e131ce4b', 1, 1527510887, 0, 0, 1, 0, 0, 0),
(764, 65, 'product', 632, 'eaf3af83', 1, 1527510893, 1, 0, 0, 0, 0, 0),
(765, 65, 'product', 547, '53e942e0', 1, 1527510914, 0, 0, 1, 0, 0, 0),
(766, 90, 'product', 549, '077933b6', 1, 1527510942, 0, 0, 1, 0, 0, 0),
(767, 65, 'product', 548, '7becdd34', 1, 1527511009, 0, 0, 1, 0, 0, 0),
(768, 90, 'product', 549, '80a65ce8', 1, 1527510961, 0, 0, 1, 0, 0, 0),
(769, 1, 'product', 547, '53e942e0', 1, 1527511666, 0, 0, 1, 0, 0, 0),
(770, 1, 'product', 547, '4dfafbdb', 1, 1527511188, 0, 0, 1, 0, 0, 0),
(771, 1, 'product', 632, 'bffac593', 1, 1527512025, 0, 0, 1, 0, 0, 0),
(772, 1, 'product', 651, '0', 1, 1527512276, 1, 0, 1, 0, 0, 0),
(773, 65, 'product', 652, '0', 1, 1527512366, 0, 0, 1, 0, 0, 0),
(774, 105, 'product', 557, '', 1, 1527522939, 1, 0, 0, 0, 0, 0),
(775, 105, 'product', 547, '4dfafbdb', 2, 1527522962, 1, 0, 0, 0, 0, 0),
(776, 105, 'product', 651, '', 2, 1527523057, 1, 0, 0, 0, 0, 0),
(777, 65, 'product', 552, '0', 1, 1527523239, 0, 0, 1, 0, 0, 0),
(778, 1, 'product', 550, 'a5766ae5', 1, 1527553338, 1, 0, 1, 0, 0, 0),
(779, 105, 'product', 632, 'eaf3af83', 1, 1527555320, 1, 0, 0, 0, 0, 0),
(780, 100, 'product', 632, 'e131ce4b', 1, 1527555539, 0, 0, 0, 0, 0, 0),
(781, 100, 'product', 651, '', 1, 1527555686, 0, 0, 0, 0, 0, 0),
(782, 100, 'product', 557, '', 1, 1527555708, 0, 0, 0, 0, 0, 0),
(783, 65, 'product', 549, '077933b6', 1, 1527556571, 1, 0, 0, 0, 0, 0),
(784, 100, 'product', 632, 'e131ce4b', 1, 1527561322, 1, 0, 1, 0, 0, 0),
(785, 100, 'product', 632, 'e131ce4b', 1, 1527561339, 1, 0, 1, 0, 0, 0),
(786, 100, 'product', 632, 'e131ce4b', 1, 1527561824, 1, 0, 1, 0, 0, 0),
(787, 108, 'product', 632, 'e131ce4b', 1, 1527574694, 1, 0, 1, 0, 0, 0),
(788, 108, 'product', 651, '', 1, 1527580339, 1, 0, 1, 0, 0, 0),
(789, 108, 'product', 548, '545192c8', 1, 1527580487, 1, 0, 1, 0, 0, 0),
(790, 108, 'product', 547, '4dfafbdb', 1, 1527580525, 1, 0, 1, 0, 0, 0),
(791, 108, 'product', 632, 'e131ce4b', 1, 1527580609, 1, 0, 1, 0, 0, 0),
(792, 1, 'product', 655, '0', 1, 1527590770, 0, 0, 1, 16, 0, 0),
(793, 110, 'product', 655, '0', 1, 1527590839, 0, 0, 1, 16, 0, 0),
(794, 65, 'product', 649, '0', 1, 1527594496, 1, 0, 1, 0, 18, 0),
(795, 65, 'product', 491, '0', 1, 1527597163, 1, 0, 1, 0, 0, 0),
(796, 111, 'product', 632, 'bffac593', 1, 1527642787, 1, 0, 0, 0, 0, 0),
(797, 111, 'product', 651, '', 1, 1527643334, 1, 0, 1, 0, 0, 0),
(798, 107, 'product', 655, '0', 1, 1527643529, 1, 0, 1, 16, 0, 0),
(799, 111, 'product', 649, '', 1, 1527643761, 1, 0, 1, 0, 18, 0),
(800, 111, 'product', 632, 'eaf3af83', 1, 1527643872, 0, 0, 1, 0, 0, 0),
(801, 111, 'product', 632, 'a94481f2', 5, 1527644004, 1, 0, 1, 0, 0, 0),
(802, 111, 'product', 651, '', 1, 1527644711, 1, 0, 1, 0, 0, 0),
(803, 108, 'product', 632, 'e131ce4b', 1, 1527681661, 0, 0, 1, 0, 0, 0),
(804, 108, 'product', 649, '', 1, 1527679968, 1, 0, 1, 0, 18, 0),
(805, 108, 'product', 649, '', 1, 1527680015, 0, 0, 1, 0, 18, 0),
(806, 114, 'product', 547, '53e942e0', 1, 1527682574, 0, 0, 1, 0, 0, 0),
(807, 111, 'product', 653, '', 1, 1527694204, 0, 0, 1, 0, 0, 1),
(808, 1, 'product', 461, '0', 1, 1527727677, 0, 0, 1, 12, 0, 0),
(809, 1, 'product', 461, '0', 1, 1527847132, 1, 0, 1, 10, 0, 0),
(810, 107, 'product', 461, '0', 1, 1527927383, 0, 0, 1, 10, 0, 0),
(811, 107, 'product', 655, '0', 1, 1527925007, 1, 0, 1, 18, 0, 0),
(812, 119, 'product', 461, '0', 1, 1528075116, 0, 0, 1, 10, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_category`
--

CREATE TABLE IF NOT EXISTS `eb_store_category` (
  `id` mediumint(11) NOT NULL COMMENT '商品分类表ID',
  `pid` mediumint(11) NOT NULL COMMENT '父id',
  `cate_name` varchar(100) NOT NULL COMMENT '分类名称',
  `sort` mediumint(11) NOT NULL COMMENT '排序',
  `pic` varchar(128) NOT NULL DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  `add_time` int(11) NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

--
-- 转存表中的数据 `eb_store_category`
--

INSERT INTO `eb_store_category` (`id`, `pid`, `cate_name`, `sort`, `pic`, `is_show`, `add_time`) VALUES
(1, 0, '手机', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 1, 1521813175),
(2, 1, '苹果/Apple', 9, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521813220),
(3, 1, '小米', 8, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686692),
(4, 1, '魅族', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686732),
(5, 1, '华为', 7, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686755),
(6, 1, 'vivo', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(9, 7, 'iPad', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(12, 0, '家电', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(7, 0, '数码', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(8, 7, 'MateBook', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(10, 7, 'mini4', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(11, 7, '鼠标键盘', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(13, 12, '豆浆机', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(14, 12, '吸尘器', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(15, 12, '蓝牙耳机', 0, '/public/uploads/store/category/s_5abcad2da2ddb.jpg', 0, 1521686837),
(16, 0, '大叔大婶大撒', 1, '/public/uploads/store/category/s_5ae604362c5d7.png', 0, 1525023800),
(17, 0, '护肤品', 1, '/public/uploads/store/category/s_5ae6068ee6c15.jpg', 1, 1525024400),
(18, 0, '特产', 2, '/public/uploads/store/category/s_5ae673e945968.jpg', 1, 1525052397),
(19, 1, '摩托', 0, '/public/uploads/store/category/s_5aff8ba569ca4.jpg', 1, 1526696885),
(20, 1, '摩托', 0, '/public/uploads/store/category/s_5aff8ba569ca4.jpg', 1, 1526696950),
(21, 1, '小米', 0, '/public/uploads/store/category/s_5aff9796a3b33.jpg', 1, 1526699930),
(22, 1, '诺基亚', 0, '/public/uploads/store/category/s_5affa5bcd87d6.jpg', 1, 1526703560),
(23, 1, '华为', 0, '/public/uploads/store/category/s_5affa6cab4917.jpg', 1, 1526703821),
(24, 1, '华为', 0, '/public/uploads/store/category/s_5affa6cab4917.jpg', 1, 1526703845),
(25, 1, '华为1', 0, '/public/uploads/store/category/s_5affa6cab4917.jpg', 1, 1526703897),
(26, 1, '小辣椒', 0, '/public/uploads/store/category/s_5affa744d55b2.jpg', 1, 1526703943),
(27, 1, '小辣椒', 0, '/public/uploads/store/category/s_5affa744d55b2.jpg', 1, 1526703967),
(28, 1, '小辣椒', 0, '/public/uploads/store/category/s_5affa744d55b2.jpg', 1, 1526703980),
(29, 1, '锤子', 0, '/public/uploads/store/category/s_5affa8136933d.jpg', 1, 1526704155),
(40, 0, '测试', 0, '/public/uploads/store/category/s_5b127aac176dc.jpg', 1, 1527937708);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_combination`
--

CREATE TABLE IF NOT EXISTS `eb_store_combination` (
  `id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `mer_id` int(10) unsigned DEFAULT NULL COMMENT '商户id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `attr` varchar(255) NOT NULL COMMENT '活动属性',
  `people` int(2) unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `is_host` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `combination` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint(1) unsigned NOT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint(1) unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text NOT NULL COMMENT '拼团内容',
  `start_time` int(11) unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '拼团结束时间',
  `cost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '拼图产品成本'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团产品表';

--
-- 转存表中的数据 `eb_store_combination`
--

INSERT INTO `eb_store_combination` (`id`, `product_id`, `mer_id`, `image`, `images`, `title`, `attr`, `people`, `info`, `price`, `sort`, `sales`, `stock`, `add_time`, `is_host`, `is_show`, `is_del`, `combination`, `mer_use`, `is_postage`, `postage`, `description`, `start_time`, `stop_time`, `cost`) VALUES
(11, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 3, 885, '1522303622', 1, 1, 1, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(10, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 2, 886, '1522303622', 1, 1, 0, 1, 0, 1, '0.00', '', 1527436800, 1530288000, 0),
(9, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(8, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(7, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(6, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(5, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(4, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(3, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(2, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(1, 461, 0, '/public/uploads/store/product/s_5abc826bdd4e9.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"]', 'crmeb电商系统', '', 10, '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '100.00', 0, 0, 888, '1522303622', 1, 0, 0, 1, 0, 1, '0.00', '', 1522252800, 1525017600, 0),
(12, 461, 0, '/public/uploads/store/product/s_5afc45d873945.png', '["\\/public\\/uploads\\/store\\/product\\/s_5afc45de883de.png","\\/public\\/uploads\\/store\\/product\\/s_5afc45e2ec207.jpg"]', '课程测试', '', 10, '课程测试1', '100.00', 0, 2, 886, '1522303622', 1, 1, 0, 1, 0, 1, '0.00', '', 1525104000, 1530288000, 0),
(13, 651, NULL, '/public/uploads/store/product/s_5ae60af1642b3.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae60af5224ec.jpg"]', '拼团', '', 3, '台湾森田面膜', '88.00', 0, 3, 3, '1525025613', 1, 1, 0, 1, 0, 1, '0.00', '', 1524758400, 1525881600, 0),
(14, 651, NULL, '/public/uploads/store/product/s_5ae60b7d8c276.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae60b812b22e.jpg"]', '森田', '', 8, '台湾森田', '88.00', 0, 88, 88, '1525025686', 1, 1, 0, 1, 0, 1, '0.00', '', 1523462400, 1527696000, 0),
(15, 653, NULL, '/public/uploads/store/product/s_5ae6749771670.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae6749b4177d.jpg"]', '凤梨酥', '', 3, '123456', '80.00', 0, 10, 10, '1525052600', 1, 1, 0, 1, 0, 1, '0.00', '', 1525017600, 1527696000, 0),
(16, 655, NULL, '/public/uploads/store/product/s_5b0d274a6150e.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d275248b9f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b0d275686d96.jpg"]', 'Apple iPhone X', '', 2, '数量有限，先到先得', '0.01', 1, 2, 1, '1527588726', 1, 1, 0, 1, 0, 1, '0.00', '', 1527523200, 1527868800, 0),
(17, 655, NULL, '/public/uploads/store/product/s_5b0d27c9af578.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d27ce43543.jpg"]', 'Apple iPhone X', '', 2, '数量有限，先到先得', '0.01', 0, 0, 5, '1527588839', 1, 1, 0, 1, 0, 1, '0.00', '', 1527436800, 1527696000, 0),
(18, 655, NULL, '/public/uploads/store/product/s_5b0d288cf308b.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d289357b73.jpg"]', 'iphonex', '', 3, '拼团iphonex', '0.01', 0, 1, 99, '1527589062', 0, 1, 0, 1, 0, 1, '0.00', '', 1527523200, 1540915200, 0),
(19, 464, NULL, '/public/uploads/store/product/s_5b0d2b4445db8.png', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d2b46f0b0c.png","\\/public\\/uploads\\/store\\/product\\/s_5b0d2b4876a8e.png"]', '测试', '', 10, '简介', '10.00', 0, 10, 10, '1527589725', 1, 1, 0, 1, 0, 1, '0.00', '', 1526486400, 1527091200, 0),
(20, 465, NULL, '/public/uploads/store/product/s_5b0d2d8044d84.png', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d2d838f74c.png","\\/public\\/uploads\\/store\\/product\\/20180531\\/s_5b0fe7a01e015.jpg","\\/public\\/uploads\\/store\\/product\\/20180601\\/s_5b10a142b3907.jpg"]', '测试测试测试测试', '', 3, '测试测试测试', '10.00', 0, 1, 100, '1527590293', 1, 1, 0, 1, 0, 1, '0.00', '', 1526918400, 1529942400, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon`
--

CREATE TABLE IF NOT EXISTS `eb_store_coupon` (
  `id` int(11) unsigned NOT NULL COMMENT '优惠券表ID',
  `title` varchar(64) NOT NULL COMMENT '优惠券名称',
  `integral` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int(11) unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除'
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

--
-- 转存表中的数据 `eb_store_coupon`
--

INSERT INTO `eb_store_coupon` (`id`, `title`, `integral`, `coupon_price`, `use_min_price`, `coupon_time`, `sort`, `status`, `add_time`, `is_del`) VALUES
(42, '满减优惠券', 0, '10.00', '100.00', 30, 0, 1, 1522288879, 0),
(43, '特价优惠券', 0, '20.00', '80.00', 30, 0, 0, 1522288899, 1),
(44, '满减邮费', 0, '10.00', '11.00', 30, 0, 0, 1525025750, 1),
(45, '测试', 0, '1.00', '1.00', 10, 0, 0, 1527575696, 1),
(46, '满26减25.99', 0, '25.99', '26.00', 100, 0, 1, 1527644097, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_issue`
--

CREATE TABLE IF NOT EXISTS `eb_store_coupon_issue` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int(10) DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int(10) DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int(10) DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int(10) DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) DEFAULT NULL COMMENT '优惠券添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='优惠券前台领取表';

--
-- 转存表中的数据 `eb_store_coupon_issue`
--

INSERT INTO `eb_store_coupon_issue` (`id`, `cid`, `start_time`, `end_time`, `total_count`, `remain_count`, `status`, `is_del`, `add_time`) VALUES
(45, 43, 1522252800, 1525017600, 0, 0, -1, 0, 1522288913),
(46, 42, 1522252800, 1525017600, 0, 0, 1, 0, 1522288924),
(47, 44, 0, 0, 10, 9, -1, 0, 1526537037),
(48, 43, 0, 0, 10, 9, -1, 0, 1526537045),
(49, 42, 0, 0, 10, 5, 1, 0, 1526539608),
(50, 42, 0, 0, 10, 5, 1, 0, 1527575661);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_issue_user`
--

CREATE TABLE IF NOT EXISTS `eb_store_coupon_issue_user` (
  `uid` int(10) DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int(10) DEFAULT NULL COMMENT '领取时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券前台用户领取记录表';

--
-- 转存表中的数据 `eb_store_coupon_issue_user`
--

INSERT INTO `eb_store_coupon_issue_user` (`uid`, `issue_coupon_id`, `add_time`) VALUES
(1, 45, 1522288955),
(1, 46, 1522288956),
(65, 45, 1523521106),
(76, 45, 1523803754),
(76, 46, 1523803755),
(77, 45, 1523862220),
(77, 46, 1523862224),
(100, 48, 1526538483),
(100, 47, 1526539486),
(106, 49, 1527525689),
(107, 49, 1527569715),
(65, 49, 1527574430),
(65, 50, 1527576033),
(114, 49, 1527683292),
(114, 50, 1527683294),
(113, 50, 1527766077),
(113, 49, 1527766080),
(107, 50, 1527924510),
(119, 50, 1528075106);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_coupon_user`
--

CREATE TABLE IF NOT EXISTS `eb_store_coupon_user` (
  `id` int(11) NOT NULL COMMENT '优惠券发放记录id',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int(11) unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(11) unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效'
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='优惠券发放记录表';

--
-- 转存表中的数据 `eb_store_coupon_user`
--

INSERT INTO `eb_store_coupon_user` (`id`, `cid`, `uid`, `coupon_title`, `coupon_price`, `use_min_price`, `add_time`, `end_time`, `use_time`, `type`, `status`, `is_fail`) VALUES
(183, 43, 102, '特价优惠券', '20.00', '80.00', 1522288955, 1526880899, 1524619212, 'get', 2, 1),
(184, 42, 102, '满减优惠券', '10.00', '100.00', 1522288956, 1526880879, 1524621398, 'get', 2, 0),
(185, 43, 65, '特价优惠券', '20.00', '80.00', 1523521106, 1524880899, 0, 'get', 2, 1),
(186, 43, 76, '特价优惠券', '20.00', '80.00', 1523803754, 1524880899, 0, 'get', 2, 1),
(187, 42, 76, '满减优惠券', '10.00', '100.00', 1523803755, 1524880879, 0, 'get', 2, 0),
(188, 43, 102, '特价优惠券', '20.00', '80.00', 1523862220, 1524880899, 0, 'get', 2, 1),
(189, 42, 102, '满减优惠券', '10.00', '100.00', 1523862224, 1524880879, 0, 'get', 2, 0),
(190, 44, 100, '满减邮费', '10.00', '11.00', 1526455015, 1529047015, 0, 'send', 0, 1),
(191, 43, 100, '特价优惠券', '20.00', '80.00', 1526538483, 1529130483, 0, 'get', 0, 1),
(192, 44, 100, '满减邮费', '10.00', '11.00', 1526539486, 1529131486, 0, 'get', 0, 1),
(193, 42, 106, '满减优惠券', '10.00', '100.00', 1527525689, 1524880879, 0, 'get', 2, 0),
(194, 42, 107, '满减优惠券', '10.00', '100.00', 1527569715, 1524880879, 0, 'get', 2, 0),
(195, 42, 65, '满减优惠券', '10.00', '100.00', 1527574430, 1524880879, 0, 'get', 2, 0),
(196, 42, 105, '满减优惠券', '10.00', '100.00', 1527575993, 1530167993, 0, 'send', 0, 0),
(197, 42, 65, '满减优惠券', '10.00', '100.00', 1527576033, 1524880879, 0, 'get', 2, 0),
(198, 42, 65, '满减优惠券', '10.00', '100.00', 1527576096, 1530168096, 0, 'send', 0, 0),
(199, 42, 111, '满减优惠券', '10.00', '100.00', 1527643929, 1530235929, 0, 'send', 0, 0),
(200, 46, 111, '满26减25.99', '25.99', '26.00', 1527644106, 1536284106, 1527644128, 'send', 1, 0),
(201, 42, 114, '满减优惠券', '10.00', '100.00', 1527683292, 1524880879, 0, 'get', 2, 0),
(202, 42, 114, '满减优惠券', '10.00', '100.00', 1527683294, 1524880879, 0, 'get', 2, 0),
(203, 42, 113, '满减优惠券', '10.00', '100.00', 1527766077, 1524880879, 0, 'get', 2, 0),
(204, 42, 113, '满减优惠券', '10.00', '100.00', 1527766080, 1524880879, 0, 'get', 2, 0),
(205, 42, 107, '满减优惠券', '10.00', '100.00', 1527924510, 1524880879, 0, 'get', 2, 0),
(206, 42, 119, '满减优惠券', '10.00', '100.00', 1528075106, 1524880879, 0, 'get', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order`
--

CREATE TABLE IF NOT EXISTS `eb_store_order` (
  `id` int(11) unsigned NOT NULL COMMENT '订单ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `total_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int(11) unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) NOT NULL COMMENT '支付方式',
  `add_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(11) unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_name` varchar(64) DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `combination_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID'
) ENGINE=MyISAM AUTO_INCREMENT=524 DEFAULT CHARSET=utf8 COMMENT='订单表';

--
-- 转存表中的数据 `eb_store_order`
--

INSERT INTO `eb_store_order` (`id`, `order_id`, `uid`, `real_name`, `user_phone`, `user_address`, `cart_id`, `total_num`, `total_price`, `total_postage`, `pay_price`, `pay_postage`, `deduction_price`, `coupon_id`, `coupon_price`, `paid`, `pay_time`, `pay_type`, `add_time`, `status`, `refund_status`, `refund_reason_wap_img`, `refund_reason_wap_explain`, `refund_reason_time`, `refund_reason_wap`, `refund_reason`, `refund_price`, `delivery_name`, `delivery_type`, `delivery_id`, `gain_integral`, `use_integral`, `back_integral`, `mark`, `is_del`, `unique`, `remark`, `mer_id`, `is_mer_check`, `combination_id`, `pink_id`, `cost`, `seckill_id`) VALUES
(385, 'wx2018032115452110001', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[572]', 1, '18.00', '0.00', '18.00', '0.00', '0.00', 0, '0.00', 1, 1521618338, 'weixin', 1522268654, 3, 2, NULL, NULL, NULL, '', '', '17.90', '天天快递', 'express', '123123133423411', '0.00', '0.00', '0.00', '', 0, 'c66d1fa0292297b6bf25e73109c9c7df', '', 0, 0, 4, 1, '0.00', 0),
(386, 'wx2018032115564110002', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[573]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521619009, 'weixin', 1522355054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '5c4d8f5f632ab124cfb43255a3eb66ed', '', 0, 0, 8, 2, '0.00', 0),
(387, 'wx2018032115592910003', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[574]', 1, '18.00', '0.00', '18.00', '0.00', '0.00', 0, '0.00', 1, 1521619169, 'yue', 1522355054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '90102670b8a445943c5a4b2236331fdd', '', 0, 0, 4, 3, '0.00', 0),
(388, 'wx2018032116120410004', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[575]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521619935, 'weixin', 1522355054, -1, 1, NULL, NULL, NULL, '收货地址填错了', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'f935b4001300d4023852037334e4c34b', '', 0, 0, 8, 4, '0.00', 0),
(389, 'wx2018032116125410005', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[576]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521619996, 'weixin', 1522355054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'b7cdf13d3db506bf7b415d480443fd8c', '', 0, 0, 8, 4, '0.00', 0),
(390, 'wx2018032116170110006', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[577]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521620228, 'weixin', 1522355054, 0, 2, NULL, NULL, NULL, '太好吃了', '', '0.02', '', '', '', '0.00', '0.00', '0.00', '', 0, 'c3676f93e40063bea1b61ca8b502534b', '', 0, 0, 7, 6, '0.00', 0),
(391, 'wx2018032116460610007', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[579]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521622010, 'weixin', 1522441454, 2, 0, NULL, NULL, NULL, '', '', '0.00', '中通快递', 'express', '2432463453', '0.00', '0.00', '0.00', '', 0, 'b7173ff980bcd42cb1117854a2e70307', '', 0, 0, 7, 7, '0.00', 0),
(392, 'wx2018032116491410008', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[580]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521622161, 'weixin', 1522441454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '3c41915b5000f24d2cd928e9e78a507a', '', 0, 0, 7, 8, '0.00', 0),
(393, 'wx2018032116524610009', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[581]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1522441454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '6387c4679382e2947748c35db6590642', '', 0, 0, 5, 0, '0.00', 0),
(394, 'wx2018032117315310010', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[582]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521624721, 'weixin', 1522441454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '8c91d8c9ded950d6d776d0ce83b7b720', '', 0, 0, 7, 9, '0.00', 0),
(395, 'wx2018032118514910011', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[583]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521629518, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'a3e6adfbabff737b280527aec6897423', '', 0, 0, 8, 10, '0.00', 0),
(396, 'wx2018032118525910012', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[584]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521629586, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '4955dc6f2902fdbb7516bc8c364c0b48', '', 0, 0, 8, 11, '0.00', 0),
(397, 'wx2018032119203210013', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[585]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521631239, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '10a00700e9cb5d15744f5b50b3c8b4ce', '', 0, 0, 8, 12, '0.00', 0),
(398, 'wx2018032119211410014', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[586]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521631280, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '04ce7e89bd7c4411a591947be627a766', '', 0, 0, 8, 13, '0.00', 0),
(399, 'wx2018032119214410015', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[587]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521631310, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '18e7c023a6f1bb25fef4cdf221306900', '', 0, 0, 5, 14, '0.00', 0),
(400, 'wx2018032119230010016', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[588]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521631395, 'weixin', 1522527854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '12533cc704b7c8a3b02c4a4c9742d1ee', '', 0, 0, 5, 15, '0.00', 0),
(401, 'wx2018032119233410017', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[589]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521631420, 'weixin', 1522700654, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '3ec0f485c23ceba7d20aeeb0aee43ae8', '', 0, 0, 5, 16, '0.00', 0),
(402, 'wx2018032209241810001', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[590]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521681858, 'yue', 1522700654, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '307aecee03a24675f35ab238ebb568b0', '', 0, 0, 8, 17, '0.00', 0),
(403, 'wx2018032209253710002', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[591]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521681937, 'yue', 1522700654, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '2c087e6995beb5bdf34a75a2df11b65f', '', 0, 0, 8, 18, '0.00', 0),
(404, 'wx2018032209280010003', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[592]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682080, 'yue', 1522700654, -1, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '8176d0c82503160270befed6be9b3cb5', '', 0, 0, 8, 0, '0.00', 0),
(405, 'wx2018032209303110004', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[593]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682231, 'yue', 1522787054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'ae52b4aa078857145b5d030964117d3a', '', 0, 0, 8, 0, '0.00', 0),
(406, 'wx2018032209313910005', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[594]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682299, 'yue', 1522787054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'd8fe973940431b1e578e536308c7d138', '', 0, 0, 8, 0, '0.00', 0),
(407, 'wx2018032209344710006', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[595]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682487, 'yue', 1522787054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '8917addb0d6c43f2ed049a2f99e80843', '', 0, 0, 8, 0, '0.00', 0),
(408, 'wx2018032209362610007', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[596]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682586, 'yue', 1522787054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'da017989397f8e4f72f62264be599e92', '', 0, 0, 8, 0, '0.00', 0),
(409, 'wx2018032209370610008', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[597]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682626, 'yue', 1522787054, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'e2fb86f194101f088bbfac681c2e2e8e', '', 0, 0, 8, 0, '0.00', 0),
(410, 'wx2018032209373210009', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[598]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682652, 'yue', 1522873454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'd7440e0136c8ed30e69c18ffc7cc699f', '', 0, 0, 8, 19, '0.00', 0),
(411, 'wx2018032209383910010', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[600]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682719, 'yue', 1522873454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'dd8774bb09d33f76ef532facd83bd319', '', 0, 0, 8, 20, '0.00', 0),
(412, 'wx2018032209391110011', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[601]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521682751, 'yue', 1522873454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '8c90ca2c71b4a42ecaee717794e9df7f', '', 0, 0, 8, 21, '0.00', 0),
(413, 'wx2018032209535210012', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[604]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521683632, 'yue', 1522873454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '807a1d07a0fc014b660f393dc44fd42b', '', 0, 0, 8, 22, '0.00', 0),
(414, 'wx2018032210340310013', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[605]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686043, 'yue', 1522873454, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '56652524d5d979b61b4843fcb65921ab', '', 0, 0, 8, 23, '0.00', 0),
(415, 'wx2018032210345010014', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[606]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686090, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'f5078f183090f0ac00d45d173ad28871', '', 0, 0, 8, 24, '0.00', 0),
(416, 'wx2018032210353810015', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[607]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686138, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '7e1be1263e69b4d58a22fe109dc700ee', '', 0, 0, 8, 0, '0.00', 0),
(417, 'wx2018032210371710016', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[608]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686237, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '4339e6758d6dd91679480839be02501a', '', 0, 0, 8, 25, '0.00', 0),
(418, 'wx2018032210375210017', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[609]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686272, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '8bd20910e1341192c3180d57c17e9495', '', 0, 0, 8, 26, '0.00', 0),
(419, 'wx2018032210391310018', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[610]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521686379, 'weixin', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '23b9213bde0e10a5dc96f7b3d2062bf9', '', 0, 0, 8, 27, '0.00', 0),
(420, 'wx2018032212244110019', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[611]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521692681, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '00983d017259f3f42871b5b98548acbb', '', 0, 0, 8, 28, '0.00', 0),
(421, 'wx2018032214491010020', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[612]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521701350, 'yue', 1522959854, -1, 2, NULL, NULL, NULL, '颜色、款式、图案描述不符合', '666', '0.02', '', '', '', '0.00', '0.00', '0.00', '', 1, '0bc6a406756a6d7ec17c35a3c74dd078', '', 0, 0, 5, 29, '0.00', 0),
(422, 'wx2018032214492310021', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[613]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1521701363, 'yue', 1522959854, -1, 2, NULL, NULL, NULL, '不要了', '', '0.01', '', '', '', '0.00', '0.00', '0.00', '', 0, 'b2cb115a6a05ea621f5e4b0819024a1f', '', 0, 0, 8, 28, '0.00', 0),
(423, 'wx2018032215404010022', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[614]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521704440, 'yue', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '655c666ae6cd91a53b72fa5148315e03', '', 0, 0, 5, 31, '0.00', 0),
(424, 'wx2018032215433010023', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[616]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521704618, 'weixin', 1522959854, 0, 1, NULL, NULL, NULL, '拼团时间超时', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '575b5a797605ce0eae34597a73140861', '', 0, 0, 5, 32, '0.00', 0),
(425, 'wx2018032215460010024', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[617]', 1, '29.90', '0.00', '29.90', '0.00', '0.00', 0, '0.00', 1, 1521704760, 'yue', 1522959854, 3, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '123123123', '30.00', '0.00', '0.00', '', 0, '20d0477e4521101a83425fc73319a426', '', 0, 0, 0, 0, '0.00', 0),
(426, 'wx2018032215565910025', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[618]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 1, 1521705428, 'weixin', 1522959854, -1, 1, NULL, NULL, NULL, '收货地址填错了', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'f189bdc4e0f367774b4841a69d9ea6d0', '', 0, 0, 7, 33, '0.00', 0),
(427, 'wx2018032216062610026', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[620]', 1, '0.02', '0.00', '0.02', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1522959854, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 1, 'd7d14808f88ae7ed1fffe9c9359ec3dd', '', 0, 0, 5, 0, '0.00', 0),
(428, 'wx2018032216125210027', 35, '测试', '13055555555', '上海 闸北区 城区 哈哈', '[621]', 1, '29.90', '0.00', '29.90', '0.00', '0.00', 0, '0.00', 1, 1521706372, 'yue', 1523046254, 2, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '123456', '30.00', '0.00', '0.00', '', 0, 'b1a357532a3f0223e8970c9c9dfd9358', '', 0, 0, 0, 0, '0.00', 0),
(429, 'wx2018032216133510028', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[623]', 1, '21.90', '0.00', '21.90', '0.00', '0.00', 0, '0.00', 1, 1521706415, 'yue', 1523046254, 2, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '123123', '22.00', '0.00', '0.00', '', 0, 'f59cf81e6bf76a7c683ec03a97d23e38', '', 0, 0, 0, 0, '0.00', 0),
(430, 'wx2018032216163810029', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[625]', 1, '1.00', '0.00', '1.00', '0.00', '0.00', 0, '0.00', 1, 1521706606, 'weixin', 1523046254, 2, 0, NULL, NULL, NULL, '', '', '0.00', '中通快递', 'express', '1234124432', '1.00', '0.00', '0.00', '', 0, 'ba3f1244c33bdb85e11ec58c17943616', '', 0, 0, 11, 34, '0.00', 0),
(431, 'wx2018032216181110030', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[619,624,626,627]', 4, '131.60', '0.00', '131.60', '0.00', '0.00', 0, '0.00', 1, 1521706691, 'yue', 1523046254, 2, 0, NULL, NULL, NULL, '', '', '0.00', '中通快递', 'express', '123123213', '132.00', '0.00', '0.00', '', 0, '544d220abf7f756a1840a19edb2a281f', '', 0, 0, 0, 0, '0.00', 0),
(432, 'wx2018032216201610031', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[631]', 1, '1.00', '0.00', '1.00', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523046254, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '1.00', '0.00', '0.00', '', 1, '30d8532f735168cd0ed9c19742529194', '', 0, 0, 11, 0, '0.00', 0),
(433, 'wx2018032216205210032', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[632]', 1, '1.00', '0.00', '1.00', '0.00', '0.00', 0, '0.00', 1, 1521706860, 'weixin', 1523132654, 0, 1, NULL, NULL, NULL, '收货地址填错了', '', '0.00', '', '', '', '1.00', '0.00', '0.00', '', 0, '2e581a3264fd9edbeb7aa57b1b3b6d8b', '', 0, 0, 11, 35, '0.00', 0),
(434, 'wx2018032216260810033', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[628,629,630]', 3, '101.70', '0.00', '101.70', '0.00', '0.00', 0, '0.00', 1, 1521707168, 'yue', 1523132654, 2, 0, NULL, NULL, NULL, '', '', '0.00', '中通快递', 'express', '123123', '102.00', '0.00', '0.00', '', 0, 'b6a2a9a0d49315337246e595727feef4', '', 0, 0, 0, 0, '0.00', 0),
(435, 'wx2018032216332810034', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[639]', 1, '29.90', '0.00', '29.90', '0.00', '0.00', 0, '0.00', 1, 1521707608, 'yue', 1523132654, 2, 0, NULL, NULL, NULL, '', '', '0.00', '中通快递', 'express', '123123', '30.00', '0.00', '0.00', '', 0, '3f0649ef67cebbb249fecfaba6e7fca5', '', 0, 0, 0, 0, '0.00', 0),
(436, 'wx2018032216340310035', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[636,637,638]', 3, '83.70', '0.00', '83.70', '0.00', '0.00', 0, '0.00', 1, 1521707643, 'yue', 1523132654, 2, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '123213213', '92.00', '0.00', '0.00', '', 0, '5bb469e004dbd3fd85b73273bb96a30b', '', 0, 0, 0, 0, '0.00', 0),
(437, 'wx2018032216350610036', 34, '测试', '18311111111', '陕西 西安市 新城区 红庙坡', '[640,641,642]', 3, '83.70', '0.00', '83.70', '0.00', '0.00', 0, '0.00', 1, 1521707706, 'yue', 1523132654, 2, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '123213123', '92.00', '0.00', '0.00', '', 0, '113619862e904c2ab7b3a23c3efaf82f', '', 0, 0, 0, 0, '0.00', 0),
(438, 'wx2018032311263010001', 57, '廖飞', '15594500161', '陕西 西安市 碑林区 南稍门', '[646]', 1, '29.90', '0.00', '29.90', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523132654, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '30.00', '0.00', '0.00', '', 0, 'a5b5cc3a6635e666e5479843dd95dc29', '', 0, 0, 0, 0, '0.00', 0),
(439, 'wx2018032811135010001', 38, '徐斗明', '15229229835', '陕西 西安市 莲湖区 龙湖国际1411', '[649]', 1, '21.90', '0.00', '21.90', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523132654, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '22.00', '0.00', '0.00', '', 0, '7606a4e5fe767c6302deb310605a0b3f', '', 0, 0, 0, 0, '0.00', 0),
(440, 'wx2018032816254110002', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[653]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1522225548, 'weixin', 1523262102, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'bdbdf74131cd1649ab9ff8a89b1381ca', '', 0, 0, 8, 36, '0.00', 0),
(441, 'wx2018032823323910003', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[654]', 1, '1.00', '0.00', '1.00', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523262102, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '1.00', '0.00', '0.00', '', 1, '0650f3e341d2e3a3403214de6b74cae2', '', 0, 0, 11, 0, '0.00', 0),
(442, 'wx2018032823331710004', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[655]', 1, '1.00', '0.00', '1.00', '0.00', '0.00', 0, '0.00', 1, 1522251206, 'weixin', 1523262102, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '1.00', '0.00', '0.00', '', 0, '26d7b3bf54b3d447b29db1b7a8ab17df', '', 0, 0, 11, 37, '0.00', 0),
(443, 'wx2018032823335710005', 52, 'B', '17799630276', '北京 密云区 城区 22222222', '[656]', 1, '15.00', '0.00', '15.00', '0.00', '0.00', 0, '0.00', 1, 1522251248, 'weixin', 1523262102, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '50f878e0850706e05391a180624704ca', '', 0, 0, 6, 38, '0.00', 0),
(444, 'wx2018033011501010001', 39, '周童', '15899140276', '河北 沧州市 沧县 崔尔庄镇李家庄', '[657]', 1, '19.90', '0.00', '19.90', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523262102, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '10.00', '0.00', '0.00', '', 1, 'f65d050685a970d778073ba35d65f749', 'asdasdasd', 0, 0, 0, 0, '0.00', 0),
(445, 'wx2018040917471710006', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[660,661]', 2, '53.89', '0.00', '53.89', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523267237, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '30.00', '0.00', '0.00', '', 0, '4afe3e641a5898953b967c807542e4af', 'adfsdf', 0, 0, 0, 0, '0.00', 0),
(446, 'wx2018040917495410007', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[662]', 1, '9.90', '6.00', '15.90', '6.00', '0.00', 0, '0.00', 1, 1523267394, 'yue', 1523267394, 3, 2, NULL, NULL, NULL, '', 'asdasdasd', '15.90', '天天快递', 'express', '123123', '10.00', '0.00', '0.00', 'asdad', 0, '343cd5f20593522fb605abd231dbc3a0', 'asdasd', 0, 0, 0, 0, '0.00', 0),
(447, 'wx2018041217475210001', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[664]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523526472, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, 'df8c4a1871d7b4e8c5f20a1ba7a1b06f', '', 0, 0, 0, 0, '0.00', 0),
(448, 'wx2018041309341410001', 71, '刘', '15563299688', '北京 朝阳区 三环以内 88', '[665]', 2, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523583254, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '90d26ae074d45885c07cba3966a96f03', '', 0, 0, 0, 0, '0.00', 0),
(449, 'wx2018041309352910002', 71, '刘', '15563299688', '北京 朝阳区 三环以内 88', '[666]', 1, '128.88', '0.00', '128.88', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523583329, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '53be00b67040d97b94a8cb72257326c8', '', 0, 0, 0, 0, '0.00', 0),
(450, 'wx2018041323232810003', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[667]', 1, '100.00', '0.00', '100.00', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1523633008, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '', 0, '4c70e594074cb27b1ea93b9a1d81b49f', '', 0, 0, 12, 0, '0.00', 0),
(451, 'wx2018041810185910001', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[669]', 1, '16.90', '0.00', '16.90', '0.00', '0.00', 0, '0.00', 0, 0, 'weixin', 1524017939, 0, 0, NULL, NULL, NULL, '', '', '0.00', '', '', '', '17.00', '0.00', '0.00', '', 0, '191c97ec6dc04eeb37d33540be7dc9b0', '', 0, 0, 0, 0, '0.00', 0),
(452, 'wx2018041814271610002', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[671]', 1, '29.90', '0.00', '29.90', '0.00', '0.00', 0, '0.00', 1, 1524032836, 'yue', 1524032836, 2, 0, NULL, NULL, NULL, '', '', '0.00', '天天快递', 'express', '454545', '30.00', '0.00', '0.00', '', 0, 'b4a02dcbb99463b89fe19d5f8c2e3a62', '', 0, 0, 0, 0, '0.00', 0),
(453, 'wx2018042318165210001', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[688]', 1, '9.90', '6.00', '15.90', '6.00', '0.00', 0, '0.00', 1, 1524478612, 'yue', 1524478612, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '10.00', '0.00', NULL, '', 0, '3304c9900dc062a340cb2bbe98dfc654', NULL, 0, 0, 0, 0, '0.00', 0),
(454, 'wx2018042318171410002', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[681,682,683,684,685,686,687]', 7, '1578.26', '0.00', '1578.26', '0.00', '0.00', 0, '0.00', 1, 1524478634, 'yue', 1524478634, 2, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', 'dfdfdf', '179.00', '0.00', NULL, '', 0, '07148fd473574212604e3fe1dbfbbef9', NULL, 0, 0, 0, 0, '0.00', 0),
(455, 'wx2018042318214410003', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[689]', 1, '1200.00', '0.00', '1200.00', '0.00', '0.00', 0, '0.00', 1, 1524478904, 'yue', 1524478904, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '快捷速递', 'express', 'dfdfdf', '50.00', '0.00', NULL, '', 1, 'cccb5cdf76f7d1c7c3a55ac9b4e15a3d', NULL, 0, 0, 0, 0, '0.00', 0),
(456, 'wx2018042408453710001', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[690]', 1, '9.90', '6.00', '15.90', '6.00', '0.00', 0, '0.00', 1, 1524530737, 'yue', 1524530737, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '实打实大苏打实打实的', '10.00', '0.00', NULL, '', 1, 'e330eedc24999956adec145d22b7d27b', NULL, 0, 0, 0, 0, '0.00', 0),
(457, 'wx2018042409304610002', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[692]', 1, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 1, 1524533446, 'yue', 1524533446, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '19.00', '0.00', NULL, '', 0, '2bfc5b473ea7794852fcc561aa261aaf', NULL, 0, 0, 0, 0, '0.00', 13),
(458, 'wx2018042411305410003', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[693]', 1, '128.88', '0.00', '128.88', '0.00', '0.00', 0, '0.00', 1, 1524540654, 'yue', 1524540654, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '呼呼呼', '0.00', '0.00', NULL, '', 1, 'e3f951c07c7b882608f7b5dd8be14d3d', NULL, 0, 0, 0, 0, '0.00', 0),
(459, 'wx2018042411325810004', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[694]', 2, '2400.00', '0.00', '2400.00', '0.00', '0.00', 0, '0.00', 1, 1524540778, 'yue', 1524540778, 1, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '中通快递', 'express', '11111111111111', '50.00', '0.00', NULL, '', 0, '6d11851c889cb94ac36ab8f631bab2b7', NULL, 0, 0, 0, 0, '1796.00', 0),
(460, 'wx2018042411442510005', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[695]', 1, '1200.00', '0.00', '1200.00', '0.00', '0.00', 0, '0.00', 1, 1524541465, 'yue', 1524541465, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '中通快递', 'express', '11111111111111111', '50.00', '0.00', NULL, '', 0, '0b7dbcfb1ce69a54c67b1e9cd2048112', '测试', 0, 0, 0, 0, '898.00', 0),
(461, 'wx2018042412032310006', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[696]', 1, '100.00', '0.00', '100.00', '0.00', '0.00', 0, '0.00', 1, 1524542603, 'yue', 1524542603, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'ba9b83da038910c299aed69c4436c78d', NULL, 0, 0, 11, 37, '0.00', 0),
(462, 'wx2018042412035610007', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[697]', 1, '100.00', '0.00', '100.00', '0.00', '0.00', 0, '0.00', 1, 1524542636, 'yue', 1524542636, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '1844c2737369b88eb26c5c3c6d1376ef', NULL, 0, 0, 11, 38, '0.00', 0),
(463, 'wx2018042414222810008', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[701]', 1, '9.90', '6.00', '15.90', '6.00', '0.00', 0, '0.00', 1, 1524550948, 'yue', 1524550948, 2, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '222222222222222', '10.00', '0.00', NULL, '', 0, 'e910e76c60023ad4ae37ef0ed8942214', NULL, 0, 0, 0, 0, '10.00', 0),
(464, 'wx2018042414224510009', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[691]', 1, '100.00', '0.00', '100.00', '0.00', '0.00', 0, '0.00', 1, 1524550965, 'yue', 1524550965, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '12382ba74848986edc4577c9a628033b', NULL, 0, 0, 10, 39, '0.00', 0),
(465, 'wx2018042414232910010', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[698,699,700]', 6, '4833.80', '0.00', '4833.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'yue', 1524551009, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '84.00', '0.00', NULL, '', 0, 'afc42d68c0b7f026ac45b505ff114710', '延迟发货', 0, 0, 0, 0, '3592.00', 0),
(466, 'wx2018042509201210001', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[702]', 1, '1200.00', '0.00', '1130.00', '0.00', '50.00', 183, '20.00', 1, 1524619236, 'yue', 1524619212, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '123456498', '50.00', '5000.00', NULL, '', 1, 'caf2ff722dc89a76a501cf7e95e669e4', NULL, 0, 0, 0, 0, '898.00', 0),
(467, 'wx2018042509563810002', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[704]', 1, '100.00', '0.00', '90.00', '0.00', '0.00', 184, '10.00', 1, 1524621398, 'yue', 1524621398, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '564712a835d6a65aa305dcf6eef0d07d', NULL, 0, 0, 11, 40, '0.00', 0),
(468, 'wx2018042510005910003', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[707]', 1, '23.99', '0.00', '23.99', '0.00', '0.00', 0, '0.00', 1, 1524621659, 'yue', 1524621659, 0, 1, NULL, NULL, NULL, '颜色、款式、图案描述不符合', NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'bb4c311b22bff395f0efef65b02e25d7', NULL, 0, 0, 0, 0, '0.00', 0),
(469, 'wx2018042515440910004', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[710]', 1, '888.00', '0.00', '888.00', '0.00', '0.00', 0, '0.00', 1, 1524642249, 'yue', 1524642249, 0, 1, NULL, NULL, NULL, '收到商品破损', NULL, '0.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, 'c89c21aff130bf8b1a6b8d9ada707974', NULL, 0, 0, 0, 0, '0.00', 15),
(470, 'wx2018042516585110005', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[711]', 1, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1524646731, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '70.00', '0.00', NULL, '', 0, '0f073c79011d5192b95b67112f8bda1c', NULL, 0, 0, 0, 0, '8.00', 16),
(471, 'wx2018042516592210006', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[712]', 1, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1524646762, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '70.00', '0.00', NULL, '', 0, '5c09a11432e27d5b6dc6e2ff7a192dce', NULL, 0, 0, 0, 0, '8.00', 16),
(472, 'wx2018042517110510007', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[713]', 1, '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', 1, 1524647465, 'weixin', 1524647465, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '中通快递', 'express', '实打实打算', '70.00', '0.00', NULL, '', 1, '037abb4a232f0124166b5c95d36126b1', NULL, 0, 0, 0, 0, '8.00', 16),
(473, 'wx2018042517291310008', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[714]', 1, '77.00', '0.00', '77.00', '0.00', '0.00', 0, '0.00', 1, 1524648553, 'yue', 1524648553, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', 'ddfdf', '40.00', '0.00', NULL, '', 1, '1415a64423c04b7157c48229d248098d', NULL, 0, 0, 0, 0, '0.00', 17),
(474, 'wx2018042518004610009', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[715]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 1, 1524650446, 'yue', 1524650446, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '中通快递', 'express', 'kuaididanhao', '50.00', '0.00', NULL, '', 1, '177b67cd31ca91ae62cc4f13f1dfc7fd', NULL, 0, 0, 0, 0, '777.00', 18),
(475, 'wx2018042711264210001', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[716]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 1, 1524799602, 'yue', 1524799602, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '是的是的', '50.00', '0.00', NULL, '', 1, '14ca166d10ffea7d05c74c2e45d9ffc4', NULL, 0, 0, 0, 0, '777.00', 18),
(476, 'wx2018051800020010001', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[723]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1526572920, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, '022fa844dd1fbec895a7c054df5751b6', NULL, 0, 0, 0, 0, '777.00', 18),
(477, 'wx2018042711264210025', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[716]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 1, 1524799602, 'yue', 1524799602, 2, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '是的是的', '50.00', '0.00', NULL, '', 0, '14ca166d10ffea7d05c74c2e45d9ffc5', NULL, 0, 0, 0, 0, '777.00', 18),
(478, 'wx20180427112642100258', 101, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[716]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 1, 1524799602, 'yue', 1524799602, 2, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '是的是的', '50.00', '0.00', NULL, '', 0, '14ca166d10ffea7d05c74c2e45d9ffc', NULL, 0, 0, 0, 0, '777.00', 18),
(479, 'wx2018051909284610001', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[719,720]', 4, '165.40', '0.00', '165.40', '0.00', '0.00', 0, '0.00', 1, 1526958987, 'yue', 1526693326, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'f98a8024353deb9a0ee66d7f4e23d93d', NULL, 0, 0, 0, 0, '10.00', 0),
(480, 'wx2018051909313510002', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[724]', 1, '25.00', '0.00', '25.00', '0.00', '0.00', 0, '0.00', 1, 1526693496, 'yue', 1526693495, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '4f4c45e04c5cf42c460b94c914fa0c95', NULL, 0, 0, 0, 0, '10.00', 0),
(481, 'wx2018051909382910003', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[725]', 1, '25.00', '0.00', '25.00', '0.00', '0.00', 0, '0.00', 1, 1526693910, 'yue', 1526693909, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '4adb3345e78dca63313e9fdb5e517e3e', NULL, 0, 0, 0, 0, '10.00', 0),
(482, 'wx2018051909394010004', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[726]', 1, '25.00', '0.00', '25.00', '0.00', '0.00', 0, '0.00', 1, 1526693980, 'yue', 1526693980, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '0f844a095aa6ee4bcb279b87b514bbb8', NULL, 0, 0, 0, 0, '10.00', 0),
(483, 'wx2018051909405810005', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[727]', 1, '25.00', '0.00', '25.00', '0.00', '0.00', 0, '0.00', 1, 1526694059, 'yue', 1526694058, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '3f17290022f40c586e59fe40b88b17a0', NULL, 0, 0, 0, 0, '10.00', 0),
(484, 'wx2018051914162310006', 101, 'wds', '15241258741', '河北省 石家庄市 长安区 wdsd', '[731]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'yue', 1526710583, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '416fe73832267ebef6d8c8ac5afece74', NULL, 0, 0, 0, 0, '0.00', 0),
(485, 'wx2018051914175610007', 101, 'wds', '15241258741', '河北省 石家庄市 长安区 wdsd', '[733]', 1, '25.00', '0.00', '25.00', '0.00', '0.00', 0, '0.00', 1, 1526710677, 'yue', 1526710676, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '圆通速递', 'express', '是否受到收到', '30.00', '0.00', NULL, '', 0, '1a01a5273ff22faa7cefc2fd743fd2ac', NULL, 0, 0, 0, 0, '10.00', 0),
(486, 'wx2018051914193110008', 101, 'wds', '15241258741', '河北省 石家庄市 长安区 wdsd', '[734]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 1, 1526710772, 'yue', 1526710771, 3, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '天天快递', 'express', '规划规划规划', '0.00', '0.00', NULL, '', 1, 'a1992ef142096419415f7f8dc69c3b9c', NULL, 0, 0, 0, 0, '0.00', 0),
(487, 'wx2018051918333610009', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[737]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1526726016, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '2c8d61399017b5c4faa1aa8dc295c635', NULL, 0, 0, 0, 0, '0.00', 0),
(488, 'wx2018051918335710010', 100, 'ceshi1', '13088888888', '北京市 北京市 东城区 地址', '[738]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 1, 1526726038, 'yue', 1526726037, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'fd9c56e88bf67f539139d8e2ac7a14b6', NULL, 0, 0, 0, 0, '0.00', 0),
(489, 'wx2018052114072810001', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[739]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 1, 1526882848, 'yue', 1526882848, 2, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '中国邮政', 'express', '454', '30.00', '0.00', NULL, '', 0, 'a713da52be2f4446a1643eaa550b1766', NULL, 0, 0, 0, 0, '10.00', 0),
(490, 'wx2018052209032810001', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[741]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 1, 1526951009, 'yue', 1526951008, 0, 0, '["\\/public\\/uploads\\/store\\/comment\\/5b038854b88b9.jpg","\\/public\\/uploads\\/store\\/comment\\/5b0388569fb09.png"]', '测试中', 1526951609, '农业银行实打实大苏打', 'gfh ', '900.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, 'f595091fd0badebf0803b72ee43200d1', NULL, 0, 0, 0, 0, '777.00', 0),
(491, 'wx2018052318210110001', 102, '测试', '13055555555', '北京市 北京市 东城区 地址', '[750]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 1, 1527070861, 'yue', 1527070861, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '99.00', '0.00', NULL, '', 0, '85c60eff3a786f0571bf5f096bbb2922', NULL, 0, 0, 0, 0, '88.00', 0),
(492, 'wx2018052409144210001', 102, '测试', '13055555555', '北京市 北京市 东城区 地址', '[751]', 1, '21.00', '0.00', '21.00', '0.00', '0.00', 0, '0.00', 1, 1527124483, 'yue', 1527124482, 1, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '圆通速递', 'express', '889795746002745118', '30.00', '0.00', NULL, '', 0, '76ec4570a3476200f5f452b49980558c', NULL, 0, 0, 0, 0, '10.00', 0),
(493, 'wx2018052409431010002', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[752]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 1, 1527126191, 'yue', 1527126190, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '99.00', '0.00', NULL, '', 0, '8209144fa0d19e1a0ba3b93003464fc8', NULL, 0, 0, 0, 0, '88.00', 0),
(494, 'wx2018052509521510001', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[755]', 1, '21.00', '0.00', '21.00', '0.00', '0.00', 0, '0.00', 1, 1527213135, 'yue', 1527213135, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'a75d6518f7ab8d1ad1f553dbd9a7f14e', NULL, 0, 0, 0, 0, '10.00', 0),
(495, 'wx2018052511475210002', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[757]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 1, 1527220073, 'yue', 1527220072, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '99.00', '0.00', NULL, '', 0, 'ae8d35aa6e39a0421ecd7be9ced3b5dd', NULL, 0, 0, 0, 0, '88.00', 0),
(496, 'wx2018052820221810001', 105, '许荣耀', '13679281569', '内蒙古自治区 包头市 土默特右旗 红庙坡龙湖国际', '[759]', 1, '21.00', '0.00', '21.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527510138, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '86e397065f269a352f8ec3942da08114', NULL, 0, 0, 0, 0, '10.00', 0),
(497, 'wx2018052820270510002', 105, '许荣耀', '13679281569', '内蒙古自治区 包头市 土默特右旗 红庙坡龙湖国际', '[760]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527510425, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '6337dbba771abaf503881dccd052833b', NULL, 0, 0, 0, 0, '0.00', 0),
(498, 'wx2018052820300210003', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[761]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527510602, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '542c56fb4a2763586a51c241a1881e0d', NULL, 0, 0, 0, 0, '10.00', 0),
(499, 'wx2018052820582110004', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[772]', 1, '99.00', '0.00', '99.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527512301, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '90.00', '0.00', NULL, '', 0, 'c9edda1906ee7c8315c6222528ec20b5', NULL, 0, 0, 0, 0, '50.00', 0),
(500, 'wx2018052823580710005', 105, '许荣耀', '13679281569', '内蒙古自治区 包头市 土默特右旗 红庙坡龙湖国际', '[774,775,776]', 5, '300291.60', '0.00', '300291.60', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527523087, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '90.00', '0.00', NULL, '', 0, '7317abdc8203f405c454308130f27ee5', NULL, 0, 0, 0, 0, '100.00', 0),
(501, 'wx2018052900003210001', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[764]', 1, '24.00', '0.00', '24.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527523232, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'e621f0272943350a0bf666662af3beb3', NULL, 0, 0, 0, 0, '0.00', 0),
(502, 'wx2018052908223610002', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[778]', 1, '26.80', '0.00', '26.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527553356, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'b74b9f2d3035f2650abf1fa49e225864', NULL, 0, 0, 0, 0, '0.00', 0),
(503, 'wx2018052909161610003', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[783]', 1, '28.80', '0.00', '28.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527556576, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '48311515a71737318c03c444a47c7297', NULL, 0, 0, 0, 0, '0.00', 0),
(504, 'wx2018052909165710004', 105, '许荣耀', '13679281569', '内蒙古自治区 包头市 土默特右旗 红庙坡龙湖国际', '[779]', 1, '24.00', '0.00', '24.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527556617, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '47ad6ac9c59a6f562eea192ba2b4e643', NULL, 0, 0, 0, 0, '10.00', 0),
(505, 'wx2018052910352510005', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[784]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527561325, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'b3520cfd16ac13a512513e7d8746ff65', NULL, 0, 0, 0, 0, '10.00', 0),
(506, 'wx2018052910354610006', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[785]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527561346, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'ef97f029361d45a8c780d4bf46fd7c35', NULL, 0, 0, 0, 0, '10.00', 0),
(507, 'wx2018052910440210007', 100, '测试', '13088888888', '北京市 北京市 东城区 地址', '[786]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527561842, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '4404d2f08b195da5b4e977c153b3eda4', NULL, 0, 0, 0, 0, '10.00', 0),
(508, 'wx2018052914184910008', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[787]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527574729, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '18b73d28ae05095d4411a04efabcf012', NULL, 0, 0, 0, 0, '10.00', 0),
(509, 'wx2018052915522310009', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[788]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527580366, 'weixin', 1527580343, 0, 2, NULL, NULL, NULL, NULL, NULL, '0.01', NULL, NULL, NULL, '90.00', '0.00', NULL, '', 0, 'd39285f47ad8a725be8fb32d4755b801', NULL, 0, 0, 0, 0, '50.00', 0),
(510, 'wx2018052915545110010', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[789]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527580491, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, '3ea82a0ab6019c8c67f2ed6be9834503', NULL, 0, 0, 0, 0, '0.00', 0),
(511, 'wx2018052915553210011', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[790]', 1, '46.80', '0.00', '46.80', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527580532, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'c82a51c3971c0f9ed4e5f5827b760e84', NULL, 0, 0, 0, 0, '0.00', 0),
(512, 'wx2018052915565210012', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[791]', 1, '20.00', '0.00', '20.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527580612, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '0ef21487a547bf8ae33f9eeafdae7d4d', NULL, 0, 0, 0, 0, '10.00', 0),
(513, 'wx2018052919481810013', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[794]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527594498, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, '676bea179711a03c7ac86a749291a1f8', NULL, 0, 0, 0, 0, '777.00', 18),
(514, 'wx2018052920324510014', 65, '许荣耀', '13679281569', '陕西 西安市 莲湖区 西安市莲湖区红庙坡龙湖国际', '[795]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527597177, 'weixin', 1527597165, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'd702130075429d1035be55349eadd939', NULL, 0, 0, 0, 0, '0.00', 0),
(515, 'wx2018053009145610001', 111, '许荣耀', '13679281569', '陕西省 西安市 莲湖区 红庙坡龙湖国际11', '[796]', 1, '21.00', '0.00', '21.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527642896, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, 'a6786ca15c7d7fd3cb5713c5f899c482', NULL, 0, 0, 0, 0, '10.00', 0),
(516, 'wx2018053009221710002', 111, '许荣耀', '13679281569', '陕西省 西安市 莲湖区 红庙坡龙湖国际11', '[797]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527643344, 'weixin', 1527643337, 0, 0, '""', '', 1527643467, '招商银行实打实打算', '金额太少不退了', '0.00', NULL, NULL, NULL, '90.00', '0.00', NULL, '', 0, 'cc6bec4becdc1d1ae119dfdab244ae8f', NULL, 0, 0, 0, 0, '50.00', 0),
(517, 'wx2018053009265310003', 107, '雷神', '13000000000', '北京 密云区 城区 天庭中阁', '[798]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527643630, 'weixin', 1527643613, 0, 1, NULL, NULL, NULL, '拼团时间超时', NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'a8cf61e4b1727d0efabf04bba4854c28', NULL, 0, 0, 16, 41, '0.00', 0),
(518, 'wx2018053009292710004', 111, '许荣耀', '13679281569', '陕西省 西安市 莲湖区 红庙坡龙湖国际11', '[799]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527643767, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, '3544681a2fbe3068728bf54195c1885c', NULL, 0, 0, 0, 0, '777.00', 0),
(519, 'wx2018053009352810005', 111, '许荣耀', '13679281569', '陕西省 西安市 莲湖区 红庙坡龙湖国际11', '[801]', 5, '140.00', '0.00', '114.01', '0.00', '0.00', 200, '25.99', 0, NULL, 'weixin', 1527644128, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '30.00', '0.00', NULL, '', 0, '5672763e43934f9b178a7b10578312bb', NULL, 0, 0, 0, 0, '50.00', 0),
(520, 'wx2018053009451410006', 111, '许荣耀', '13679281569', '陕西省 西安市 莲湖区 红庙坡龙湖国际11', '[802]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527644719, 'weixin', 1527644714, 1, 0, NULL, NULL, NULL, NULL, NULL, '0.00', '韵达快运', 'express', '3998690638290', '90.00', '0.00', NULL, '', 0, '6d30b98460e120cd595e8095cadd672b', NULL, 0, 0, 0, 0, '50.00', 0),
(521, 'wx2018053019325510007', 108, '测试', '13055555555', '北京市 北京市 东城区 阿斯蒂芬', '[804]', 1, '900.00', '0.00', '900.00', '0.00', '0.00', 0, '0.00', 0, NULL, 'weixin', 1527679975, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '50.00', '0.00', NULL, '', 0, 'ee8141605242eefeb03f9ab532b2b7ac', NULL, 0, 0, 0, 0, '777.00', 18),
(522, 'wx2018060117590010001', 1, '测试003', '18311111111', '陕西 西安市 长安区 测试地址11123123', '[809]', 1, '100.00', '0.00', '100.00', '0.00', '0.00', 0, '0.00', 1, 1527847140, 'yue', 1527847140, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'd444b33a60828df63760e21b6f8e12ce', NULL, 0, 0, 10, 42, '0.00', 0),
(523, 'wx2018060215365410001', 107, '雷神', '13000000000', '北京 密云区 城区 天庭中阁', '[811]', 1, '0.01', '0.00', '0.01', '0.00', '0.00', 0, '0.00', 1, 1527925031, 'weixin', 1527925014, 0, 0, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL, '0.00', '0.00', NULL, '', 0, 'd5842cb7ab51e5307e16b9f55f5d5efb', NULL, 0, 0, 18, 43, '0.00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order_cart_info`
--

CREATE TABLE IF NOT EXISTS `eb_store_order_cart_info` (
  `oid` int(11) unsigned NOT NULL COMMENT '订单id',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text NOT NULL COMMENT '购买东西的详细信息',
  `unique` char(32) NOT NULL COMMENT '唯一id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单购物详情表';

--
-- 转存表中的数据 `eb_store_order_cart_info`
--

INSERT INTO `eb_store_order_cart_info` (`oid`, `cart_id`, `product_id`, `cart_info`, `unique`) VALUES
(385, 572, 606, '{"id":572,"uid":34,"type":"product","product_id":606,"product_attr_unique":"","cart_num":1,"add_time":1521618310,"is_pay":0,"is_del":0,"is_new":1,"combination_id":4,"productInfo":{"id":606,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa8f85753db9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa8f85bd2a6e.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86481922.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86a30138.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86e5f041.jpg"],"price":"18.00","ot_price":"30.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":200,"store_name":"\\u3010\\u7267\\u8bfa\\u63d0\\u5b50\\u5976\\u8c46248g*2\\u3011\\u8461\\u8404\\u5939\\u5fc3\\u5976\\u8c46 \\u5185\\u8499\\u53e4\\u7279\\u4ea7 \\u4f11\\u95f2\\u5c0f\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":18,"trueStock":81}', 'cfc3419c415a1a23c2c8498c06c2622a'),
(386, 573, 549, '{"id":573,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521618996,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":52}', '81b0aa07025dbebf9d51b1385fe10eb9'),
(387, 574, 606, '{"id":574,"uid":34,"type":"product","product_id":606,"product_attr_unique":"","cart_num":1,"add_time":1521619163,"is_pay":0,"is_del":0,"is_new":1,"combination_id":4,"productInfo":{"id":606,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa8f85753db9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa8f85bd2a6e.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86481922.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86a30138.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa8f86e5f041.jpg"],"price":"18.00","ot_price":"30.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":200,"store_name":"\\u3010\\u7267\\u8bfa\\u63d0\\u5b50\\u5976\\u8c46248g*2\\u3011\\u8461\\u8404\\u5939\\u5fc3\\u5976\\u8c46 \\u5185\\u8499\\u53e4\\u7279\\u4ea7 \\u4f11\\u95f2\\u5c0f\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":18,"trueStock":80}', '764e8359096cb4daadf995a47541481e'),
(388, 575, 549, '{"id":575,"uid":52,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521619919,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":51}', 'dfcc1d5f19404388582e0c33d5933b68'),
(389, 576, 549, '{"id":576,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521619971,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":50}', '4c5057c612ac633c557606abf014e7ca'),
(390, 577, 550, '{"id":577,"uid":39,"type":"product","product_id":550,"product_attr_unique":"","cart_num":1,"add_time":1521620218,"is_pay":0,"is_del":0,"is_new":1,"combination_id":7,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aab72d57f85d.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aab72d7e37a3.jpg"],"price":"0.02","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u4ee3\\u9910\\u5976\\u833620g*20\\u3011\\u5185\\u8499\\u98ce\\u5473\\u5976\\u8336 \\u65e9\\u6668\\u8425\\u517b\\u5976\\u8336 \\u4e0b\\u5348\\u4f11\\u95f2\\u996e\\u54c1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":84}', '47ef2eb1b31694a05647356de7f94a4a'),
(391, 579, 550, '{"id":579,"uid":39,"type":"product","product_id":550,"product_attr_unique":"","cart_num":1,"add_time":1521621963,"is_pay":0,"is_del":0,"is_new":1,"combination_id":7,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aab72d57f85d.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aab72d7e37a3.jpg"],"price":"0.02","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u4ee3\\u9910\\u5976\\u833620g*20\\u3011\\u5185\\u8499\\u98ce\\u5473\\u5976\\u8336 \\u65e9\\u6668\\u8425\\u517b\\u5976\\u8336 \\u4e0b\\u5348\\u4f11\\u95f2\\u996e\\u54c1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":83}', '771bb294f2a5c67146a30e8b57c0b58a'),
(392, 580, 550, '{"id":580,"uid":39,"type":"product","product_id":550,"product_attr_unique":"","cart_num":1,"add_time":1521622150,"is_pay":0,"is_del":0,"is_new":1,"combination_id":7,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aab72d57f85d.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aab72d7e37a3.jpg"],"price":"0.02","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u4ee3\\u9910\\u5976\\u833620g*20\\u3011\\u5185\\u8499\\u98ce\\u5473\\u5976\\u8336 \\u65e9\\u6668\\u8425\\u517b\\u5976\\u8336 \\u4e0b\\u5348\\u4f11\\u95f2\\u996e\\u54c1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":82}', '730352c594533a56f2de5baadbbdafee'),
(393, 581, 547, '{"id":581,"uid":34,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521622362,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":51}', '08d53cd30b487048dd3a67db904acc28'),
(394, 582, 550, '{"id":582,"uid":52,"type":"product","product_id":550,"product_attr_unique":"","cart_num":1,"add_time":1521624709,"is_pay":0,"is_del":0,"is_new":1,"combination_id":7,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aab72d57f85d.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aab72d7e37a3.jpg"],"price":"0.02","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u4ee3\\u9910\\u5976\\u833620g*20\\u3011\\u5185\\u8499\\u98ce\\u5473\\u5976\\u8336 \\u65e9\\u6668\\u8425\\u517b\\u5976\\u8336 \\u4e0b\\u5348\\u4f11\\u95f2\\u996e\\u54c1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":81}', 'b576814019dc1303e3b78cdc50571b55'),
(395, 583, 549, '{"id":583,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521629505,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":49}', '1633727e16b29e084edf3da658e392d0'),
(396, 584, 549, '{"id":584,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521629576,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":48}', 'd95cfd1352f2fe896ecda22d1ac6eb48'),
(397, 585, 549, '{"id":585,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521631230,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":47}', 'e4844effc19ed4f917a0f4c411721039'),
(398, 586, 549, '{"id":586,"uid":39,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521631272,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":46}', '9fb1822ee1a252d3bc3513bed3d072b8'),
(399, 587, 547, '{"id":587,"uid":39,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521631302,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":50}', 'b55ef99a663aabd6c3ae003fadd40673'),
(400, 588, 547, '{"id":588,"uid":39,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521631378,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":49}', '2338308fb954ff7e97b1ee17287a29b7'),
(401, 589, 547, '{"id":589,"uid":39,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521631411,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":48}', '7fcfd6a78e2f2ca7bccd0ebfe5a16f82'),
(402, 590, 549, '{"id":590,"uid":35,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521681852,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":45}', '56386dfd1bceead66aac2c54ccc661cb'),
(403, 591, 549, '{"id":591,"uid":35,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521681931,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":44}', 'e884888633c5310ee7ce6ed11e02a152'),
(404, 592, 549, '{"id":592,"uid":35,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682075,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":43}', '3d6c821ff55920767b244f3f25299916'),
(405, 593, 549, '{"id":593,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682213,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":42}', 'bd372933ab192e91924dea9fbce2830b'),
(406, 594, 549, '{"id":594,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682291,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":41}', 'd19232c725b9a60aa05228282d027c54'),
(407, 595, 549, '{"id":595,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682482,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":40}', '894f3e0d739985c4c906769f086ef9ac'),
(408, 596, 549, '{"id":596,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682579,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":39}', '8626c09391529d753ba9dcd362d7247a'),
(409, 597, 549, '{"id":597,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682620,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":38}', 'a0db47bf283731a6393ef18f8237d832'),
(410, 598, 549, '{"id":598,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682647,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":37}', '0d0fbe111dfa5e53923f0d12961c899d'),
(411, 600, 549, '{"id":600,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682713,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":36}', 'f4cc72d3f4bb856ba12a93ca750a5f29'),
(412, 601, 549, '{"id":601,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521682748,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":35}', '6dcc1b32ca50e514d9e20713e1f9f8a3'),
(413, 604, 549, '{"id":604,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521683627,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":34}', '21d4cd0dfc5b79de860daf976385473f'),
(414, 605, 549, '{"id":605,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686036,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":33}', '51972299a0b2919f78fb3ed814b57932'),
(415, 606, 549, '{"id":606,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686085,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":32}', 'c789129f0265de012ba5174fcbb06b4c'),
(416, 607, 549, '{"id":607,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686132,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":31}', 'ac3f255f08db7b15268bdf951f31db6f'),
(417, 608, 549, '{"id":608,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686231,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":30}', '13fa7fdfbac7283e40f58291381bae30'),
(418, 609, 549, '{"id":609,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686266,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":29}', '17c10a9d23d41b7d8c78cc951e58629a'),
(419, 610, 549, '{"id":610,"uid":35,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521686347,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":28}', '78416f5ff008cfa2a93bc8dcb9ad8746'),
(420, 611, 549, '{"id":611,"uid":34,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521692676,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":27}', '04f2d3cd4853b00827492dd47be1c94e'),
(421, 612, 547, '{"id":612,"uid":34,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521701345,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":47}', '679f0a01ad9e6bf5ef48e641d6bfd248'),
(422, 613, 549, '{"id":613,"uid":35,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1521701358,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":26}', '05123eee911db5fd7912ce8f659c9992'),
(423, 614, 547, '{"id":614,"uid":34,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521704434,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":46}', '19490bd0c5aef0d9d2fb5159df0e6f3c'),
(424, 616, 547, '{"id":616,"uid":39,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521704607,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":45}', '5ca5e383295d256740f43238a2eebfb6'),
(425, 617, 647, '{"id":617,"uid":34,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521704751,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":888,"sales":0,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":888}', 'c6fb2c3f9020d36293247a7bfa1c5b79'),
(426, 618, 550, '{"id":618,"uid":39,"type":"product","product_id":550,"product_attr_unique":"","cart_num":1,"add_time":1521705417,"is_pay":0,"is_del":0,"is_new":1,"combination_id":7,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aab72d57f85d.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aab72d7e37a3.jpg"],"price":"0.02","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u4ee3\\u9910\\u5976\\u833620g*20\\u3011\\u5185\\u8499\\u98ce\\u5473\\u5976\\u8336 \\u65e9\\u6668\\u8425\\u517b\\u5976\\u8336 \\u4e0b\\u5348\\u4f11\\u95f2\\u996e\\u54c1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":80}', '707a601b10df6cfc7b0cd7e0179707ec'),
(427, 620, 547, '{"id":620,"uid":39,"type":"product","product_id":547,"product_attr_unique":"","cart_num":1,"add_time":1521705983,"is_pay":0,"is_del":0,"is_new":1,"combination_id":5,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aa92d82052a6.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aa92d8473246.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d8fe1259.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9475160.jpg","\\/public\\/uploads\\/store\\/product\\/s_5aa92d9963cb8.jpg"],"price":"0.02","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"63","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u8349\\u539f\\u98ce\\u5473\\u5976\\u5757\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u4e73\\u5236\\u54c1\\u5976\\u5757\\u916a\\u9165\\u7cd5\\u5065\\u5eb7\\u4fbf\\u643a\\u4f11\\u95f2\\u5c0f\\u96f6\\u98df118g*4","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.02,"trueStock":44}', 'd07c2ffbcb410b4451c9b8f058b762e3'),
(428, 621, 647, '{"id":621,"uid":35,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521706367,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":1,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":887,"sales":1,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":887}', '7c4d38605c499a47d7764227c804367b'),
(429, 623, 642, '{"id":623,"uid":34,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1521706411,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":888,"sales":0,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":888}', 'e1503a587b3cbb3f198788e422c5e412'),
(430, 625, 623, '{"id":625,"uid":52,"type":"product","product_id":623,"product_attr_unique":"","cart_num":1,"add_time":1521706593,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"productInfo":{"id":623,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab365d7d8b23.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab365dfb4b9e.jpg"],"price":"1.00","ot_price":"35.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"1.00","cate_id":"63","sales":0,"stock":888,"store_name":"\\u3010\\u7267\\u8bfa\\u8bdd\\u6885\\u5976\\u8c46\\u94c1\\u76d2\\u88c5\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u96f6\\u98df\\u5c0f\\u5403\\u4e73\\u5236\\u54c1\\u8bdd\\u6885\\u5976\\u8c46","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":1,"trueStock":88}', '93c45dc2470fe94c83d55a8017ccc799'),
(431, 619, 647, '{"id":619,"uid":34,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521706244,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":2,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":886,"sales":2,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":886}', '8dc3f65243d50fe91a03390301aa2094'),
(431, 624, 642, '{"id":624,"uid":34,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1521706654,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":1,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":887,"sales":1,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":887}', '583be834c2793fc269702f0b48abda48'),
(431, 626, 640, '{"id":626,"uid":34,"type":"product","product_id":640,"product_attr_unique":"e9a2eed1","cart_num":1,"add_time":1521706670,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":640,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab324581b3a9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3245ba2cbf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab3245fb3a3f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab324626e29f.jpg"],"price":"49.90","ot_price":"80.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"50.00","cate_id":"121","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u52a0\\u5de7\\u514b\\u529b  \\u4ec0\\u9526\\u67a3\\u5939\\u6838\\u6843\\u3011\\u9999\\u9165\\u8106\\u67a3\\u82e5\\u7f8c\\u7070\\u67a3  \\u4ec0\\u9526\\u9a8f\\u67a3\\u5939\\u4ec1\\u7ec4\\u5408\\u88c5","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":640,"suk":"\\u5de7\\u514b\\u529b\\u7ea2\\u67a32\\u7f50+\\u4ec0\\u9526\\u67a32\\u76d2","stock":888,"sales":0,"price":"49.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab324581b3a9.jpg","unique":"e9a2eed1"}},"truePrice":49.9,"trueStock":888}', '3408195e3f61db27b654038b8bdd4fd5'),
(431, 627, 647, '{"id":627,"uid":34,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521706678,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":2,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":886,"sales":2,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":886}', '813e7bb37643418e4ba9b5150fcfed47'),
(432, 631, 623, '{"id":631,"uid":39,"type":"product","product_id":623,"product_attr_unique":"","cart_num":1,"add_time":1521706809,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"productInfo":{"id":623,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab365d7d8b23.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab365dfb4b9e.jpg"],"price":"1.00","ot_price":"35.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"1.00","cate_id":"63","sales":0,"stock":888,"store_name":"\\u3010\\u7267\\u8bfa\\u8bdd\\u6885\\u5976\\u8c46\\u94c1\\u76d2\\u88c5\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u96f6\\u98df\\u5c0f\\u5403\\u4e73\\u5236\\u54c1\\u8bdd\\u6885\\u5976\\u8c46","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":1,"trueStock":87}', '66e4810114fb59aeb24360ba1236ae02'),
(433, 632, 623, '{"id":632,"uid":52,"type":"product","product_id":623,"product_attr_unique":"","cart_num":1,"add_time":1521706848,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"productInfo":{"id":623,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab365d7d8b23.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab365dfb4b9e.jpg"],"price":"1.00","ot_price":"35.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"1.00","cate_id":"63","sales":0,"stock":888,"store_name":"\\u3010\\u7267\\u8bfa\\u8bdd\\u6885\\u5976\\u8c46\\u94c1\\u76d2\\u88c5\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u96f6\\u98df\\u5c0f\\u5403\\u4e73\\u5236\\u54c1\\u8bdd\\u6885\\u5976\\u8c46","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":1,"trueStock":86}', '8440962ecf3a9c12d475af93293b1995'),
(434, 628, 640, '{"id":628,"uid":34,"type":"product","product_id":640,"product_attr_unique":"e9a2eed1","cart_num":1,"add_time":1521706875,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":640,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab324581b3a9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3245ba2cbf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab3245fb3a3f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab324626e29f.jpg"],"price":"49.90","ot_price":"80.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"50.00","cate_id":"121","sales":1,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u52a0\\u5de7\\u514b\\u529b  \\u4ec0\\u9526\\u67a3\\u5939\\u6838\\u6843\\u3011\\u9999\\u9165\\u8106\\u67a3\\u82e5\\u7f8c\\u7070\\u67a3  \\u4ec0\\u9526\\u9a8f\\u67a3\\u5939\\u4ec1\\u7ec4\\u5408\\u88c5","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":640,"suk":"\\u5de7\\u514b\\u529b\\u7ea2\\u67a32\\u7f50+\\u4ec0\\u9526\\u67a32\\u76d2","stock":887,"sales":1,"price":"49.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab324581b3a9.jpg","unique":"e9a2eed1"}},"truePrice":49.9,"trueStock":887}', '9b00ef73cbedb3b3909c30681cfc0ad6'),
(434, 629, 642, '{"id":629,"uid":34,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1521706875,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":2,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":886,"sales":2,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":886}', '2f85d5daa7811bad7d1d9cf64ee07fce');
INSERT INTO `eb_store_order_cart_info` (`oid`, `cart_id`, `product_id`, `cart_info`, `unique`) VALUES
(434, 630, 647, '{"id":630,"uid":34,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521706875,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":4,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":884,"sales":4,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":884}', '42d2855408f9f90b988bd5c5aeaa5348'),
(435, 639, 647, '{"id":639,"uid":34,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521707603,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":5,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":883,"sales":5,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":883}', '46da3da83c60eb8a711917b8fad5b582'),
(436, 636, 642, '{"id":636,"uid":34,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1521707547,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":3,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":885,"sales":3,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":885}', '85152fa711b30bda10b3358be23c7a8f'),
(436, 637, 643, '{"id":637,"uid":34,"type":"product","product_id":643,"product_attr_unique":"98281fd2","cart_num":1,"add_time":1521707559,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":643,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32c9da2d70.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32ca015433.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32ca50040f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32ca737407.jpg"],"price":"21.90","ot_price":"44.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"123","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u65b0\\u7586\\u5f00\\u5fc3\\u679c120g \\u3011\\u575a\\u679c\\u96f6\\u98df\\u5e72\\u679c\\u7092\\u8d27 \\u679c\\u4ec1\\u539f\\u8272\\u65e0\\u6f02\\u767d\\u8ffd\\u5267\\u5c0f\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":643,"suk":"120g","stock":888,"sales":0,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32c9da2d70.jpg","unique":"98281fd2"}},"truePrice":21.9,"trueStock":888}', 'dbe943f0f0cb504fd7c81a66eea9472a'),
(436, 638, 644, '{"id":638,"uid":34,"type":"product","product_id":644,"product_attr_unique":"84be7907","cart_num":1,"add_time":1521707568,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":644,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32e4707fb3.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32e4c5ae70.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32e4f39a44.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32e5610106.jpg"],"price":"39.90","ot_price":"50.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"40.00","cate_id":"122","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad \\u65b0\\u7586\\u4e00\\u7ea7\\u65e0\\u82b1\\u679c\\u5e72360g\\u3011\\u963f\\u56fe\\u4ec0\\u65e0\\u82b1\\u679c\\u751c\\u7cef\\u591a\\u7c7d\\u65b0\\u7586\\u7279\\u4ea7\\u679c\\u5e72\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":644,"suk":"360g","stock":888,"sales":0,"price":"39.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32e4707fb3.jpg","unique":"84be7907"}},"truePrice":39.9,"trueStock":888}', '3a0bdf658071649c7a2594aa63ec1062'),
(437, 640, 644, '{"id":640,"uid":34,"type":"product","product_id":644,"product_attr_unique":"84be7907","cart_num":1,"add_time":1521707675,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":644,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32e4707fb3.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32e4c5ae70.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32e4f39a44.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32e5610106.jpg"],"price":"39.90","ot_price":"50.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"40.00","cate_id":"122","sales":1,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad \\u65b0\\u7586\\u4e00\\u7ea7\\u65e0\\u82b1\\u679c\\u5e72360g\\u3011\\u963f\\u56fe\\u4ec0\\u65e0\\u82b1\\u679c\\u751c\\u7cef\\u591a\\u7c7d\\u65b0\\u7586\\u7279\\u4ea7\\u679c\\u5e72\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":644,"suk":"360g","stock":887,"sales":1,"price":"39.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32e4707fb3.jpg","unique":"84be7907"}},"truePrice":39.9,"trueStock":887}', '2fe471decc5e2a603993bd7bb91afcc8'),
(437, 641, 642, '{"id":641,"uid":34,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1521707675,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":4,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":884,"sales":4,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":884}', '895d60da63966c49b8846bd9455a65ce'),
(437, 642, 643, '{"id":642,"uid":34,"type":"product","product_id":643,"product_attr_unique":"98281fd2","cart_num":1,"add_time":1521707675,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":643,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32c9da2d70.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32ca015433.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32ca50040f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32ca737407.jpg"],"price":"21.90","ot_price":"44.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"123","sales":1,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u65b0\\u7586\\u5f00\\u5fc3\\u679c120g \\u3011\\u575a\\u679c\\u96f6\\u98df\\u5e72\\u679c\\u7092\\u8d27 \\u679c\\u4ec1\\u539f\\u8272\\u65e0\\u6f02\\u767d\\u8ffd\\u5267\\u5c0f\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":643,"suk":"120g","stock":887,"sales":1,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32c9da2d70.jpg","unique":"98281fd2"}},"truePrice":21.9,"trueStock":887}', '7151f7384503dc242f734cd848aa94a3'),
(438, 646, 647, '{"id":646,"uid":57,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1521775551,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab3336a6b4d3.png","\\/public\\/uploads\\/store\\/product\\/s_5ab33371032bf.png","\\/public\\/uploads\\/store\\/product\\/s_5ab3337509715.png"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"120","sales":6,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u67a3\\u5939\\u6838\\u6843218g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9999\\u751c\\u9165\\u8106\\u9a8f\\u67a3\\u5939\\u6838\\u6843\\u4ec1","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":882,"sales":6,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":882}', '5380b2ebffc05a8cca19a299a707d60a'),
(439, 649, 642, '{"id":649,"uid":38,"type":"product","product_id":642,"product_attr_unique":"2aad5dcc","cart_num":1,"add_time":1522206827,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":642,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab32a41821bf.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a446084a.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab32a46e8b26.jpg"],"price":"21.90","ot_price":"45.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"22.00","cate_id":"119","sales":5,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u4e00\\u7ea7\\u548c\\u7530\\u5927\\u67a3500g\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u548c\\u7530\\u5927\\u67a3\\u5e72\\u679c\\u9a8f\\u67a3\\u53ef\\u5939\\u6838\\u6843\\u4ec1\\u5403","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":642,"suk":"500g","stock":883,"sales":5,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg","unique":"2aad5dcc"}},"truePrice":21.9,"trueStock":883}', 'c605f04edaef4b562852ebab1c837e34'),
(440, 653, 549, '{"id":653,"uid":52,"type":"product","product_id":549,"product_attr_unique":"","cart_num":1,"add_time":1522225534,"is_pay":0,"is_del":0,"is_new":1,"combination_id":8,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aad0f70cc884.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aad0f75bfe15.jpg"],"price":"0.01","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"126","sales":0,"stock":96,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u6761\\u3011\\u5185\\u8499\\u53e4\\u5976\\u916a\\u6761\\u7599\\u7629\\u5e72\\u5976\\u68d2\\u725b\\u5976\\u6761\\u5976\\u7247\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"trueStock":25}', '991bda225d73be0654b57f7ab347251e'),
(441, 654, 623, '{"id":654,"uid":39,"type":"product","product_id":623,"product_attr_unique":"","cart_num":1,"add_time":1522251153,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"productInfo":{"id":623,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab365d7d8b23.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab365dfb4b9e.jpg"],"price":"1.00","ot_price":"35.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"1.00","cate_id":"126","sales":0,"stock":888,"store_name":"\\u3010\\u7267\\u8bfa\\u8bdd\\u6885\\u5976\\u8c46\\u94c1\\u76d2\\u88c5\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u96f6\\u98df\\u5c0f\\u5403\\u4e73\\u5236\\u54c1\\u8bdd\\u6885\\u5976\\u8c46","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":1,"trueStock":85}', '4ab17d5798c69f692bb9cb391c4e7174'),
(442, 655, 623, '{"id":655,"uid":52,"type":"product","product_id":623,"product_attr_unique":"","cart_num":1,"add_time":1522251193,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"productInfo":{"id":623,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab365d7d8b23.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab365dfb4b9e.jpg"],"price":"1.00","ot_price":"35.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"1.00","cate_id":"126","sales":0,"stock":888,"store_name":"\\u3010\\u7267\\u8bfa\\u8bdd\\u6885\\u5976\\u8c46\\u94c1\\u76d2\\u88c5\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u96f6\\u98df\\u5c0f\\u5403\\u4e73\\u5236\\u54c1\\u8bdd\\u6885\\u5976\\u8c46","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":1,"trueStock":84}', '4dfa1fa4b207e50f9ecaac3b45ac1abc'),
(443, 656, 546, '{"id":656,"uid":52,"type":"product","product_id":546,"product_attr_unique":"","cart_num":1,"add_time":1522251232,"is_pay":0,"is_del":0,"is_new":1,"combination_id":6,"productInfo":{"id":546,"image":"\\/public\\/uploads\\/store\\/product\\/s_5aaa50f1ad947.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5aaa50f63f739.jpg"],"price":"15.00","ot_price":"90.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"126","sales":0,"stock":88,"store_name":"\\u3010\\u7267\\u8bfa\\u5976\\u9165\\u7247\\u7f50\\u88c5\\u5927\\u793c\\u5305\\u3011\\u5185\\u8499\\u53e4\\u7279\\u4ea7\\u5976\\u7247\\u56db\\u79cd\\u53e3\\u5473\\u5e72\\u5403\\u5976\\u9165","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":15,"trueStock":5}', 'd9066af35e8fd785dee07260cf441761'),
(444, 657, 639, '{"id":657,"uid":39,"type":"product","product_id":639,"product_attr_unique":"305e970e","cart_num":1,"add_time":1522381806,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":639,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3226f32485.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ab322691c460.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab322742672f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5ab3227703c68.jpg"],"price":"19.90","ot_price":"50.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"10.00","cate_id":"119","sales":0,"stock":888,"store_name":"\\u3010\\u7d20\\u69ad\\u65b0\\u7586\\u82e5\\u7f8c\\u4e00\\u7ea7\\u7ea2\\u67a3250g*2\\u3011\\u65b0\\u7586\\u7279\\u4ea7\\u82e5\\u7f8c\\u7070\\u67a3\\u514d\\u6d17\\u5373\\u98df\\u96f6\\u98df","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":639,"suk":"\\u4e00\\u7ea7\\u7ea2\\u67a3250g*2","stock":888,"sales":0,"price":"19.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab3226f32485.jpg","unique":"305e970e"}},"truePrice":19.9,"trueStock":888}', '035fb560e78d2aaeba31b500d2ddefef'),
(445, 660, 633, '{"id":660,"uid":1,"type":"product","product_id":633,"product_attr_unique":"1dfed450","cart_num":1,"add_time":1523171124,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":633,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"23.99","ot_price":"37.00","vip_price":"0.00","postage":"24.00","mer_id":0,"give_integral":"0.00","cate_id":"15","sales":1,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":633,"suk":"108g*3","stock":87,"sales":1,"price":"23.99","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"1dfed450"}},"truePrice":23.99,"trueStock":87}', '502019da1b4030b6e25c850b281eb933'),
(445, 661, 647, '{"id":661,"uid":1,"type":"product","product_id":647,"product_attr_unique":"7b84f5e2","cart_num":1,"add_time":1523171131,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":647,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"42.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"9","sales":8,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":647,"suk":"218g*2","stock":880,"sales":8,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"7b84f5e2"}},"truePrice":29.9,"trueStock":880}', '575414f0c3549fc71f6577d1b7073aa9'),
(446, 662, 641, '{"id":662,"uid":1,"type":"product","product_id":641,"product_attr_unique":"","cart_num":1,"add_time":1523267389,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":641,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"9.90","ot_price":"20.00","vip_price":"0.00","postage":"6.00","mer_id":0,"give_integral":"10.00","cate_id":"6","sales":4,"stock":884,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":9.9,"trueStock":884}', '3c6b2982b4d1776cefe49f1acfe28ef1'),
(447, 664, 491, '{"id":664,"uid":65,"type":"product","product_id":491,"product_attr_unique":"","cart_num":1,"add_time":1523526416,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":491,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"0.01","ot_price":"29.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"5","sales":14,"stock":16,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":0.01,"trueStock":16}', '303e9a4f87aae06cf46ba508c165e819'),
(448, 665, 628, '{"id":665,"uid":71,"type":"product","product_id":628,"product_attr_unique":"","cart_num":2,"add_time":1523583146,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":628,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"10.00","ot_price":"10.00","vip_price":"0.00","postage":"10.00","mer_id":9,"give_integral":"0.00","cate_id":"2","sales":11,"stock":9,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":10,"trueStock":9}', '940d654bec9e8d9153df52cc84b13fbf'),
(449, 666, 631, '{"id":666,"uid":71,"type":"product","product_id":631,"product_attr_unique":"39276c29","cart_num":1,"add_time":1523583318,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"productInfo":{"id":631,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"128.88","ot_price":"148.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"4","sales":15,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":631,"suk":"\\u5976\\u7599\\u7629+\\u5976\\u7247","stock":73,"sales":15,"price":"128.88","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"39276c29"}},"truePrice":128.88,"trueStock":73}', 'efe57ac7dc629600bb0e7fa589caa88f'),
(450, 667, 461, '{"id":667,"uid":65,"type":"product","product_id":461,"product_attr_unique":"","cart_num":1,"add_time":1523633005,"is_pay":0,"is_del":0,"is_new":1,"combination_id":12,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":16777203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"trueStock":887}', '6561e53c04506af8501c9b95d1cd2dd7'),
(451, 669, 645, '{"id":669,"uid":1,"type":"product","product_id":645,"product_attr_unique":"f1f691fe","cart_num":1,"add_time":1524017934,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":645,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"16.90","ot_price":"32.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"17.00","cate_id":"6","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":645,"suk":"100g*2","stock":888,"sales":0,"price":"16.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"f1f691fe"}},"truePrice":16.9,"trueStock":888}', '1fb56f94ab9f1095d1e920f7b12add9b'),
(452, 671, 636, '{"id":671,"uid":1,"type":"product","product_id":636,"product_attr_unique":"a0a97a84","cart_num":1,"add_time":1524032813,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"productInfo":{"id":636,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"55.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":636,"suk":"300g*2","stock":888,"sales":0,"price":"29.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"a0a97a84"}},"truePrice":29.9,"trueStock":888}', '2f3728900a81718d4165fdb84a8194cd'),
(453, 688, 641, '{"id":688,"uid":1,"type":"product","product_id":641,"product_attr_unique":"","cart_num":1,"add_time":1524478442,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":641,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"9.90","ot_price":"20.00","vip_price":"0.00","postage":"6.00","mer_id":0,"give_integral":"10.00","cate_id":"6","sales":5,"stock":883,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":9.9,"trueStock":883}', '21df638b2cc6511bb309e5361010d45b'),
(454, 681, 649, '{"id":681,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524472744,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":99,"stock":99,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"trueStock":99}', '05f3198c7a99827e951ba30f380dc83f'),
(454, 682, 631, '{"id":682,"uid":1,"type":"product","product_id":631,"product_attr_unique":"39276c29","cart_num":1,"add_time":1524472714,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":631,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"128.88","ot_price":"148.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"4","sales":16,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":631,"suk":"\\u5976\\u7599\\u7629+\\u5976\\u7247","stock":72,"sales":16,"price":"128.88","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"39276c29","cost":"0.00"}},"truePrice":128.88,"trueStock":72}', '6ca6de43b2ea21f98335ee70d09056ac'),
(454, 683, 631, '{"id":683,"uid":1,"type":"product","product_id":631,"product_attr_unique":"39276c29","cart_num":1,"add_time":1524472807,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":631,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"128.88","ot_price":"148.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"4","sales":16,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":631,"suk":"\\u5976\\u7599\\u7629+\\u5976\\u7247","stock":72,"sales":16,"price":"128.88","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"39276c29","cost":"0.00"}},"truePrice":128.88,"trueStock":72}', '625b177344ac298a22010da115ae9cc2'),
(454, 684, 644, '{"id":684,"uid":1,"type":"product","product_id":644,"product_attr_unique":"84be7907","cart_num":1,"add_time":1524472818,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":644,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"39.90","ot_price":"50.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"40.00","cate_id":"5","sales":3,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":644,"suk":"360g","stock":885,"sales":3,"price":"39.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"84be7907","cost":"0.00"}},"truePrice":39.9,"trueStock":885}', '5494c41bc60ec066b80cdf885e6a93b3'),
(454, 685, 646, '{"id":685,"uid":1,"type":"product","product_id":646,"product_attr_unique":"902f0058","cart_num":1,"add_time":1524474595,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":646,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"18.80","ot_price":"35.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"19.00","cate_id":"8","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":646,"suk":"360g","stock":888,"sales":0,"price":"18.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"902f0058","cost":"0.00"}},"truePrice":18.8,"trueStock":888}', '7c612ff52885afca3be158a3831cb439'),
(454, 686, 643, '{"id":686,"uid":1,"type":"product","product_id":643,"product_attr_unique":"98281fd2","cart_num":1,"add_time":1524475065,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":643,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"21.90","ot_price":"44.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"9","sales":2,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":643,"suk":"120g","stock":886,"sales":2,"price":"21.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"98281fd2","cost":"0.00"}},"truePrice":21.9,"trueStock":886}', 'fac7b6de73787b05dbab169df4ec1ca3'),
(454, 687, 644, '{"id":687,"uid":1,"type":"product","product_id":644,"product_attr_unique":"84be7907","cart_num":1,"add_time":1524475667,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":644,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"39.90","ot_price":"50.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"40.00","cate_id":"5","sales":3,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":644,"suk":"360g","stock":885,"sales":3,"price":"39.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"84be7907","cost":"0.00"}},"truePrice":39.9,"trueStock":885}', '4e9467c702d595f90cab653d30b1f83e'),
(455, 689, 649, '{"id":689,"uid":101,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524478900,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":100,"stock":98,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"trueStock":98}', '617b15f6d372abc138ece752cec46561'),
(456, 690, 641, '{"id":690,"uid":1,"type":"product","product_id":641,"product_attr_unique":"","cart_num":1,"add_time":1524530718,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":641,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"9.90","ot_price":"20.00","vip_price":"0.00","postage":"6.00","mer_id":0,"give_integral":"10.00","cate_id":"6","sales":6,"stock":882,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":9.9,"trueStock":882}', 'c09990e9ed79f191f5f869706cca1064'),
(458, 693, 631, '{"id":693,"uid":1,"type":"product","product_id":631,"product_attr_unique":"39276c29","cart_num":1,"add_time":1524539603,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":631,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"128.88","cost":"0.00","ot_price":"148.00","vip_price":"0.00","postage":"10.00","mer_id":0,"give_integral":"0.00","cate_id":"4","sales":18,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":631,"suk":"\\u5976\\u7599\\u7629+\\u5976\\u7247","stock":70,"sales":18,"price":"128.88","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"39276c29","cost":"0.00"}},"truePrice":128.88,"costPrice":0,"trueStock":70}', '3a2cbce8b7b0856474f53eddf6035a0a'),
(459, 694, 649, '{"id":694,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":2,"add_time":1524540773,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","cost":"898.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":101,"stock":97,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"costPrice":898,"trueStock":97}', '6e45cb4c1e2e5c1f209a82aa7433487e'),
(460, 695, 649, '{"id":695,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524541459,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","cost":"898.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":103,"stock":95,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"costPrice":898,"trueStock":95}', '0f9417c85b3f43c016f6b028bcc2a26e'),
(461, 696, 461, '{"id":696,"uid":1,"type":"product","product_id":461,"product_attr_unique":"","cart_num":1,"add_time":1524542598,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"seckill_id":0,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","cost":"0.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":16777203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"costPrice":0,"trueStock":888}', 'e9640acea77f14df80354fae89af2909'),
(462, 697, 461, '{"id":697,"uid":1,"type":"product","product_id":461,"product_attr_unique":"","cart_num":1,"add_time":1524542630,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"seckill_id":0,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","cost":"0.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":16777203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"costPrice":0,"trueStock":887}', '442e50a09106e958089df00557f808ec'),
(463, 701, 641, '{"id":701,"uid":1,"type":"product","product_id":641,"product_attr_unique":"","cart_num":1,"add_time":1524550275,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":641,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"9.90","cost":"10.00","ot_price":"20.00","vip_price":"0.00","postage":"6.00","mer_id":0,"give_integral":"10.00","cate_id":"6","sales":7,"stock":881,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":9.9,"costPrice":10,"trueStock":881}', 'b7dc88b207e1f5595327e581c0cdd655'),
(464, 691, 461, '{"id":691,"uid":1,"type":"product","product_id":461,"product_attr_unique":"","cart_num":1,"add_time":1524550959,"is_pay":0,"is_del":0,"is_new":1,"combination_id":10,"seckill_id":0,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","cost":"0.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":16777203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"costPrice":0,"trueStock":888}', '9e8bb9b250a7ffb658125958114c1e2a'),
(465, 698, 649, '{"id":698,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":4,"add_time":1524543320,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","cost":"898.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":104,"stock":4,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"costPrice":898,"trueStock":4}', 'b6eab320deeb58398e3a1311f9f60198'),
(465, 699, 645, '{"id":699,"uid":1,"type":"product","product_id":645,"product_attr_unique":"f1f691fe","cart_num":1,"add_time":1524549619,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":645,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"16.90","cost":"0.00","ot_price":"32.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"17.00","cate_id":"6","sales":1,"stock":2,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":645,"suk":"100g*2","stock":2,"sales":1,"price":"16.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"f1f691fe","cost":"0.00"}},"truePrice":16.9,"costPrice":0,"trueStock":2}', '201711ebd3d878150309a710f68f96f9'),
(465, 700, 645, '{"id":700,"uid":1,"type":"product","product_id":645,"product_attr_unique":"f1f691fe","cart_num":1,"add_time":1524549730,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":645,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"16.90","cost":"0.00","ot_price":"32.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"17.00","cate_id":"6","sales":1,"stock":2,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":645,"suk":"100g*2","stock":2,"sales":1,"price":"16.90","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"f1f691fe","cost":"0.00"}},"truePrice":16.9,"costPrice":0,"trueStock":2}', '61c7c04b5c804d9402caf4881e85234b'),
(466, 702, 649, '{"id":702,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524619037,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":649,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"],"price":"1200.00","cost":"898.00","ot_price":"2200.00","vip_price":"0.00","postage":"8.00","mer_id":0,"give_integral":"50.00","cate_id":"7","sales":108,"stock":10,"store_name":"\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":1200,"costPrice":898,"trueStock":10}', '298a957c096233965c908f381341ca8d'),
(467, 704, 461, '{"id":704,"uid":1,"type":"product","product_id":461,"product_attr_unique":"","cart_num":1,"add_time":1524621387,"is_pay":0,"is_del":0,"is_new":1,"combination_id":11,"seckill_id":0,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","cost":"0.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":16777203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"costPrice":0,"trueStock":886}', '66decef404f890c5a173aa89bbd813e0'),
(468, 707, 633, '{"id":707,"uid":1,"type":"product","product_id":633,"product_attr_unique":"1dfed450","cart_num":1,"add_time":1524621573,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":633,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"23.99","cost":"0.00","ot_price":"37.00","vip_price":"0.00","postage":"24.00","mer_id":0,"give_integral":"0.00","cate_id":"15","sales":2,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":633,"suk":"108g*3","stock":86,"sales":2,"price":"23.99","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"1dfed450","cost":"0.00"}},"truePrice":23.99,"costPrice":0,"trueStock":86}', 'a45582a75e0cb630c277361821067464'),
(469, 710, 15, '{"id":710,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524642021,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":15,"productInfo":{"id":15,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"888.00","cost":"0.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":10,"stock":15,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":888,"costPrice":0,"trueStock":15}', '24c36e401ae4327802be42fe34af6ee1'),
(470, 711, 16, '{"id":711,"uid":1,"type":"product","product_id":648,"product_attr_unique":"","cart_num":1,"add_time":1524646726,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":16,"productInfo":{"id":16,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb41c285.jpg\\",\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb5dc633.jpg\\"]","price":"0.00","cost":"8.00","ot_price":"69.90","postage":"0.00","give_integral":"70.00","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":1},"truePrice":0,"costPrice":8,"trueStock":888}', '3b839b24dfe919232eb85cea34d4e7c1'),
(471, 712, 16, '{"id":712,"uid":1,"type":"product","product_id":648,"product_attr_unique":"","cart_num":1,"add_time":1524646755,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":16,"productInfo":{"id":16,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb41c285.jpg\\",\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb5dc633.jpg\\"]","price":"0.00","cost":"8.00","ot_price":"69.90","postage":"0.00","give_integral":"70.00","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":1},"truePrice":0,"costPrice":8,"trueStock":888}', '081761d53767ae07f7f121e839dcdfec'),
(472, 713, 16, '{"id":713,"uid":101,"type":"product","product_id":648,"product_attr_unique":"","cart_num":1,"add_time":1524647459,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":16,"productInfo":{"id":16,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb41c285.jpg\\",\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5abc6bb5dc633.jpg\\"]","price":"0.00","cost":"8.00","ot_price":"69.90","postage":"0.00","give_integral":"70.00","sales":0,"stock":888,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":1},"truePrice":0,"costPrice":8,"trueStock":888}', 'f6d8324d3c24415612e3cd28e730f26e'),
(473, 714, 17, '{"id":714,"uid":1,"type":"product","product_id":650,"product_attr_unique":"","cart_num":1,"add_time":1524648548,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":17,"productInfo":{"id":17,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae048a5cae97.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5ae048a812870.jpg\\"]","price":"77.00","cost":"0.00","ot_price":"88.00","postage":"8.00","give_integral":"40.00","sales":50,"stock":20,"store_name":"\\u554a\\u5a03\\u5a03","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":77,"costPrice":0,"trueStock":20}', '93b876100cc59a8b380f040900faa8a4'),
(474, 715, 18, '{"id":715,"uid":101,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524650436,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', '4c0005a12f31e403c6f56853bc4ff8a3'),
(475, 716, 18, '{"id":716,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524799597,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', '9f3b97b077070bb8770b8c15fb0d7688'),
(476, 723, 18, '{"id":723,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1526572917,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', 'e7a1ee5c4322dc1cbff377bac224e316'),
(477, 716, 18, '{"id":716,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524799597,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', '9f3b97b077070bb8770b8c15fb0d7689');
INSERT INTO `eb_store_order_cart_info` (`oid`, `cart_id`, `product_id`, `cart_info`, `unique`) VALUES
(478, 716, 18, '{"id":716,"uid":1,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1524799597,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', '9f3b97b077070bb8770b8c15fb0d7685'),
(479, 719, 632, '{"id":719,"uid":100,"type":"product","product_id":632,"product_attr_unique":"436b1943","cart_num":1,"add_time":1526374069,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":0,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":1,"sales":0,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"436b1943","cost":"0.00"}},"truePrice":25,"trueStock":1,"costPrice":"10.00"}', 'd5403f1f47b9163caac5f1291f8a7c2f'),
(479, 720, 547, '{"id":720,"uid":100,"type":"product","product_id":547,"product_attr_unique":"53e942e0","cart_num":3,"add_time":1526374131,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":0,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u539f\\u5473 118g*4\\u888b","stock":88,"sales":0,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"53e942e0","cost":"0.00"}},"truePrice":46.8,"trueStock":88,"costPrice":"0.00"}', '627635c5a5f8386b83b1a0e01feff57a'),
(480, 724, 632, '{"id":724,"uid":100,"type":"product","product_id":632,"product_attr_unique":"515df17c","cart_num":1,"add_time":1526693489,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":1,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":100,"sales":0,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"515df17c","cost":"0.00"}},"truePrice":25,"trueStock":100,"costPrice":"10.00"}', '720f22c44228b35cf6e905461803e00e'),
(481, 725, 632, '{"id":725,"uid":100,"type":"product","product_id":632,"product_attr_unique":"515df17c","cart_num":1,"add_time":1526693886,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":2,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":99,"sales":1,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"515df17c","cost":"0.00"}},"truePrice":25,"trueStock":99,"costPrice":"10.00"}', '1ed1e5bf7ef878728c97e6d1ef56d01d'),
(482, 726, 632, '{"id":726,"uid":100,"type":"product","product_id":632,"product_attr_unique":"515df17c","cart_num":1,"add_time":1526693976,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":3,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":98,"sales":2,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"515df17c","cost":"0.00"}},"truePrice":25,"trueStock":98,"costPrice":"10.00"}', '57f703ccf980b38f1d6b6f6b03642208'),
(483, 727, 632, '{"id":727,"uid":100,"type":"product","product_id":632,"product_attr_unique":"515df17c","cart_num":1,"add_time":1526694054,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":4,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":97,"sales":3,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"515df17c","cost":"0.00"}},"truePrice":25,"trueStock":97,"costPrice":"10.00"}', 'c44686a96721c43953fc335cbbc23c0d'),
(484, 731, 547, '{"id":731,"uid":101,"type":"product","product_id":547,"product_attr_unique":"53e942e0","cart_num":1,"add_time":1526710578,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":3,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u539f\\u5473 118g*4\\u888b","stock":85,"sales":3,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"53e942e0","cost":"0.00"}},"truePrice":46.8,"trueStock":85,"costPrice":"0.00"}', 'fd89d22623849ab9aa35d322d26db8b7'),
(485, 733, 632, '{"id":733,"uid":101,"type":"product","product_id":632,"product_attr_unique":"515df17c","cart_num":1,"add_time":1526710670,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":5,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2","stock":96,"sales":4,"price":"25.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5ab228233c174.png","unique":"515df17c","cost":"0.00"}},"truePrice":25,"trueStock":96,"costPrice":"10.00"}', 'f1019d97165d57b45497e3ceacb57c37'),
(486, 734, 547, '{"id":734,"uid":101,"type":"product","product_id":547,"product_attr_unique":"4dfafbdb","cart_num":1,"add_time":1526710765,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":4,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":88,"sales":0,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"4dfafbdb","cost":"0.00"}},"truePrice":46.8,"trueStock":88,"costPrice":"0.00"}', 'efbfa88b9d922923c2a7ce0cf9397513'),
(487, 737, 547, '{"id":737,"uid":100,"type":"product","product_id":547,"product_attr_unique":"4dfafbdb","cart_num":1,"add_time":1526725996,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":5,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":87,"sales":1,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"4dfafbdb","cost":"0.00"}},"truePrice":46.8,"trueStock":87,"costPrice":"0.00"}', '3a0cc47e57ab00dc9ba87aa222753611'),
(488, 738, 547, '{"id":738,"uid":100,"type":"product","product_id":547,"product_attr_unique":"4dfafbdb","cart_num":1,"add_time":1526726033,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":6,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":86,"sales":2,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"4dfafbdb","cost":"0.00"}},"truePrice":46.8,"trueStock":86,"costPrice":"0.00"}', 'fb65304069180a35a3bd07d618330f40'),
(489, 739, 632, '{"id":739,"uid":100,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1526882843,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":6,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":100,"sales":0,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":100,"costPrice":"10.00"}', 'ce25090ab34edf774a8d5ec23eb1eca2'),
(490, 741, 18, '{"id":741,"uid":100,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1526950985,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","price":"900.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0,"cost":"777.00"},"truePrice":900,"trueStock":9,"costPrice":"777.00"}', 'b72a8f148755656c90384e67672e8db0'),
(491, 750, 1, '{"id":750,"uid":102,"type":"product","product_id":653,"product_attr_unique":"","cart_num":1,"add_time":1527070690,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":1,"productInfo":{"id":1,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg","price":"20.00","ot_price":"99.00","postage":"0.00","give_integral":"99.00","sales":0,"stock":100,"store_name":"\\u780d\\u4ef7\\u6d3b\\u52a8\\u540d\\u79f0","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"88.00"},"truePrice":20,"trueStock":100,"costPrice":"88.00"}', '30928d5e91923ef60353f281117b3a52'),
(492, 751, 632, '{"id":751,"uid":102,"type":"product","product_id":632,"product_attr_unique":"bffac593","cart_num":1,"add_time":1527124473,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":7,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u7ea2\\u8272","stock":100,"sales":0,"price":"21.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"bffac593","cost":"0.00"}},"truePrice":21,"trueStock":100,"costPrice":"10.00"}', '83b98fbf79366b935d1ce0779cdc5dd3'),
(493, 752, 1, '{"id":752,"uid":100,"type":"product","product_id":653,"product_attr_unique":"","cart_num":1,"add_time":1527126179,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":1,"productInfo":{"id":1,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg","price":"20.00","ot_price":"99.00","postage":"0.00","give_integral":"99.00","sales":0,"stock":100,"store_name":"\\u780d\\u4ef7\\u6d3b\\u52a8\\u540d\\u79f0","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"88.00"},"truePrice":20,"trueStock":100,"costPrice":"88.00"}', '76292ecd0c47a2e6f01be9e38f763927'),
(494, 755, 632, '{"id":755,"uid":100,"type":"product","product_id":632,"product_attr_unique":"bffac593","cart_num":1,"add_time":1527213128,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":8,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u7ea2\\u8272","stock":99,"sales":1,"price":"21.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"bffac593","cost":"0.00"}},"truePrice":21,"trueStock":99,"costPrice":"10.00"}', 'c2294f018c5883bb85997276234368c9'),
(495, 757, 1, '{"id":757,"uid":100,"type":"product","product_id":653,"product_attr_unique":"","cart_num":1,"add_time":1527220067,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":1,"productInfo":{"id":1,"image":"\\/public\\/uploads\\/store\\/bargain\\/s_5b068d346cc22.jpg","price":"20.00","ot_price":"99.00","postage":"0.00","give_integral":"99.00","sales":0,"stock":100,"store_name":"\\u780d\\u4ef7\\u6d3b\\u52a8\\u540d\\u79f0","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"88.00"},"truePrice":20,"trueStock":100,"costPrice":"88.00"}', '76d0a8d50d52ff0003de6f2aabec578b'),
(496, 759, 632, '{"id":759,"uid":105,"type":"product","product_id":632,"product_attr_unique":"bffac593","cart_num":1,"add_time":1527510092,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":9,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u7ea2\\u8272","stock":98,"sales":2,"price":"21.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"bffac593","cost":"0.00"}},"truePrice":21,"trueStock":98,"costPrice":"10.00"}', '2b6d552dbe58f4e6174853cabc2dac43'),
(497, 760, 547, '{"id":760,"uid":105,"type":"product","product_id":547,"product_attr_unique":"53e942e0","cart_num":1,"add_time":1527510422,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":7,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u539f\\u5473 118g*4\\u888b","stock":84,"sales":4,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"53e942e0","cost":"0.00"}},"truePrice":46.8,"trueStock":84,"costPrice":"0.00"}', 'b76d232cbfc81082f0cc76317517c433'),
(498, 761, 632, '{"id":761,"uid":100,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527510596,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":10,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":99,"sales":1,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":99,"costPrice":"10.00"}', 'c1254da505198fc8ff4029e5ad17c6ae'),
(499, 772, 651, '{"id":772,"uid":1,"type":"product","product_id":651,"product_attr_unique":"0","cart_num":1,"add_time":1527512276,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":651,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae607a06b2b8.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"],"price":"99.00","cost":"50.00","ot_price":"108.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"90.00","cate_id":"17","sales":0,"stock":10,"store_name":"\\u68ee\\u7530","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":99,"costPrice":50,"trueStock":10}', '3feac1d40f7405475f715a1e733d197a'),
(500, 774, 557, '{"id":774,"uid":105,"type":"product","product_id":557,"product_attr_unique":"","cart_num":1,"add_time":1527522939,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":557,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"300000.00","ot_price":"169800.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":1,"stock":87,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0,"cost":"0.00"},"truePrice":300000,"trueStock":87,"costPrice":"0.00"}', 'd96a83ad8887bad5c0b8cfcd49149b52'),
(500, 775, 547, '{"id":775,"uid":105,"type":"product","product_id":547,"product_attr_unique":"4dfafbdb","cart_num":2,"add_time":1527522962,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":8,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":85,"sales":3,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"4dfafbdb","cost":"0.00"}},"truePrice":46.8,"trueStock":85,"costPrice":"0.00"}', 'e863b7380386a454377aea262f031094'),
(500, 776, 651, '{"id":776,"uid":105,"type":"product","product_id":651,"product_attr_unique":"","cart_num":2,"add_time":1527523057,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":651,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae607a06b2b8.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"],"price":"99.00","ot_price":"108.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"90.00","cate_id":"17","sales":1,"stock":9,"store_name":"\\u68ee\\u7530","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"50.00"},"truePrice":99,"trueStock":9,"costPrice":"50.00"}', '714f935675875cc0181383a1f4808c28'),
(501, 764, 632, '{"id":764,"uid":65,"type":"product","product_id":632,"product_attr_unique":"eaf3af83","cart_num":1,"add_time":1527510893,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","cost":"10.00","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":11,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":632,"suk":"300*2,\\u84dd\\u8272","stock":100,"sales":0,"price":"24.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"eaf3af83","cost":"0.00"}},"truePrice":24,"costPrice":0,"trueStock":100}', '4af2fe02b5f491f2bf31531d9d1874d1'),
(502, 778, 550, '{"id":778,"uid":1,"type":"product","product_id":550,"product_attr_unique":"a5766ae5","cart_num":1,"add_time":1527553338,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":550,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"25.80","cost":"0.00","ot_price":"31.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"8","sales":0,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":550,"suk":"\\u9999\\u7c73\\u5976\\u8336 400g","stock":88,"sales":0,"price":"26.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"a5766ae5","cost":"0.00"}},"truePrice":26.8,"costPrice":0,"trueStock":88}', '69e08793e520b8df50dad735261a6500'),
(503, 783, 549, '{"id":783,"uid":65,"type":"product","product_id":549,"product_attr_unique":"077933b6","cart_num":1,"add_time":1527556571,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":549,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.80","cost":"0.00","ot_price":"40.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"6","sales":0,"stock":96,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"attrInfo":{"product_id":549,"suk":"\\u539f\\u5473 200g*2\\u76d2","stock":88,"sales":0,"price":"28.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"077933b6","cost":"0.00"}},"truePrice":28.8,"costPrice":0,"trueStock":88}', '0ade704ec7ce65b75e98e53b3b497310'),
(504, 779, 632, '{"id":779,"uid":105,"type":"product","product_id":632,"product_attr_unique":"eaf3af83","cart_num":1,"add_time":1527555320,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":12,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"300*2,\\u84dd\\u8272","stock":99,"sales":1,"price":"24.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"eaf3af83","cost":"0.00"}},"truePrice":24,"trueStock":99,"costPrice":"10.00"}', '4bad2737c0de0cc8e8e58ef64349b22a'),
(505, 784, 632, '{"id":784,"uid":100,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527561322,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":13,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":98,"sales":2,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":98,"costPrice":"10.00"}', '188b808b2831a3e5d610f5567e544992'),
(506, 785, 632, '{"id":785,"uid":100,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527561339,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":14,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":97,"sales":3,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":97,"costPrice":"10.00"}', 'eac350539314d80b42602cd2cea2c7a5'),
(507, 786, 632, '{"id":786,"uid":100,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527561824,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":15,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":96,"sales":4,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":96,"costPrice":"10.00"}', '7efa028a450cb7289e67e2aac4f64ee3'),
(508, 787, 632, '{"id":787,"uid":108,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527574694,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":16,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":95,"sales":5,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":95,"costPrice":"10.00"}', '4578bb950500e348ff856a3e2b560cf1'),
(509, 788, 651, '{"id":788,"uid":108,"type":"product","product_id":651,"product_attr_unique":"","cart_num":1,"add_time":1527580339,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":651,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae607a06b2b8.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"],"price":"0.01","ot_price":"108.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"90.00","cate_id":"17","sales":3,"stock":7,"store_name":"\\u68ee\\u7530","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"50.00"},"truePrice":0.01,"trueStock":7,"costPrice":"50.00"}', '296808c1ef532d7021e996f4c9fc2ddf'),
(510, 789, 548, '{"id":789,"uid":108,"type":"product","product_id":548,"product_attr_unique":"545192c8","cart_num":1,"add_time":1527580487,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":548,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"5","sales":0,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":548,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":88,"sales":0,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"545192c8","cost":"0.00"}},"truePrice":46.8,"trueStock":88,"costPrice":"0.00"}', '84d4f606846155a185114f4ab602fa0d'),
(511, 790, 547, '{"id":790,"uid":108,"type":"product","product_id":547,"product_attr_unique":"4dfafbdb","cart_num":1,"add_time":1527580525,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":547,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"46.80","ot_price":"56.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"3","sales":10,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"0.00","attrInfo":{"product_id":547,"suk":"\\u9178\\u5976\\u5473 118g*4\\u888b","stock":83,"sales":5,"price":"46.80","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"4dfafbdb","cost":"0.00"}},"truePrice":46.8,"trueStock":83,"costPrice":"0.00"}', '67ede0cae5f7c5fcb6d2c83296fd2ede'),
(512, 791, 632, '{"id":791,"uid":108,"type":"product","product_id":632,"product_attr_unique":"e131ce4b","cart_num":1,"add_time":1527580609,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":17,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u84dd\\u8272","stock":94,"sales":6,"price":"20.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"e131ce4b","cost":"0.00"}},"truePrice":20,"trueStock":94,"costPrice":"10.00"}', '5884ed922c4ff652230fa18e2bc34fa4'),
(513, 794, 18, '{"id":794,"uid":65,"type":"product","product_id":649,"product_attr_unique":"0","cart_num":1,"add_time":1527594496,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"bargain_id":0,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","slider_image":"[\\"\\\\\\/public\\\\\\/uploads\\\\\\/store\\\\\\/product\\\\\\/s_5add9a830900c.jpg\\"]","price":"900.00","cost":"777.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0},"truePrice":900,"costPrice":777,"trueStock":9}', '241a386e6e368d0289847abed88bf955'),
(514, 795, 491, '{"id":795,"uid":65,"type":"product","product_id":491,"product_attr_unique":"0","cart_num":1,"add_time":1527597163,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":491,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc69eba3f43.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"0.01","cost":"0.00","ot_price":"29.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"5","sales":15,"stock":15,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":0.01,"costPrice":0,"trueStock":15}', '4a3a2caa6e5ffd4779e184c2b0ebb0a1'),
(515, 796, 632, '{"id":796,"uid":111,"type":"product","product_id":632,"product_attr_unique":"bffac593","cart_num":1,"add_time":1527642787,"is_pay":0,"is_del":0,"is_new":0,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":18,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"200*2,\\u7ea2\\u8272","stock":97,"sales":3,"price":"21.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"bffac593","cost":"0.00"}},"truePrice":21,"trueStock":97,"costPrice":"10.00"}', '722884be60df2a10c0766be3eb5219b7'),
(516, 797, 651, '{"id":797,"uid":111,"type":"product","product_id":651,"product_attr_unique":"","cart_num":1,"add_time":1527643334,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":651,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae607a06b2b8.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"],"price":"0.01","ot_price":"108.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"90.00","cate_id":"17","sales":4,"stock":6,"store_name":"\\u68ee\\u7530","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"50.00"},"truePrice":0.01,"trueStock":6,"costPrice":"50.00"}', 'aa5f3a0db4ab4298f70347330b5da64d'),
(517, 798, 655, '{"id":798,"uid":107,"type":"product","product_id":655,"product_attr_unique":"0","cart_num":1,"add_time":1527643529,"is_pay":0,"is_del":0,"is_new":1,"combination_id":16,"seckill_id":0,"bargain_id":0,"productInfo":{"id":655,"image":"\\/public\\/uploads\\/store\\/product\\/s_5b0d274a6150e.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5b0d275248b9f.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b0d275686d96.jpg"],"price":"0.01","cost":"7888.00","ot_price":"9288.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":2,"stock":10,"store_name":"Apple iPhone X (A1865) 256GB \\u6df1\\u7a7a\\u7070\\u8272 \\u79fb\\u52a8\\u8054\\u901a\\u7535\\u4fe14G\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"costPrice":0,"trueStock":2}', 'e1bd35cf5c6b9ccf82cd314ac12e3554'),
(518, 799, 18, '{"id":799,"uid":111,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1527643761,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"bargain_id":0,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","price":"900.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0,"cost":"777.00"},"truePrice":900,"trueStock":9,"costPrice":"777.00"}', '43cf65f19239a4794c10452bd279e7a4'),
(519, 801, 632, '{"id":801,"uid":111,"type":"product","product_id":632,"product_attr_unique":"a94481f2","cart_num":5,"add_time":1527644004,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":632,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"],"price":"29.90","ot_price":"60.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"30.00","cate_id":"14","sales":19,"stock":88,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"10.00","attrInfo":{"product_id":632,"suk":"300*2,\\u7ea2\\u8272","stock":100,"sales":0,"price":"28.00","image":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg","unique":"a94481f2","cost":"0.00"}},"truePrice":28,"trueStock":100,"costPrice":"10.00"}', '4a2e13cd9a32a469f4867b7642052720'),
(520, 802, 651, '{"id":802,"uid":111,"type":"product","product_id":651,"product_attr_unique":"","cart_num":1,"add_time":1527644711,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":0,"bargain_id":0,"productInfo":{"id":651,"image":"\\/public\\/uploads\\/store\\/product\\/s_5ae607a06b2b8.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"],"price":"0.01","ot_price":"108.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"90.00","cate_id":"17","sales":5,"stock":5,"store_name":"\\u68ee\\u7530","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1,"cost":"50.00"},"truePrice":0.01,"trueStock":5,"costPrice":"50.00"}', '1b70d23ed4d2c5c3284bc643dc2be28d'),
(521, 804, 18, '{"id":804,"uid":108,"type":"product","product_id":649,"product_attr_unique":"","cart_num":1,"add_time":1527679968,"is_pay":0,"is_del":0,"is_new":1,"combination_id":0,"seckill_id":18,"bargain_id":0,"productInfo":{"id":18,"image":"\\/public\\/uploads\\/store\\/product\\/s_5add9a80cb2d4.jpg","price":"900.00","ot_price":"1200.00","postage":"8.00","give_integral":"50.00","sales":109,"stock":9,"store_name":"\\u624b\\u673a","unit_name":"\\u4e2a","is_show":1,"is_del":0,"is_postage":0,"cost":"777.00"},"truePrice":900,"trueStock":9,"costPrice":"777.00"}', 'a9f7af10448cfd5a005ab6436fe3d33e'),
(522, 809, 461, '{"id":809,"uid":1,"type":"product","product_id":461,"product_attr_unique":"0","cart_num":1,"add_time":1527847132,"is_pay":0,"is_del":0,"is_new":1,"combination_id":10,"seckill_id":0,"bargain_id":0,"productInfo":{"id":461,"image":"\\/public\\/uploads\\/store\\/product\\/s_5abc826bdd4e9.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5abc826d9c944.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc826f9d3ae.jpg"],"price":"100.00","cost":"0.00","ot_price":"113.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":25,"stock":203,"store_name":"crmeb\\u7535\\u5546\\u7cfb\\u7edf","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":0},"truePrice":100,"costPrice":0,"trueStock":887}', '1edcd79700025b392154e6c4a99e719e'),
(523, 811, 655, '{"id":811,"uid":107,"type":"product","product_id":655,"product_attr_unique":"0","cart_num":1,"add_time":1527925007,"is_pay":0,"is_del":0,"is_new":1,"combination_id":18,"seckill_id":0,"bargain_id":0,"productInfo":{"id":655,"image":"\\/public\\/uploads\\/store\\/product\\/s_5b0d288cf308b.jpg","slider_image":["\\/public\\/uploads\\/store\\/product\\/s_5b0d289357b73.jpg"],"price":"0.01","cost":"7888.00","ot_price":"9288.00","vip_price":"0.00","postage":"0.00","mer_id":0,"give_integral":"0.00","cate_id":"2","sales":2,"stock":10,"store_name":"Apple iPhone X (A1865) 256GB \\u6df1\\u7a7a\\u7070\\u8272 \\u79fb\\u52a8\\u8054\\u901a\\u7535\\u4fe14G\\u624b\\u673a","unit_name":"\\u4ef6","is_show":1,"is_del":0,"is_postage":1},"truePrice":0.01,"costPrice":0,"trueStock":100}', '12f9b8f9cd9a80abf2389cdf36671882');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_order_status`
--

CREATE TABLE IF NOT EXISTS `eb_store_order_status` (
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) NOT NULL COMMENT '操作备注',
  `change_time` int(10) unsigned NOT NULL COMMENT '操作时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

--
-- 转存表中的数据 `eb_store_order_status`
--

INSERT INTO `eb_store_order_status` (`oid`, `change_type`, `change_message`, `change_time`) VALUES
(182, 'pay_success', '用户付款成功', 1514513493),
(182, 'delivery', '已配送 发货人：测试001 发货人电话：18311111111', 1514514429),
(182, 'user_take_delivery', '用户已收货', 1514514477),
(182, 'user_take_delivery', '用户已收货', 1514515336),
(182, 'refund_price', '退款给用户0.01元', 1514516489),
(182, 'refund_price', '退款给用户0.01元', 1514516615),
(182, 'refund_price', '退款给用户0.01元', 1514518624),
(182, 'refund_price', '退款给用户0.01元', 1514518634),
(0, 'remove_order', '删除订单', 1514533628),
(184, 'pay_success', '用户付款成功', 1514865124),
(183, 'pay_success', '用户付款成功', 1514865251),
(184, 'delivery', '已配送 发货人：aa 发货人电话：18311111111', 1514865278),
(183, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：123123123123123', 1514865287),
(183, 'user_take_delivery', '用户已收货', 1514865348),
(184, 'user_take_delivery', '用户已收货', 1514865366),
(187, 'offline', '线下付款', 1515050576),
(187, 'take_delivery', '已收货', 1515058203),
(188, 'offline', '线下付款', 1515059692),
(188, 'offline', '线下付款', 1515059914),
(188, 'delivery', '已配送 发货人：111 发货人电话：18311111111', 1515059945),
(188, 'user_take_delivery', '用户已收货', 1515060004),
(187, 'take_delivery', '已收货', 1515060069),
(191, 'order_edit', '修改商品总价为：15 实际支付金额16', 1515116400),
(190, 'order_edit', '修改商品总价为：0.01 实际支付金额10.02', 1515116406),
(189, 'order_edit', '修改商品总价为：0.01 实际支付金额10.02', 1515116420),
(191, 'offline', '线下付款', 1515116438),
(190, 'pay_success', '用户付款成功', 1515119072),
(190, 'refund_price', '退款给用户10.02元', 1515119098),
(191, 'refund_price', '退款给用户16元', 1515119156),
(193, 'pay_success', '用户付款成功', 1515119273),
(193, 'refund_price', '退款给用户110元', 1515119293),
(194, 'pay_success', '用户付款成功', 1515136555),
(194, 'refund_price', '退款给用户69元', 1515136808),
(195, 'pay_success', '用户付款成功', 1515144143),
(195, 'refund_price', '退款给用户10元', 1515145099),
(196, 'pay_success', '用户付款成功', 1515206936),
(197, 'pay_success', '用户付款成功', 1515206978),
(198, 'pay_success', '用户付款成功', 1515207006),
(199, 'pay_success', '用户付款成功', 1515207051),
(200, 'pay_success', '用户付款成功', 1515207147),
(201, 'pay_success', '用户付款成功', 1515207191),
(202, 'pay_success', '用户付款成功', 1515207318),
(203, 'pay_success', '用户付款成功', 1515207398),
(204, 'offline', '线下付款', 1515209101),
(204, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：123123123123123123123', 1515209123),
(203, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：1112312312312312312312312323', 1515209180),
(202, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：2131231233423423423', 1515209826),
(201, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：asdasd123123123', 1515209871),
(200, 'delivery_goods', '已发货 快递公司：鑫天顺物流 快递单号：123123123123235434534', 1515209929),
(206, 'offline', '线下付款', 1515210136),
(206, 'delivery_goods', '已发货 快递公司：利民物流 快递单号：asdasda123123123123', 1515210147),
(205, 'offline', '线下付款', 1515210154),
(205, 'delivery', '已配送 发货人：123123123 发货人电话：18311111111', 1515210177),
(206, 'user_take_delivery', '用户已收货', 1515210903),
(205, 'user_take_delivery', '用户已收货', 1515211025),
(204, 'user_take_delivery', '用户已收货', 1515211156),
(200, 'refund_price', '退款给用户1元', 1515228868),
(200, 'refund_price', '退款给用户1元', 1515229038),
(200, 'refund_price', '退款给用户1元', 1515229147),
(207, 'pay_success', '用户付款成功', 1515485540),
(208, 'pay_success', '用户付款成功', 1515485631),
(209, 'pay_success', '用户付款成功', 1515485684),
(209, 'apply_refund', '用户申请退款', 1515486254),
(208, 'delivery_goods', '已发货 快递公司：猴急送 快递单号：470964447560', 1515548466),
(211, 'pay_success', '用户付款成功', 1515552917),
(211, 'apply_refund', '用户申请退款', 1515553083),
(212, 'pay_success', '用户付款成功', 1515553134),
(212, 'apply_refund', '用户申请退款', 1515553140),
(214, 'pay_success', '用户付款成功', 1515553475),
(214, 'apply_refund', '用户申请退款', 1515553502),
(212, 'refund_price', '退款给用户10.01元', 1515553918),
(211, 'refund_price', '退款给用户223元', 1515553926),
(215, 'cache_key_create_order', '订单生成', 1516938767),
(215, 'pay_success', '用户付款成功', 1516938767),
(215, 'apply_refund', '用户申请退款', 1516938801),
(215, 'refund_n', '不退款原因:不退款', 1516938832),
(215, 'refund_price', '退款给用户390元', 1516938880),
(215, 'remove_order', '删除订单', 1516938908),
(216, 'cache_key_create_order', '订单生成', 1516946820),
(216, 'remove_order', '删除订单', 1516946839),
(213, 'remove_order', '删除订单', 1516946853),
(217, 'cache_key_create_order', '订单生成', 1516946873),
(217, 'pay_success', '用户付款成功', 1516946874),
(217, 'apply_refund', '用户申请退款', 1516946882),
(218, 'cache_key_create_order', '订单生成', 1516947089),
(218, 'pay_success', '用户付款成功', 1516947089),
(218, 'apply_refund', '用户申请退款', 1516947098),
(218, 'refund_price', '退款给用户70元', 1516947129),
(214, 'mer_refund_n', '商户不退款原因:一斤发货', 1516947361),
(214, 'mer_refund_price', '商户退款给用户10.01元', 1516948195),
(214, 'remove_order', '删除订单', 1516948258),
(219, 'cache_key_create_order', '订单生成', 1516949059),
(219, 'pay_success', '用户付款成功', 1516949059),
(219, 'apply_refund', '用户申请退款', 1516949068),
(219, 'refund_price', '退款给用户70元', 1516949107),
(220, 'cache_key_create_order', '订单生成', 1519444465),
(220, 'remove_order', '删除订单', 1519444487),
(221, 'cache_key_create_order', '订单生成', 1519873589),
(221, 'pay_success', '用户付款成功', 1519873589),
(221, 'delivery', '已配送 发货人：测试 发货人电话：18311111111', 1519873649),
(221, 'user_take_delivery', '用户已收货', 1519873661),
(222, 'cache_key_create_order', '订单生成', 1519873784),
(222, 'pay_success', '用户付款成功', 1519873784),
(222, 'delivery', '已配送 发货人：测试 发货人电话：18311111111', 1519873803),
(222, 'user_take_delivery', '用户已收货', 1519873837),
(223, 'cache_key_create_order', '订单生成', 1520037170),
(223, 'pay_success', '用户付款成功', 1520037170),
(224, 'cache_key_create_order', '订单生成', 1520037455),
(224, 'pay_success', '用户付款成功', 1520037455),
(225, 'cache_key_create_order', '订单生成', 1520043955),
(226, 'cache_key_create_order', '订单生成', 1520046687),
(226, 'pay_success', '用户付款成功', 1520046687),
(227, 'cache_key_create_order', '订单生成', 1520046900),
(228, 'cache_key_create_order', '订单生成', 1520047955),
(228, 'pay_success', '用户付款成功', 1520047955),
(229, 'cache_key_create_order', '订单生成', 1520057841),
(229, 'pay_success', '用户付款成功', 1520057841),
(230, 'cache_key_create_order', '订单生成', 1520057978),
(231, 'cache_key_create_order', '订单生成', 1520058022),
(232, 'cache_key_create_order', '订单生成', 1520060959),
(233, 'cache_key_create_order', '订单生成', 1520061162),
(234, 'cache_key_create_order', '订单生成', 1520061283),
(235, 'cache_key_create_order', '订单生成', 1520061331),
(235, 'pay_success', '用户付款成功', 1520061336),
(236, 'cache_key_create_order', '订单生成', 1520061812),
(236, 'pay_success', '用户付款成功', 1520061812),
(237, 'cache_key_create_order', '订单生成', 1520062779),
(237, 'pay_success', '用户付款成功', 1520062779),
(238, 'cache_key_create_order', '订单生成', 1520064069),
(238, 'pay_success', '用户付款成功', 1520064069),
(239, 'cache_key_create_order', '订单生成', 1520067782),
(239, 'pay_success', '用户付款成功', 1520067782),
(240, 'cache_key_create_order', '订单生成', 1520067937),
(240, 'pay_success', '用户付款成功', 1520067946),
(241, 'cache_key_create_order', '订单生成', 1520070116),
(241, 'pay_success', '用户付款成功', 1520070122),
(242, 'cache_key_create_order', '订单生成', 1520070167),
(242, 'pay_success', '用户付款成功', 1520070180),
(243, 'cache_key_create_order', '订单生成', 1520070731),
(243, 'pay_success', '用户付款成功', 1520070737),
(244, 'cache_key_create_order', '订单生成', 1520070774),
(244, 'pay_success', '用户付款成功', 1520070778),
(245, 'cache_key_create_order', '订单生成', 1520071356),
(245, 'pay_success', '用户付款成功', 1520071361),
(246, 'cache_key_create_order', '订单生成', 1520071452),
(246, 'pay_success', '用户付款成功', 1520071459),
(247, 'cache_key_create_order', '订单生成', 1520071676),
(247, 'pay_success', '用户付款成功', 1520071676),
(224, 'apply_refund', '用户申请退款', 1520210513),
(229, 'apply_refund', '用户申请退款', 1520210937),
(248, 'cache_key_create_order', '订单生成', 1520218662),
(248, 'pay_success', '用户付款成功', 1520218667),
(249, 'cache_key_create_order', '订单生成', 1520220419),
(250, 'cache_key_create_order', '订单生成', 1520230428),
(250, 'pay_success', '用户付款成功', 1520230428),
(251, 'cache_key_create_order', '订单生成', 1520230559),
(251, 'pay_success', '用户付款成功', 1520230559),
(252, 'cache_key_create_order', '订单生成', 1520298843),
(253, 'cache_key_create_order', '订单生成', 1520299208),
(253, 'pay_success', '用户付款成功', 1520299208),
(254, 'cache_key_create_order', '订单生成', 1520299307),
(254, 'remove_order', '删除订单', 1520299402),
(255, 'cache_key_create_order', '订单生成', 1520299759),
(256, 'cache_key_create_order', '订单生成', 1520300854),
(257, 'cache_key_create_order', '订单生成', 1520301775),
(258, 'cache_key_create_order', '订单生成', 1520302175),
(258, 'pay_success', '用户付款成功', 1520302185),
(259, 'cache_key_create_order', '订单生成', 1520302217),
(260, 'cache_key_create_order', '订单生成', 1520302311),
(259, 'pay_success', '用户付款成功', 1520302628),
(260, 'pay_success', '用户付款成功', 1520303277),
(261, 'cache_key_create_order', '订单生成', 1520339659),
(262, 'cache_key_create_order', '订单生成', 1520414094),
(262, 'pay_success', '用户付款成功', 1520414105),
(263, 'cache_key_create_order', '订单生成', 1520589018),
(262, 'apply_refund', '用户申请退款', 1520655922),
(263, 'remove_order', '删除订单', 1520826104),
(264, 'cache_key_create_order', '订单生成', 1520829967),
(264, 'remove_order', '删除订单', 1520837113),
(265, 'cache_key_create_order', '订单生成', 1520909712),
(266, 'cache_key_create_order', '订单生成', 1520909735),
(266, 'pay_success', '用户付款成功', 1520909742),
(267, 'cache_key_create_order', '订单生成', 1520912270),
(267, 'pay_success', '用户付款成功', 1520912278),
(267, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：474782439770', 1520912400),
(267, 'user_take_delivery', '用户已收货', 1520912535),
(267, 'check_order_over', '用户评价', 1520912568),
(268, 'cache_key_create_order', '订单生成', 1521103606),
(268, 'pay_success', '用户付款成功', 1521103618),
(268, 'delivery_goods', '已发货 快递公司：韵达快运 快递单号：630641603426', 1521103982),
(268, 'distribution', '修改发货信息为韵达快运号630641603426', 1521104111),
(268, 'take_delivery', '已收货', 1521104228),
(269, 'cache_key_create_order', '订单生成', 1521104459),
(269, 'remove_order', '删除订单', 1521104476),
(270, 'cache_key_create_order', '订单生成', 1521104845),
(270, 'pay_success', '用户付款成功', 1521104853),
(270, 'apply_refund', '用户申请退款', 1521104871),
(270, 'refund_price', '退款给用户0.01元', 1521105213),
(271, 'cache_key_create_order', '订单生成', 1521105755),
(271, 'pay_success', '用户付款成功', 1521105762),
(272, 'cache_key_create_order', '订单生成', 1521105782),
(272, 'pay_success', '用户付款成功', 1521105790),
(273, 'cache_key_create_order', '订单生成', 1521105797),
(273, 'pay_success', '用户付款成功', 1521105807),
(274, 'cache_key_create_order', '订单生成', 1521105815),
(274, 'pay_success', '用户付款成功', 1521105821),
(271, 'delivery', '已配送 发货人：周童 发货人电话：15899140276', 1521105898),
(272, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：630595134788', 1521106193),
(271, 'user_take_delivery', '用户已收货', 1521106356),
(271, 'refund_price', '退款给用户0.01元', 1521106478),
(274, 'delivery_goods', '已发货 快递公司：百世快递 快递单号：536520246300', 1521107190),
(274, 'distribution', '修改发货信息为利民物流号536520246300', 1521107261),
(273, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：630801880326', 1521107501),
(275, 'cache_key_create_order', '订单生成', 1521107834),
(275, 'pay_success', '用户付款成功', 1521107840),
(275, 'delivery', '已配送 发货人：山先生 发货人电话：17799630276', 1521107907),
(275, 'user_take_delivery', '用户已收货', 1521108105),
(273, 'take_delivery', '已收货', 1521108199),
(276, 'cache_key_create_order', '订单生成', 1521108288),
(276, 'pay_success', '用户付款成功', 1521108294),
(276, 'delivery_goods', '已发货 快递公司：百世快递 快递单号：536520246300', 1521108498),
(276, 'user_take_delivery', '用户已收货', 1521108549),
(277, 'cache_key_create_order', '订单生成', 1521109983),
(277, 'pay_success', '用户付款成功', 1521109989),
(277, 'delivery_goods', '已发货 快递公司：韵达快运 快递单号：630595134788', 1521110170),
(278, 'cache_key_create_order', '订单生成', 1521110387),
(279, 'cache_key_create_order', '订单生成', 1521110441),
(279, 'pay_success', '用户付款成功', 1521110447),
(280, 'cache_key_create_order', '订单生成', 1521111073),
(280, 'pay_success', '用户付款成功', 1521111079),
(281, 'cache_key_create_order', '订单生成', 1521111133),
(281, 'pay_success', '用户付款成功', 1521111139),
(282, 'cache_key_create_order', '订单生成', 1521111438),
(282, 'pay_success', '用户付款成功', 1521111444),
(283, 'cache_key_create_order', '订单生成', 1521111572),
(283, 'pay_success', '用户付款成功', 1521111579),
(284, 'cache_key_create_order', '订单生成', 1521111744),
(284, 'pay_success', '用户付款成功', 1521111750),
(285, 'cache_key_create_order', '订单生成', 1521111761),
(285, 'pay_success', '用户付款成功', 1521111767),
(286, 'cache_key_create_order', '订单生成', 1521111785),
(286, 'pay_success', '用户付款成功', 1521111791),
(287, 'cache_key_create_order', '订单生成', 1521111845),
(287, 'pay_success', '用户付款成功', 1521111851),
(288, 'cache_key_create_order', '订单生成', 1521111858),
(288, 'pay_success', '用户付款成功', 1521111864),
(289, 'cache_key_create_order', '订单生成', 1521111872),
(289, 'pay_success', '用户付款成功', 1521111878),
(290, 'cache_key_create_order', '订单生成', 1521111889),
(290, 'pay_success', '用户付款成功', 1521111895),
(291, 'cache_key_create_order', '订单生成', 1521111903),
(291, 'pay_success', '用户付款成功', 1521111909),
(281, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：536520246300', 1521112479),
(281, 'user_take_delivery', '用户已收货', 1521112621),
(291, 'delivery_goods', '已发货 快递公司：利民物流 快递单号：653098765432', 1521114868),
(276, 'check_order_over', '用户评价', 1521124689),
(278, 'remove_order', '删除订单', 1521166004),
(292, 'cache_key_create_order', '订单生成', 1521166061),
(292, 'pay_success', '用户付款成功', 1521166069),
(293, 'cache_key_create_order', '订单生成', 1521166212),
(293, 'pay_success', '用户付款成功', 1521166218),
(294, 'cache_key_create_order', '订单生成', 1521169719),
(294, 'pay_success', '用户付款成功', 1521169731),
(295, 'cache_key_create_order', '订单生成', 1521169750),
(296, 'cache_key_create_order', '订单生成', 1521169805),
(294, 'refund_price', '退款给用户0.02元', 1521169885),
(297, 'cache_key_create_order', '订单生成', 1521169908),
(297, 'pay_success', '用户付款成功', 1521169908),
(298, 'cache_key_create_order', '订单生成', 1521169912),
(298, 'pay_success', '用户付款成功', 1521169919),
(299, 'cache_key_create_order', '订单生成', 1521170598),
(300, 'cache_key_create_order', '订单生成', 1521170598),
(299, 'pay_success', '用户付款成功', 1521170605),
(275, 'check_order_over', '用户评价', 1521171631),
(273, 'check_order_over', '用户评价', 1521171665),
(268, 'check_order_over', '用户评价', 1521171692),
(301, 'cache_key_create_order', '订单生成', 1521185996),
(302, 'cache_key_create_order', '订单生成', 1521186158),
(302, 'pay_success', '用户付款成功', 1521186165),
(303, 'cache_key_create_order', '订单生成', 1521186237),
(303, 'pay_success', '用户付款成功', 1521186242),
(304, 'cache_key_create_order', '订单生成', 1521289317),
(304, 'pay_success', '用户付款成功', 1521289325),
(305, 'cache_key_create_order', '订单生成', 1521290224),
(305, 'pay_success', '用户付款成功', 1521290236),
(306, 'cache_key_create_order', '订单生成', 1521290471),
(306, 'pay_success', '用户付款成功', 1521290479),
(307, 'cache_key_create_order', '订单生成', 1521291325),
(307, 'pay_success', '用户付款成功', 1521291335),
(308, 'cache_key_create_order', '订单生成', 1521291365),
(308, 'pay_success', '用户付款成功', 1521291371),
(309, 'cache_key_create_order', '订单生成', 1521291916),
(309, 'pay_success', '用户付款成功', 1521291925),
(310, 'cache_key_create_order', '订单生成', 1521292729),
(310, 'pay_success', '用户付款成功', 1521292739),
(305, 'apply_refund', '用户申请退款', 1521293685),
(305, 'refund_price', '退款给用户0.02元', 1521293800),
(308, 'apply_refund', '用户申请退款', 1521294254),
(311, 'cache_key_create_order', '订单生成', 1521296057),
(311, 'pay_success', '用户付款成功', 1521296062),
(312, 'cache_key_create_order', '订单生成', 1521296116),
(312, 'pay_success', '用户付款成功', 1521296125),
(308, 'refund_price', '退款给用户0.01元', 1521296526),
(313, 'cache_key_create_order', '订单生成', 1521297381),
(313, 'pay_success', '用户付款成功', 1521297386),
(314, 'cache_key_create_order', '订单生成', 1521297482),
(314, 'pay_success', '用户付款成功', 1521297492),
(312, 'apply_refund', '用户申请退款', 1521298100),
(315, 'cache_key_create_order', '订单生成', 1521338305),
(315, 'pay_success', '用户付款成功', 1521338322),
(316, 'cache_key_create_order', '订单生成', 1521338433),
(316, 'pay_success', '用户付款成功', 1521338464),
(315, 'apply_refund', '用户申请退款', 1521338501),
(317, 'cache_key_create_order', '订单生成', 1521338601),
(312, 'refund_price', '退款给用户0.01元', 1521338984),
(318, 'cache_key_create_order', '订单生成', 1521426679),
(319, 'cache_key_create_order', '订单生成', 1521427183),
(320, 'cache_key_create_order', '订单生成', 1521428961),
(320, 'pay_success', '用户付款成功', 1521428973),
(321, 'cache_key_create_order', '订单生成', 1521429033),
(321, 'pay_success', '用户付款成功', 1521429049),
(322, 'cache_key_create_order', '订单生成', 1521429624),
(322, 'pay_success', '用户付款成功', 1521429631),
(323, 'cache_key_create_order', '订单生成', 1521430678),
(323, 'pay_success', '用户付款成功', 1521430678),
(322, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：650345326753', 1521439412),
(321, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：650343807613', 1521439502),
(320, 'apply_refund', '用户申请退款', 1521439539),
(324, 'cache_key_create_order', '订单生成', 1521439703),
(324, 'pay_success', '用户付款成功', 1521439715),
(324, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：676754765475', 1521439804),
(325, 'cache_key_create_order', '订单生成', 1521446302),
(326, 'cache_key_create_order', '订单生成', 1521446341),
(326, 'pay_success', '用户付款成功', 1521446350),
(327, 'cache_key_create_order', '订单生成', 1521446565),
(327, 'pay_success', '用户付款成功', 1521446573),
(327, 'apply_refund', '用户申请退款', 1521446610),
(327, 'refund_price', '退款给用户17.5元', 1521446770),
(328, 'cache_key_create_order', '订单生成', 1521446955),
(329, 'cache_key_create_order', '订单生成', 1521446968),
(329, 'pay_success', '用户付款成功', 1521446968),
(330, 'cache_key_create_order', '订单生成', 1521447037),
(330, 'pay_success', '用户付款成功', 1521447037),
(331, 'cache_key_create_order', '订单生成', 1521447729),
(331, 'pay_success', '用户付款成功', 1521447734),
(329, 'apply_refund', '用户申请退款', 1521449820),
(332, 'cache_key_create_order', '订单生成', 1521449931),
(332, 'pay_success', '用户付款成功', 1521449931),
(329, 'refund_price', '退款给用户18元', 1521450002),
(329, 'refund_price', '退款给用户18元', 1521450150),
(329, 'refund_price', '退款给用户18元失败', 1521450484),
(332, 'apply_refund', '用户申请退款', 1521450940),
(333, 'cache_key_create_order', '订单生成', 1521451015),
(333, 'pay_success', '用户付款成功', 1521451015),
(333, 'apply_refund', '用户申请退款', 1521451035),
(334, 'cache_key_create_order', '订单生成', 1521451095),
(334, 'pay_success', '用户付款成功', 1521451095),
(333, 'refund_price', '退款给用户0.02元失败', 1521451121),
(334, 'apply_refund', '用户申请退款', 1521451135),
(335, 'cache_key_create_order', '订单生成', 1521451304),
(335, 'pay_success', '用户付款成功', 1521451304),
(335, 'apply_refund', '用户申请退款', 1521451326),
(336, 'cache_key_create_order', '订单生成', 1521451343),
(336, 'pay_success', '用户付款成功', 1521451343),
(335, 'refund_price', '退款给用户0.02元失败', 1521451364),
(330, 'apply_refund', '用户申请退款', 1521452407),
(337, 'cache_key_create_order', '订单生成', 1521460540),
(337, 'pay_success', '用户付款成功', 1521460549),
(338, 'cache_key_create_order', '订单生成', 1521460651),
(338, 'pay_success', '用户付款成功', 1521460658),
(338, 'apply_refund', '用户申请退款', 1521460749),
(338, 'refund_price', '退款给用户0.01元失败', 1521460787),
(339, 'cache_key_create_order', '订单生成', 1521461371),
(339, 'pay_success', '用户付款成功', 1521461378),
(340, 'cache_key_create_order', '订单生成', 1521461789),
(340, 'pay_success', '用户付款成功', 1521461795),
(341, 'cache_key_create_order', '订单生成', 1521461818),
(341, 'pay_success', '用户付款成功', 1521461830),
(341, 'apply_refund', '用户申请退款', 1521462016),
(341, 'refund_price', '退款给用户0.01元失败', 1521462038),
(342, 'cache_key_create_order', '订单生成', 1521462294),
(343, 'cache_key_create_order', '订单生成', 1521462822),
(343, 'pay_success', '用户付款成功', 1521462832),
(344, 'cache_key_create_order', '订单生成', 1521462862),
(344, 'pay_success', '用户付款成功', 1521462871),
(344, 'apply_refund', '用户申请退款', 1521462934),
(344, 'refund_price', '退款给用户0.01元失败', 1521462954),
(345, 'cache_key_create_order', '订单生成', 1521463033),
(345, 'pay_success', '用户付款成功', 1521463042),
(345, 'apply_refund', '用户申请退款', 1521463247),
(345, 'refund_price', '退款给用户0.01元失败', 1521463262),
(346, 'cache_key_create_order', '订单生成', 1521463352),
(346, 'pay_success', '用户付款成功', 1521463358),
(347, 'cache_key_create_order', '订单生成', 1521463418),
(347, 'pay_success', '用户付款成功', 1521463427),
(346, 'apply_refund', '用户申请退款', 1521463479),
(346, 'refund_price', '退款给用户0.01元失败', 1521463489),
(346, 'remove_order', '删除订单', 1521463983),
(345, 'remove_order', '删除订单', 1521464004),
(338, 'remove_order', '删除订单', 1521464019),
(312, 'remove_order', '删除订单', 1521464035),
(342, 'remove_order', '删除订单', 1521464844),
(317, 'remove_order', '删除订单', 1521464934),
(343, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：143254468768', 1521465010),
(347, 'apply_refund', '用户申请退款', 1521511173),
(348, 'cache_key_create_order', '订单生成', 1521511220),
(348, 'pay_success', '用户付款成功', 1521511226),
(349, 'cache_key_create_order', '订单生成', 1521515579),
(349, 'pay_success', '用户付款成功', 1521515587),
(350, 'cache_key_create_order', '订单生成', 1521515681),
(350, 'pay_success', '用户付款成功', 1521515689),
(351, 'cache_key_create_order', '订单生成', 1521515747),
(351, 'pay_success', '用户付款成功', 1521515747),
(351, 'apply_refund', '用户申请退款', 1521515774),
(351, 'refund_price', '退款给用户0.01元失败', 1521515799),
(350, 'apply_refund', '用户申请退款', 1521515801),
(352, 'cache_key_create_order', '订单生成', 1521516494),
(352, 'pay_success', '用户付款成功', 1521516502),
(352, 'apply_refund', '用户申请退款', 1521516529),
(352, 'refund_price', '退款给用户0.01元失败', 1521516579),
(353, 'cache_key_create_order', '订单生成', 1521516623),
(354, 'cache_key_create_order', '订单生成', 1521517357),
(354, 'pay_success', '用户付款成功', 1521517357),
(354, 'apply_refund', '用户申请退款', 1521517393),
(354, 'refund_price', '退款给用户0.01元失败', 1521517428),
(355, 'cache_key_create_order', '订单生成', 1521518038),
(355, 'pay_success', '用户付款成功', 1521518038),
(355, 'apply_refund', '用户申请退款', 1521518074),
(355, 'refund_price', '退款给用户0.01元失败', 1521518085),
(356, 'cache_key_create_order', '订单生成', 1521518168),
(356, 'pay_success', '用户付款成功', 1521518168),
(356, 'apply_refund', '用户申请退款', 1521518196),
(356, 'refund_price', '退款给用户0.01元失败', 1521518204),
(357, 'cache_key_create_order', '订单生成', 1521518238),
(357, 'pay_success', '用户付款成功', 1521518238),
(358, 'cache_key_create_order', '订单生成', 1521518350),
(358, 'pay_success', '用户付款成功', 1521518350),
(359, 'cache_key_create_order', '订单生成', 1521518409),
(359, 'pay_success', '用户付款成功', 1521518409),
(360, 'cache_key_create_order', '订单生成', 1521518436),
(360, 'pay_success', '用户付款成功', 1521518436),
(359, 'apply_refund', '用户申请退款', 1521518490),
(359, 'refund_price', '退款给用户0.01元失败', 1521518510),
(358, 'apply_refund', '用户申请退款', 1521518695),
(361, 'cache_key_create_order', '订单生成', 1521518707),
(361, 'remove_order', '删除订单', 1521518733),
(362, 'cache_key_create_order', '订单生成', 1521518745),
(362, 'pay_success', '用户付款成功', 1521518745),
(358, 'refund_price', '退款给用户0.02元失败', 1521518803),
(363, 'cache_key_create_order', '订单生成', 1521528476),
(363, 'pay_success', '用户付款成功', 1521528476),
(364, 'cache_key_create_order', '订单生成', 1521528530),
(364, 'pay_success', '用户付款成功', 1521528530),
(364, 'apply_refund', '用户申请退款', 1521528568),
(364, 'refund_price', '退款给用户0.01元失败', 1521528588),
(365, 'cache_key_create_order', '订单生成', 1521528642),
(365, 'pay_success', '用户付款成功', 1521528642),
(360, 'apply_refund', '用户申请退款', 1521528838),
(366, 'cache_key_create_order', '订单生成', 1521529171),
(366, 'pay_success', '用户付款成功', 1521529171),
(366, 'apply_refund', '用户申请退款', 1521529492),
(366, 'refund_price', '退款给用户0.01元失败', 1521529515),
(365, 'apply_refund', '用户申请退款', 1521529518),
(367, 'cache_key_create_order', '订单生成', 1521531616),
(367, 'pay_success', '用户付款成功', 1521531616),
(368, 'cache_key_create_order', '订单生成', 1521533318),
(368, 'pay_success', '用户付款成功', 1521533318),
(367, 'apply_refund', '用户申请退款，原因：拼错了', 1521534228),
(363, 'apply_refund', '用户申请退款，原因：撒的发生大', 1521535447),
(323, 'apply_refund', '用户申请退款，原因：萨达发的是', 1521535551),
(336, 'apply_refund', '用户申请退款，原因：法国广告', 1521535688),
(369, 'cache_key_create_order', '订单生成', 1521536031),
(369, 'pay_success', '用户付款成功', 1521536053),
(370, 'cache_key_create_order', '订单生成', 1521536098),
(370, 'pay_success', '用户付款成功', 1521536104),
(371, 'cache_key_create_order', '订单生成', 1521536137),
(371, 'pay_success', '用户付款成功', 1521536144),
(371, 'apply_refund', '用户申请退款，原因：想想', 1521537625),
(371, 'refund_price', '退款给用户0.01元失败', 1521537675),
(371, 'remove_order', '删除订单', 1521539651),
(344, 'remove_order', '删除订单', 1521539820),
(341, 'remove_order', '删除订单', 1521539829),
(372, 'cache_key_create_order', '订单生成', 1521545891),
(372, 'pay_success', '用户付款成功', 1521545897),
(340, 'refund_price', '退款给用户0.01元失败', 1521546382),
(337, 'refund_price', '退款给用户0.01元失败', 1521546391),
(373, 'cache_key_create_order', '订单生成', 1521547019),
(373, 'pay_success', '用户付款成功', 1521547028),
(374, 'cache_key_create_order', '订单生成', 1521594373),
(374, 'pay_success', '用户付款成功', 1521594380),
(374, 'apply_refund', '用户申请退款，原因：想想', 1521594552),
(374, 'refund_price', '退款给用户0.02元失败', 1521594568),
(373, 'apply_refund', '用户申请退款，原因：想想', 1521594778),
(375, 'cache_key_create_order', '订单生成', 1521594999),
(375, 'pay_success', '用户付款成功', 1521595005),
(375, 'apply_refund', '用户申请退款，原因：想想', 1521595035),
(375, 'refund_price', '退款给用户0.02元失败', 1521595058),
(377, 'cache_key_create_order', '订单生成', 1521597907),
(378, 'cache_key_create_order', '订单生成', 1521597920),
(378, 'pay_success', '用户付款成功', 1521597920),
(379, 'cache_key_create_order', '订单生成', 1521597979),
(379, 'pay_success', '用户付款成功', 1521597979),
(380, 'cache_key_create_order', '订单生成', 1521598255),
(380, 'pay_success', '用户付款成功', 1521598255),
(381, 'cache_key_create_order', '订单生成', 1521598312),
(381, 'pay_success', '用户付款成功', 1521598312),
(381, 'apply_refund', '用户申请退款，原因：不要了', 1521598350),
(381, 'refund_price', '退款给用户0.01元失败', 1521598378),
(382, 'cache_key_create_order', '订单生成', 1521598543),
(382, 'pay_success', '用户付款成功', 1521598551),
(380, 'apply_refund', '用户申请退款，原因：不要了', 1521598688),
(380, 'refund_price', '退款给用户0.01元失败', 1521598706),
(379, 'apply_refund', '用户申请退款，原因：不要了', 1521598938),
(379, 'refund_price', '退款给用户18元失败', 1521598950),
(376, 'pay_success', '用户付款成功', 1521606841),
(324, 'user_take_delivery', '用户已收货', 1521612912),
(383, 'cache_key_create_order', '订单生成', 1521612988),
(383, 'pay_success', '用户付款成功', 1521612997),
(384, 'cache_key_create_order', '订单生成', 1521613072),
(385, 'cache_key_create_order', '订单生成', 1521618321),
(385, 'pay_success', '用户付款成功', 1521618338),
(385, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123123133423411', 1521618769),
(385, 'user_take_delivery', '用户已收货', 1521618865),
(386, 'cache_key_create_order', '订单生成', 1521619001),
(386, 'pay_success', '用户付款成功', 1521619009),
(385, 'check_order_over', '用户评价', 1521619146),
(387, 'cache_key_create_order', '订单生成', 1521619169),
(387, 'pay_success', '用户付款成功', 1521619169),
(385, 'refund_price', '退款给用户17.9元失败', 1521619264),
(388, 'cache_key_create_order', '订单生成', 1521619924),
(388, 'pay_success', '用户付款成功', 1521619935),
(389, 'cache_key_create_order', '订单生成', 1521619974),
(389, 'pay_success', '用户付款成功', 1521619996),
(390, 'cache_key_create_order', '订单生成', 1521620221),
(390, 'pay_success', '用户付款成功', 1521620228),
(390, 'apply_refund', '用户申请退款，原因：太好吃了', 1521620583),
(390, 'refund_price', '退款给用户0.02元失败', 1521621537),
(391, 'cache_key_create_order', '订单生成', 1521621966),
(391, 'pay_success', '用户付款成功', 1521622010),
(391, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：2432463453', 1521622115),
(392, 'cache_key_create_order', '订单生成', 1521622154),
(392, 'pay_success', '用户付款成功', 1521622161),
(393, 'cache_key_create_order', '订单生成', 1521622366),
(394, 'cache_key_create_order', '订单生成', 1521624713),
(394, 'pay_success', '用户付款成功', 1521624721),
(395, 'cache_key_create_order', '订单生成', 1521629509),
(395, 'pay_success', '用户付款成功', 1521629518),
(396, 'cache_key_create_order', '订单生成', 1521629579),
(396, 'pay_success', '用户付款成功', 1521629586),
(397, 'cache_key_create_order', '订单生成', 1521631232),
(397, 'pay_success', '用户付款成功', 1521631239),
(398, 'cache_key_create_order', '订单生成', 1521631274),
(398, 'pay_success', '用户付款成功', 1521631280),
(399, 'cache_key_create_order', '订单生成', 1521631304),
(399, 'pay_success', '用户付款成功', 1521631310),
(400, 'cache_key_create_order', '订单生成', 1521631380),
(400, 'pay_success', '用户付款成功', 1521631395),
(401, 'cache_key_create_order', '订单生成', 1521631414),
(401, 'pay_success', '用户付款成功', 1521631420),
(402, 'cache_key_create_order', '订单生成', 1521681858),
(402, 'pay_success', '用户付款成功', 1521681858),
(403, 'cache_key_create_order', '订单生成', 1521681937),
(403, 'pay_success', '用户付款成功', 1521681937),
(404, 'cache_key_create_order', '订单生成', 1521682080),
(404, 'pay_success', '用户付款成功', 1521682080),
(405, 'cache_key_create_order', '订单生成', 1521682231),
(405, 'pay_success', '用户付款成功', 1521682231),
(406, 'cache_key_create_order', '订单生成', 1521682299),
(406, 'pay_success', '用户付款成功', 1521682299),
(407, 'cache_key_create_order', '订单生成', 1521682487),
(407, 'pay_success', '用户付款成功', 1521682487),
(408, 'cache_key_create_order', '订单生成', 1521682586),
(409, 'cache_key_create_order', '订单生成', 1521682626),
(410, 'cache_key_create_order', '订单生成', 1521682652),
(410, 'pay_success', '用户付款成功', 1521682652),
(411, 'cache_key_create_order', '订单生成', 1521682719),
(411, 'pay_success', '用户付款成功', 1521682719),
(412, 'cache_key_create_order', '订单生成', 1521682751),
(412, 'pay_success', '用户付款成功', 1521682752),
(413, 'cache_key_create_order', '订单生成', 1521683632),
(413, 'pay_success', '用户付款成功', 1521683632),
(414, 'cache_key_create_order', '订单生成', 1521686043),
(414, 'pay_success', '用户付款成功', 1521686043),
(415, 'cache_key_create_order', '订单生成', 1521686090),
(416, 'cache_key_create_order', '订单生成', 1521686138),
(417, 'cache_key_create_order', '订单生成', 1521686237),
(417, 'pay_success', '用户付款成功', 1521686237),
(418, 'cache_key_create_order', '订单生成', 1521686272),
(418, 'pay_success', '用户付款成功', 1521686272),
(419, 'cache_key_create_order', '订单生成', 1521686353),
(419, 'pay_success', '用户付款成功', 1521686379),
(420, 'cache_key_create_order', '订单生成', 1521692681),
(420, 'pay_success', '用户付款成功', 1521692681),
(421, 'cache_key_create_order', '订单生成', 1521701350),
(421, 'pay_success', '用户付款成功', 1521701350),
(422, 'cache_key_create_order', '订单生成', 1521701363),
(422, 'pay_success', '用户付款成功', 1521701363),
(422, 'apply_refund', '用户申请退款，原因：不要了', 1521701410),
(422, 'refund_price', '退款给用户0.01元失败', 1521701448),
(421, 'apply_refund', '用户申请退款，原因：颜色、款式、图案描述不符合', 1521703156),
(421, 'refund_n', '不退款原因:666', 1521703702),
(421, 'apply_refund', '用户申请退款，原因：颜色、款式、图案描述不符合', 1521703940),
(421, 'refund_price', '退款给用户0.02元失败', 1521703964),
(421, 'remove_order', '删除订单', 1521704126),
(423, 'cache_key_create_order', '订单生成', 1521704440),
(423, 'pay_success', '用户付款成功', 1521704440),
(424, 'cache_key_create_order', '订单生成', 1521704610),
(424, 'pay_success', '用户付款成功', 1521704618),
(425, 'cache_key_create_order', '订单生成', 1521704760),
(425, 'pay_success', '用户付款成功', 1521704760),
(425, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123123123', 1521704784),
(425, 'user_take_delivery', '用户已收货', 1521704804),
(426, 'cache_key_create_order', '订单生成', 1521705419),
(426, 'pay_success', '用户付款成功', 1521705428),
(391, 'user_take_delivery', '用户已收货', 1521705954),
(427, 'cache_key_create_order', '订单生成', 1521705986),
(426, 'apply_refund', '用户申请退款，原因：收货地址填错了', 1521706206),
(425, 'check_order_over', '用户评价', 1521706246),
(428, 'cache_key_create_order', '订单生成', 1521706372),
(428, 'pay_success', '用户付款成功', 1521706372),
(428, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123456', 1521706385),
(428, 'user_take_delivery', '用户已收货', 1521706390),
(429, 'cache_key_create_order', '订单生成', 1521706415),
(429, 'pay_success', '用户付款成功', 1521706415),
(429, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123123', 1521706429),
(429, 'user_take_delivery', '用户已收货', 1521706433),
(430, 'cache_key_create_order', '订单生成', 1521706598),
(430, 'pay_success', '用户付款成功', 1521706606),
(430, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：1234124432', 1521706636),
(430, 'user_take_delivery', '用户已收货', 1521706657),
(431, 'cache_key_create_order', '订单生成', 1521706691),
(431, 'pay_success', '用户付款成功', 1521706691),
(431, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：123123213', 1521706700),
(431, 'user_take_delivery', '用户已收货', 1521706704),
(432, 'cache_key_create_order', '订单生成', 1521706816),
(433, 'cache_key_create_order', '订单生成', 1521706852),
(433, 'pay_success', '用户付款成功', 1521706860),
(434, 'cache_key_create_order', '订单生成', 1521707168),
(434, 'pay_success', '用户付款成功', 1521707168),
(434, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：123123', 1521707179),
(434, 'user_take_delivery', '用户已收货', 1521707184),
(435, 'cache_key_create_order', '订单生成', 1521707608),
(435, 'pay_success', '用户付款成功', 1521707608),
(435, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：123123', 1521707621),
(435, 'user_take_delivery', '用户已收货', 1521707626),
(436, 'cache_key_create_order', '订单生成', 1521707643),
(436, 'pay_success', '用户付款成功', 1521707643),
(436, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123213213', 1521707654),
(436, 'user_take_delivery', '用户已收货', 1521707658),
(437, 'cache_key_create_order', '订单生成', 1521707706),
(437, 'pay_success', '用户付款成功', 1521707706),
(437, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123213123', 1521707730),
(437, 'user_take_delivery', '用户已收货', 1521707831),
(438, 'cache_key_create_order', '订单生成', 1521775590),
(424, 'apply_refund', '用户申请退款，原因：拼团时间超时', 1522202209),
(439, 'cache_key_create_order', '订单生成', 1522206830),
(433, 'apply_refund', '用户申请退款，原因：收货地址填错了', 1522224543),
(388, 'apply_refund', '用户申请退款，原因：收货地址填错了', 1522224665),
(440, 'cache_key_create_order', '订单生成', 1522225541),
(440, 'pay_success', '用户付款成功', 1522225548),
(441, 'cache_key_create_order', '订单生成', 1522251159),
(442, 'cache_key_create_order', '订单生成', 1522251197),
(442, 'pay_success', '用户付款成功', 1522251206),
(443, 'cache_key_create_order', '订单生成', 1522251237),
(443, 'pay_success', '用户付款成功', 1522251248),
(441, 'remove_order', '删除订单', 1522381753),
(432, 'remove_order', '删除订单', 1522381766),
(427, 'remove_order', '删除订单', 1522381773),
(444, 'cache_key_create_order', '订单生成', 1522381810),
(444, 'remove_order', '删除订单', 1522381831),
(445, 'cache_key_create_order', '订单生成', 1523267237),
(446, 'cache_key_create_order', '订单生成', 1523267394),
(446, 'pay_success', '用户付款成功', 1523267394),
(446, 'delivery_goods', '已发货 快递公司：快捷速递 快递单号：123123123123', 1523267434),
(446, 'refund_price', '退款给用户1元失败', 1523267737),
(446, 'take_delivery', '已收货', 1523267788),
(446, 'refund_n', '不退款原因:asdasdasd', 1523268558),
(446, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123123', 1523268582),
(446, 'take_delivery', '已收货', 1523268604),
(446, 'refund_n', '不退款原因:asdasdasd', 1523268627),
(446, 'refund_price', '退款给用户1元失败', 1523268649),
(446, 'refund_price', '退款给用户13.9元失败', 1523268677),
(447, 'cache_key_create_order', '订单生成', 1523526472),
(448, 'cache_key_create_order', '订单生成', 1523583254),
(449, 'cache_key_create_order', '订单生成', 1523583329),
(450, 'cache_key_create_order', '订单生成', 1523633008),
(451, 'cache_key_create_order', '订单生成', 1524017939),
(452, 'cache_key_create_order', '订单生成', 1524032836),
(452, 'pay_success', '用户付款成功', 1524032836),
(453, 'cache_key_create_order', '订单生成', 1524478612),
(453, 'pay_success', '用户付款成功', 1524478612),
(454, 'cache_key_create_order', '订单生成', 1524478634),
(454, 'pay_success', '用户付款成功', 1524478634),
(455, 'cache_key_create_order', '订单生成', 1524478904),
(455, 'pay_success', '用户付款成功', 1524478904),
(456, 'cache_key_create_order', '订单生成', 1524530737),
(456, 'pay_success', '用户付款成功', 1524530737),
(457, 'cache_key_create_order', '订单生成', 1524533446),
(457, 'pay_success', '用户付款成功', 1524533446),
(458, 'cache_key_create_order', '订单生成', 1524540654),
(458, 'pay_success', '用户付款成功', 1524540654),
(459, 'cache_key_create_order', '订单生成', 1524540778),
(459, 'pay_success', '用户付款成功', 1524540778),
(460, 'cache_key_create_order', '订单生成', 1524541465),
(460, 'pay_success', '用户付款成功', 1524541465),
(461, 'cache_key_create_order', '订单生成', 1524542603),
(461, 'pay_success', '用户付款成功', 1524542603),
(462, 'cache_key_create_order', '订单生成', 1524542636),
(462, 'pay_success', '用户付款成功', 1524542636),
(463, 'cache_key_create_order', '订单生成', 1524550948),
(463, 'pay_success', '用户付款成功', 1524550948),
(464, 'cache_key_create_order', '订单生成', 1524550965),
(464, 'pay_success', '用户付款成功', 1524550965),
(465, 'cache_key_create_order', '订单生成', 1524551009),
(466, 'cache_key_create_order', '订单生成', 1524619212),
(466, 'pay_success', '用户付款成功', 1524619236),
(467, 'cache_key_create_order', '订单生成', 1524621398),
(467, 'pay_success', '用户付款成功', 1524621398),
(468, 'cache_key_create_order', '订单生成', 1524621659),
(468, 'pay_success', '用户付款成功', 1524621659),
(469, 'cache_key_create_order', '订单生成', 1524642249),
(469, 'pay_success', '用户付款成功', 1524642249),
(470, 'cache_key_create_order', '订单生成', 1524646731),
(471, 'cache_key_create_order', '订单生成', 1524646762),
(472, 'cache_key_create_order', '订单生成', 1524647465),
(472, 'pay_success', '用户付款成功', 1524647465),
(473, 'cache_key_create_order', '订单生成', 1524648553),
(473, 'pay_success', '用户付款成功', 1524648553),
(474, 'cache_key_create_order', '订单生成', 1524650446),
(474, 'pay_success', '用户付款成功', 1524650446),
(459, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：11111111111111', 1524703490),
(460, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：11111111111111111', 1524703517),
(463, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：222222222222222', 1524703605),
(460, 'take_delivery', '已收货', 1524703661),
(475, 'cache_key_create_order', '订单生成', 1524799602),
(475, 'pay_success', '用户付款成功', 1524799602),
(460, 'check_order_over', '用户评价', 1524809698),
(463, 'user_take_delivery', '用户已收货', 1524809929),
(466, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：123456498', 1526549164),
(466, 'user_take_delivery', '用户已收货', 1526553157),
(458, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：呼呼呼', 1526553644),
(458, 'user_take_delivery', '用户已收货', 1526553815),
(456, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：实打实大苏打实打实的', 1526553917),
(456, 'user_take_delivery', '用户已收货', 1526553945),
(472, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：实打实打算', 1526554869),
(472, 'user_take_delivery', '用户已收货', 1526554922),
(477, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：是的是的', 1526554975),
(476, 'cache_key_create_order', '订单生成', 1526572920),
(474, 'delivery_goods', '已发货 快递公司：中通快递 快递单号：kuaididanhao', 1526638816),
(474, 'user_take_delivery', '用户已收货', 1526638853),
(473, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：ddfdf', 1526638946),
(473, 'user_take_delivery', '用户已收货', 1526639177),
(455, 'delivery_goods', '已发货 快递公司：快捷速递 快递单号：dfdfdf', 1526639877),
(454, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：dfdfdf', 1526639884),
(455, 'user_take_delivery', '用户已收货', 1526639907),
(455, 'check_order_over', '用户评价', 1526640023),
(454, 'user_take_delivery', '用户已收货', 1526641678),
(473, 'remove_order', '删除订单', 1526691039),
(472, 'remove_order', '删除订单', 1526691177),
(474, 'remove_order', '删除订单', 1526691444),
(475, 'remove_order', '删除订单', 1526691595),
(466, 'remove_order', '删除订单', 1526691699),
(456, 'remove_order', '删除订单', 1526691749),
(458, 'remove_order', '删除订单', 1526692391),
(455, 'remove_order', '删除订单', 1526692452),
(475, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：是的是的', 1526554975),
(478, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：是的是的', 1526554975),
(479, 'cache_key_create_order', '订单生成', 1526693326),
(480, 'cache_key_create_order', '订单生成', 1526693496),
(480, 'pay_success', '用户付款成功', 1526693496),
(481, 'cache_key_create_order', '订单生成', 1526693909),
(481, 'pay_success', '用户付款成功', 1526693910),
(482, 'cache_key_create_order', '订单生成', 1526693980),
(482, 'pay_success', '用户付款成功', 1526693981),
(483, 'cache_key_create_order', '订单生成', 1526694059),
(483, 'pay_success', '用户付款成功', 1526694059),
(452, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：454545', 1526703576),
(484, 'cache_key_create_order', '订单生成', 1526710584),
(485, 'cache_key_create_order', '订单生成', 1526710676),
(485, 'pay_success', '用户付款成功', 1526710677),
(486, 'cache_key_create_order', '订单生成', 1526710772),
(486, 'pay_success', '用户付款成功', 1526710772),
(486, 'delivery_goods', '已发货 快递公司：天天快递 快递单号：规划规划规划', 1526710848),
(485, 'delivery_goods', '已发货 快递公司：圆通速递 快递单号：是否受到收到', 1526710859),
(486, 'user_take_delivery', '用户已收货', 1526710907),
(486, 'check_order_over', '用户评价', 1526710932),
(485, 'user_take_delivery', '用户已收货', 1526710987),
(485, 'check_order_over', '用户评价', 1526711015),
(452, 'user_take_delivery', '用户已收货', 1526711101),
(486, 'remove_order', '删除订单', 1526711333),
(487, 'cache_key_create_order', '订单生成', 1526726017),
(488, 'cache_key_create_order', '订单生成', 1526726038),
(488, 'pay_success', '用户付款成功', 1526726038),
(489, 'cache_key_create_order', '订单生成', 1526882848),
(489, 'pay_success', '用户付款成功', 1526882848),
(490, 'cache_key_create_order', '订单生成', 1526951009),
(490, 'pay_success', '用户付款成功', 1526951009),
(469, 'apply_refund', '用户申请退款，原因：收到商品破损', 1526956107),
(468, 'apply_refund', '用户申请退款，原因：颜色、款式、图案描述不符合', 1526956138),
(490, 'apply_refund', '用户申请退款，原因：农业银行实打实大苏打', 1526958175),
(479, 'pay_success', '用户付款成功', 1526958987),
(489, 'delivery_goods', '已发货 快递公司：中国邮政 快递单号：454', 1526987895),
(490, 'refund_price', '退款给用户900元', 1526987907),
(490, 'refund_n', '不退款原因:gfh ', 1526987923),
(491, 'cache_key_create_order', '订单生成', 1527070861),
(491, 'pay_success', '用户付款成功', 1527070861),
(492, 'cache_key_create_order', '订单生成', 1527124482),
(492, 'pay_success', '用户付款成功', 1527124483),
(492, 'delivery_goods', '已发货 快递公司：圆通速递 快递单号：889795746002745118', 1527124726),
(493, 'cache_key_create_order', '订单生成', 1527126190),
(493, 'pay_success', '用户付款成功', 1527126191),
(489, 'user_take_delivery', '用户已收货', 1527211325),
(494, 'cache_key_create_order', '订单生成', 1527213135),
(494, 'pay_success', '用户付款成功', 1527213135),
(495, 'cache_key_create_order', '订单生成', 1527220073),
(495, 'pay_success', '用户付款成功', 1527220073),
(496, 'cache_key_create_order', '订单生成', 1527510138),
(497, 'cache_key_create_order', '订单生成', 1527510425),
(498, 'cache_key_create_order', '订单生成', 1527510602),
(499, 'cache_key_create_order', '订单生成', 1527512301),
(500, 'cache_key_create_order', '订单生成', 1527523087),
(501, 'cache_key_create_order', '订单生成', 1527523232),
(502, 'cache_key_create_order', '订单生成', 1527553356),
(503, 'cache_key_create_order', '订单生成', 1527556576),
(504, 'cache_key_create_order', '订单生成', 1527556617),
(505, 'cache_key_create_order', '订单生成', 1527561325),
(506, 'cache_key_create_order', '订单生成', 1527561346),
(507, 'cache_key_create_order', '订单生成', 1527561842),
(508, 'cache_key_create_order', '订单生成', 1527574729),
(509, 'cache_key_create_order', '订单生成', 1527580343),
(509, 'pay_success', '用户付款成功', 1527580366),
(510, 'cache_key_create_order', '订单生成', 1527580491),
(511, 'cache_key_create_order', '订单生成', 1527580532),
(512, 'cache_key_create_order', '订单生成', 1527580612),
(509, 'refund_price', '退款给用户0.01元', 1527580845),
(513, 'cache_key_create_order', '订单生成', 1527594498),
(514, 'cache_key_create_order', '订单生成', 1527597165),
(514, 'pay_success', '用户付款成功', 1527597177),
(515, 'cache_key_create_order', '订单生成', 1527642896),
(516, 'cache_key_create_order', '订单生成', 1527643337),
(516, 'pay_success', '用户付款成功', 1527643344),
(516, 'apply_refund', '用户申请退款，原因：招商银行实打实打算', 1527643467),
(517, 'cache_key_create_order', '订单生成', 1527643613),
(517, 'pay_success', '用户付款成功', 1527643630),
(518, 'cache_key_create_order', '订单生成', 1527643767),
(519, 'cache_key_create_order', '订单生成', 1527644128),
(516, 'refund_n', '不退款原因:金额太少不退了', 1527644209),
(520, 'cache_key_create_order', '订单生成', 1527644714),
(520, 'pay_success', '用户付款成功', 1527644719),
(520, 'delivery_goods', '已发货 快递公司：韵达快运 快递单号：3998690638290', 1527644849),
(521, 'cache_key_create_order', '订单生成', 1527679975),
(522, 'cache_key_create_order', '订单生成', 1527847140),
(522, 'pay_success', '用户付款成功', 1527847140),
(517, 'apply_refund', '用户申请退款，原因：拼团时间超时', 1527920514),
(523, 'cache_key_create_order', '订单生成', 1527925014),
(523, 'pay_success', '用户付款成功', 1527925031);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_pink`
--

CREATE TABLE IF NOT EXISTS `eb_store_pink` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) NOT NULL COMMENT '订单id 生成',
  `order_id_key` int(10) unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int(10) unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int(10) unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int(10) unsigned NOT NULL COMMENT '产品id',
  `people` int(10) unsigned NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) NOT NULL,
  `k_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成'
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='拼团表';

--
-- 转存表中的数据 `eb_store_pink`
--

INSERT INTO `eb_store_pink` (`id`, `uid`, `order_id`, `order_id_key`, `total_num`, `total_price`, `cid`, `pid`, `people`, `price`, `add_time`, `stop_time`, `k_id`, `is_tpl`, `is_refund`, `status`) VALUES
(37, 1, 'wx2018042412032310006', 461, 1, '100.00', 11, 461, 10, '100.00', '1524542603', '1524629003', 0, 0, 0, 1),
(38, 1, 'wx2018042412035610007', 462, 1, '100.00', 11, 461, 10, '100.00', '1524542636', '1524629036', 0, 0, 0, 1),
(39, 1, 'wx2018042414224510009', 464, 1, '100.00', 10, 461, 10, '100.00', '1524550965', '1524637365', 0, 0, 0, 1),
(40, 1, 'wx2018042509563810002', 467, 1, '90.00', 11, 461, 10, '100.00', '1524621398', '1524707798', 0, 0, 0, 1),
(41, 107, 'wx2018053009265310003', 517, 1, '0.01', 16, 655, 2, '0.01', '1527643630', '1527730030', 0, 0, 0, 3),
(42, 1, 'wx2018060117590010001', 522, 1, '100.00', 10, 461, 10, '100.00', '1527847140', '1527933540', 0, 0, 0, 1),
(43, 107, 'wx2018060215365410001', 523, 1, '0.01', 18, 655, 3, '0.01', '1527925031', '1528011431', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product`
--

CREATE TABLE IF NOT EXISTS `eb_store_product` (
  `id` mediumint(11) NOT NULL COMMENT '商品id',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(128) NOT NULL COMMENT '商品图片',
  `slider_image` varchar(512) NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) NOT NULL COMMENT '关键字',
  `cate_id` varchar(64) NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) NOT NULL COMMENT '单位名',
  `sort` smallint(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sales` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `description` text NOT NULL COMMENT '产品描述',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned NOT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `is_seckill` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint(1) unsigned NOT NULL COMMENT '砍价状态 0未开启 1开启'
) ENGINE=MyISAM AUTO_INCREMENT=656 DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- 转存表中的数据 `eb_store_product`
--

INSERT INTO `eb_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`) VALUES
(461, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '113.00', '0.00', '113.00', '0.00', '件', 0, 25, 203, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1490061177, 0, 0, 1, '0.00', '0.00', 0, 0),
(463, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '51.00', '0.00', '58.00', '0.00', '件', 0, 12, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1490062066, 0, 0, 1, '0.00', '0.00', 0, 0),
(464, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '840.00', '0.00', '1280.00', '0.00', '件', 1, 23, 987, 1, 1, 1, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493860429, 0, 0, 1, '0.00', '0.00', 0, 0),
(465, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '530.00', '0.00', '680.00', '0.00', '件', 0, 9, 999, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493864663, 0, 0, 1, '0.00', '0.00', 0, 0),
(466, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '490.00', '0.00', '660.00', '0.00', '件', 0, 15, 1000, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493865597, 0, 0, 1, '0.00', '0.00', 0, 0),
(467, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '420.00', '0.00', '560.00', '0.00', '件', 0, 28, 1000, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493865782, 0, 0, 1, '0.00', '0.00', 0, 0),
(468, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '12.00', '0.00', '15.00', '0.00', '件', 1, 58, 945, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493867586, 0, 0, 1, '0.00', '0.00', 0, 0),
(469, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '109.00', '0.00', '109.00', '31.00', '件', 0, 6, 14, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493872211, 0, 0, 1, '0.00', '0.00', 0, 0),
(470, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '4.20', '0.00', '5.50', '0.00', '件', 0, 94, 956, 1, 1, 1, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493879767, 0, 0, 1, '0.00', '0.00', 0, 0),
(471, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '65.00', '0.00', '65.00', '0.00', '件', 0, 5, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493883145, 0, 0, 1, '0.00', '0.00', 0, 0),
(472, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '77.01', '0.00', '88.00', '0.00', '件', 0, 5, 997, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493943900, 0, 0, 1, '0.00', '0.00', 0, 0),
(473, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '178.00', '0.00', '198.00', '0.00', '件', 0, 2, 999, 1, 1, 1, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493945834, 0, 0, 1, '0.00', '0.00', 0, 0),
(474, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '229.00', '0.00', '229.00', '10.00', '件', 2, 81, 56, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1493952893, 0, 0, 1, '0.00', '0.00', 0, 0),
(476, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '258.00', '0.00', '298.00', '0.00', '件', 1, 84, 923, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1499138916, 0, 0, 1, '0.00', '0.00', 0, 0),
(477, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '8.00', '0.00', '8.00', '0.00', '件', 0, 0, 40, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502429766, 0, 0, 1, '0.00', '0.00', 0, 0),
(478, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '59.00', '0.00', '59.00', '0.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502430443, 0, 0, 1, '0.00', '0.00', 0, 0),
(479, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '799.00', '0.00', '799.00', '0.00', '件', 0, 2, 8, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502434216, 0, 0, 1, '0.00', '0.00', 0, 0),
(480, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '1080.00', '0.00', '1080.00', '0.00', '件', 0, 0, 1, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502507737, 0, 0, 1, '0.00', '0.00', 0, 0),
(481, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '215.00', '0.00', '215.00', '0.00', '件', 0, 2, 5, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502610561, 0, 0, 1, '0.00', '0.00', 0, 0),
(482, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '19.00', '0.00', '19.00', '0.00', '件', 0, 5, 1, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502782458, 0, 0, 1, '0.00', '0.00', 0, 0),
(483, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '59.00', '0.00', '59.00', '0.00', '件', 0, 20, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502783459, 0, 0, 1, '0.00', '0.00', 0, 0),
(484, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '20.00', '0.00', '20.00', '0.00', '件', 0, 0, 888, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502956340, 0, 0, 1, '0.00', '0.00', 0, 0),
(485, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '42.00', '0.00', '42.00', '0.00', '件', 0, 7, 8, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502958266, 0, 0, 1, '0.00', '0.00', 0, 0),
(486, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '110.00', '0.00', '110.00', '0.00', '件', 0, 0, 1, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1502964285, 0, 0, 1, '0.00', '0.00', 0, 0),
(487, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '199.00', '0.00', '199.00', '10.00', '件', 0, 5, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503046215, 0, 0, 1, '0.00', '0.00', 0, 0),
(488, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '92.00', '0.00', '92.00', '0.00', '件', 0, 5, 6, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503046729, 0, 0, 1, '0.00', '0.00', 0, 0),
(489, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '92.00', '0.00', '92.00', '0.00', '件', 0, 2, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503047380, 0, 0, 1, '0.00', '0.00', 0, 0),
(490, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '69.00', '0.00', '99.00', '0.00', '件', 0, 2, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503048932, 0, 0, 1, '0.00', '0.00', 0, 0),
(491, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '0.01', '0.00', '29.00', '0.00', '件', 0, 16, 14, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503049083, 0, 0, 1, '0.00', '0.00', 0, 0),
(492, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '49.90', '0.00', '49.90', '0.00', '件', 0, 2, 6, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503049999, 0, 0, 1, '0.00', '0.00', 0, 0),
(493, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '8.00', '0.00', '8.00', '0.00', '件', 0, 2, 90, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503050273, 0, 0, 1, '0.00', '0.00', 0, 0),
(494, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '29.00', '0.00', '29.00', '0.00', '件', 0, 3, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503124695, 0, 0, 1, '0.00', '0.00', 0, 0),
(495, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '399.00', '0.00', '399.00', '0.00', '件', 0, 5, 50, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503392055, 0, 0, 1, '0.00', '0.00', 0, 0),
(496, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '379.00', '0.00', '379.00', '11.00', '件', 0, 2, 10, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503392378, 0, 0, 1, '0.00', '0.00', 0, 0),
(497, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '939.00', '0.00', '939.00', '10.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503998167, 0, 0, 1, '0.00', '0.00', 0, 0),
(498, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '1790.00', '0.00', '1790.00', '10.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503998242, 0, 0, 1, '0.00', '0.00', 0, 0),
(499, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '1069.00', '0.00', '1069.00', '10.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1503998288, 0, 0, 1, '0.00', '0.00', 0, 0),
(500, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '115.00', '0.00', '115.00', '10.00', '件', 0, 5, 10, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086119, 0, 0, 1, '0.00', '0.00', 0, 0),
(501, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '260.00', '0.00', '260.00', '10.00', '件', 0, 0, 1, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086277, 0, 0, 1, '0.00', '0.00', 0, 0),
(502, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '290.00', '0.00', '290.00', '10.00', '件', 0, 0, 1, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086425, 0, 0, 1, '0.00', '0.00', 0, 0),
(503, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '65.00', '0.00', '65.00', '10.00', '件', 0, 2, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086602, 0, 0, 1, '0.00', '0.00', 0, 0),
(504, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '75.00', '0.00', '75.00', '10.00', '件', 0, 6, 19, 1, 0, 1, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086672, 0, 0, 1, '0.00', '0.00', 0, 0),
(505, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '50.00', '0.00', '50.00', '10.00', '件', 0, 8, 18, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504086823, 0, 0, 1, '0.00', '0.00', 0, 0),
(506, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '390.00', '0.00', '390.00', '10.00', '件', 0, 2, 888, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504087254, 0, 0, 1, '0.00', '0.00', 0, 0),
(507, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '0.01', '0.00', '470.00', '0.00', '件', 0, 2, 888, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504087349, 1, 0, 1, '0.00', '0.00', 0, 0),
(508, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '430.00', '0.00', '430.00', '10.00', '件', 0, 0, 2, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504087460, 0, 0, 1, '0.00', '0.00', 0, 0),
(509, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '470.00', '0.00', '470.00', '10.00', '件', 0, 0, 2, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504087557, 0, 0, 1, '0.00', '0.00', 0, 0),
(510, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '99.00', '0.00', '99.00', '7.00', '件', 0, 2, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504146647, 0, 0, 1, '0.00', '0.00', 0, 0),
(511, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '33.50', '0.00', '33.50', '10.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148073, 0, 0, 1, '0.00', '0.00', 0, 0);
INSERT INTO `eb_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`) VALUES
(512, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '39.00', '0.00', '39.00', '6.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148259, 0, 0, 1, '0.00', '0.00', 0, 0),
(513, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '8.50', '0.00', '8.50', '6.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148353, 0, 0, 1, '0.00', '0.00', 0, 0),
(514, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '14.50', '0.00', '14.50', '6.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148557, 0, 0, 1, '0.00', '0.00', 0, 0),
(515, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '35.00', '0.00', '35.00', '7.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148792, 0, 0, 1, '0.00', '0.00', 0, 0),
(516, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '39.00', '0.00', '39.00', '8.00', '件', 0, 0, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148888, 0, 0, 1, '0.00', '0.00', 0, 0),
(517, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '8.00', '0.00', '8.00', '6.00', '件', 0, 0, 100, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504148959, 0, 0, 1, '0.00', '0.00', 0, 0),
(518, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '92.00', '0.00', '92.00', '8.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504149059, 0, 0, 1, '0.00', '0.00', 0, 0),
(519, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '92.00', '0.00', '92.00', '8.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504149159, 0, 0, 1, '0.00', '0.00', 0, 0),
(520, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '9.00', '0.00', '9.00', '8.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504149307, 0, 0, 1, '0.00', '0.00', 0, 0),
(521, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '11.00', '0.00', '11.00', '7.00', '件', 0, 5, 20, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504150242, 0, 0, 1, '0.00', '0.00', 0, 0),
(522, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '89.00', '0.00', '89.00', '10.00', '件', 0, 5, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504150343, 0, 0, 1, '0.00', '0.00', 0, 0),
(523, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '21.00', '0.00', '21.00', '8.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504150582, 0, 0, 1, '0.00', '0.00', 0, 0),
(524, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '5.90', '0.00', '5.90', '6.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504150780, 0, 0, 1, '0.00', '0.00', 0, 0),
(525, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '590.00', '0.00', '590.00', '12.00', '件', 0, 0, 2, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504150875, 0, 0, 1, '0.00', '0.00', 0, 0),
(526, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '358.00', '0.00', '358.00', '12.00', '件', 0, 0, 40, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504151019, 0, 0, 0, '0.00', '10.00', 0, 0),
(527, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '490.00', '0.00', '490.00', '12.00', '件', 0, 0, 2, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504151103, 0, 0, 1, '0.00', '0.00', 0, 0),
(528, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '28.00', '0.00', '28.00', '7.00', '件', 0, 0, 5, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504151206, 0, 0, 1, '0.00', '0.00', 0, 0),
(529, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '42.00', '0.00', '42.00', '7.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504166588, 0, 0, 1, '0.00', '0.00', 0, 0),
(530, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '32.00', '0.00', '32.00', '7.00', '件', 0, 2, 8, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504166691, 0, 0, 1, '0.00', '0.00', 0, 0),
(531, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '36.00', '0.00', '36.00', '7.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504167001, 0, 0, 1, '0.00', '0.00', 0, 0),
(532, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '79.00', '0.00', '79.00', '8.00', '件', 0, 0, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504167416, 0, 0, 1, '0.00', '0.00', 0, 0),
(533, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '20.00', '0.00', '20.00', '7.00', '件', 0, 1, 19, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1504169674, 0, 0, 1, '0.00', '0.00', 0, 0),
(534, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '99.00', '0.00', '100.00', '5.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505100273, 0, 0, 1, '0.00', '0.00', 0, 0),
(535, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '11.00', '0.00', '11.00', '0.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505100573, 0, 0, 1, '0.00', '0.00', 0, 0),
(536, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '200.00', '0.00', '200.00', '0.00', '件', 0, 1, 500, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505107513, 0, 0, 1, '0.00', '0.00', 0, 0),
(537, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '200.00', '0.00', '200.00', '0.00', '件', 0, 0, 500, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505113818, 0, 0, 1, '0.00', '0.00', 0, 0),
(538, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '49800.00', '0.00', '49800.00', '0.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505119571, 0, 0, 1, '0.00', '0.00', 0, 0),
(539, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '500.00', '0.00', '500.00', '0.00', '件', 0, 0, 500, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505181702, 0, 0, 1, '0.00', '0.00', 0, 0),
(540, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '1000.00', '0.00', '1000.00', '0.00', '件', 0, 30, 470, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505181753, 0, 0, 1, '0.00', '0.00', 0, 0),
(541, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '500.00', '0.00', '500.00', '0.00', '件', 0, 0, 500, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505182596, 0, 0, 1, '0.00', '0.00', 0, 0),
(542, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '2000.00', '0.00', '2000.00', '0.00', '件', 0, 13, 86, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505182696, 0, 0, 1, '0.00', '0.00', 0, 0),
(543, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '200.00', '0.00', '200.00', '0.00', '件', 0, 36, 63, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505182980, 0, 0, 1, '0.00', '0.00', 0, 0),
(544, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '500.00', '0.00', '500.00', '0.00', '件', 0, 8, 91, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183032, 0, 0, 1, '0.00', '0.00', 0, 0),
(545, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '128.88', '0.00', '148.00', '0.00', '件', 8, 0, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183083, 0, 0, 1, '0.00', '0.00', 0, 0),
(632, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '29.90', '0.00', '60.00', '0.00', '件', 9, 24, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg"/><br/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521625503, 1, 0, 0, '30.00', '10.00', 1, 0),
(633, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '23.99', '0.00', '37.00', '24.00', '件', 10, 3, 88, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521626526, 1, 0, 0, '0.00', '200.00', 0, 0),
(546, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '72.80', '0.00', '90.00', '0.00', '件', 2, 0, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183173, 1, 0, 1, '0.00', '0.00', 0, 0),
(547, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '46.80', '0.00', '56.00', '0.00', '件', 9, 11, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183262, 1, 0, 1, '0.00', '0.00', 0, 0),
(631, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '128.88', '0.00', '148.00', '10.00', '件', 20, 19, 888, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521101395, 1, 1, 1, '0.00', '0.00', 0, 0),
(548, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '46.80', '0.00', '56.00', '0.00', '件', 1, 1, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183322, 1, 0, 1, '0.00', '0.00', 0, 0),
(549, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '29.80', '0.00', '40.00', '0.00', '件', 3, 1, 96, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183452, 1, 0, 1, '0.00', '0.00', 0, 0),
(550, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '25.80', '0.00', '31.00', '0.00', '件', 3, 1, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183507, 1, 0, 1, '0.00', '0.00', 0, 0),
(551, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '78.80', '0.00', '93.00', '0.00', '件', 8, 0, 88, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505183558, 1, 0, 1, '0.00', '0.00', 0, 0),
(552, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '56800.00', '0.00', '56800.00', '0.00', '件', 9, 1, 87, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505184159, 0, 0, 1, '0.00', '0.00', 0, 0),
(553, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '72900.00', '0.00', '72900.00', '0.00', '件', 0, 0, 888, 1, 0, 1, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505184732, 0, 0, 1, '100.00', '0.00', 0, 0),
(554, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '129800.00', '0.00', '129800.00', '0.00', '件', 0, 0, 88, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505187466, 0, 0, 1, '0.00', '0.00', 0, 0),
(555, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '169800.00', '0.00', '169800.00', '0.00', '件', 0, 1, 42, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505188729, 0, 0, 1, '0.00', '0.00', 0, 0),
(556, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '159800.00', '0.00', '159800.00', '0.00', '件', 0, 0, 888, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505188886, 0, 0, 1, '0.00', '0.00', 0, 0);
INSERT INTO `eb_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`) VALUES
(557, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '300000.00', '0.00', '169800.00', '0.00', '件', 2, 2, 86, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505189161, 0, 0, 1, '0.00', '0.00', 0, 0),
(558, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '150000.00', '0.00', '72900.00', '0.00', '件', 0, 0, 88, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505189393, 0, 0, 1, '0.00', '0.00', 0, 0),
(559, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '100000.00', '0.00', '49800.00', '0.00', '件', 1, 0, 88, 1, 0, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505189477, 0, 0, 1, '0.00', '0.00', 0, 0),
(560, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '380.00', '0.00', '480.00', '0.00', '件', 0, 0, 77, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505196290, 0, 0, 1, '0.00', '0.00', 0, 0),
(561, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '20.00', '0.00', '22.00', '0.00', '件', 0, 0, 76, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505201433, 0, 0, 1, '0.00', '0.00', 0, 0),
(562, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '380.00', '0.00', '410.00', '0.00', '件', 0, 0, 67, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505201632, 0, 0, 1, '0.00', '0.00', 0, 0),
(563, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '108.00', '0.00', '118.00', '0.00', '件', 0, 16777215, 40, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505201812, 0, 0, 0, '0.00', '90.00', 0, 0),
(564, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '390.00', '0.00', '410.00', '0.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505201997, 0, 0, 1, '0.00', '0.00', 0, 0),
(565, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '690.00', '0.00', '725.00', '0.00', '件', 0, 0, 87, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505202124, 0, 0, 1, '0.00', '0.00', 0, 0),
(566, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '88.00', '0.00', '109.00', '0.00', '件', 0, 0, 54, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505202602, 0, 0, 1, '0.00', '0.00', 0, 0),
(567, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '158.00', '0.00', '168.00', '0.00', '件', 0, 2, 63, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505273290, 0, 0, 1, '0.00', '0.00', 0, 0),
(568, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '99.00', '0.00', '109.00', '0.00', '件', 0, 0, 45, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505273689, 0, 0, 1, '0.00', '0.00', 0, 0),
(569, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '1569.00', '0.00', '1589.00', '0.00', '件', 5, 0, 765, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505274379, 0, 0, 1, '0.00', '0.00', 0, 0),
(570, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '89.00', '0.00', '99.00', '0.00', '件', 0, 0, 879, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505274817, 0, 0, 1, '0.00', '0.00', 0, 0),
(571, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '280.00', '0.00', '290.00', '10.00', '件', 0, 1, 978, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505275740, 0, 0, 1, '0.00', '0.00', 0, 0),
(572, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '178.00', '0.00', '190.00', '10.00', '件', 0, 0, 97, 1, 1, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505276501, 0, 0, 1, '0.00', '0.00', 0, 0),
(573, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '398.00', '0.00', '415.00', '10.00', '件', 7, 12, 442, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505277279, 0, 0, 1, '0.00', '0.00', 0, 0),
(574, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '388.00', '0.00', '458.00', '0.00', '件', 0, 0, 234, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505278100, 0, 0, 1, '0.00', '0.00', 0, 0),
(575, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '1498.00', '0.00', '1568.00', '0.00', '件', 6, 1, 230, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505278913, 0, 0, 1, '0.00', '0.00', 0, 0),
(576, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '498.00', '0.00', '558.00', '0.00', '件', 0, 0, 543, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505284898, 0, 0, 1, '0.00', '0.00', 0, 0),
(577, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '590.00', '0.00', '689.00', '0.00', '件', 0, 0, 657, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505287588, 0, 0, 1, '0.00', '0.00', 0, 0),
(578, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '329.00', '0.00', '399.00', '10.00', '件', 0, 0, 65, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505357387, 0, 0, 1, '0.00', '0.00', 0, 0),
(579, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '38.00', '0.00', '48.00', '0.00', '件', 0, 0, 132, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505358656, 0, 0, 1, '0.00', '0.00', 0, 0),
(580, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '126.00', '0.00', '216.00', '10.00', '件', 8, 0, 97, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505359435, 0, 0, 1, '0.00', '0.00', 0, 0),
(581, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '145.00', '0.00', '215.00', '10.00', '件', 0, 0, 56, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1505360191, 0, 0, 1, '0.00', '0.00', 0, 0),
(582, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '454.00', '0.00', '454.00', '140.00', '件', 0, 0, 56, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507701763, 0, 0, 1, '0.00', '0.00', 0, 0),
(583, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '189.00', '0.00', '189.00', '50.00', '件', 0, 0, 54, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507703265, 0, 0, 1, '0.00', '0.00', 0, 0),
(584, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '556.00', '0.00', '556.00', '50.00', '件', 0, 0, 34, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507704556, 0, 0, 1, '0.00', '0.00', 0, 0),
(585, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '145.00', '0.00', '145.00', '30.00', '件', 0, 0, 67, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507705944, 0, 0, 1, '0.00', '0.00', 0, 0),
(586, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '389.00', '0.00', '389.00', '40.00', '件', 0, 0, 43, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507706781, 0, 0, 1, '0.00', '0.00', 0, 0),
(587, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '48.00', '0.00', '48.00', '10.00', '件', 0, 0, 56, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507707639, 0, 0, 1, '0.00', '0.00', 0, 0),
(588, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '88.00', '0.00', '88.00', '10.00', '件', 0, 0, 62, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507708539, 0, 0, 1, '0.00', '0.00', 0, 0),
(589, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '88.00', '0.00', '88.00', '10.00', '件', 0, 0, 67, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507709879, 0, 0, 1, '0.00', '0.00', 0, 0),
(590, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '328.00', '0.00', '328.00', '10.00', '件', 0, 0, 23, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507712231, 0, 0, 1, '0.00', '0.00', 0, 0),
(591, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '108.00', '0.00', '108.00', '10.00', '件', 0, 0, 36, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507770123, 0, 0, 1, '0.00', '0.00', 0, 0),
(592, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '125.00', '0.00', '125.00', '10.00', '件', 0, 0, 56, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507770873, 0, 0, 1, '0.00', '0.00', 0, 0),
(593, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '29.90', '0.00', '29.90', '0.00', '件', 0, 0, 65, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507771805, 0, 0, 1, '0.00', '0.00', 0, 0),
(594, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '29.00', '0.00', '29.00', '0.00', '件', 0, 0, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507772663, 0, 0, 1, '0.00', '0.00', 0, 0),
(595, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '268.00', '0.00', '268.00', '10.00', '件', 0, 0, 67, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507775661, 0, 0, 1, '0.00', '0.00', 0, 0),
(596, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '38.80', '0.00', '38.80', '0.00', '件', 0, 0, 76, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507776603, 0, 0, 1, '0.00', '0.00', 0, 0),
(597, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '25.50', '0.00', '25.50', '0.00', '件', 0, 0, 66, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507777964, 0, 0, 1, '0.00', '0.00', 0, 0),
(598, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '66.00', '0.00', '66.00', '10.00', '件', 0, 0, 88, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507779249, 0, 0, 1, '0.00', '0.00', 0, 0),
(599, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '39.00', '0.00', '39.00', '0.00', '件', 0, 0, 77, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507786906, 0, 0, 1, '0.00', '0.00', 0, 0),
(600, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '56.00', '0.00', '56.00', '0.00', '件', 0, 0, 87, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507788807, 0, 0, 1, '0.00', '0.00', 0, 0),
(601, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '56.00', '0.00', '56.00', '0.00', '件', 0, 0, 87, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507788825, 0, 0, 1, '0.00', '0.00', 0, 0),
(602, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '32.80', '0.00', '32.80', '0.00', '件', 0, 0, 87, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507790342, 0, 0, 1, '0.00', '0.00', 0, 0),
(603, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '48.80', '0.00', '48.80', '0.00', '件', 0, 0, 54, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507791627, 0, 0, 1, '0.00', '0.00', 0, 0),
(604, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '29.90', '0.00', '29.90', '0.00', '件', 0, 0, 54, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507792955, 0, 0, 1, '0.00', '0.00', 0, 0);
INSERT INTO `eb_store_product` (`id`, `mer_id`, `image`, `slider_image`, `store_name`, `store_info`, `keyword`, `cate_id`, `price`, `vip_price`, `ot_price`, `postage`, `unit_name`, `sort`, `sales`, `stock`, `is_show`, `is_hot`, `is_benefit`, `is_best`, `is_new`, `description`, `add_time`, `is_postage`, `is_del`, `mer_use`, `give_integral`, `cost`, `is_seckill`, `is_bargain`) VALUES
(605, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '19.90', '0.00', '19.90', '0.00', '件', 0, 0, 67, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507796804, 0, 0, 0, '0.00', '90.00', 0, 0),
(606, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '19.80', '0.00', '30.00', '10.00', '件', 10, 0, 200, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507797675, 1, 0, 0, '0.00', '10.00', 0, 0),
(607, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '59.00', '0.00', '59.00', '0.00', '件', 0, 0, 130, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507799578, 0, 0, 0, '0.00', '10.00', 0, 0),
(608, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '39.90', '0.00', '39.90', '0.00', '件', 0, 0, 45, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507858865, 0, 0, 0, '0.00', '1.00', 0, 0),
(609, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '19.90', '0.00', '19.90', '0.00', '件', 0, 0, 67, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507859614, 0, 0, 0, '0.00', '10.00', 0, 0),
(610, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '48.80', '0.00', '48.80', '0.00', '件', 0, 0, 45, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507861254, 0, 0, 1, '0.00', '0.00', 0, 0),
(611, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '50.80', '0.00', '50.80', '0.00', '件', 0, 0, 45, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507873850, 0, 0, 0, '0.00', '10.00', 0, 0),
(612, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '32.50', '0.00', '32.50', '0.00', '件', 0, 0, 64, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507875337, 0, 0, 1, '0.00', '0.00', 0, 0),
(613, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '59.00', '0.00', '59.00', '0.00', '件', 0, 0, 54, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507875855, 0, 0, 0, '0.00', '10.00', 0, 0),
(614, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '32.80', '0.00', '34.80', '0.00', '件', 0, 0, 75, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507876538, 0, 0, 0, '0.00', '10.00', 0, 0),
(615, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '15', '36.00', '0.00', '36.00', '0.00', '件', 0, 32, 33, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507877148, 0, 0, 0, '0.00', '10.00', 0, 0),
(616, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '49.80', '0.00', '49.80', '0.00', '件', 0, 0, 45, 0, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507877745, 0, 0, 0, '0.00', '10.00', 0, 0),
(617, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '39.90', '0.00', '39.90', '0.00', '件', 0, 32, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1507878288, 0, 0, 1, '0.00', '0.00', 0, 0),
(618, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '15.60', '0.00', '15.60', '0.00', '件', 0, 1, 888, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1508115738, 0, 0, 1, '0.00', '0.00', 0, 0),
(619, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '1280.00', '0.00', '1280.00', '0.00', '件', 0, 0, 100, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1509527724, 0, 0, 1, '100.00', '0.00', 0, 0),
(620, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '59800.00', '0.00', '59800.00', '0.00', '件', 0, 0, 10, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1510454817, 0, 0, 1, '0.00', '0.00', 0, 0),
(621, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '53800.00', '0.00', '76800.00', '0.00', '件', 0, 1, 19, 1, 0, 0, 0, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1510987629, 0, 0, 1, '0.00', '0.00', 0, 0),
(622, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '100.00', '0.00', '100.00', '0.00', '件', 0, 120, 42, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1511406713, 0, 0, 1, '0.00', '0.00', 0, 0),
(623, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '26.80', '0.00', '35.00', '10.00', '件', 1, 0, 888, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1512550686, 1, 0, 1, '1.00', '0.00', 0, 0),
(624, 1, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '9.00', '0.00', '7.00', '0.00', '件', 3, 4, 6, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1512809441, 0, 0, 0, '0.00', '0.00', 0, 0),
(625, 9, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '12', '10.00', '0.00', '9.00', '1.00', '件', 0, 1000, 100, 1, 0, 0, 0, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1516937133, 0, 0, 0, '0.00', '0.00', 0, 0),
(626, 9, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '30.00', '0.00', '45.00', '0.00', '件', 0, 10, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1517022365, 0, 0, 0, '0.00', '0.00', 0, 0),
(627, 9, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '10.00', '0.00', '10.00', '10.00', '件', 0, 10, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1517023523, 0, 0, 0, '0.00', '0.00', 0, 0),
(628, 9, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '10.00', '0.00', '10.00', '10.00', '件', 10, 13, 7, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1517023619, 0, 0, 0, '0.00', '0.00', 0, 0),
(629, 9, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '20.00', '0.00', '20.00', '20.00', '件', 20, 20, 20, 1, 1, 0, 1, 0, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1517023813, 0, 0, 0, '0.00', '0.00', 0, 0),
(630, 9, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["/public/uploads/store/product/s_5abc6bb41c285.jpg","/public/uploads/store/product/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '10.00', '0.00', '10.00', '10.00', '件', 10, 10, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1517024368, 0, 0, 0, '0.00', '0.00', 0, 0),
(644, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '39.90', '0.00', '50.00', '0.00', '件', 10, 5, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521692304, 1, 0, 0, '40.00', '20.00', 0, 0),
(645, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '16.90', '0.00', '32.00', '0.00', '件', 10, 3, 2, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521692932, 1, 0, 0, '17.00', '10.00', 1, 0),
(646, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '18.80', '0.00', '35.00', '0.00', '件', 10, 1, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521693141, 1, 0, 0, '19.00', '2.00', 1, 0),
(647, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '29.90', '0.00', '42.00', '0.00', '件', 10, 9, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521693600, 1, 0, 0, '30.00', '2.00', 1, 0),
(648, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '10', '69.90', '0.00', '90.00', '0.00', '件', 9, 0, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521693807, 1, 0, 0, '70.00', '8.00', 1, 0),
(634, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '11', '29.90', '0.00', '50.00', '0.00', '件', 10, 0, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521687375, 1, 0, 0, '30.00', '20.00', 0, 0),
(635, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '13', '19.90', '0.00', '45.00', '0.00', '件', 10, 0, 1, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521687755, 1, 0, 0, '20.00', '2.00', 0, 0),
(636, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '14', '29.90', '0.00', '55.00', '0.00', '件', 10, 1, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521688126, 1, 0, 0, '30.00', '2.00', 0, 0),
(637, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '2', '12.90', '0.00', '20.00', '0.00', '件', 10, 0, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521688563, 1, 0, 0, '13.00', '2.00', 0, 0),
(638, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '3', '16.90', '0.00', '25.00', '0.00', '件', 10, 0, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521688856, 1, 0, 0, '17.00', '20.00', 0, 0),
(639, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '4', '19.90', '0.00', '50.00', '0.00', '件', 10, 0, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521689318, 1, 0, 0, '10.00', '2.00', 0, 0),
(640, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '5', '49.90', '0.00', '80.00', '0.00', '件', 10, 2, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521689997, 1, 0, 0, '50.00', '3.00', 0, 0),
(641, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '6', '9.90', '0.00', '20.00', '6.00', '件', 10, 8, 880, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521691012, 0, 0, 0, '10.00', '10.00', 0, 0),
(642, 0, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '8', '21.90', '0.00', '45.00', '0.00', '件', 10, 5, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521691295, 1, 0, 0, '22.00', '200.00', 0, 0),
(643, 0, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', 'crmeb电商系统,客户关系管理电商系统,微信商城开发,小程序商城,公众号商城开发,西安微信开发,西安微信商城定制,微商城定制开发,西安小程序开发', '9', '21.90', '0.00', '44.00', '0.00', '件', 10, 3, 888, 0, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930324214.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930343654.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930373617.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/15222930397582.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/system/uploads/editor/20180329/1522293042602.jpg" style=""/></p><p><br/></p>', 1521691849, 1, 0, 0, '30.00', '3.00', 0, 0),
(649, 0, '/public/uploads/store/product/s_5add9a80cb2d4.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg"]', '手机', '高能', '手机', '7', '1200.00', '0.00', '2200.00', '8.00', '件', 0, 109, 9, 0, 1, 1, 1, 1, '', 1524472495, 0, 0, 0, '50.00', '898.00', 1, 0),
(650, 0, '/public/uploads/store/product/s_5ae048a5cae97.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae048a812870.jpg"]', '啊娃娃', '打发打发', '速度速度', '12', '88.00', '0.00', '100.00', '8.00', '件', 0, 50, 20, 0, 1, 1, 1, 0, '', 1524648142, 0, 0, 0, '40.00', '50.00', 1, 0),
(651, 0, '/public/uploads/store/product/s_5ae607a06b2b8.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae607a463e96.jpg"]', '森田', '面膜', '', '17', '0.01', '0.00', '108.00', '0.00', '件', 1, 6, 4, 1, 1, 1, 1, 1, '', 1525024720, 1, 0, 0, '90.00', '50.00', 1, 0),
(652, 0, '/public/uploads/store/product/s_5ae6715187623.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae67185dadfc.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b024baf7568c.png"]', 'sexylook', '面膜', '', '17', '99.00', '0.00', '108.00', '0.00', '件', 2, 99, 99, 1, 1, 1, 1, 1, '', 1525051783, 1, 0, 0, '90.00', '30.00', 0, 0),
(653, 0, '/public/uploads/store/product/s_5ae6741f0fa0f.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae6742400c83.jpg"]', '的说法都是', '微热山qiu', '', '18', '99.00', '0.00', '120.00', '0.00', '件', 0, 0, 0, 1, 0, 0, 0, 0, '', 1525052469, 0, 0, 0, '99.00', '88.00', 0, 1),
(654, 0, '/public/uploads/store/product/s_5b0d2655375e7.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d266e82393.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b0d267b009fc.jpg"]', 'Apple iPhone X (A1865) 256GB 深空灰色 移动联通电信4G手机', '数量有限，先到先得', '苹果 iphonex', '2', '8799.00', '0.00', '9288.00', '0.00', '件', 1, 12, 2, 1, 1, 1, 1, 1, '', 1527588515, 1, 1, 0, '0.00', '7299.00', 0, 0),
(655, 0, '/public/uploads/store/product/20180601/s_5b10e8d5cb715.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5b0d2707d3dd2.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b0d270b66957.jpg","\\/public\\/uploads\\/store\\/product\\/s_5b0e288b36b9c.jpg","\\/public\\/uploads\\/store\\/product\\/20180531\\/s_5b0fe5018eb5b.jpg","\\/public\\/uploads\\/store\\/product\\/20180601\\/s_5b10e8de50ef2.jpg"]', 'Apple iPhone X (A1865) 256GB 深空灰色 移动联通电信4G手机', '数量有限，先到先得', '苹果', '2,3', '8799.00', '0.00', '9288.00', '0.00', '件', 1, 2, 10, 1, 1, 1, 1, 1, '<p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10ad56777b1.jpg"/></p>', 1527588650, 1, 0, 0, '0.00', '7888.00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr`
--

CREATE TABLE IF NOT EXISTS `eb_store_product_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

--
-- 转存表中的数据 `eb_store_product_attr`
--

INSERT INTO `eb_store_product_attr` (`product_id`, `attr_name`, `attr_values`) VALUES
(622, '颜色', '白,黑,红,蓝'),
(553, '颜色', '红色,蓝色,黑色'),
(553, '车型', 'XXL,XL,L,M'),
(553, '吨位', '1,2,3,4'),
(624, '份量', '大,中,小'),
(624, '颜色', '黑,白'),
(603, '颜色', '红色,蓝色'),
(549, '规格', '原味 200g*2盒,酸奶味 200g*2盒,冰淇淋味 200g*2盒'),
(550, '规格', '香米奶茶 400g,咸味 400g,甜味400g'),
(548, '规格', '原味 118g*4袋,酸奶味 118g*4袋'),
(547, '规格', '原味 118g*4袋,酸奶味 118g*4袋'),
(551, '规格', '原味 120g*4盒,酸奶味 120g*4盒,酸奶味 2盒+原味 2盒'),
(546, '规格', '原味 288g*2盒,柠檬味 288g*2盒,高钙型 288g*2盒,无糖型 288g*2盒'),
(623, '规格', '200g'),
(606, '规格', '288g*2瓶'),
(545, '规格', '奶条+奶豆+奶块+奶贝+奶酥片'),
(631, '规格', '奶疙瘩+奶片'),
(633, '规格', '108g*3'),
(634, '规格', '奶油味218g*2'),
(635, '规格', '500g'),
(636, '规格', '300g*2'),
(637, '规格', '95g'),
(638, '规格', '500g'),
(639, '规格', '一级红枣250g*2'),
(640, '规格', '巧克力红枣2罐+什锦枣2盒'),
(642, '规格', '500g'),
(643, '规格', '120g'),
(644, '规格', '360g'),
(645, '规格', '100g*2'),
(646, '规格', '360g'),
(647, '规格', '218g*2'),
(648, '规格', '218*5'),
(632, '规格', '200*2,300*2'),
(632, '颜色', '红色,蓝色'),
(655, '颜色', '白色,黑色,红色,黄色'),
(653, '颜色', '白色,黑色'),
(653, '包装', '大,小');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr_result`
--

CREATE TABLE IF NOT EXISTS `eb_store_product_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

--
-- 转存表中的数据 `eb_store_product_attr_result`
--

INSERT INTO `eb_store_product_attr_result` (`product_id`, `result`, `change_time`) VALUES
(553, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u7ea2\\u8272","\\u84dd\\u8272","\\u9ed1\\u8272"]},{"value":"\\u8f66\\u578b","detailValue":"","detail":["XXL","XL","L","M"]},{"value":"\\u5428\\u4f4d","detailValue":"","detail":["1","2","3","4"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u7ea2\\u8272","\\u8f66\\u578b":"XXL","\\u5428\\u4f4d":"1"},"price":3300,"sales":600,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u84dd\\u8272","\\u8f66\\u578b":"XL","\\u5428\\u4f4d":"2"},"price":2000,"sales":500,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u9ed1\\u8272","\\u8f66\\u578b":"L","\\u5428\\u4f4d":"3"},"price":200,"sales":200,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"}]}', 1513569296),
(603, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u7ea2\\u8272","\\u84dd\\u8272"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u7ea2\\u8272"},"price":111,"sales":11,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u84dd\\u8272"},"price":122,"sales":12,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"}]}', 1515651633),
(622, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u767d","\\u9ed1","\\u7ea2","\\u84dd"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u84dd"},"price":12,"sales":101,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u9ed1"},"price":13,"sales":103,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u7ea2"},"price":13,"sales":104,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"},{"detail":{"\\u989c\\u8272":"\\u84dd"},"price":15,"sales":105,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"}]}', 1513073411),
(549, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u539f\\u5473 200g*2\\u76d2","\\u9178\\u5976\\u5473 200g*2\\u76d2","\\u51b0\\u6dc7\\u6dcb\\u5473 200g*2\\u76d2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u539f\\u5473 200g*2\\u76d2"},"price":28.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa89453bcc76.jpg"},{"detail":{"\\u89c4\\u683c":"\\u9178\\u5976\\u5473 200g*2\\u76d2"},"price":28.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa89453bcc76.jpg"},{"detail":{"\\u89c4\\u683c":"\\u51b0\\u6dc7\\u6dcb\\u5473 200g*2\\u76d2"},"price":28.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa89453bcc76.jpg"}]}', 1521551902),
(624, '{"attr":[{"value":"\\u4efd\\u91cf","detailValue":"","detail":["\\u5927","\\u4e2d","\\u5c0f"]},{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u9ed1","\\u767d"]}],"value":[{"detail":{"\\u4efd\\u91cf":"\\u5927","\\u989c\\u8272":"\\u9ed1"},"price":10,"sales":50,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5a2f74cb22268.jpg"}]}', 1514172990),
(550, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u9999\\u7c73\\u5976\\u8336 400g","\\u54b8\\u5473 400g","\\u751c\\u5473400g"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u9999\\u7c73\\u5976\\u8336 400g"},"price":26.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ef97a40a4.png"},{"detail":{"\\u89c4\\u683c":"\\u54b8\\u5473 400g"},"price":26.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ef97a40a4.png"},{"detail":{"\\u89c4\\u683c":"\\u751c\\u5473400g"},"price":26.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ef97a40a4.png"}]}', 1521552059),
(548, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u539f\\u5473 118g*4\\u888b","\\u9178\\u5976\\u5473 118g*4\\u888b"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u539f\\u5473 118g*4\\u888b"},"price":46.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa88d24af07e.png"},{"detail":{"\\u89c4\\u683c":"\\u9178\\u5976\\u5473 118g*4\\u888b"},"price":46.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa88d24af07e.png"}]}', 1521552087),
(547, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u539f\\u5473 118g*4\\u888b","\\u9178\\u5976\\u5473 118g*4\\u888b"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u539f\\u5473 118g*4\\u888b"},"price":46.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa88f8a90884.png"},{"detail":{"\\u89c4\\u683c":"\\u9178\\u5976\\u5473 118g*4\\u888b"},"price":46.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa88f8a90884.png"}]}', 1521551980),
(551, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u539f\\u5473 120g*4\\u76d2","\\u9178\\u5976\\u5473 120g*4\\u76d2","\\u9178\\u5976\\u5473 2\\u76d2+\\u539f\\u5473 2\\u76d2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u539f\\u5473 120g*4\\u76d2"},"price":78.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ec2b72a4e.png"},{"detail":{"\\u89c4\\u683c":"\\u9178\\u5976\\u5473 120g*4\\u76d2"},"price":78.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ec2b72a4e.png"},{"detail":{"\\u89c4\\u683c":"\\u9178\\u5976\\u5473 2\\u76d2+\\u539f\\u5473 2\\u76d2"},"price":78.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7ec2b72a4e.png"}]}', 1521552126),
(546, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u539f\\u5473 288g*2\\u76d2","\\u67e0\\u6aac\\u5473 288g*2\\u76d2","\\u9ad8\\u9499\\u578b 288g*2\\u76d2","\\u65e0\\u7cd6\\u578b 288g*2\\u76d2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u539f\\u5473 288g*2\\u76d2"},"price":72.8,"sales":188,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa892a80ec64.jpg"},{"detail":{"\\u89c4\\u683c":"\\u67e0\\u6aac\\u5473 288g*2\\u76d2"},"price":72.8,"sales":188,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa892a80ec64.jpg"},{"detail":{"\\u89c4\\u683c":"\\u9ad8\\u9499\\u578b 288g*2\\u76d2"},"price":72.8,"sales":188,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa892a80ec64.jpg"},{"detail":{"\\u89c4\\u683c":"\\u65e0\\u7cd6\\u578b 288g*2\\u76d2"},"price":72.8,"sales":188,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa892a80ec64.jpg"}]}', 1521551945),
(623, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["200g"]}],"value":[{"detail":{"\\u89c4\\u683c":"200g"},"price":26.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7e4dbd903c.png"}]}', 1521552186),
(606, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":[" 288g*2\\u74f6"]}],"value":[{"detail":{"\\u89c4\\u683c":" 288g*2\\u74f6"},"price":19.8,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa7e9051c500.png"}]}', 1521552230),
(545, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u5976\\u6761+\\u5976\\u8c46+\\u5976\\u5757+\\u5976\\u8d1d+\\u5976\\u9165\\u7247"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u5976\\u6761+\\u5976\\u8c46+\\u5976\\u5757+\\u5976\\u8d1d+\\u5976\\u9165\\u7247"},"price":128.88,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aa8ebc85e2d2.jpg"}]}', 1521552346),
(631, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u5976\\u7599\\u7629+\\u5976\\u7247"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u5976\\u7599\\u7629+\\u5976\\u7247"},"price":128.88,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5aaa29e9b5693.jpg"}]}', 1521551680),
(632, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u7ea2\\u8272","\\u84dd\\u8272"]},{"value":"\\u89c4\\u683c","detailValue":"","detail":["200*2","300*2"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u7ea2\\u8272","\\u89c4\\u683c":"200*2"},"price":21,"sales":100,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg"},{"detail":{"\\u989c\\u8272":"\\u84dd\\u8272","\\u89c4\\u683c":"200*2"},"price":20,"sales":100,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg"},{"detail":{"\\u989c\\u8272":"\\u7ea2\\u8272","\\u89c4\\u683c":"300*2"},"price":28,"sales":100,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg"},{"detail":{"\\u989c\\u8272":"\\u84dd\\u8272","\\u89c4\\u683c":"300*2"},"price":24,"sales":100,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5abc58e8ad6db.jpg"}]}', 1526865236),
(633, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["108g*3"]}],"value":[{"detail":{"\\u89c4\\u683c":"108g*3"},"price":23.99,"sales":88,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab22d2359382.jpg"}]}', 1521626597),
(634, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u5976\\u6cb9\\u5473218g*2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u5976\\u6cb9\\u5473218g*2"},"price":29.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab31aee5619c.jpg"}]}', 1521687469),
(635, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["500g"]}],"value":[{"detail":{"\\u89c4\\u683c":"500g"},"price":19.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab31c623e4ab.jpg"}]}', 1521687787),
(636, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["300g*2"]}],"value":[{"detail":{"\\u89c4\\u683c":"300g*2"},"price":29.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab31e09e1b62.jpg"}]}', 1521688206),
(637, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["95g"]}],"value":[{"detail":{"\\u89c4\\u683c":"95g"},"price":12.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab31f467d04d.png"}]}', 1521688619),
(638, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["500g"]}],"value":[{"detail":{"\\u89c4\\u683c":"500g"},"price":16.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab320e9578ca.jpg"}]}', 1521688889),
(639, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u4e00\\u7ea7\\u7ea2\\u67a3250g*2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u4e00\\u7ea7\\u7ea2\\u67a3250g*2"},"price":19.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab3226f32485.jpg"}]}', 1521689434),
(640, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["\\u5de7\\u514b\\u529b\\u7ea2\\u67a32\\u7f50+\\u4ec0\\u9526\\u67a32\\u76d2"]}],"value":[{"detail":{"\\u89c4\\u683c":"\\u5de7\\u514b\\u529b\\u7ea2\\u67a32\\u7f50+\\u4ec0\\u9526\\u67a32\\u76d2"},"price":49.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab324581b3a9.jpg"}]}', 1521690178),
(642, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["500g"]}],"value":[{"detail":{"\\u89c4\\u683c":"500g"},"price":0.01,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab32a3ed009e.jpg"}]}', 1523526324),
(643, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["120g"]}],"value":[{"detail":{"\\u89c4\\u683c":"120g"},"price":21.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab32c9da2d70.jpg"}]}', 1521691914),
(644, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["360g"]}],"value":[{"detail":{"\\u89c4\\u683c":"360g"},"price":39.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab32e4707fb3.jpg"}]}', 1521692348),
(645, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["100g*2"]}],"value":[{"detail":{"\\u89c4\\u683c":"100g*2"},"price":16.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab330b57ba7d.jpg"}]}', 1521692978),
(646, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["360g"]}],"value":[{"detail":{"\\u89c4\\u683c":"360g"},"price":18.8,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab331a965a38.jpg"}]}', 1521693258),
(647, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["218g*2"]}],"value":[{"detail":{"\\u89c4\\u683c":"218g*2"},"price":29.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab3336774eac.png"}]}', 1521693631),
(648, '{"attr":[{"value":"\\u89c4\\u683c","detailValue":"","detail":["218*5"]}],"value":[{"detail":{"\\u89c4\\u683c":"218*5"},"price":69.9,"sales":888,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ab33409e83c8.png"}]}', 1521693845),
(655, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","detail":["\\u767d\\u8272","\\u9ed1\\u8272","\\u7ea2\\u8272","\\u9ec4\\u8272"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u767d\\u8272"},"price":1,"sales":1,"pic":"\\/public\\/uploads\\/store\\/product\\/20180601\\/s_5b10e8d5cb715.jpg"},{"detail":{"\\u989c\\u8272":"\\u9ed1\\u8272"},"price":1,"sales":1,"pic":"\\/public\\/uploads\\/store\\/product\\/20180601\\/s_5b10e8d5cb715.jpg"}]}', 1527937866),
(653, '{"attr":[{"value":"\\u989c\\u8272","detailValue":"","attrHidden":true,"detail":["\\u767d\\u8272","\\u9ed1\\u8272"]},{"value":"\\u5305\\u88c5","detailValue":"","attrHidden":true,"detail":["\\u5927","\\u5c0f"]}],"value":[{"detail":{"\\u989c\\u8272":"\\u767d\\u8272","\\u5305\\u88c5":"\\u5927"},"price":10,"sales":10,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg"},{"detail":{"\\u989c\\u8272":"\\u767d\\u8272","\\u5305\\u88c5":"\\u5c0f"},"price":10,"sales":10,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg"},{"detail":{"\\u989c\\u8272":"\\u9ed1\\u8272","\\u5305\\u88c5":"\\u5927"},"price":10,"sales":10,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg"},{"detail":{"\\u989c\\u8272":"\\u9ed1\\u8272","\\u5305\\u88c5":"\\u5c0f"},"price":10,"sales":10,"pic":"\\/public\\/uploads\\/store\\/product\\/s_5ae6741f0fa0f.jpg"}]}', 1528108143);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_attr_value`
--

CREATE TABLE IF NOT EXISTS `eb_store_product_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

--
-- 转存表中的数据 `eb_store_product_attr_value`
--

INSERT INTO `eb_store_product_attr_value` (`product_id`, `suk`, `stock`, `sales`, `price`, `image`, `unique`, `cost`) VALUES
(553, '3,L,黑色', 200, 0, '200.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '0d4e3774', '0.00'),
(549, '原味 200g*2盒', 87, 1, '28.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '077933b6', '0.00'),
(553, '2,XL,蓝色', 500, 0, '2000.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '1dd937b0', '0.00'),
(603, '蓝色', 12, 0, '122.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '1f5c3104', '0.00'),
(622, '蓝', 91, 14, '15.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '24b506b4', '0.00'),
(624, '大,黑', 50, 0, '10.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '3627a553', '0.00'),
(603, '红色', 11, 0, '111.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7adf9fcb', '0.00'),
(622, '红', 18, 86, '0.01', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '8c7fb882', '0.00'),
(622, '黑', 83, 20, '13.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'ac4f42fd', '0.00'),
(553, '1,XXL,红色', 600, 0, '3300.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'b115e717', '0.00'),
(550, '香米奶茶 400g', 87, 1, '26.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'a5766ae5', '0.00'),
(550, '咸味 400g', 88, 0, '26.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'a8e69c92', '0.00'),
(550, '甜味400g', 88, 0, '26.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'eff1c003', '0.00'),
(549, '冰淇淋味 200g*2盒', 88, 0, '28.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '5325e8a8', '0.00'),
(549, '酸奶味 200g*2盒', 88, 0, '28.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '80a65ce8', '0.00'),
(548, '原味 118g*4袋', 88, 0, '46.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7becdd34', '0.00'),
(548, '酸奶味 118g*4袋', 87, 1, '46.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '545192c8', '0.00'),
(547, '原味 118g*4袋', 83, 5, '46.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '53e942e0', '0.00'),
(547, '酸奶味 118g*4袋', 82, 6, '46.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '4dfafbdb', '0.00'),
(551, '酸奶味 120g*4盒', 88, 0, '78.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'f0bfcb53', '0.00'),
(551, '酸奶味 2盒+原味 2盒', 88, 0, '78.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '059a4142', '0.00'),
(546, '原味 288g*2盒', 188, 0, '72.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7159d72b', '0.00'),
(546, '柠檬味 288g*2盒', 188, 0, '72.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '905f401b', '0.00'),
(546, '高钙型 288g*2盒', 188, 0, '72.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '4da2380c', '0.00'),
(623, '200g', 88, 0, '26.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'aafe844b', '0.00'),
(606, '288g*2瓶', 88, 0, '19.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'e0f3816d', '0.00'),
(551, '原味 120g*4盒', 88, 0, '78.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '59643e7b', '0.00'),
(546, '无糖型 288g*2盒', 188, 0, '72.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7abe8986', '0.00'),
(631, '奶疙瘩+奶片', 69, 19, '128.88', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '39276c29', '0.00'),
(545, '奶条+奶豆+奶块+奶贝+奶酥片', 88, 0, '128.88', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '5b96c5da', '0.00'),
(632, '200*2,红色', 96, 4, '21.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'bffac593', '0.00'),
(633, '108g*3', 85, 3, '23.99', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '1dfed450', '0.00'),
(634, '奶油味218g*2', 888, 0, '29.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7e371832', '0.00'),
(635, '500g', 888, 0, '19.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'bddf324a', '0.00'),
(636, '300g*2', 887, 1, '29.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'a0a97a84', '0.00'),
(637, '95g', 888, 0, '12.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '38a95c2d', '0.00'),
(638, '500g', 888, 0, '16.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'ab757ca3', '0.00'),
(639, '一级红枣250g*2', 888, 0, '19.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '305e970e', '0.00'),
(640, '巧克力红枣2罐+什锦枣2盒', 886, 2, '49.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'e9a2eed1', '0.00'),
(642, '500g', 888, 0, '0.01', '/public/uploads/store/product/s_5ab32a3ed009e.jpg', '7925521b', '0.00'),
(643, '120g', 885, 3, '21.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '98281fd2', '0.00'),
(644, '360g', 883, 5, '39.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '84be7907', '0.00'),
(645, '100g*2', 0, 3, '16.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'f1f691fe', '0.00'),
(646, '360g', 887, 1, '18.80', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '902f0058', '0.00'),
(647, '218g*2', 879, 9, '29.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '7b84f5e2', '0.00'),
(648, '218*5', 888, 0, '69.90', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '68615e1c', '0.00'),
(632, '200*2,蓝色', 93, 7, '20.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'e131ce4b', '0.00'),
(632, '300*2,红色', 95, 5, '28.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'a94481f2', '0.00'),
(632, '300*2,蓝色', 98, 2, '24.00', '/public/uploads/store/product/s_5abc58e8ad6db.jpg', 'eaf3af83', '0.00'),
(655, '黑色', 1, 0, '1.00', '/public/uploads/store/product/20180601/s_5b10e8d5cb715.jpg', '69385a78', '0.00'),
(655, '白色', 1, 0, '1.00', '/public/uploads/store/product/20180601/s_5b10e8d5cb715.jpg', 'a1cac7d1', '0.00'),
(653, '大,白色', 10, 0, '10.00', '/public/uploads/store/product/s_5ae6741f0fa0f.jpg', 'd6d11c8b', '0.00'),
(653, '小,白色', 10, 0, '10.00', '/public/uploads/store/product/s_5ae6741f0fa0f.jpg', '3e057157', '0.00'),
(653, '大,黑色', 10, 0, '10.00', '/public/uploads/store/product/s_5ae6741f0fa0f.jpg', 'cd961bd0', '0.00'),
(653, '小,黑色', 10, 0, '10.00', '/public/uploads/store/product/s_5ae6741f0fa0f.jpg', 'bafb226a', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_relation`
--

CREATE TABLE IF NOT EXISTS `eb_store_product_relation` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品点赞和收藏表';

--
-- 转存表中的数据 `eb_store_product_relation`
--

INSERT INTO `eb_store_product_relation` (`uid`, `product_id`, `type`, `category`, `add_time`) VALUES
(102, 631, 'like', 'product', 1524024440),
(102, 573, 'collect', 'product', 1527045969),
(1, 15, 'like', 'product_seckill', 1524639131),
(1, 17, 'like', 'product_seckill', 1524648202),
(1, 18, 'like', 'product_seckill', 1524650068),
(102, 545, 'collect', 'product', 1527045334),
(100, 632, 'collect', 'product', 1524580541),
(100, 547, 'collect', 'product', 1524580541),
(111, 632, 'collect', 'product', 1527643962),
(113, 547, 'like', 'product', 1528182562);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_product_reply`
--

CREATE TABLE IF NOT EXISTS `eb_store_product_reply` (
  `id` int(11) NOT NULL COMMENT '评论ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `oid` int(11) NOT NULL COMMENT '订单ID',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `pics` text NOT NULL COMMENT '评论图片',
  `add_time` int(11) NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) NOT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int(11) NOT NULL COMMENT '管理员回复时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复'
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='评论表';

--
-- 转存表中的数据 `eb_store_product_reply`
--

INSERT INTO `eb_store_product_reply` (`id`, `uid`, `oid`, `unique`, `product_id`, `reply_type`, `product_score`, `service_score`, `comment`, `pics`, `add_time`, `merchant_reply_content`, `merchant_reply_time`, `is_del`, `is_reply`) VALUES
(172, 1, 445, '502019da1b4030b6e25c850b281eb933', 633, 'product', 1, 1, '受打击处理速度进垃圾堆', '[]', 1524111874, '沙发上的1', 1526545832, 0, 2),
(173, 1, 445, '575414f0c3549fc71f6577d1b7073aa9', 647, 'product', 1, 1, '水电费如果', '[]', 1524124220, '测试回复消息', 1527039991, 0, 2),
(174, 1, 446, '502019da1b4030b6e25c850b281eb933', 633, 'product', 1, 1, '受打击处理速度进垃圾堆', '[]', 1524111874, '', 0, 1, 0),
(175, 1, 447, '502019da1b4030b6e25c850b281eb933', 633, 'product', 1, 1, '受打击处理速度进垃圾堆', '[]', 1524111874, '', 0, 0, 0),
(176, 1, 460, '0f9417c85b3f43c016f6b028bcc2a26e', 649, 'product', 3, 4, '我曹', '[]', 1524809698, '', 0, 0, 0),
(178, 101, 472, 'f6d8324d3c24415612e3cd28e730f26e', 16, 'product', 2, 3, 'wqwqwq', '["https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ecac2ef.jpg,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ecc6924.jpg,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ecdfbb9.jpg,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ed04601.png,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ed1ed2a.png,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ed37b2b.png,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ed50b93.png,https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea0ed689a1.png"]', 1526636786, '', 0, 0, 0),
(179, 101, 474, '4c0005a12f31e403c6f56853bc4ff8a3', 18, 'product', 2, 4, 'qwqw', '["https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5afea9afec13e.jpg"]', 1526639026, '', 0, 0, 0),
(180, 101, 455, '617b15f6d372abc138ece752cec46561', 649, 'product', 2, 3, 'asasd', '[""]', 1526640023, '', 0, 0, 0),
(181, 101, 486, 'efbfa88b9d922923c2a7ce0cf9397513', 547, 'product', 4, 3, 'qawqwqw', '["https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5affc28cb6b16.jpg"]', 1526710931, '', 0, 0, 0),
(182, 101, 485, 'f1019d97165d57b45497e3ceacb57c37', 632, 'product', 3, 2, 'qwqwqw', '["https:\\/\\/qipei.9gt.net\\/public\\/uploads\\/store\\/comment\\/5affc2de80daa.jpg"]', 1526711015, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_seckill`
--

CREATE TABLE IF NOT EXISTS `eb_store_seckill` (
  `id` int(10) unsigned NOT NULL COMMENT '商品秒杀产品表id',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text NOT NULL COMMENT '内容',
  `start_time` varchar(128) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(128) NOT NULL COMMENT '结束时间',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int(11) unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='商品秒杀产品表';

--
-- 转存表中的数据 `eb_store_seckill`
--

INSERT INTO `eb_store_seckill` (`id`, `product_id`, `image`, `images`, `title`, `info`, `price`, `cost`, `ot_price`, `give_integral`, `sort`, `stock`, `sales`, `unit_name`, `postage`, `description`, `start_time`, `stop_time`, `add_time`, `status`, `is_postage`, `is_hot`, `is_del`, `num`, `is_show`) VALUES
(12, 647, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '18.00', '0.00', '29.90', '30.00', 10, 888, 9, '个', '8.00', '<p><span style="color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: center; white-space: normal; background-color: rgb(249, 249, 249);">客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售</span></p>', '1524499200', '1524758400', '1524014837', 1, 0, 1, 1, 1, 1),
(13, 646, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '0.00', '0.00', '18.80', '19.00', 10, 888, 0, '个', '0.00', '', '1524240000', '1524844800', '1524014917', 1, 1, 0, 1, 10, 1),
(11, 648, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '0.00', '0.00', '69.90', '70.00', 9, 888, 0, '个', '0.00', '', '1523894400', '1524240000', '1523959581', 1, 1, 1, 1, 111, 1),
(14, 645, '/public/uploads/store/product/s_5abc69eba3f43.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统1', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '0.00', '0.00', '16.90', '17.00', 10, 888, 0, '测试', '0.00', '', '1524240000', '1524844800', '1524045190', 1, 1, 0, 1, 0, 1),
(18, 649, '/public/uploads/store/product/s_5add9a80cb2d4.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5add9a830900c.jpg","\\/public\\/uploads\\/store\\/seckill\\/20180531\\/s_5b0fe7bcc27c8.jpg","\\/public\\/uploads\\/store\\/seckill\\/20180601\\/s_5b10a1906adb1.jpg","\\/public\\/uploads\\/store\\/seckill\\/20180601\\/s_5b10a21389f6b.jpg"]', '手机', '高能', '900.00', '777.00', '1200.00', '50.00', 0, 9, 109, '个', '8.00', '<p><span style="color: rgb(103, 106, 108); font-family: &quot;open sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: center; white-space: normal; background-color: rgb(249, 249, 249);">集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。</span></p>', '1526227200', '1527696000', '1524650014', 1, 0, 0, 0, 1, 1),
(16, 648, '/public/uploads/store/product/s_5abc58e8ad6db.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5abc6bb41c285.jpg","\\/public\\/uploads\\/store\\/product\\/s_5abc6bb5dc633.jpg"]', 'crmeb电商系统', '集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序，实现会员关系管理、数据分析，精准营销的电子商务管理系统。可满足企业零售、批发、分销等各种业务需求。', '0.00', '8.00', '69.90', '70.00', 9, 888, 0, '个', '0.00', '', '1524585600', '1524844800', '1524646664', 1, 1, 1, 0, 1, 1),
(17, 650, '/public/uploads/store/product/s_5ae048a5cae97.jpg', '["\\/public\\/uploads\\/store\\/product\\/s_5ae048a812870.jpg","\\/public\\/uploads\\/store\\/seckill\\/20180601\\/s_5b10a4407a3ff.jpg"]', '啊娃娃', '打发打发', '77.00', '0.00', '88.00', '40.00', 0, 20, 50, '个', '8.00', '撒大大<p></p>', '1526227200', '1527436800', '1524648180', 1, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_service`
--

CREATE TABLE IF NOT EXISTS `eb_store_service` (
  `id` int(11) NOT NULL COMMENT '客服id',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `uid` int(11) NOT NULL COMMENT '客服uid',
  `avatar` varchar(250) NOT NULL COMMENT '客服头像',
  `nickname` varchar(50) NOT NULL COMMENT '代理名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0隐藏1显示'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_service_log`
--

CREATE TABLE IF NOT EXISTS `eb_store_service_log` (
  `id` int(11) NOT NULL COMMENT '客服用户对话记录表ID',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `msn` text NOT NULL COMMENT '消息内容',
  `uid` int(11) NOT NULL COMMENT '发送人uid',
  `to_uid` int(11) NOT NULL COMMENT '接收人uid',
  `add_time` int(11) NOT NULL COMMENT '发送时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '是否已读（0：否；1：是；）',
  `remind` tinyint(1) DEFAULT NULL COMMENT '是否提醒过'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服用户对话记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_store_visit`
--

CREATE TABLE IF NOT EXISTS `eb_store_visit` (
  `id` int(10) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `cate_id` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) DEFAULT NULL COMMENT '产品类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `count` int(11) DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=1103 DEFAULT CHARSET=utf8 COMMENT='产品浏览分析表';

--
-- 转存表中的数据 `eb_store_visit`
--

INSERT INTO `eb_store_visit` (`id`, `product_id`, `cate_id`, `type`, `uid`, `count`, `content`, `add_time`) VALUES
(3, 635, 13, 'viwe', 1, 856, '', 1524621731),
(2, 636, 14, 'viwe', 1, 40, '', 1524035147),
(4, 642, 8, 'viwe', 1, 1, '', 1524036008),
(5, 634, 11, 'viwe', 1, 1, '', 1524036013),
(6, 637, 2, 'viwe', 1, 2, '', 1524803233),
(7, 640, 5, 'viwe', 1, 3, '', 1524621569),
(8, 641, 6, 'viwe', 1, 12, '', 1524550272),
(9, 644, 5, 'viwe', 1, 9, '', 1524580546),
(10, 645, 6, 'viwe', 1, 12, '', 1524580539),
(11, 0, 0, 'search', 0, 1, '电商系统', 1524037222),
(12, 0, 0, 'search', 0, 1, '0', 1524467837),
(13, 629, 3, 'viwe', 1, 1, '', 1524467839),
(14, 0, 0, 'search', 0, 1, '0', 1524467929),
(15, 0, 0, 'search', 0, 1, '0', 1524470623),
(16, 0, 0, 'search', 0, 1, '0', 1524470630),
(17, 0, 0, 'search', 0, 1, '0', 1524471464),
(18, 0, 0, 'search', 0, 1, '0', 1524471467),
(19, 0, 0, 'search', 0, 1, '0', 1524471470),
(20, 646, 8, 'viwe', 1, 4, '', 1524901959),
(21, 0, 0, 'search', 0, 1, '0', 1524472506),
(22, 0, 0, 'search', 0, 1, '0', 1524472512),
(23, 0, 0, 'search', 0, 1, '0', 1524472518),
(24, 0, 0, 'search', 0, 1, '0', 1524472519),
(25, 649, 7, 'viwe', 1, 12, '', 1524621586),
(26, 631, 4, 'viwe', 1, 18, '', 1524543235),
(27, 0, 0, 'search', 0, 1, '0', 1524474586),
(28, 0, 0, 'search', 0, 1, '0', 1524474591),
(29, 0, 0, 'search', 0, 1, '0', 1524475059),
(30, 643, 9, 'viwe', 1, 1, '', 1524475062),
(31, 0, 0, 'search', 0, 1, '0', 1524477772),
(32, 0, 0, 'search', 0, 1, '0', 1524477774),
(33, 639, 4, 'viwe', 1, 1, '', 1524530697),
(34, 0, 0, 'search', 0, 1, '0', 1524540745),
(35, 0, 0, 'search', 0, 1, '0', 1524540745),
(36, 0, 0, 'search', 0, 1, '0', 1524540747),
(37, 0, 0, 'search', 0, 1, '0', 1524540748),
(38, 0, 0, 'search', 0, 1, '0', 1524540750),
(39, 0, 0, 'search', 0, 1, '0', 1524540755),
(40, 0, 0, 'search', 0, 1, '0', 1524540756),
(41, 0, 0, 'search', 0, 1, '0', 1524540764),
(42, 0, 0, 'search', 0, 1, '0', 1524540765),
(43, 0, 0, 'search', 0, 1, '0', 1524541453),
(44, 0, 0, 'search', 0, 1, '0', 1524541455),
(45, 0, 0, 'search', 0, 1, '0', 1524542805),
(46, 0, 0, 'search', 0, 1, '0', 1524543304),
(47, 0, 0, 'search', 0, 1, '0', 1524580537),
(48, 0, 0, 'search', 0, 1, '0', 1524580544),
(49, 0, 0, 'search', 0, 1, '0', 1524618931),
(50, 0, 0, 'search', 0, 1, '0', 1524618941),
(51, 0, 0, 'search', 0, 1, '0', 1524618943),
(52, 0, 0, 'search', 0, 1, '0', 1524618994),
(53, 0, 0, 'search', 0, 1, '0', 1524618996),
(54, 0, 0, 'search', 0, 1, '0', 1524619026),
(55, 0, 0, 'search', 0, 1, '0', 1524619028),
(56, 0, 0, 'search', 0, 1, '0', 1524620106),
(57, 0, 0, 'search', 0, 1, '0', 1524620369),
(58, 0, 0, 'search', 0, 1, '0', 1524620373),
(59, 563, 10, 'viwe', 1, 3, '', 1524803227),
(60, 633, 15, 'viwe', 1, 1, '', 1524621568),
(61, 0, 0, 'search', 0, 1, '0', 1524621583),
(62, 0, 0, 'search', 0, 1, '0', 1524621585),
(63, 0, 0, 'search', 0, 1, '0', 1524647449),
(64, 0, 0, 'search', 0, 1, '0', 1524802915),
(65, 0, 0, 'search', 0, 1, '', 1524803064),
(66, 0, 0, 'search', 0, 1, '', 1524803095),
(67, 0, 0, 'search', 0, 1, '', 1524803202),
(68, 0, 0, 'search', 0, 1, '', 1524803206),
(69, 0, 0, 'search', 0, 1, '', 1524803216),
(70, 0, 0, 'search', 0, 1, '', 1524803221),
(71, 647, 9, 'viwe', 1, 1, '', 1524803222),
(72, 0, 0, 'search', 0, 1, '', 1524803225),
(73, 0, 0, 'search', 0, 1, '', 1524803226),
(74, 0, 0, 'search', 0, 1, '', 1524803229),
(75, 0, 2, 'search', 0, 1, '', 1524803232),
(76, 0, 0, 'search', 0, 1, '', 1524803236),
(77, 0, 0, 'search', 0, 1, '', 1524809388),
(78, 0, 0, 'search', 0, 1, '', 1524809447),
(79, 0, 0, 'search', 0, 1, '', 1524816774),
(80, 0, 0, 'search', 0, 1, '', 1524879216),
(81, 0, 0, 'search', 0, 1, '', 1525243265),
(82, 0, 0, 'search', 0, 1, '', 1525262028),
(83, 632, 14, 'viwe', 1, 9, '', 1527512023),
(84, 0, 0, 'search', 0, 1, '', 1526283299),
(85, 0, 0, 'search', 0, 1, '', 1526283556),
(86, 0, 0, 'search', 0, 1, '', 1526284123),
(87, 0, 0, 'search', 0, 1, '', 1526284309),
(88, 0, 0, 'search', 0, 1, '', 1526284635),
(89, 0, 0, 'search', 0, 1, '', 1526284744),
(90, 0, 0, 'search', 0, 1, '', 1526284852),
(91, 0, 0, 'search', 0, 1, '', 1526285030),
(92, 0, 0, 'search', 0, 1, '', 1526285068),
(93, 0, 0, 'search', 0, 1, '', 1526285159),
(94, 0, 0, 'search', 0, 1, '', 1526285183),
(95, 0, 0, 'search', 0, 1, '', 1526285281),
(96, 0, 0, 'search', 0, 1, '', 1526285311),
(97, 0, 0, 'search', 0, 1, '', 1526285342),
(98, 0, 0, 'search', 0, 1, '', 1526285768),
(99, 0, 0, 'search', 0, 1, '', 1526286404),
(100, 0, 0, 'search', 0, 1, '', 1526286862),
(101, 0, 0, 'search', 0, 1, '', 1526287472),
(102, 0, 0, 'search', 0, 1, '', 1526287511),
(103, 0, 0, 'search', 0, 1, '', 1526287787),
(104, 0, 0, 'search', 0, 1, '', 1526287992),
(105, 0, 0, 'search', 0, 1, '', 1526288136),
(106, 0, 0, 'search', 0, 1, '', 1526288433),
(107, 0, 0, 'search', 0, 1, '', 1526288514),
(108, 0, 0, 'search', 0, 1, '', 1526288660),
(109, 0, 0, 'search', 0, 1, '', 1526288717),
(110, 0, 0, 'search', 0, 1, '', 1526288781),
(111, 0, 0, 'search', 0, 1, '', 1526288816),
(112, 0, 0, 'search', 0, 1, '', 1526288834),
(113, 0, 0, 'search', 0, 1, '', 1526288857),
(114, 0, 0, 'search', 0, 1, '', 1526288884),
(115, 0, 0, 'search', 0, 1, '', 1526288924),
(116, 0, 0, 'search', 0, 1, '', 1526288972),
(117, 0, 0, 'search', 0, 1, '', 1526289293),
(118, 0, 0, 'search', 0, 1, '', 1526289316),
(119, 0, 0, 'search', 0, 1, '', 1526289400),
(120, 0, 0, 'search', 0, 1, '', 1526289444),
(121, 0, 0, 'search', 0, 1, '', 1526289522),
(122, 0, 0, 'search', 0, 1, '', 1526289559),
(123, 0, 0, 'search', 0, 1, '', 1526289617),
(124, 0, 0, 'search', 0, 1, '', 1526290143),
(125, 0, 0, 'search', 0, 1, '', 1526292258),
(126, 0, 0, 'search', 0, 1, '', 1526292434),
(127, 0, 0, 'search', 0, 1, '', 1526292448),
(128, 0, 0, 'search', 0, 1, '', 1526292690),
(129, 0, 0, 'search', 0, 1, '', 1526293625),
(130, 0, 0, 'search', 0, 1, '', 1526293657),
(131, 0, 0, 'search', 0, 1, '', 1526293700),
(132, 632, 14, 'viwe', 100, 262, '', 1527561800),
(133, 0, 0, 'search', 0, 1, '', 1526351732),
(134, 0, 0, 'search', 0, 1, '', 1526353183),
(135, 0, 0, 'search', 0, 1, '', 1526353340),
(136, 0, 0, 'search', 0, 1, '', 1526353415),
(137, 0, 0, 'search', 0, 1, '', 1526353681),
(138, 0, 0, 'search', 0, 1, '', 1526353710),
(139, 0, 0, 'search', 0, 1, '', 1526353746),
(140, 0, 0, 'search', 0, 1, '', 1526353771),
(141, 0, 0, 'search', 0, 1, '', 1526353803),
(142, 0, 0, 'search', 0, 1, '', 1526353841),
(143, 0, 0, 'search', 0, 1, '', 1526353935),
(144, 0, 0, 'search', 0, 1, '', 1526353962),
(145, 0, 0, 'search', 0, 1, '', 1526354113),
(146, 0, 0, 'search', 0, 1, '', 1526354145),
(147, 0, 0, 'search', 0, 1, '', 1526354259),
(148, 0, 0, 'search', 0, 1, '', 1526354264),
(149, 0, 0, 'search', 0, 1, '', 1526354287),
(150, 0, 0, 'search', 0, 1, '', 1526354291),
(151, 0, 0, 'search', 0, 1, '', 1526354360),
(152, 0, 0, 'search', 0, 1, '', 1526354363),
(153, 0, 0, 'search', 0, 1, '', 1526354376),
(154, 0, 0, 'search', 0, 1, '', 1526354399),
(155, 0, 0, 'search', 0, 1, '', 1526354427),
(156, 0, 0, 'search', 0, 1, '', 1526354433),
(157, 0, 0, 'search', 0, 1, '', 1526354452),
(158, 0, 0, 'search', 0, 1, '', 1526355068),
(159, 0, 0, 'search', 0, 1, '', 1526355072),
(160, 0, 0, 'search', 0, 1, '', 1526355078),
(161, 0, 0, 'search', 0, 1, '', 1526357681),
(162, 0, 0, 'search', 0, 1, '', 1526357691),
(163, 0, 0, 'search', 0, 1, '', 1526357739),
(164, 0, 0, 'search', 0, 1, '', 1526357744),
(165, 0, 0, 'search', 0, 1, '', 1526357748),
(166, 0, 0, 'search', 0, 1, '', 1526357917),
(167, 0, 0, 'search', 0, 1, '', 1526358066),
(168, 0, 0, 'search', 0, 1, '', 1526358284),
(169, 0, 0, 'search', 0, 1, '', 1526358288),
(170, 0, 0, 'search', 0, 1, '', 1526358404),
(171, 0, 0, 'search', 0, 1, '', 1526358411),
(172, 0, 0, 'search', 0, 1, '', 1526358455),
(173, 0, 0, 'search', 0, 1, '', 1526358459),
(174, 0, 0, 'search', 0, 1, '', 1526358523),
(175, 0, 0, 'search', 0, 1, '', 1526358527),
(176, 0, 0, 'search', 0, 1, '', 1526358535),
(177, 0, 0, 'search', 0, 1, '', 1526358581),
(178, 0, 0, 'search', 0, 1, '', 1526358613),
(179, 0, 0, 'search', 0, 1, '', 1526358640),
(180, 0, 0, 'search', 0, 1, '', 1526358645),
(181, 0, 0, 'search', 0, 1, '', 1526358780),
(182, 0, 0, 'search', 0, 1, '', 1526364015),
(183, 0, 0, 'search', 0, 1, '', 1526364074),
(184, 0, 0, 'search', 0, 1, '', 1526364716),
(185, 0, 0, 'search', 0, 1, '', 1526364725),
(186, 0, 0, 'search', 0, 1, '', 1526364750),
(187, 0, 0, 'search', 0, 1, '', 1526364849),
(188, 0, 0, 'search', 0, 1, '', 1526364853),
(189, 0, 0, 'search', 0, 1, '', 1526364864),
(190, 0, 0, 'search', 0, 1, '', 1526364947),
(191, 0, 0, 'search', 0, 1, '', 1526364951),
(192, 0, 0, 'search', 0, 1, '', 1526364978),
(193, 0, 0, 'search', 0, 1, '', 1526364983),
(194, 0, 0, 'search', 0, 1, '', 1526365011),
(195, 625, 12, 'viwe', 1, 1, '', 1526365277),
(196, 0, 0, 'search', 0, 1, '', 1526365314),
(197, 0, 0, 'search', 0, 1, '', 1526365319),
(198, 0, 0, 'search', 0, 1, '', 1526365488),
(199, 0, 0, 'search', 0, 1, '', 1526365494),
(200, 0, 0, 'search', 0, 1, '', 1526365505),
(201, 0, 0, 'search', 0, 1, '', 1526365573),
(202, 0, 0, 'search', 0, 1, '', 1526365700),
(203, 0, 0, 'search', 0, 1, '', 1526366750),
(204, 0, 0, 'search', 0, 1, '', 1526366768),
(205, 0, 0, 'search', 0, 1, '', 1526366771),
(206, 0, 0, 'search', 0, 1, '', 1526366821),
(207, 0, 2, 'search', 0, 1, '', 1526366826),
(208, 0, 0, 'search', 0, 1, '', 1526366923),
(209, 0, 0, 'search', 0, 1, '', 1526367070),
(210, 0, 4, 'search', 0, 1, '', 1526367073),
(211, 0, 3, 'search', 0, 1, '', 1526367077),
(212, 0, 2, 'search', 0, 1, '', 1526367080),
(213, 0, 0, 'search', 0, 1, '', 1526367184),
(214, 0, 3, 'search', 0, 1, '', 1526367187),
(215, 0, 0, 'search', 0, 1, '', 1526367634),
(216, 0, 0, 'search', 0, 1, '', 1526367817),
(217, 0, 3, 'search', 0, 1, '', 1526367837),
(218, 0, 0, 'search', 0, 1, '', 1526367872),
(219, 0, 3, 'search', 0, 1, '', 1526367876),
(220, 0, 0, 'search', 0, 1, '', 1526367893),
(221, 0, 3, 'search', 0, 1, '', 1526367901),
(222, 0, 0, 'search', 0, 1, '', 1526368113),
(223, 0, 3, 'search', 0, 1, '', 1526368117),
(224, 0, 2, 'search', 0, 1, '', 1526368144),
(225, 0, 0, 'search', 0, 1, '', 1526368712),
(226, 0, 3, 'search', 0, 1, '', 1526368718),
(227, 0, 0, 'search', 0, 1, '', 1526368799),
(228, 0, 0, 'search', 0, 1, '', 1526368845),
(229, 0, 2, 'search', 0, 1, '', 1526368849),
(230, 0, 0, 'search', 0, 1, '', 1526368866),
(231, 0, 4, 'search', 0, 1, '', 1526368873),
(232, 0, 0, 'search', 0, 1, '', 1526370074),
(233, 0, 2, 'search', 0, 1, '', 1526370082),
(234, 0, 0, 'search', 0, 1, '', 1526370085),
(235, 0, 0, 'search', 0, 1, '', 1526370088),
(236, 0, 0, 'search', 0, 1, '', 1526370090),
(237, 0, 0, 'search', 0, 1, '', 1526370293),
(238, 0, 0, 'search', 0, 1, '', 1526370296),
(239, 0, 0, 'search', 0, 1, '', 1526370298),
(240, 0, 0, 'search', 0, 1, '', 1526370299),
(241, 0, 3, 'search', 0, 1, '', 1526370305),
(242, 0, 3, 'search', 0, 1, '', 1526370308),
(243, 0, 3, 'search', 0, 1, '', 1526370309),
(244, 0, 3, 'search', 0, 1, '', 1526370309),
(245, 0, 3, 'search', 0, 1, '', 1526370311),
(246, 0, 3, 'search', 0, 1, '', 1526370322),
(247, 0, 0, 'search', 0, 1, '', 1526370357),
(248, 0, 0, 'search', 0, 1, '', 1526370362),
(249, 0, 0, 'search', 0, 1, '', 1526370448),
(250, 0, 0, 'search', 0, 1, '', 1526370449),
(251, 0, 0, 'search', 0, 1, '', 1526370453),
(252, 0, 0, 'search', 0, 1, '', 1526370489),
(253, 0, 0, 'search', 0, 1, '', 1526370494),
(254, 0, 3, 'search', 0, 1, '', 1526370515),
(255, 0, 3, 'search', 0, 1, '', 1526370519),
(256, 0, 3, 'search', 0, 1, '', 1526370528),
(257, 0, 3, 'search', 0, 1, '', 1526370550),
(258, 0, 3, 'search', 0, 1, '', 1526370555),
(259, 0, 3, 'search', 0, 1, '', 1526370557),
(260, 0, 3, 'search', 0, 1, '', 1526370571),
(261, 0, 3, 'search', 0, 1, '', 1526370573),
(262, 0, 0, 'search', 0, 1, '', 1526370655),
(263, 0, 3, 'search', 0, 1, '', 1526370660),
(264, 0, 3, 'search', 0, 1, '', 1526370668),
(265, 0, 3, 'search', 0, 1, '', 1526370677),
(266, 0, 3, 'search', 0, 1, '', 1526370691),
(267, 0, 3, 'search', 0, 1, '', 1526370698),
(268, 0, 3, 'search', 0, 1, '', 1526370702),
(269, 0, 3, 'search', 0, 1, '', 1526370749),
(270, 0, 3, 'search', 0, 1, '', 1526370752),
(271, 0, 3, 'search', 0, 1, '', 1526370761),
(272, 0, 0, 'search', 0, 1, '', 1526370785),
(273, 0, 3, 'search', 0, 1, '', 1526370789),
(274, 0, 3, 'search', 0, 1, '', 1526370790),
(275, 0, 3, 'search', 0, 1, '', 1526370793),
(276, 0, 0, 'search', 0, 1, '', 1526370826),
(277, 0, 0, 'search', 0, 1, '', 1526371141),
(278, 0, 0, 'search', 0, 1, '', 1526372058),
(279, 0, 0, 'search', 0, 1, '', 1526372085),
(280, 0, 0, 'search', 0, 1, '', 1526372185),
(281, 0, 0, 'search', 0, 1, '', 1526372242),
(282, 0, 0, 'search', 0, 1, '', 1526372299),
(283, 0, 0, 'search', 0, 1, '', 1526372389),
(284, 0, 0, 'search', 0, 1, '', 1526372458),
(285, 0, 0, 'search', 0, 1, '', 1526372495),
(286, 0, 0, 'search', 0, 1, '', 1526372521),
(287, 0, 0, 'search', 0, 1, '', 1526372569),
(288, 0, 0, 'search', 0, 1, '', 1526372682),
(289, 0, 0, 'search', 0, 1, '', 1526373041),
(290, 0, 0, 'search', 0, 1, '', 1526373078),
(291, 0, 0, 'search', 0, 1, '', 1526373123),
(292, 0, 0, 'search', 0, 1, '', 1526373370),
(293, 0, 2, 'search', 0, 1, '', 1526373535),
(294, 0, 0, 'search', 0, 1, '', 1526373575),
(295, 0, 0, 'search', 0, 1, '', 1526373586),
(296, 0, 0, 'search', 0, 1, '', 1526373720),
(297, 552, 11, 'viwe', 100, 28, '', 1527211782),
(298, 547, 3, 'viwe', 100, 7, '', 1527152011),
(299, 0, 0, 'search', 0, 1, '', 1526374775),
(300, 0, 0, 'search', 0, 1, '', 1526374883),
(301, 0, 0, 'search', 0, 1, '', 1526375143),
(302, 0, 0, 'search', 0, 1, '', 1526375176),
(303, 0, 0, 'search', 0, 1, '', 1526375217),
(304, 0, 0, 'search', 0, 1, '', 1526375241),
(305, 0, 0, 'search', 0, 1, '', 1526375275),
(306, 0, 0, 'search', 0, 1, '', 1526375279),
(307, 0, 0, 'search', 0, 1, '', 1526375321),
(308, 0, 0, 'search', 0, 1, '', 1526375539),
(309, 0, 0, 'search', 0, 1, '', 1526375560),
(310, 0, 0, 'search', 0, 1, '', 1526375572),
(311, 0, 0, 'search', 0, 1, '', 1526375605),
(312, 0, 0, 'search', 0, 1, '', 1526375629),
(313, 0, 0, 'search', 0, 1, '', 1526375656),
(314, 0, 0, 'search', 0, 1, '', 1526375680),
(315, 0, 0, 'search', 0, 1, '', 1526375780),
(316, 0, 0, 'search', 0, 1, '', 1526375806),
(317, 0, 0, 'search', 0, 1, '', 1526375930),
(318, 0, 0, 'search', 0, 1, '', 1526375940),
(319, 0, 0, 'search', 0, 1, '', 1526376338),
(320, 0, 0, 'search', 0, 1, '', 1526376398),
(321, 0, 0, 'search', 0, 1, '', 1526376417),
(322, 0, 0, 'search', 0, 1, '', 1526376432),
(323, 0, 0, 'search', 0, 1, '', 1526376451),
(324, 0, 0, 'search', 0, 1, '', 1526376524),
(325, 0, 0, 'search', 0, 1, '', 1526376537),
(326, 0, 0, 'search', 0, 1, '', 1526376625),
(327, 0, 0, 'search', 0, 1, '', 1526376765),
(328, 0, 0, 'search', 0, 1, '', 1526377043),
(329, 0, 0, 'search', 0, 1, '', 1526377242),
(330, 0, 0, 'search', 0, 1, '', 1526377268),
(331, 0, 0, 'search', 0, 1, '', 1526377293),
(332, 0, 0, 'search', 0, 1, '', 1526377619),
(333, 0, 0, 'search', 0, 1, '', 1526377662),
(334, 0, 0, 'search', 0, 1, '', 1526377811),
(335, 0, 0, 'search', 0, 1, '', 1526377812),
(336, 0, 0, 'search', 0, 1, '', 1526377813),
(337, 0, 0, 'search', 0, 1, '', 1526377815),
(338, 0, 0, 'search', 0, 1, '', 1526377816),
(339, 0, 0, 'search', 0, 1, '', 1526377816),
(340, 0, 0, 'search', 0, 1, '', 1526377817),
(341, 0, 0, 'search', 0, 1, '', 1526377817),
(342, 0, 0, 'search', 0, 1, '', 1526377817),
(343, 0, 0, 'search', 0, 1, '', 1526377817),
(344, 0, 0, 'search', 0, 1, '', 1526377818),
(345, 0, 0, 'search', 0, 1, '', 1526377818),
(346, 0, 0, 'search', 0, 1, '', 1526377818),
(347, 0, 0, 'search', 0, 1, '', 1526377818),
(348, 0, 0, 'search', 0, 1, '', 1526377819),
(349, 0, 0, 'search', 0, 1, '', 1526377819),
(350, 0, 0, 'search', 0, 1, '', 1526377819),
(351, 0, 0, 'search', 0, 1, '', 1526377820),
(352, 0, 0, 'search', 0, 1, '', 1526377820),
(353, 0, 0, 'search', 0, 1, '', 1526377820),
(354, 0, 0, 'search', 0, 1, '', 1526377820),
(355, 0, 0, 'search', 0, 1, '', 1526377821),
(356, 0, 0, 'search', 0, 1, '', 1526377821),
(357, 0, 0, 'search', 0, 1, '', 1526377821),
(358, 0, 0, 'search', 0, 1, '', 1526377821),
(359, 0, 0, 'search', 0, 1, '', 1526377821),
(360, 0, 0, 'search', 0, 1, '', 1526377822),
(361, 0, 0, 'search', 0, 1, '', 1526377822),
(362, 0, 0, 'search', 0, 1, '', 1526377824),
(363, 0, 0, 'search', 0, 1, '', 1526377824),
(364, 0, 0, 'search', 0, 1, '', 1526377824),
(365, 0, 0, 'search', 0, 1, '', 1526377824),
(366, 0, 0, 'search', 0, 1, '', 1526377824),
(367, 0, 0, 'search', 0, 1, '', 1526377824),
(368, 0, 0, 'search', 0, 1, '', 1526377824),
(369, 0, 0, 'search', 0, 1, '', 1526377824),
(370, 0, 0, 'search', 0, 1, '', 1526377824),
(371, 0, 0, 'search', 0, 1, '', 1526377824),
(372, 0, 0, 'search', 0, 1, '', 1526377824),
(373, 0, 0, 'search', 0, 1, '', 1526377825),
(374, 0, 0, 'search', 0, 1, '', 1526377825),
(375, 0, 0, 'search', 0, 1, '', 1526377825),
(376, 0, 0, 'search', 0, 1, '', 1526377825),
(377, 0, 0, 'search', 0, 1, '', 1526377825),
(378, 0, 0, 'search', 0, 1, '', 1526377826),
(379, 0, 0, 'search', 0, 1, '', 1526377827),
(380, 0, 0, 'search', 0, 1, '', 1526377827),
(381, 0, 0, 'search', 0, 1, '', 1526377827),
(382, 0, 0, 'search', 0, 1, '', 1526377827),
(383, 0, 0, 'search', 0, 1, '', 1526377828),
(384, 0, 0, 'search', 0, 1, '', 1526377828),
(385, 0, 0, 'search', 0, 1, '', 1526377828),
(386, 0, 0, 'search', 0, 1, '', 1526377828),
(387, 0, 0, 'search', 0, 1, '', 1526377831),
(388, 0, 0, 'search', 0, 1, '', 1526377831),
(389, 0, 0, 'search', 0, 1, '', 1526377831),
(390, 0, 0, 'search', 0, 1, '', 1526377831),
(391, 0, 0, 'search', 0, 1, '', 1526377831),
(392, 0, 0, 'search', 0, 1, '', 1526377831),
(393, 0, 0, 'search', 0, 1, '', 1526377831),
(394, 0, 0, 'search', 0, 1, '', 1526377831),
(395, 0, 0, 'search', 0, 1, '', 1526377831),
(396, 0, 0, 'search', 0, 1, '', 1526377831),
(397, 0, 0, 'search', 0, 1, '', 1526377831),
(398, 0, 0, 'search', 0, 1, '', 1526377831),
(399, 0, 0, 'search', 0, 1, '', 1526377832),
(400, 0, 0, 'search', 0, 1, '', 1526377832),
(401, 0, 0, 'search', 0, 1, '', 1526377834),
(402, 0, 0, 'search', 0, 1, '', 1526377834),
(403, 0, 0, 'search', 0, 1, '', 1526377839),
(404, 0, 0, 'search', 0, 1, '', 1526377839),
(405, 0, 0, 'search', 0, 1, '', 1526377841),
(406, 0, 0, 'search', 0, 1, '', 1526377841),
(407, 0, 0, 'search', 0, 1, '', 1526377843),
(408, 0, 0, 'search', 0, 1, '', 1526377864),
(409, 0, 0, 'search', 0, 1, '', 1526377869),
(410, 0, 0, 'search', 0, 1, '', 1526377870),
(411, 0, 0, 'search', 0, 1, '', 1526377871),
(412, 0, 0, 'search', 0, 1, '', 1526377871),
(413, 0, 0, 'search', 0, 1, '', 1526377871),
(414, 0, 0, 'search', 0, 1, '', 1526377871),
(415, 0, 0, 'search', 0, 1, '', 1526377872),
(416, 0, 0, 'search', 0, 1, '', 1526377872),
(417, 0, 0, 'search', 0, 1, '', 1526377873),
(418, 0, 0, 'search', 0, 1, '', 1526377873),
(419, 0, 0, 'search', 0, 1, '', 1526377873),
(420, 0, 0, 'search', 0, 1, '', 1526377873),
(421, 0, 0, 'search', 0, 1, '', 1526377873),
(422, 0, 0, 'search', 0, 1, '', 1526377874),
(423, 0, 0, 'search', 0, 1, '', 1526377874),
(424, 0, 0, 'search', 0, 1, '', 1526377874),
(425, 0, 0, 'search', 0, 1, '', 1526377874),
(426, 0, 0, 'search', 0, 1, '', 1526377874),
(427, 0, 0, 'search', 0, 1, '', 1526377874),
(428, 0, 0, 'search', 0, 1, '', 1526377875),
(429, 0, 0, 'search', 0, 1, '', 1526377875),
(430, 0, 0, 'search', 0, 1, '', 1526377875),
(431, 0, 0, 'search', 0, 1, '', 1526377875),
(432, 0, 0, 'search', 0, 1, '', 1526377876),
(433, 0, 0, 'search', 0, 1, '', 1526377877),
(434, 0, 0, 'search', 0, 1, '', 1526377877),
(435, 0, 0, 'search', 0, 1, '', 1526377877),
(436, 0, 0, 'search', 0, 1, '', 1526377877),
(437, 0, 0, 'search', 0, 1, '', 1526377877),
(438, 0, 2, 'search', 0, 1, '', 1526377885),
(439, 0, 5, 'search', 0, 1, '', 1526377892),
(440, 0, 5, 'search', 0, 1, '', 1526377899),
(441, 0, 0, 'search', 0, 1, '0', 1526377937),
(442, 0, 0, 'search', 0, 1, '0', 1526377944),
(443, 0, 0, 'search', 0, 1, '0', 1526377944),
(444, 0, 0, 'search', 0, 1, '0', 1526377945),
(445, 0, 0, 'search', 0, 1, '0', 1526377945),
(446, 0, 0, 'search', 0, 1, '0', 1526377947),
(447, 0, 0, 'search', 0, 1, '0', 1526377948),
(448, 0, 0, 'search', 0, 1, '0', 1526377948),
(449, 0, 0, 'search', 0, 1, '0', 1526377949),
(450, 0, 0, 'search', 0, 1, '0', 1526377949),
(451, 0, 0, 'search', 0, 1, '0', 1526377950),
(452, 0, 0, 'search', 0, 1, '0', 1526377951),
(453, 0, 0, 'search', 0, 1, '0', 1526377951),
(454, 0, 0, 'search', 0, 1, '0', 1526377952),
(455, 0, 0, 'search', 0, 1, '0', 1526377952),
(456, 0, 0, 'search', 0, 1, '0', 1526377952),
(457, 0, 0, 'search', 0, 1, '0', 1526377953),
(458, 0, 0, 'search', 0, 1, '0', 1526377954),
(459, 0, 0, 'search', 0, 1, '0', 1526377954),
(460, 0, 0, 'search', 0, 1, '0', 1526377955),
(461, 0, 0, 'search', 0, 1, '0', 1526377956),
(462, 0, 0, 'search', 0, 1, '0', 1526377957),
(463, 0, 0, 'search', 0, 1, '0', 1526377957),
(464, 0, 0, 'search', 0, 1, '0', 1526377958),
(465, 0, 0, 'search', 0, 1, '0', 1526377963),
(466, 0, 0, 'search', 0, 1, '0', 1526377964),
(467, 0, 0, 'search', 0, 1, '0', 1526377964),
(468, 0, 0, 'search', 0, 1, '0', 1526377965),
(469, 0, 0, 'search', 0, 1, '0', 1526377965),
(470, 0, 0, 'search', 0, 1, '0', 1526377973),
(471, 0, 0, 'search', 0, 1, '0', 1526377973),
(472, 0, 0, 'search', 0, 1, '0', 1526377974),
(473, 0, 0, 'search', 0, 1, '0', 1526377974),
(474, 0, 0, 'search', 0, 1, '0', 1526377975),
(475, 0, 0, 'search', 0, 1, '0', 1526377975),
(476, 0, 0, 'search', 0, 1, '0', 1526377975),
(477, 0, 0, 'search', 0, 1, '0', 1526377975),
(478, 0, 0, 'search', 0, 1, '0', 1526377975),
(479, 0, 0, 'search', 0, 1, '0', 1526377976),
(480, 0, 0, 'search', 0, 1, '0', 1526377976),
(481, 0, 0, 'search', 0, 1, '0', 1526378054),
(482, 0, 0, 'search', 0, 1, '0', 1526378054),
(483, 0, 0, 'search', 0, 1, '0', 1526378055),
(484, 0, 0, 'search', 0, 1, '0', 1526378055),
(485, 0, 0, 'search', 0, 1, '0', 1526378056),
(486, 0, 0, 'search', 0, 1, '0', 1526378056),
(487, 0, 0, 'search', 0, 1, '0', 1526378056),
(488, 0, 0, 'search', 0, 1, '0', 1526378056),
(489, 0, 0, 'search', 0, 1, '0', 1526378056),
(490, 0, 0, 'search', 0, 1, '0', 1526378057),
(491, 0, 0, 'search', 0, 1, '0', 1526378057),
(492, 0, 0, 'search', 0, 1, '0', 1526378057),
(493, 0, 0, 'search', 0, 1, '0', 1526378057),
(494, 0, 0, 'search', 0, 1, '0', 1526378058),
(495, 0, 0, 'search', 0, 1, '0', 1526378058),
(496, 0, 0, 'search', 0, 1, '0', 1526378058),
(497, 0, 0, 'search', 0, 1, '0', 1526378058),
(498, 0, 0, 'search', 0, 1, '', 1526378243),
(499, 0, 0, 'search', 0, 1, '', 1526378257),
(500, 0, 0, 'search', 0, 1, '', 1526378274),
(501, 0, 0, 'search', 0, 1, '', 1526378275),
(502, 0, 0, 'search', 0, 1, '', 1526378277),
(503, 0, 0, 'search', 0, 1, '', 1526378278),
(504, 0, 0, 'search', 0, 1, '', 1526378278),
(505, 0, 0, 'search', 0, 1, '', 1526378278),
(506, 0, 0, 'search', 0, 1, '', 1526378279),
(507, 0, 0, 'search', 0, 1, '', 1526378279),
(508, 0, 0, 'search', 0, 1, '', 1526378279),
(509, 0, 0, 'search', 0, 1, '', 1526378303),
(510, 0, 0, 'search', 0, 1, '', 1526378308),
(511, 0, 0, 'search', 0, 1, '', 1526378309),
(512, 0, 0, 'search', 0, 1, '', 1526378310),
(513, 0, 0, 'search', 0, 1, '', 1526378310),
(514, 0, 0, 'search', 0, 1, '', 1526378310),
(515, 0, 0, 'search', 0, 1, '', 1526378311),
(516, 0, 0, 'search', 0, 1, '', 1526378311),
(517, 0, 0, 'search', 0, 1, '', 1526378311),
(518, 0, 0, 'search', 0, 1, '', 1526378311),
(519, 0, 0, 'search', 0, 1, '', 1526378312),
(520, 0, 0, 'search', 0, 1, '', 1526378312),
(521, 0, 0, 'search', 0, 1, '', 1526378424),
(522, 0, 0, 'search', 0, 1, '', 1526378431),
(523, 0, 0, 'search', 0, 1, '', 1526378432),
(524, 0, 0, 'search', 0, 1, '', 1526378433),
(525, 0, 0, 'search', 0, 1, '', 1526378458),
(526, 0, 0, 'search', 0, 1, '', 1526378460),
(527, 0, 0, 'search', 0, 1, '', 1526378462),
(528, 0, 0, 'search', 0, 1, '', 1526378464),
(529, 0, 0, 'search', 0, 1, '', 1526378466),
(530, 0, 0, 'search', 0, 1, '', 1526378481),
(531, 0, 0, 'search', 0, 1, '', 1526378484),
(532, 0, 0, 'search', 0, 1, '', 1526378485),
(533, 0, 0, 'search', 0, 1, '', 1526378486),
(534, 0, 0, 'search', 0, 1, '', 1526378487),
(535, 0, 0, 'search', 0, 1, '', 1526378497),
(536, 0, 0, 'search', 0, 1, '', 1526378499),
(537, 0, 0, 'search', 0, 1, '', 1526378523),
(538, 0, 0, 'search', 0, 1, '', 1526378532),
(539, 0, 0, 'search', 0, 1, '', 1526378540),
(540, 0, 0, 'search', 0, 1, '', 1526378582),
(541, 0, 0, 'search', 0, 1, '', 1526378598),
(542, 0, 0, 'search', 0, 1, '', 1526378608),
(543, 0, 0, 'search', 0, 1, '', 1526378641),
(544, 0, 0, 'search', 0, 1, '', 1526378643),
(545, 0, 0, 'search', 0, 1, '', 1526378645),
(546, 0, 0, 'search', 0, 1, '', 1526378895),
(547, 0, 0, 'search', 0, 1, '', 1526378897),
(548, 0, 0, 'search', 0, 1, '', 1526378898),
(549, 0, 0, 'search', 0, 1, '', 1526378899),
(550, 0, 0, 'search', 0, 1, '', 1526378900),
(551, 0, 0, 'search', 0, 1, '', 1526378955),
(552, 0, 0, 'search', 0, 1, '', 1526378957),
(553, 0, 0, 'search', 0, 1, '', 1526378958),
(554, 0, 0, 'search', 0, 1, '', 1526378961),
(555, 0, 0, 'search', 0, 1, '', 1526378966),
(556, 0, 0, 'search', 0, 1, '', 1526378969),
(557, 0, 0, 'search', 0, 1, '', 1526378970),
(558, 0, 0, 'search', 0, 1, '', 1526378971),
(559, 0, 0, 'search', 0, 1, '', 1526379006),
(560, 0, 0, 'search', 0, 1, '', 1526379010),
(561, 0, 0, 'search', 0, 1, '', 1526379011),
(562, 0, 0, 'search', 0, 1, '', 1526379014),
(563, 0, 0, 'search', 0, 1, '', 1526379016),
(564, 0, 0, 'search', 0, 1, '', 1526379037),
(565, 0, 0, 'search', 0, 1, '', 1526379039),
(566, 0, 0, 'search', 0, 1, '', 1526379040),
(567, 0, 0, 'search', 0, 1, '', 1526379041),
(568, 0, 0, 'search', 0, 1, '', 1526379042),
(569, 0, 0, 'search', 0, 1, '', 1526379047),
(570, 0, 0, 'search', 0, 1, '', 1526379077),
(571, 0, 0, 'search', 0, 1, '', 1526379079),
(572, 0, 0, 'search', 0, 1, '', 1526379080),
(573, 0, 0, 'search', 0, 1, '', 1526379080),
(574, 0, 0, 'search', 0, 1, '', 1526379081),
(575, 0, 0, 'search', 0, 1, '', 1526379083),
(576, 0, 0, 'search', 0, 1, '', 1526379083),
(577, 0, 0, 'search', 0, 1, '', 1526379085),
(578, 0, 0, 'search', 0, 1, '', 1526379311),
(579, 545, 13, 'viwe', 100, 2, '', 1526452039),
(580, 0, 0, 'search', 0, 1, '', 1526438972),
(581, 549, 6, 'viwe', 100, 2, '', 1526883214),
(582, 0, 0, 'search', 0, 1, '', 1526628575),
(583, 0, 0, 'search', 0, 1, '', 1526628583),
(584, 0, 0, 'search', 0, 1, '', 1526628584),
(585, 0, 0, 'search', 0, 1, '', 1526628585),
(586, 0, 0, 'search', 0, 1, '', 1526628588),
(587, 0, 0, 'search', 0, 1, '', 1526690789),
(588, 0, 2, 'search', 0, 1, '', 1526690794),
(589, 0, 2, 'search', 0, 1, '', 1526690797),
(590, 0, 2, 'search', 0, 1, '', 1526690798),
(591, 0, 2, 'search', 0, 1, '', 1526690798),
(592, 0, 2, 'search', 0, 1, '', 1526690799),
(593, 0, 2, 'search', 0, 1, '', 1526690801),
(594, 0, 2, 'search', 0, 1, '', 1526690801),
(595, 0, 2, 'search', 0, 1, '', 1526690803),
(596, 0, 0, 'search', 0, 1, '', 1526695501),
(597, 0, 0, 'search', 0, 1, '', 1526695612),
(598, 0, 0, 'search', 0, 1, '', 1526695824),
(599, 0, 0, 'search', 0, 1, '', 1526696161),
(600, 552, 11, 'viwe', 101, 17, '', 1526718584),
(601, 0, 0, 'search', 0, 1, '', 1526697199),
(602, 0, 0, 'search', 0, 1, '', 1526697441),
(603, 0, 0, 'search', 0, 1, '', 1526697509),
(604, 0, 4, 'search', 0, 1, '', 1526697602),
(605, 0, 5, 'search', 0, 1, '', 1526697605),
(606, 0, 2, 'search', 0, 1, '', 1526697608),
(607, 0, 3, 'search', 0, 1, '', 1526697636),
(608, 0, 4, 'search', 0, 1, '', 1526697638),
(609, 0, 4, 'search', 0, 1, '', 1526697657),
(610, 0, 4, 'search', 0, 1, '', 1526697659),
(611, 0, 4, 'search', 0, 1, '', 1526697660),
(612, 0, 4, 'search', 0, 1, '', 1526697660),
(613, 0, 4, 'search', 0, 1, '', 1526697661),
(614, 0, 4, 'search', 0, 1, '', 1526697663),
(615, 0, 4, 'search', 0, 1, '', 1526697664),
(616, 0, 4, 'search', 0, 1, '', 1526697664),
(617, 0, 4, 'search', 0, 1, '', 1526697665),
(618, 0, 4, 'search', 0, 1, '', 1526697667),
(619, 0, 4, 'search', 0, 1, '', 1526697668),
(620, 0, 4, 'search', 0, 1, '', 1526697669),
(621, 0, 4, 'search', 0, 1, '', 1526697670),
(622, 0, 4, 'search', 0, 1, '', 1526697671),
(623, 0, 3, 'search', 0, 1, '', 1526697674),
(624, 0, 0, 'search', 0, 1, '', 1526697770),
(625, 0, 5, 'search', 0, 1, '', 1526697842),
(626, 0, 2, 'search', 0, 1, '', 1526697862),
(627, 0, 3, 'search', 0, 1, '', 1526697865),
(628, 0, 4, 'search', 0, 1, '', 1526697867),
(629, 594, 4, 'viwe', 100, 1, '', 1526697889),
(630, 0, 6, 'search', 0, 1, '', 1526697925),
(631, 0, 5, 'search', 0, 1, '', 1526697927),
(632, 0, 0, 'search', 0, 1, '', 1526698047),
(633, 0, 0, 'search', 0, 1, '', 1526698351),
(634, 0, 0, 'search', 0, 1, '', 1526698582),
(635, 0, 0, 'search', 0, 1, '', 1526698687),
(636, 0, 0, 'search', 0, 1, '', 1526698742),
(637, 0, 0, 'search', 0, 1, '', 1526698828),
(638, 0, 0, 'search', 0, 1, '', 1526698860),
(639, 632, 14, 'viwe', 101, 37, '', 1526718594),
(640, 0, 0, 'search', 0, 1, '', 1526698938),
(641, 0, 0, 'search', 0, 1, '', 1526698961),
(642, 0, 0, 'search', 0, 1, '', 1526698962),
(643, 0, 0, 'search', 0, 1, '', 1526699067),
(644, 0, 0, 'search', 0, 1, '', 1526699069),
(645, 0, 0, 'search', 0, 1, '', 1526699072),
(646, 0, 0, 'search', 0, 1, '', 1526699075),
(647, 0, 0, 'search', 0, 1, '', 1526699077),
(648, 0, 0, 'search', 0, 1, '', 1526699105),
(649, 0, 0, 'search', 0, 1, '', 1526699135),
(650, 0, 0, 'search', 0, 1, '', 1526699136),
(651, 0, 0, 'search', 0, 1, '', 1526699138),
(652, 0, 0, 'search', 0, 1, '', 1526699140),
(653, 0, 0, 'search', 0, 1, '', 1526699235),
(654, 0, 0, 'search', 0, 1, '', 1526699236),
(655, 0, 0, 'search', 0, 1, '', 1526699240),
(656, 0, 0, 'search', 0, 1, '', 1526699242),
(657, 0, 0, 'search', 0, 1, '', 1526699245),
(658, 0, 0, 'search', 0, 1, '', 1526699246),
(659, 0, 0, 'search', 0, 1, '', 1526699274),
(660, 0, 0, 'search', 0, 1, '', 1526699275),
(661, 0, 0, 'search', 0, 1, '', 1526699278),
(662, 0, 0, 'search', 0, 1, '', 1526699280),
(663, 0, 0, 'search', 0, 1, '', 1526699282),
(664, 0, 0, 'search', 0, 1, '', 1526699314),
(665, 0, 0, 'search', 0, 1, '', 1526699316),
(666, 0, 0, 'search', 0, 1, '', 1526699318),
(667, 0, 0, 'search', 0, 1, '', 1526699321),
(668, 0, 0, 'search', 0, 1, '', 1526699323),
(669, 0, 0, 'search', 0, 1, '', 1526699325),
(670, 0, 0, 'search', 0, 1, '', 1526699328),
(671, 0, 0, 'search', 0, 1, '', 1526699331),
(672, 0, 0, 'search', 0, 1, '', 1526699336),
(673, 0, 2, 'search', 0, 1, '', 1526699363),
(674, 0, 3, 'search', 0, 1, '', 1526699377),
(675, 0, 4, 'search', 0, 1, '', 1526699384),
(676, 0, 5, 'search', 0, 1, '', 1526699389),
(677, 0, 6, 'search', 0, 1, '', 1526699394),
(678, 0, 6, 'search', 0, 1, '', 1526699403),
(679, 0, 4, 'search', 0, 1, '', 1526699409),
(680, 0, 0, 'search', 0, 1, '', 1526699784),
(681, 0, 0, 'search', 0, 1, '', 1526700648),
(682, 0, 0, 'search', 0, 1, '', 1526700651),
(683, 0, 0, 'search', 0, 1, '', 1526700653),
(684, 0, 0, 'search', 0, 1, '', 1526700724),
(685, 547, 3, 'viwe', 101, 5, '', 1526717925),
(686, 0, 0, 'search', 0, 1, '', 1526701032),
(687, 0, 0, 'search', 0, 1, '', 1526701728),
(688, 0, 0, 'search', 0, 1, '', 1526709536),
(689, 0, 0, 'search', 0, 1, '', 1526709554),
(690, 0, 0, 'search', 0, 1, '', 1526709557),
(691, 0, 2, 'search', 0, 1, '', 1526709565),
(692, 0, 2, 'search', 0, 1, '', 1526709678),
(693, 0, 0, 'search', 0, 1, '', 1526710100),
(694, 0, 0, 'search', 0, 1, '', 1526710102),
(695, 0, 0, 'search', 0, 1, '', 1526710103),
(696, 0, 0, 'search', 0, 1, '', 1526710105),
(697, 0, 2, 'search', 0, 1, '', 1526710108),
(698, 0, 2, 'search', 0, 1, '', 1526710110),
(699, 0, 0, 'search', 0, 1, '', 1526710417),
(700, 0, 0, 'search', 0, 1, '', 1526711180),
(701, 551, 9, 'viwe', 101, 1, '', 1526714942),
(702, 652, 17, 'viwe', 101, 1, '', 1526714949),
(703, 549, 6, 'viwe', 101, 1, '', 1526714954),
(704, 550, 8, 'viwe', 101, 1, '', 1526714959),
(705, 545, 13, 'viwe', 101, 2, '', 1527156206),
(706, 632, 14, 'viwe', 102, 55, '', 1527217247),
(707, 551, 9, 'viwe', 100, 2, '', 1527063684),
(708, 550, 8, 'viwe', 100, 1, '', 1526725402),
(709, 651, 17, 'viwe', 100, 2, '', 1527555681),
(710, 549, 6, 'viwe', 1, 3, '', 1526863919),
(711, 548, 5, 'viwe', 1, 5, '', 1527154157),
(712, 547, 3, 'viwe', 1, 7, '', 1528163051),
(713, 552, 11, 'viwe', 1, 1, '', 1526862881),
(714, 652, 17, 'viwe', 1, 1, '', 1526864008),
(715, 0, 0, 'search', 0, 1, '', 1526883941),
(716, 0, 0, 'search', 0, 1, '', 1526883943),
(717, 0, 2, 'search', 0, 1, '', 1526883952),
(718, 0, 2, 'search', 0, 1, '', 1526883954),
(719, 0, 2, 'search', 0, 1, '', 1526883963),
(720, 0, 0, 'search', 0, 1, '', 1526952880),
(721, 0, 0, 'search', 0, 1, '', 1526952882),
(722, 0, 0, 'search', 0, 1, '', 1526952887),
(723, 0, 0, 'search', 0, 1, '', 1526952892),
(724, 0, 0, 'search', 0, 1, '', 1526972779),
(725, 547, 3, 'viwe', 102, 12, '', 1527216981),
(726, 0, 0, 'search', 0, 1, '', 1527040422),
(727, 0, 0, 'search', 0, 1, '', 1527041122),
(728, 552, 11, 'viwe', 102, 13, '', 1527217015),
(729, 545, 13, 'viwe', 102, 5, '', 1527215828),
(730, 551, 9, 'viwe', 102, 7, '', 1527215832),
(731, 0, 0, 'search', 0, 1, '', 1527045088),
(732, 0, 0, 'search', 0, 1, '', 1527045128),
(733, 0, 0, 'search', 0, 1, '', 1527045150),
(734, 573, 8, 'viwe', 102, 5, '', 1527215810),
(735, 575, 10, 'viwe', 102, 2, '', 1527215771),
(736, 580, 2, 'viwe', 102, 3, '', 1527216599),
(737, 0, 0, 'search', 0, 1, '', 1527049311),
(738, 0, 0, 'search', 0, 1, '', 1527049629),
(739, 0, 0, 'search', 0, 1, '', 1527049670),
(740, 0, 0, 'search', 0, 1, '', 1527049781),
(741, 0, 0, 'search', 0, 1, '', 1527055482),
(742, 0, 0, 'search', 0, 1, '', 1527055574),
(743, 0, 0, 'search', 0, 1, '', 1527055683),
(744, 0, 0, 'search', 0, 1, '', 1527055702),
(745, 0, 0, 'search', 0, 1, '', 1527056108),
(746, 0, 0, 'search', 0, 1, '', 1527056260),
(747, 0, 0, 'search', 0, 1, '', 1527056262),
(748, 0, 0, 'search', 0, 1, '', 1527059547),
(749, 0, 0, 'search', 0, 1, '', 1527059604),
(750, 0, 0, 'search', 0, 1, '', 1527059988),
(751, 0, 0, 'search', 0, 1, '', 1527060050),
(752, 0, 0, 'search', 0, 1, '', 1527060105),
(753, 0, 0, 'search', 0, 1, '', 1527060250),
(754, 0, 0, 'search', 0, 1, '', 1527060379),
(755, 0, 0, 'search', 0, 1, '', 1527060587),
(756, 0, 0, 'search', 0, 1, '', 1527060720),
(757, 0, 0, 'search', 0, 1, '', 1527061049),
(758, 0, 0, 'search', 0, 1, '', 1527061157),
(759, 0, 0, 'search', 0, 1, '', 1527061311),
(760, 0, 0, 'search', 0, 1, '', 1527061563),
(761, 652, 17, 'viwe', 102, 1, '', 1527062184),
(762, 550, 8, 'viwe', 102, 1, '', 1527062205),
(763, 0, 0, 'search', 0, 1, '', 1527062307),
(764, 0, 0, 'search', 0, 1, '', 1527062367),
(765, 0, 0, 'search', 0, 1, '', 1527063062),
(766, 0, 0, 'search', 0, 1, '', 1527063064),
(767, 0, 0, 'search', 0, 1, '', 1527134277),
(768, 0, 0, 'search', 0, 1, '', 1527136945),
(769, 0, 0, 'search', 0, 1, '', 1527136950),
(770, 0, 0, 'search', 0, 1, '', 1527136951),
(771, 0, 0, 'search', 0, 1, '', 1527141405),
(772, 0, 0, 'search', 0, 1, '', 1527141407),
(773, 652, 17, 'viwe', 104, 1, '', 1527141512),
(774, 632, 14, 'viwe', 103, 1, '', 1527145896),
(775, 0, 0, 'search', 0, 1, '', 1527145899),
(776, 0, 0, 'search', 0, 1, '', 1527145901),
(777, 546, 2, 'viwe', 1, 3, '', 1527555289),
(778, 0, 0, 'search', 0, 1, '0', 1527155206),
(779, 0, 0, 'search', 0, 1, '0', 1527155216),
(780, 0, 0, 'search', 0, 1, '', 1527156175),
(781, 0, 0, 'search', 0, 1, '', 1527209710),
(782, 0, 0, 'search', 0, 1, '', 1527209746),
(783, 0, 2, 'search', 0, 1, '', 1527209756),
(784, 0, 2, 'search', 0, 1, '', 1527209785),
(785, 0, 2, 'search', 0, 1, '', 1527209795),
(786, 0, 2, 'search', 0, 1, '', 1527209796),
(787, 0, 2, 'search', 0, 1, '', 1527210358),
(788, 0, 2, 'search', 0, 1, '', 1527210362),
(789, 0, 0, 'search', 0, 1, '', 1527210838),
(790, 0, 0, 'search', 0, 1, '', 1527211123),
(791, 0, 0, 'search', 0, 1, '', 1527211728),
(792, 0, 0, 'search', 0, 1, '', 1527212114),
(793, 0, 0, 'search', 0, 1, '', 1527212181),
(794, 0, 0, 'search', 0, 1, '', 1527212216),
(795, 0, 0, 'search', 0, 1, '', 1527212286),
(796, 0, 0, 'search', 0, 1, '', 1527212377),
(797, 0, 0, 'search', 0, 1, '', 1527213218),
(798, 0, 0, 'search', 0, 1, '', 1527213368),
(799, 0, 0, 'search', 0, 1, '', 1527213372),
(800, 0, 0, 'search', 0, 1, '', 1527213395),
(801, 0, 0, 'search', 0, 1, '', 1527213542),
(802, 0, 0, 'search', 0, 1, '', 1527213910),
(803, 0, 0, 'search', 0, 1, '', 1527214221),
(804, 0, 0, 'search', 0, 1, '', 1527214333),
(805, 0, 0, 'search', 0, 1, '', 1527214830),
(806, 0, 0, 'search', 0, 1, '', 1527214881),
(807, 0, 0, 'search', 0, 1, '', 1527214886),
(808, 0, 0, 'search', 0, 1, '', 1527214889),
(809, 0, 0, 'search', 0, 1, '', 1527215087),
(810, 0, 0, 'search', 0, 1, '', 1527215258),
(811, 0, 0, 'search', 0, 1, '', 1527215357),
(812, 0, 0, 'search', 0, 1, '', 1527215447),
(813, 0, 0, 'search', 0, 1, '', 1527215513),
(814, 0, 0, 'search', 0, 1, '', 1527215514),
(815, 0, 0, 'search', 0, 1, '', 1527215524),
(816, 0, 0, 'search', 0, 1, '', 1527215601),
(817, 0, 0, 'search', 0, 1, '', 1527215723),
(818, 0, 0, 'search', 0, 1, '', 1527215724),
(819, 0, 0, 'search', 0, 1, '', 1527215753),
(820, 0, 0, 'search', 0, 1, '', 1527215755),
(821, 0, 0, 'search', 0, 1, '', 1527215825),
(822, 0, 0, 'search', 0, 1, '', 1527215960),
(823, 0, 0, 'search', 0, 1, '', 1527215994),
(824, 0, 0, 'search', 0, 1, '', 1527216033),
(825, 0, 0, 'search', 0, 1, '', 1527216215),
(826, 0, 0, 'search', 0, 1, '', 1527216228),
(827, 0, 0, 'search', 0, 1, '', 1527216320),
(828, 0, 0, 'search', 0, 1, '', 1527216343),
(829, 0, 0, 'search', 0, 1, '', 1527216394),
(830, 0, 0, 'search', 0, 1, '', 1527216437),
(831, 0, 0, 'search', 0, 1, '', 1527216521),
(832, 0, 0, 'search', 0, 1, '', 1527216547),
(833, 0, 0, 'search', 0, 1, '', 1527216576),
(834, 0, 0, 'search', 0, 1, '', 1527216859),
(835, 0, 0, 'search', 0, 1, '', 1527216890),
(836, 0, 0, 'search', 0, 1, '', 1527216977),
(837, 0, 0, 'search', 0, 1, '', 1527217012),
(838, 0, 0, 'search', 0, 1, '', 1527217070),
(839, 0, 0, 'search', 0, 1, '', 1527217072),
(840, 0, 0, 'search', 0, 1, '', 1527217092),
(841, 0, 0, 'search', 0, 1, '', 1527217147),
(842, 0, 0, 'search', 0, 1, '', 1527217195),
(843, 0, 0, 'search', 0, 1, '', 1527217227),
(844, 0, 0, 'search', 0, 1, '', 1527217368),
(845, 0, 0, 'search', 0, 1, '', 1527217417),
(846, 0, 0, 'search', 0, 1, '', 1527217429),
(847, 0, 0, 'search', 0, 1, '', 1527217489),
(848, 0, 0, 'search', 0, 1, '', 1527217493),
(849, 0, 0, 'search', 0, 1, '', 1527217522),
(850, 0, 0, 'search', 0, 1, '', 1527217552),
(851, 0, 4, 'search', 0, 1, '', 1527217592),
(852, 0, 2, 'search', 0, 1, '', 1527217679),
(853, 0, 3, 'search', 0, 1, '', 1527217685),
(854, 0, 2, 'search', 0, 1, '', 1527217687),
(855, 0, 4, 'search', 0, 1, '', 1527217691),
(856, 0, 5, 'search', 0, 1, '', 1527217693),
(857, 0, 4, 'search', 0, 1, '', 1527217694),
(858, 0, 3, 'search', 0, 1, '', 1527217696),
(859, 0, 2, 'search', 0, 1, '', 1527217697),
(860, 0, 0, 'search', 0, 1, '', 1527217892),
(861, 0, 0, 'search', 0, 1, '', 1527217932),
(862, 0, 0, 'search', 0, 1, '', 1527218430),
(863, 0, 0, 'search', 0, 1, '', 1527218544),
(864, 0, 0, 'search', 0, 1, '', 1527218797),
(865, 0, 2, 'search', 0, 1, '', 1527218809),
(866, 0, 3, 'search', 0, 1, '', 1527218815),
(867, 0, 4, 'search', 0, 1, '', 1527218818),
(868, 0, 0, 'search', 0, 1, '', 1527219322),
(869, 0, 0, 'search', 0, 1, '', 1527219373),
(870, 0, 0, 'search', 0, 1, '', 1527219455),
(871, 0, 0, 'search', 0, 1, '', 1527219500),
(872, 0, 3, 'search', 0, 1, '', 1527219504),
(873, 0, 0, 'search', 0, 1, '', 1527219569),
(874, 0, 0, 'search', 0, 1, '', 1527220030),
(875, 0, 0, 'search', 0, 1, '', 1527220059),
(876, 0, 0, 'search', 0, 1, '', 1527220169),
(877, 0, 0, 'search', 0, 1, '', 1527220204),
(878, 0, 0, 'search', 0, 1, '', 1527220289),
(879, 0, 3, 'search', 0, 1, '', 1527220301),
(880, 0, 3, 'search', 0, 1, '', 1527220314),
(881, 0, 0, 'search', 0, 1, '', 1527220363),
(882, 0, 2, 'search', 0, 1, '', 1527220369),
(883, 0, 3, 'search', 0, 1, '', 1527220373),
(884, 0, 4, 'search', 0, 1, '', 1527220378),
(885, 0, 0, 'search', 0, 1, '', 1527220794),
(886, 0, 2, 'search', 0, 1, '', 1527220821),
(887, 632, 14, 'viwe', 105, 3, '', 1527556594),
(888, 547, 3, 'viwe', 105, 2, '', 1527522953),
(889, 0, 0, 'search', 0, 1, '0', 1527510664),
(890, 652, 17, 'viwe', 65, 2, '', 1527512363),
(891, 0, 0, 'search', 0, 1, '0', 1527510865),
(892, 653, 18, 'viwe', 65, 1, '', 1527510866),
(893, 0, 0, 'search', 0, 1, '0', 1527510874),
(894, 0, 0, 'search', 0, 1, '0', 1527510876),
(895, 632, 14, 'viwe', 65, 2, '', 1527555494),
(896, 0, 0, 'search', 0, 1, '0', 1527510908),
(897, 547, 3, 'viwe', 65, 1, '', 1527510911),
(898, 0, 0, 'search', 0, 1, '0', 1527510932),
(899, 549, 6, 'viwe', 90, 2, '', 1527510963),
(900, 548, 5, 'viwe', 65, 3, '', 1527511019),
(901, 0, 0, 'search', 0, 1, '0', 1527510968),
(902, 461, 2, 'viwe', 65, 1, '', 1527511041),
(903, 0, 0, 'search', 0, 1, '0', 1527512002),
(904, 651, 17, 'viwe', 65, 1, '', 1527512006),
(905, 0, 0, 'search', 0, 1, '0', 1527512014),
(906, 0, 0, 'search', 0, 1, '0', 1527512037),
(907, 0, 0, 'search', 0, 1, '0', 1527512039),
(908, 651, 17, 'viwe', 1, 3, '', 1527512469),
(909, 0, 0, 'search', 0, 1, '0', 1527512468),
(910, 0, 0, 'search', 0, 1, '0', 1527522645),
(911, 546, 2, 'viwe', 65, 1, '', 1527522671),
(912, 0, 0, 'search', 0, 1, '0', 1527522812),
(913, 580, 2, 'viwe', 65, 2, '', 1527523629),
(914, 0, 0, 'search', 0, 1, '', 1527522892),
(915, 0, 0, 'search', 0, 1, '', 1527522898),
(916, 0, 0, 'search', 0, 1, '', 1527522899),
(917, 632, 14, 'viwe', 70, 4, '', 1527588482),
(918, 0, 3, 'search', 0, 1, '', 1527522907),
(919, 557, 3, 'viwe', 105, 1, '', 1527522935),
(920, 464, 3, 'viwe', 105, 1, '', 1527522945),
(921, 558, 4, 'viwe', 70, 1, '', 1527522967),
(922, 569, 3, 'viwe', 105, 1, '', 1527522981),
(923, 0, 0, 'search', 0, 1, '0', 1527523020),
(924, 0, 0, 'search', 0, 1, '0', 1527523023),
(925, 651, 17, 'viwe', 105, 1, '', 1527523049),
(926, 0, 0, 'search', 0, 1, '0', 1527523145),
(927, 552, 11, 'viwe', 65, 4, '', 1527523319),
(928, 0, 0, 'search', 0, 1, '0', 1527523161),
(929, 548, 5, 'viwe', 70, 1, '', 1527523180),
(930, 0, 0, 'search', 0, 1, '0', 1527523188),
(931, 552, 11, 'viwe', 70, 3, '', 1527523395),
(932, 0, 0, 'search', 0, 1, '0', 1527523286),
(933, 0, 0, 'search', 0, 1, '0', 1527523406),
(934, 0, 0, 'search', 0, 1, '0', 1527523414),
(935, 0, 0, 'search', 0, 1, '', 1527523540),
(936, 552, 11, 'viwe', 105, 1, '', 1527523549),
(937, 0, 0, 'search', 0, 1, '0', 1527523628),
(938, 0, 0, 'search', 0, 1, '0', 1527523779),
(939, 0, 0, 'search', 0, 1, '0', 1527525620),
(940, 558, 4, 'viwe', 106, 1, '', 1527525643),
(941, 0, 0, 'search', 0, 1, '0', 1527529704),
(942, 550, 8, 'viwe', 1, 1, '', 1527553332),
(943, 0, 0, 'search', 0, 1, '', 1527555306),
(944, 0, 0, 'search', 0, 1, '0', 1527555488),
(945, 0, 0, 'search', 0, 1, '0', 1527555518),
(946, 0, 0, 'search', 0, 1, '', 1527555697),
(947, 557, 3, 'viwe', 100, 1, '', 1527555706),
(948, 0, 0, 'search', 0, 1, '', 1527556303),
(949, 468, 8, 'viwe', 90, 1, '', 1527556545),
(950, 549, 6, 'viwe', 65, 1, '', 1527556567),
(951, 0, 0, 'search', 0, 1, '', 1527556924),
(952, 0, 0, 'search', 0, 1, '0', 1527570046),
(953, 0, 0, 'search', 0, 1, '0', 1527570122),
(954, 0, 0, 'search', 0, 1, '0', 1527573760),
(955, 0, 0, 'search', 0, 1, '0', 1527573768),
(956, 0, 0, 'search', 0, 1, '0', 1527573776),
(957, 0, 0, 'search', 0, 1, '0', 1527573787),
(958, 0, 0, 'search', 0, 1, '0', 1527573790),
(959, 0, 0, 'search', 0, 1, '0', 1527574190),
(960, 0, 0, 'search', 0, 1, '0', 1527574197),
(961, 0, 0, 'search', 0, 1, '0', 1527574201),
(962, 0, 0, 'search', 0, 1, '0', 1527574204),
(963, 0, 0, 'search', 0, 1, '0', 1527574223),
(964, 0, 0, 'search', 0, 1, '0', 1527574228),
(965, 0, 0, 'search', 0, 1, '0', 1527574236),
(966, 0, 0, 'search', 0, 1, '0', 1527574244),
(967, 0, 0, 'search', 0, 1, '0', 1527574246),
(968, 0, 0, 'search', 0, 1, '0', 1527574249),
(969, 0, 0, 'search', 0, 1, '0', 1527574256),
(970, 0, 0, 'search', 0, 1, '0', 1527574266),
(971, 632, 14, 'viwe', 108, 8, '', 1527681652),
(972, 0, 0, 'search', 0, 1, '0', 1527575094),
(973, 547, 3, 'viwe', 70, 1, '', 1527575298),
(974, 551, 9, 'viwe', 70, 1, '', 1527575316),
(975, 0, 0, 'search', 0, 1, '0', 1527575324),
(976, 474, 15, 'viwe', 70, 1, '', 1527575335),
(977, 557, 3, 'viwe', 70, 1, '', 1527575372),
(978, 556, 2, 'viwe', 70, 1, '', 1527575409),
(979, 0, 0, 'search', 0, 1, '0', 1527575416),
(980, 651, 17, 'viwe', 108, 2, '', 1527580337),
(981, 548, 5, 'viwe', 108, 1, '', 1527580484),
(982, 547, 3, 'viwe', 108, 1, '', 1527580514),
(983, 548, 5, 'viwe', 107, 1, '', 1527587809),
(984, 0, 0, 'search', 0, 1, '0', 1527587962),
(985, 0, 0, 'search', 0, 1, '0', 1527587972),
(986, 0, 0, 'search', 0, 1, '0', 1527588008),
(987, 0, 0, 'search', 0, 1, '0', 1527588009),
(988, 0, 0, 'search', 0, 1, '0', 1527588065),
(989, 0, 0, 'search', 0, 1, '0', 1527588069),
(990, 580, 2, 'viwe', 70, 1, '', 1527588072),
(991, 0, 0, 'search', 0, 1, '0', 1527588117),
(992, 0, 0, 'search', 0, 1, '0', 1527588133),
(993, 0, 0, 'search', 0, 1, '0', 1527588135),
(994, 0, 0, 'search', 0, 1, '0', 1527588148),
(995, 0, 0, 'search', 0, 1, '0', 1527588261),
(996, 0, 0, 'search', 0, 1, '0', 1527588276),
(997, 0, 0, 'search', 0, 1, '0', 1527588373),
(998, 0, 0, 'search', 0, 1, '0', 1527588391),
(999, 0, 0, 'search', 0, 1, '0', 1527588486),
(1000, 0, 0, 'search', 0, 1, '0', 1527588487),
(1001, 0, 0, 'search', 0, 1, '0', 1527588488),
(1002, 0, 0, 'search', 0, 1, '0', 1527588488),
(1003, 0, 0, 'search', 0, 1, '0', 1527588489),
(1004, 0, 0, 'search', 0, 1, '0', 1527588490),
(1005, 0, 0, 'search', 0, 1, '0', 1527588490),
(1006, 0, 0, 'search', 0, 1, '0', 1527588491),
(1007, 0, 0, 'search', 0, 1, '0', 1527588492),
(1008, 0, 0, 'search', 0, 1, '0', 1527588492),
(1009, 0, 0, 'search', 0, 1, '0', 1527588493),
(1010, 0, 0, 'search', 0, 1, '0', 1527588494),
(1011, 0, 0, 'search', 0, 1, '0', 1527588494),
(1012, 0, 0, 'search', 0, 1, '0', 1527588495),
(1013, 0, 0, 'search', 0, 1, '0', 1527588496),
(1014, 0, 0, 'search', 0, 1, '0', 1527588496),
(1015, 0, 0, 'search', 0, 1, '0', 1527588498),
(1016, 0, 0, 'search', 0, 1, '0', 1527588499),
(1017, 0, 0, 'search', 0, 1, '0', 1527588503),
(1018, 0, 0, 'search', 0, 1, '0', 1527588827),
(1019, 0, 0, 'search', 0, 1, '0', 1527588830),
(1020, 0, 0, 'search', 0, 1, '0', 1527588951),
(1021, 0, 0, 'search', 0, 1, '0', 1527589283),
(1022, 0, 0, 'search', 0, 1, '0', 1527589297),
(1023, 0, 0, 'search', 0, 1, '0', 1527589300),
(1024, 0, 0, 'search', 0, 1, '0', 1527589439),
(1025, 0, 0, 'search', 0, 1, '0', 1527589457),
(1026, 0, 0, 'search', 0, 1, '', 1527593906),
(1027, 491, 5, 'viwe', 65, 1, '', 1527597155),
(1028, 0, 0, 'search', 0, 1, 'iphone', 1527598459),
(1029, 0, 0, 'search', 0, 1, '0', 1527598464),
(1030, 0, 0, 'search', 0, 1, '0', 1527639908),
(1031, 0, 0, 'search', 0, 1, '0', 1527642741),
(1032, 0, 0, 'search', 0, 1, '', 1527642760),
(1033, 632, 14, 'viwe', 111, 8, '', 1527694065),
(1034, 533, 13, 'viwe', 111, 1, '', 1527643254),
(1035, 532, 11, 'viwe', 111, 1, '', 1527643269),
(1036, 0, 0, 'search', 0, 1, '', 1527643329),
(1037, 0, 0, 'search', 0, 1, '', 1527643330),
(1038, 651, 17, 'viwe', 111, 2, '', 1527644709),
(1039, 0, 3, 'search', 0, 1, '', 1527643542),
(1040, 0, 3, 'search', 0, 1, '', 1527644695),
(1041, 0, 3, 'search', 0, 1, '', 1527644696),
(1042, 0, 0, 'search', 0, 1, '', 1527644705),
(1043, 0, 0, 'search', 0, 1, '', 1527644707),
(1044, 0, 0, 'search', 0, 1, '', 1527644708),
(1045, 0, 0, 'search', 0, 1, '0', 1527674523),
(1046, 549, 6, 'viwe', 113, 1, '', 1527675668),
(1047, 0, 0, 'search', 0, 1, '0', 1527675685),
(1048, 0, 0, 'search', 0, 1, '0', 1527675705),
(1049, 0, 0, 'search', 0, 1, '', 1527678050),
(1050, 552, 11, 'viwe', 108, 3, '', 1527682007),
(1051, 0, 0, 'search', 0, 1, '', 1527678231),
(1052, 549, 6, 'viwe', 108, 1, '', 1527678443),
(1053, 0, 0, 'search', 0, 1, '', 1527680376),
(1054, 0, 0, 'search', 0, 1, '', 1527680601),
(1055, 0, 0, 'search', 0, 1, '', 1527680886),
(1056, 0, 0, 'search', 0, 1, '', 1527681495),
(1057, 0, 0, 'search', 0, 1, '', 1527681555),
(1058, 0, 0, 'search', 0, 1, '', 1527681686),
(1059, 547, 3, 'viwe', 114, 1, '', 1527682565),
(1060, 0, 0, 'search', 0, 1, '0', 1527683253),
(1061, 0, 0, 'search', 0, 1, '', 1527694059),
(1062, 0, 0, 'search', 0, 1, '0', 1527727656),
(1063, 0, 0, 'search', 0, 1, '0', 1527731514),
(1064, 546, 2, 'viwe', 116, 1, '', 1527757078),
(1065, 0, 0, 'search', 0, 1, '0', 1527766091),
(1066, 547, 3, 'viwe', 113, 2, '', 1528182558),
(1067, 655, 2, 'viwe', 65, 1, '', 1527834924),
(1068, 0, 0, 'search', 0, 1, '0', 1527873241),
(1069, 546, 2, 'viwe', 107, 1, '', 1527923758),
(1070, 0, 0, 'search', 0, 1, '0', 1527924199),
(1071, 0, 0, 'search', 0, 1, '0', 1527924206),
(1072, 651, 17, 'viwe', 107, 1, '', 1527924207),
(1073, 0, 0, 'search', 0, 1, '0', 1527924212),
(1074, 0, 0, 'search', 0, 1, '0', 1527924236),
(1075, 0, 0, 'search', 0, 1, '手机', 1527925325),
(1076, 0, 0, 'search', 0, 1, '手机', 1527925327),
(1077, 655, 2, 'viwe', 107, 1, '', 1527925330),
(1078, 0, 0, 'search', 0, 1, '系统', 1527925344),
(1079, 0, 0, 'search', 0, 1, '系统', 1527925355),
(1080, 0, 0, 'search', 0, 1, '系统', 1527925358),
(1081, 0, 0, 'search', 0, 1, '0', 1527925438),
(1082, 0, 0, 'search', 0, 1, '系统', 1527925448),
(1083, 0, 0, 'search', 0, 1, '0', 1527925462),
(1084, 549, 6, 'viwe', 107, 1, '', 1527925826),
(1085, 0, 0, 'search', 0, 1, '0', 1527937896),
(1086, 464, 3, 'viwe', 119, 1, '', 1528019772),
(1087, 550, 8, 'viwe', 119, 1, '', 1528075149),
(1088, 0, 0, 'search', 0, 1, '0', 1528109208),
(1089, 542, 9, 'viwe', 121, 1, '', 1528158255),
(1090, 0, 0, 'search', 0, 1, '0', 1528178393),
(1091, 0, 0, 'search', 0, 1, '0', 1528182543),
(1092, 0, 0, 'search', 0, 1, '0', 1528182546),
(1093, 0, 0, 'search', 0, 1, '0', 1528182547),
(1094, 0, 0, 'search', 0, 1, '0', 1528182548),
(1095, 0, 0, 'search', 0, 1, '0', 1528182549),
(1096, 0, 0, 'search', 0, 1, '0', 1528182551),
(1097, 651, 17, 'viwe', 124, 1, '', 1528182556),
(1098, 558, 4, 'viwe', 134, 1, '', 1528186962),
(1099, 547, 3, 'viwe', 135, 1, '', 1528187146),
(1100, 0, 0, 'search', 0, 1, '0', 1528190650),
(1101, 546, 2, 'viwe', 138, 1, '', 1528190653),
(1102, 0, 0, 'search', 0, 1, '0', 1528190660);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_admin`
--

CREATE TABLE IF NOT EXISTS `eb_system_admin` (
  `id` smallint(5) unsigned NOT NULL COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) unsigned DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

--
-- 转存表中的数据 `eb_system_admin`
--

INSERT INTO `eb_system_admin` (`id`, `account`, `pwd`, `real_name`, `roles`, `last_ip`, `last_time`, `add_time`, `login_count`, `level`, `status`, `is_del`) VALUES
(1, 'admin', '6b94a88632e2577a60f64520998d11c9', 'admin', '1', '123.139.93.228', 1528188807, 1511398209, 0, 0, 1, 0),
(7, 'demo', '6b94a88632e2577a60f64520998d11c9', 'crmeb测试账号', '9,14', '123.139.73.245', 1527835622, 1523246134, 0, 1, 1, 0),
(8, 'ceshi23', 'e10adc3949ba59abbe56e057f20f883e', '测试23', '11', NULL, NULL, 1524552369, 0, 2, 0, 1),
(9, 'demo1', '4297f44b13955235245b2497399d7a93', 'demo1', '13,15,14', '123.139.69.168', 1524567082, 1524564990, 0, 1, 1, 0),
(10, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '张三', '15', '123.139.169.59', 1524795635, 1524795244, 0, 2, 1, 0),
(11, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '李四', '16', '123.139.169.59', 1524795598, 1524795464, 0, 3, 1, 0),
(13, 'root', '63a9f0ea7bb98050796b649e85481845', '超级管理员', '17', NULL, NULL, 1527043800, 0, 2, 1, 0),
(12, 'demo11', '6b94a88632e2577a60f64520998d11c9', '111111', '15', NULL, NULL, 1525835689, 0, 2, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_attachment`
--

CREATE TABLE IF NOT EXISTS `eb_system_attachment` (
  `att_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '附件名称',
  `att_dir` varchar(200) NOT NULL COMMENT '附件路径',
  `satt_dir` varchar(200) DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) NOT NULL COMMENT '附件大小',
  `att_type` char(30) NOT NULL COMMENT '附件类型',
  `pid` int(10) NOT NULL COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int(11) NOT NULL COMMENT '上传时间'
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='附件管理表';

--
-- 转存表中的数据 `eb_system_attachment`
--

INSERT INTO `eb_system_attachment` (`att_id`, `name`, `att_dir`, `satt_dir`, `att_size`, `att_type`, `pid`, `time`) VALUES
(10, '5b0fe5018eb5b.jpg', './public/uploads/store/product/20180531/5b0fe5018eb5b.jpg', './public/uploads/store/product/20180531/s_5b0fe5018eb5b.jpg', '44551', 'image/jpeg', 0, 1527768321),
(11, '5b0fe5988ae98.jpg', './public/uploads/store/product/20180531/5b0fe5988ae98.jpg', './public/uploads/store/product/20180531/s_5b0fe5988ae98.jpg', '51872', 'image/jpeg', 0, 1527768472),
(12, '5b0fe778a6cf8.jpg', './public/uploads/wechat/image/20180531/5b0fe778a6cf8.jpg', '', '12845', 'image/jpeg', -1, 1527768952),
(15, '5b0fe886cd78c.jpg', './public/uploads/store/bargain/20180531/5b0fe886cd78c.jpg', './public/uploads/store/bargain/20180531/s_5b0fe886cd78c.jpg', '44551', 'image/jpeg', 3, 1527769222),
(16, '5b10a10809135.jpg', './public/uploads/store/bargain/20180601/5b10a10809135.jpg', './public/uploads/store/bargain/20180601/s_5b10a10809135.jpg', '12845', 'image/jpeg', 3, 1527816456),
(20, '5b10a21389f6b.jpg', './public/uploads/store/seckill/20180601/5b10a21389f6b.jpg', './public/uploads/store/seckill/20180601/s_5b10a21389f6b.jpg', '60455', 'image/jpeg', 3, 1527816723),
(21, '5b10a27cbc7fc.jpg', './public/uploads/wechat/image/20180601/5b10a27cbc7fc.jpg', '', '51872', 'image/jpeg', 5, 1527816828),
(22, '5b10a4407a3ff.jpg', './public/uploads/store/seckill/20180601/5b10a4407a3ff.jpg', './public/uploads/store/seckill/20180601/s_5b10a4407a3ff.jpg', '12845', 'image/jpeg', 4, 1527817280),
(23, '5b10ad56777b1.jpg', './public/uploads/editor/20180601/5b10ad56777b1.jpg', '', '26976', 'image/jpeg', 0, 1527819606),
(24, '5b10b23763b9d.jpg', './public/uploads/editor/20180601/5b10b23763b9d.jpg', '', '60455', 'image/jpeg', 0, 1527820855),
(25, '5b10b23dcfd66.jpg', './public/uploads/editor/20180601/5b10b23dcfd66.jpg', '', '44551', 'image/jpeg', 0, 1527820861),
(26, '5b10b2436876e.jpg', './public/uploads/editor/20180601/5b10b2436876e.jpg', '', '51872', 'image/jpeg', 0, 1527820867),
(27, '5b10b24a3833d.jpg', './public/uploads/editor/20180601/5b10b24a3833d.jpg', '', '12845', 'image/jpeg', 0, 1527820874),
(28, '5b10b28560c1d.png', './public/uploads/editor/20180601/5b10b28560c1d.png', '', '2628', 'image/png', 0, 1527820933),
(29, '5b10b28c6e0da.png', './public/uploads/editor/20180601/5b10b28c6e0da.png', '', '2326', 'image/png', 0, 1527820940),
(30, '5b10b293eaf82.png', './public/uploads/editor/20180601/5b10b293eaf82.png', '', '3451', 'image/png', 0, 1527820947),
(31, '5b10b29abf8c6.png', './public/uploads/editor/20180601/5b10b29abf8c6.png', '', '2020', 'image/png', 0, 1527820954),
(32, '5b10b2a4445a8.jpg', './public/uploads/editor/20180601/5b10b2a4445a8.jpg', '', '60455', 'image/jpeg', 0, 1527820964),
(33, '5b10b2aaa33d8.jpg', './public/uploads/editor/20180601/5b10b2aaa33d8.jpg', '', '44551', 'image/jpeg', 0, 1527820970),
(34, '5b10b2b0969d7.jpg', './public/uploads/editor/20180601/5b10b2b0969d7.jpg', '', '51872', 'image/jpeg', 0, 1527820976),
(35, '5b10b2c80066a.jpg', './public/uploads/editor/20180601/5b10b2c80066a.jpg', '', '60455', 'image/jpeg', 0, 1527821000),
(36, '5b10b2cd8b646.jpg', './public/uploads/editor/20180601/5b10b2cd8b646.jpg', '', '44551', 'image/jpeg', 0, 1527821005),
(37, '5b10b2d35dc37.jpg', './public/uploads/editor/20180601/5b10b2d35dc37.jpg', '', '51872', 'image/jpeg', 0, 1527821011),
(38, '5b10b2d909305.jpg', './public/uploads/editor/20180601/5b10b2d909305.jpg', '', '60455', 'image/jpeg', 0, 1527821017),
(39, '5b10b2deb5b20.jpg', './public/uploads/editor/20180601/5b10b2deb5b20.jpg', '', '44551', 'image/jpeg', 0, 1527821022),
(40, '5b10b2e4b6cf2.jpg', './public/uploads/editor/20180601/5b10b2e4b6cf2.jpg', '', '51872', 'image/jpeg', 0, 1527821028),
(42, '5b10b2f5cd89b.jpg', './public/uploads/editor/20180601/5b10b2f5cd89b.jpg', '', '44551', 'image/jpeg', 0, 1527821045),
(44, '5b10b30134f5a.jpg', './public/uploads/editor/20180601/5b10b30134f5a.jpg', '', '60455', 'image/jpeg', 0, 1527821057),
(48, '5b10bcc46b10a.jpg', './public/uploads/common/5b10bcc46b10a.jpg', './public/uploads/common/s_5b10bcc46b10a.jpg', '51872', 'image/jpeg', 6, 1527823556),
(51, '5b10e863dbb45.jpg', '/public/uploads/store/product/20180601/5b10e863dbb45.jpg', './public/uploads/store/product/20180601/s_5b10e863dbb45.jpg', '12845', 'image/jpeg', 1, 1527834723),
(52, '5b10e8d5cb715.jpg', '/public/uploads/store/product/20180601/5b10e8d5cb715.jpg', '/public/uploads/store/product/20180601/s_5b10e8d5cb715.jpg', '12845', 'image/jpeg', 1, 1527834837),
(53, '5b10e8de50ef2.jpg', '/public/uploads/store/product/20180601/5b10e8de50ef2.jpg', '/public/uploads/store/product/20180601/s_5b10e8de50ef2.jpg', '12845', 'image/jpeg', 1, 1527834846);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_config`
--

CREATE TABLE IF NOT EXISTS `eb_system_config` (
  `id` int(10) unsigned NOT NULL COMMENT '配置id',
  `menu_name` varchar(255) NOT NULL COMMENT '字段名称',
  `type` varchar(255) NOT NULL COMMENT '类型(文本框,单选按钮...)',
  `config_tab_id` int(10) unsigned NOT NULL COMMENT '配置分类id',
  `parameter` varchar(255) DEFAULT NULL COMMENT '规则 单选框和多选框',
  `upload_type` tinyint(1) unsigned DEFAULT NULL COMMENT '上传文件格式1单图2多图3文件',
  `required` varchar(255) DEFAULT NULL COMMENT '规则',
  `width` int(10) unsigned DEFAULT NULL COMMENT '多行文本框的宽度',
  `high` int(10) unsigned DEFAULT NULL COMMENT '多行文框的高度',
  `value` varchar(5000) DEFAULT NULL COMMENT '默认值',
  `info` varchar(255) NOT NULL COMMENT '配置名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '配置简介',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否隐藏'
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='配置表';

--
-- 转存表中的数据 `eb_system_config`
--

INSERT INTO `eb_system_config` (`id`, `menu_name`, `type`, `config_tab_id`, `parameter`, `upload_type`, `required`, `width`, `high`, `value`, `info`, `desc`, `sort`, `status`) VALUES
(1, 'site_name', 'text', 1, NULL, NULL, 'required:true', 100, NULL, '"CRMEB\\u7cfb\\u7edf"', '网站名称', '网站名称', 0, 1),
(2, 'site_url', 'text', 1, NULL, NULL, 'required:true,url:true', 100, NULL, '"http:\\/\\/shop.crmeb.net\\/"', '网站地址', '网站地址', 0, 1),
(3, 'site_logo', 'upload', 1, NULL, 1, NULL, NULL, NULL, '"\\/public\\/uploads\\/config\\/image\\/5abb320a8c014.png"', '后台LOGO', '左上角logo,建议尺寸[170*50]', 0, 1),
(4, 'site_phone', 'text', 1, NULL, NULL, '', 100, NULL, '"13399182577"', '联系电话', '联系电话', 0, 1),
(5, 'seo_title', 'text', 1, NULL, NULL, 'required:true', 100, NULL, '"crmeb\\u7535\\u5546\\u7cfb\\u7edf"', 'SEO标题', 'SEO标题', 0, 1),
(6, 'site_email', 'text', 1, NULL, NULL, 'email:true', 100, NULL, '"admin@xazbkj.com"', '联系邮箱', '联系邮箱', 0, 1),
(7, 'site_qq', 'text', 1, NULL, NULL, 'qq:true', 100, NULL, '"98718401"', '联系QQ', '联系QQ', 0, 1),
(8, 'site_close', 'radio', 1, '0=开启\n1=PC端关闭\n2=WAP端关闭(含微信)\n3=全部关闭', NULL, '', NULL, NULL, '"0"', '网站关闭', '网站后台、商家中心不受影响。关闭网站也可访问', 0, 1),
(9, 'close_system', 'radio', 1, '0=开启\n1=关闭', NULL, '', NULL, NULL, '"0"', '关闭后台', '关闭后台', 0, 2),
(10, 'wechat_name', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"CRMEB"', '公众号名称', '公众号的名称', 0, 1),
(11, 'wechat_id', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"CRMEB"', '微信号', '微信号', 0, 1),
(12, 'wechat_sourceid', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"gh_eeffdda5790a"', '公众号原始id', '公众号原始id', 0, 1),
(13, 'wechat_appid', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"wx3ce47b68556ea750"', 'AppID', 'AppID', 0, 1),
(14, 'wechat_appsecret', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"cc7cf1c4fb79b673386eb82f545722c3"', 'AppSecret', 'AppSecret', 0, 1),
(15, 'wechat_token', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"BR5iV47ts5RV16dLfl1TfqyZ"', '微信验证TOKEN', '微信验证TOKEN', 0, 1),
(16, 'wechat_encode', 'radio', 2, '0=明文模式\n1=兼容模式\n2=安全模式', NULL, '', NULL, NULL, '"0"', '消息加解密方式', '如需使用安全模式请在管理中心修改，仅限服务号和认证订阅号', 0, 1),
(17, 'wechat_encodingaeskey', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"GxAZbDK0mszJpwGq4On0zsXCRYsuXetBDMoZOj8Jeki"', 'EncodingAESKey', '公众号消息加解密Key,在使用安全模式情况下要填写该值，请先在管理中心修改，然后填写该值，仅限服务号和认证订阅号', 0, 1),
(18, 'wechat_share_img', 'upload', 3, NULL, 1, NULL, NULL, NULL, '""', '微信分享图片', '若填写此图片地址，则分享网页出去时会分享此图片。可有效防止分享图片变形', 0, 1),
(19, 'wechat_qrcode', 'upload', 2, NULL, 1, NULL, NULL, NULL, '""', '公众号二维码', '您的公众号二维码', 0, 1),
(20, 'wechat_type', 'radio', 2, '0=服务号\n1=订阅号', NULL, '', NULL, NULL, '"0"', '公众号类型', '公众号的类型', 0, 1),
(21, 'wechat_share_title', 'text', 3, NULL, NULL, 'required:true', 100, NULL, '""', '微信分享标题', '微信分享标题', 0, 1),
(22, 'wechat_share_synopsis', 'textarea', 3, NULL, NULL, NULL, 100, 5, '""', '微信分享简介', '微信分享简介', 0, 1),
(23, 'pay_weixin_appid', 'text', 4, NULL, NULL, '', 100, NULL, '"wx3ce47b68556ea750"', 'Appid', '微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看。', 0, 1),
(24, 'pay_weixin_appsecret', 'text', 4, NULL, NULL, '', 100, NULL, '"cc7cf1c4fb79b673386eb82f545722c3"', 'Appsecret', 'JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看。', 0, 1),
(25, 'pay_weixin_mchid', 'text', 4, NULL, NULL, '', 100, NULL, '"1404735902"', 'Mchid', '受理商ID，身份标识', 0, 1),
(26, 'pay_weixin_client_cert', 'upload', 4, NULL, 3, NULL, NULL, NULL, '"\\/public\\/uploads\\/config\\/file\\/5b0ca99cdb3b6.pem"', '微信支付证书', '微信支付证书，在微信商家平台中可以下载！文件名一般为apiclient_cert.pem', 0, 1),
(27, 'pay_weixin_client_key', 'upload', 4, NULL, 3, NULL, NULL, NULL, '"\\/public\\/uploads\\/config\\/file\\/5b0ca9a15e798.pem"', '微信支付证书密钥', '微信支付证书密钥，在微信商家平台中可以下载！文件名一般为apiclient_key.pem', 0, 1),
(56, 'store_home_pink', 'upload', 5, NULL, 1, NULL, NULL, NULL, '"\\/public\\/uploads\\/config\\/image\\/5abcad84e2a52.jpg"', '首页拼团广告图', '首页拼团广告图', 0, 1),
(28, 'pay_weixin_key', 'text', 4, NULL, NULL, '', 100, NULL, '"xAZbDK0mszJpwGq4On0zsXCRYsuXetBD"', 'Key', '商户支付密钥Key。审核通过后，在微信发送的邮件中查看。', 0, 1),
(29, 'pay_weixin_open', 'radio', 4, '1=开启\n0=关闭', NULL, '', NULL, NULL, '"1"', '开启', '是否启用微信支付', 0, 1),
(31, 'store_postage', 'text', 5, NULL, NULL, 'number:true,min:0', 100, NULL, '"0"', '邮费基础价', '商品邮费基础价格,最终金额为(基础价 + 商品1邮费 + 商品2邮费)', 0, 1),
(32, 'store_free_postage', 'text', 5, NULL, NULL, 'number:true,min:-1', 100, NULL, '"20"', '满额包邮', '商城商品满多少金额即可包邮', 0, 1),
(33, 'offline_postage', 'radio', 5, '0=不包邮\n1=包邮', NULL, '', NULL, NULL, '"1"', '线下支付是否包邮', '用户选择线下支付时是否包邮', 0, 1),
(34, 'integral_ratio', 'text', 5, NULL, NULL, 'number:true', 100, NULL, '"0.01"', '积分抵用比例', '积分抵用比例(1积分抵多少金额)', 0, 1),
(35, 'site_service_phone', 'text', 1, NULL, NULL, '', 100, NULL, '"400-8888794"', '客服电话', '客服联系电话', 0, 1),
(44, 'store_user_min_recharge', 'text', 5, NULL, NULL, 'required:true,number:true,min:0', 100, NULL, '"0.01"', '用户最低充值金额', '用户单次最低充值金额', 0, 0),
(45, 'site_store_admin_uids', 'text', 5, NULL, NULL, '', 100, NULL, '""', '管理员用户ID', '管理员用户ID,用于接收商城订单提醒，到微信用户中查找编号，多个英文‘,’隔开', 0, 1),
(46, 'system_express_app_code', 'text', 10, NULL, NULL, '', 100, NULL, '"658da8789d89436699269f4aede6c868"', '快递查询密钥', '阿里云快递查询接口密钥购买地址：https://market.aliyun.com/products/57126001/cmapi011120.html', 0, 1),
(47, 'main_business', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '" IT\\u79d1\\u6280 \\u4e92\\u8054\\u7f51|\\u7535\\u5b50\\u5546\\u52a1"', '微信模板消息_主营行业', '微信公众号模板消息中选择开通的主营行业', 0, 0),
(48, 'vice_business', 'text', 2, NULL, NULL, 'required:true', 100, NULL, '"IT\\u79d1\\u6280 IT\\u8f6f\\u4ef6\\u4e0e\\u670d\\u52a1 "', '微信模板消息_副营行业', '微信公众号模板消息中选择开通的副营行业', 0, 0),
(49, 'store_brokerage_ratio', 'text', 9, NULL, NULL, 'required:true,min:0,max:100,number:true', 100, NULL, '"5"', '返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', 0, 1),
(50, 'wechat_first_sub_give_coupon', 'text', 5, NULL, NULL, 'requred:true,digits:true,min:0', 100, NULL, '""', '首次关注赠送优惠券ID', '首次关注赠送优惠券ID,0为不赠送', 0, 1),
(51, 'store_give_con_min_price', 'text', 5, NULL, NULL, 'requred:true,digits:true,min:0', 100, NULL, '"0.01"', '消费满多少赠送优惠券', '消费满多少赠送优惠券,0为不赠送', 0, 1),
(52, 'store_order_give_coupon', 'text', 5, NULL, NULL, 'requred:true,digits:true,min:0', 100, NULL, '""', '消费赠送优惠劵ID', '消费赠送优惠劵ID,0为不赠送', 0, 1),
(53, 'user_extract_min_price', 'text', 9, NULL, NULL, 'required:true,number:true,min:0', 100, NULL, '"200"', '提现最低金额', '用户提现最低金额', 0, 1),
(54, 'sx_sign_min_int', 'text', 5, NULL, NULL, 'required:true,number:true,min:0', 100, NULL, '"1"', '签到奖励最低积分', '签到奖励最低积分', 0, 1),
(55, 'sx_sign_max_int', 'text', 5, NULL, NULL, 'required:true,number:true,min:0', 100, NULL, '"5"', '签到奖励最高积分', '签到奖励最高积分', 0, 1),
(57, 'about_us', 'upload', 1, NULL, 1, NULL, NULL, NULL, '""', '关于我们', '系统的标识', 0, 1),
(61, 'api', 'text', 2, NULL, NULL, '', 100, NULL, '"\\/wechat\\/index\\/serve"', '接口地址', '微信接口例如：http://www.abc.com/wechat/index/serve', 0, 1),
(58, 'replenishment_num', 'text', 5, NULL, NULL, 'required:true,number:true,min:0', 100, NULL, '"20"', '待补货数量', '产品待补货数量低于多少时，提示补货', 0, 1),
(59, 'routine_appId', 'text', 7, NULL, NULL, '', 100, NULL, '"wx7bc36cccc15e4be2"', 'appId', '小程序appID', 0, 1),
(60, 'routine_appsecret', 'text', 7, NULL, NULL, '', 100, NULL, '"a13757487f35b0ad88c03455b1903c4d"', 'AppSecret', '小程序AppSecret', 0, 1),
(62, 'paydir', 'textarea', 4, NULL, NULL, NULL, 100, 5, '"\\/wap\\/my\\/\\r\\n\\/wap\\/my\\/order\\/uni\\/\\r\\n\\/wap\\/store\\/confirm_order\\/cartId\\/"', '配置目录', '支付目录配置系统不调用提示作用', 0, 1),
(73, 'routine_logo', 'upload', 7, NULL, 1, NULL, NULL, NULL, '""', '小程序logo', '小程序logo', 0, 1),
(74, 'routine_name', 'text', 7, NULL, NULL, '', 100, NULL, '"CrmEb"', '小程序名称', '小程序名称', 0, 1),
(76, 'routine_style', 'text', 7, NULL, NULL, '', 100, NULL, '"#FFFFFF"', '小程序风格', '小程序颜色', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_config_tab`
--

CREATE TABLE IF NOT EXISTS `eb_system_config_tab` (
  `id` int(10) unsigned NOT NULL COMMENT '配置分类id',
  `title` varchar(255) NOT NULL COMMENT '配置分类名称',
  `eng_title` varchar(255) NOT NULL COMMENT '配置分类英文名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配置分类状态',
  `info` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类是否显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `type` int(2) DEFAULT '0' COMMENT '配置类型'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='配置分类表';

--
-- 转存表中的数据 `eb_system_config_tab`
--

INSERT INTO `eb_system_config_tab` (`id`, `title`, `eng_title`, `status`, `info`, `icon`, `type`) VALUES
(1, '基础配置', 'basics', 1, 0, 'cog', 0),
(2, '公众号配置', 'wechat', 1, 0, 'weixin', 1),
(3, '公众号分享配置', 'wechat_share', 1, 0, 'share-square-o', 1),
(4, '公众号支付配置', 'pay', 1, 0, 'jpy', 1),
(5, '商城配置', 'store', 1, 0, 'shopping-cart', 0),
(7, '小程序配置', 'routine', 1, 0, 'weixin', 2),
(9, '分销配置', 'fenxiao', 1, 0, 'sitemap', 0),
(10, '物流配置', 'express', 1, 0, 'motorcycle', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_file`
--

CREATE TABLE IF NOT EXISTS `eb_system_file` (
  `id` int(10) unsigned NOT NULL COMMENT '文件对比ID',
  `cthash` char(32) NOT NULL COMMENT '文件内容',
  `filename` varchar(255) NOT NULL COMMENT '文价名称',
  `atime` char(12) NOT NULL COMMENT '上次访问时间',
  `mtime` char(12) NOT NULL COMMENT '上次修改时间',
  `ctime` char(12) NOT NULL COMMENT '上次改变时间'
) ENGINE=MyISAM AUTO_INCREMENT=4094 DEFAULT CHARSET=utf8 COMMENT='文件对比表';

--
-- 转存表中的数据 `eb_system_file`
--

INSERT INTO `eb_system_file` (`id`, `cthash`, `filename`, `atime`, `mtime`, `ctime`) VALUES
(2898, '25a19266daa54e4dddef0c68a36de5da', './application/index/controller/Index.php', '1523243249', '1522203895', '1522203899'),
(2899, '27caf9acf09a1ab4e56416f9cb9cf5c9', './application/index/config.php', '1523243249', '1522203782', '1522203786'),
(2900, '4a29c7f8c546f899d6c2c6722e4ced5e', './application/database.php', '1522402123', '1522217237', '1522217240'),
(2901, '47aa41293658015290a6eb2ba1535b27', './application/admin/view/widget/icon.php', '1522402123', '1511574337', '1522141396'),
(2902, '9a2691c33fbac188e56f05df94a915ca', './application/admin/view/login/index.php', '1523170846', '1523170839', '1523170843'),
(2903, 'cf19fbea2125f5223fa8acca8c091547', './application/admin/view/store/store_combination/index.php', '1522402123', '1521691218', '1522141396'),
(2904, 'ebb46c1fa8060ce188b4d88a118addbb', './application/admin/view/store/store_order/index.php', '1523245694', '1523245689', '1523245692'),
(2905, 'b148b3df3cb45fc16c96924f0db3dac6', './application/admin/view/store/store_order/order_status.php', '1522402123', '1516938483', '1522141396'),
(2906, '59b9803b417e52772f881e527e3066bc', './application/admin/view/store/store_coupon_user/index.php', '1522402123', '1516605215', '1522141396'),
(2907, 'a0ef5e6ee9bf3985ba9a72fac0b35364', './application/admin/view/store/store_product_reply/index.php', '1522402123', '1515546390', '1522141396'),
(2908, '51c121e649e75370bf355eb94319e637', './application/admin/view/store/store_order_pink/order_pink.php', '1522402123', '1521520471', '1522141396'),
(2909, '8593d96930e52598569db7c7d1791066', './application/admin/view/store/store_order_pink/index.php', '1522402123', '1521535214', '1522141396'),
(2910, 'b148b3df3cb45fc16c96924f0db3dac6', './application/admin/view/store/store_order_pink/order_status.php', '1522402123', '1516938483', '1522141396'),
(2911, 'b3469651b9f762c9baa6169ef8114458', './application/admin/view/store/store_product/like.php', '1522402123', '1515135146', '1522141396'),
(2912, 'd12fae5c5a54f0bf8b275048f50b0ebd', './application/admin/view/store/store_product/index.php', '1522402123', '1521086314', '1522141396'),
(2913, 'f62287b9aa757aae3138fbff41a7ba7c', './application/admin/view/store/store_product/attr.php', '1522402123', '1512801909', '1522141396'),
(2914, '78c1fd14940986967221fa44ebf67f29', './application/admin/view/store/store_product/collect.php', '1522402123', '1515135222', '1522141396'),
(2915, '94ddf802485ff4d6c89b7b2a1e0da4ea', './application/admin/view/store/store_coupon/grant_all.php', '1522402123', '1515134779', '1522141396'),
(2916, 'cbecb479d516ae8310d2f58dbf30fa3f', './application/admin/view/store/store_coupon/grant_tag.php', '1522402123', '1516863189', '1522141396'),
(2917, '8e65a82fec9faf48a674d9e1e7b26d0b', './application/admin/view/store/store_coupon/grant_subscribe.php', '1522402123', '1515134694', '1522141396'),
(2918, '4a339fdd6338354aaaee1f4ca71b4959', './application/admin/view/store/store_coupon/index.php', '1522402123', '1521103124', '1522141396'),
(2919, '667db6396e24f439554701ee333a38c4', './application/admin/view/store/store_coupon/grant_group.php', '1522402123', '1516862093', '1522141396'),
(2920, 'b65e6b078396851d9d03012064626048', './application/admin/view/store/store_coupon/grant.php', '1522402123', '1515134786', '1522141396'),
(2921, '6e045a63a8eb9e408968da3bdc2bbbb7', './application/admin/view/store/store_service/create.php', '1522402123', '1515176100', '1522141396'),
(2922, 'b8c1c68c6566c2ed8f1413441792e796', './application/admin/view/store/store_service/chat_user.php', '1522402123', '1515597499', '1522141396'),
(2923, 'fe380f26e5a8f43d58bcecad045e4658', './application/admin/view/store/store_service/index.php', '1522402123', '1516870227', '1522141396'),
(2924, 'a63e7c2404d74cd366f55ea3449873e0', './application/admin/view/store/store_service/chat_list.php', '1522402123', '1516785213', '1522141396'),
(2925, '2b051c4c430b9bb8a0e2d7c9c4135767', './application/admin/view/store/store_service/edit.php', '1522402123', '1514632512', '1522141396'),
(2926, '1ad7cfcdbb56242f62bb62647b2812fd', './application/admin/view/store/store_service/index.html', '1522402123', '1514629585', '1522141396'),
(2927, '0830d6bfb0cc4feda498e08629c15e1b', './application/admin/view/store/store_coupon_issue/issue_log.php', '1522402123', '1516673480', '1522141396'),
(2928, 'da73027d28b7d6df27bfe30a21eabbd9', './application/admin/view/store/store_coupon_issue/index.php', '1522402123', '1516692472', '1522141396'),
(2929, '6f253077af04e83ff4c08afed29ca3ba', './application/admin/view/store/store_category/index.php', '1522402123', '1515132489', '1522141396'),
(2930, '83a04a574705df0c9635ab93e962dccc', './application/admin/view/index/main.php', '1522402123', '1518149499', '1522141396'),
(2931, '92d58d86fcf433e59b7fb45cbb84385a', './application/admin/view/index/index.php', '1523170800', '1523170800', '1523170880'),
(2932, '51cc7ffbb9dbc801ec47e5177597f0aa', './application/admin/view/system/system_log/index.php', '1522402123', '1515201943', '1522141396'),
(2933, '7f9c95aa6efd27489ddfa99de3d90a99', './application/admin/view/system/system_admin/create.php', '1522402123', '1510621844', '1522141396'),
(2934, '67593212661fe75813faf40fb57ed84c', './application/admin/view/system/system_admin/index.php', '1523245712', '1515124091', '1522141396'),
(2935, 'e52874dce1e85bb23a48005659a01361', './application/admin/view/system/system_admin/edit.php', '1522402123', '1510621789', '1522141396'),
(2936, '4b30c5e560dd2d40f5ae9c9b1ac86b13', './application/admin/view/system/system_admin/admininfo.php', '1522402123', '1511863564', '1522141396'),
(2937, '10f54846beb5cbe7899ec760a42bed59', './application/admin/view/system/system_role/create.php', '1523245714', '1512809130', '1522141396'),
(2938, 'df07f3527b466b1758ab1e7f6eca5a04', './application/admin/view/system/system_role/index.php', '1523245709', '1515125249', '1522141396'),
(2939, 'e1fb9def3516f6373feb6c43dffd853f', './application/admin/view/system/system_role/edit.php', '1523245748', '1515469186', '1522141396'),
(2940, 'c15acc9fa9e78d30b5c52d5eca3b5525', './application/admin/view/system/system_config/create.php', '1522402123', '1510370527', '1522141396'),
(2941, 'a4d8e10f17a77f85066c49f0bf03c34b', './application/admin/view/system/system_config/index.php', '1522402123', '1515124299', '1522141396'),
(2942, '61a4fcaffe8e9e960fc89daca54e0b5e', './application/admin/view/system/system_config/index_alone.php', '1522402123', '1515124409', '1522141396'),
(2943, '2b051c4c430b9bb8a0e2d7c9c4135767', './application/admin/view/system/system_group_data/create.php', '1522402123', '1510828626', '1522141396'),
(2944, '28ff23f03da1c00b38e347b62c60679a', './application/admin/view/system/system_group_data/index.php', '1522402123', '1515124964', '1522141396'),
(2945, '2b051c4c430b9bb8a0e2d7c9c4135767', './application/admin/view/system/system_group_data/edit.php', '1522402123', '1510848426', '1522141396'),
(2946, 'c15acc9fa9e78d30b5c52d5eca3b5525', './application/admin/view/system/system_config_tab/create.php', '1522402123', '1510370527', '1522141396'),
(2947, 'e2bab821175b38a49b2bcaa32386ac0b', './application/admin/view/system/system_config_tab/index.php', '1522402123', '1515124505', '1522141396'),
(2948, 'c15acc9fa9e78d30b5c52d5eca3b5525', './application/admin/view/system/system_config_tab/create_base.php', '1522402123', '1510370527', '1522141396'),
(2949, 'caa0cb64b79bb426b1940e57352e64a7', './application/admin/view/system/system_config_tab/edit.php', '1522402123', '1510565425', '1522141396'),
(2950, 'caa0cb64b79bb426b1940e57352e64a7', './application/admin/view/system/system_config_tab/edit_cinfig.php', '1522402123', '1511162490', '1522141396'),
(2951, 'b20fd1793e134e4e62d99e5f1c2682ba', './application/admin/view/system/system_config_tab/sonconfigtab.php', '1522402123', '1515124572', '1522141396'),
(2952, 'ffb1fac95b54df459bf7b8f7dabb3564', './application/admin/view/system/clear/index.php', '1522402123', '1517218814', '1522141396'),
(2953, 'a95a8ac703e82d4a55584512073b7ede', './application/admin/view/system/system_file/index.php', '1522402123', '1515124660', '1522141396'),
(2954, 'dcc9633e2562c3b7cbd00efc0abb4a0f', './application/admin/view/system/system_menus/create.php', '1522402123', '1511917110', '1522141396'),
(2955, '47aa41293658015290a6eb2ba1535b27', './application/admin/view/system/system_menus/icon.php', '1522402123', '1511574337', '1522141396'),
(2956, '932abba3726dead2a27bd53c5e7e2602', './application/admin/view/system/system_menus/index.php', '1522402123', '1516157399', '1522141396'),
(2957, 'e72a49e527ff342e4062b3fe0d570f29', './application/admin/view/system/system_menus/edit.php', '1522402123', '1511576671', '1522141396'),
(2958, 'ad1d8bd13eeb489cdb59a3cfab8db10a', './application/admin/view/system/system_menus/edit_content.php', '1522402123', '1511162094', '1522141396'),
(2959, '55efa5207fba66a531fde8f8d0d84663', './application/admin/view/system/system_group/create.php', '1522402123', '1513044925', '1522141396'),
(2960, '058ba61366c244332e0bc8c9a8f39132', './application/admin/view/system/system_group/index.php', '1522402123', '1515124864', '1522141396'),
(2961, '2b051c4c430b9bb8a0e2d7c9c4135767', './application/admin/view/user/user_notice/create.php', '1522402123', '1515165021', '1522141396'),
(2962, '8d40634b7e0933bd46a7f3cfd224404b', './application/admin/view/user/user_notice/index.php', '1522402123', '1515511355', '1522141396'),
(2963, '14e02db8f07fb05d10e9e556b2353e08', './application/admin/view/user/user_notice/user.php', '1522402123', '1515520441', '1522141396'),
(2964, '2b051c4c430b9bb8a0e2d7c9c4135767', './application/admin/view/user/user_notice/edit.php', '1522402123', '1515165771', '1522141396'),
(2965, '4b6b62710941e7736dc065add02614d7', './application/admin/view/user/user_notice/user_create.php', '1522402123', '1515174970', '1522141396'),
(2966, '3014e4b5c671cf0c533ce50d51a218a2', './application/admin/view/user/user_recharge/index.php', '1522636529', '1515477810', '1522141396'),
(2967, '9b3054c9d25afd6ad5d28f730c95936e', './application/admin/view/user/user_extract/index.php', '1522636531', '1520243022', '1522141396'),
(2968, '5a93516230d32824849cf49856c9aa18', './application/admin/view/user/user/index.php', '1522402123', '1521705997', '1522141396'),
(2969, 'f921ae4a126c5303ed67a0fd910aebe3', './application/admin/view/user/user_enter/index.php', '1522402123', '1520068897', '1522141396'),
(2970, '2d5c54ce2d2146290bcd8a6e3bb36e7e', './application/admin/view/public/frame_head.php', '1523243599', '1512447389', '1522141396'),
(2971, '60c0434ec73f60c7695450e9b77bf2bd', './application/admin/view/public/foot.php', '1522402123', '1506420984', '1522141396'),
(2972, 'bfd939dca06a53bc301cf7932f0cd0f7', './application/admin/view/public/style.php', '1523243599', '1516672549', '1522141396'),
(2973, 'bf217d8e0ef84b6344a9cb68b3f0423e', './application/admin/view/public/inner_page.php', '1523243599', '1512531078', '1522141396'),
(2974, 'dcb7de7a116a75ee20d69f5de5512025', './application/admin/view/public/success.php', '1522402123', '1517045519', '1522141396'),
(2975, '96a34a62bfbcef1c7d504a330d819292', './application/admin/view/public/notice.php', '1522402123', '1511164337', '1522141396'),
(2976, '926a91dfe9021df5eed1dd0f80fe6c74', './application/admin/view/public/error.php', '1522402123', '1517045547', '1522141396'),
(2977, 'e3184457a510613b093cf185d6750a32', './application/admin/view/public/frame_footer.php', '1523243599', '1515133728', '1522141396'),
(2978, 'f6c2beb075ce426bbf948820503260c3', './application/admin/view/public/container.php', '1523243599', '1515123645', '1522141396'),
(2979, 'aa4a74e3398816ded8aef6a67f136253', './application/admin/view/public/common_form.php', '1522402123', '1512635474', '1522141396'),
(2980, 'f09814088d35c07d6cd84243fe8ac910', './application/admin/view/public/exception.php', '1522402123', '1511236228', '1522141396'),
(2981, '89a7402a872e4791dc91ca628cf3aacb', './application/admin/view/public/edit_content.php', '1522402123', '1512552269', '1522141396'),
(2982, '2586763c52594c5657245e97c4eae46e', './application/admin/view/public/head.php', '1523245714', '1517273330', '1522141396'),
(2983, 'aa1d2f22e2c7e2a6621dc790b54ec906', './application/admin/view/public/inner_footer.php', '1522402123', '1512371341', '1522141396'),
(2984, '57a345e5c9a627a7f197da6fdd9fd375', './application/admin/view/wechat/wechat_news_category/create.php', '1522402123', '1510370527', '1522141396'),
(2985, 'dcf8075991e64b5453783ad59974c61e', './application/admin/view/wechat/wechat_news_category/select.php', '1522402123', '1515409879', '1522141396'),
(2986, 'c58ffb06f51cf85085c186adc1ffcd28', './application/admin/view/wechat/wechat_news_category/index.php', '1522402123', '1515409577', '1522141396'),
(2987, '9b4586d130ce3e42f010940f685dc50e', './application/admin/view/wechat/wechat_news_category/edit.php', '1522402123', '1511517974', '1522141396'),
(2988, '36bec7aba7f3e9cff5ba8830aa771865', './application/admin/view/wechat/reply/keyword.php', '1522402123', '1515135976', '1522141396'),
(2989, 'a1366571fddb9486331053a84545a056', './application/admin/view/wechat/reply/index.php', '1522402123', '1515490534', '1522141396'),
(2990, '0a3f2ca57235d6939851dea6f798b8b7', './application/admin/view/wechat/reply/add_keyword.php', '1522402123', '1516125721', '1522141396'),
(2991, 'c15acc9fa9e78d30b5c52d5eca3b5525', './application/admin/view/wechat/article_category/create.php', '1522402123', '1510370527', '1522141396'),
(2992, '75e79072636ee2f2897d6e2a9469ba94', './application/admin/view/wechat/article_category/index.php', '1522402123', '1515135628', '1522141396'),
(2993, 'caa0cb64b79bb426b1940e57352e64a7', './application/admin/view/wechat/article_category/edit.php', '1522402123', '1510565425', '1522141396'),
(2994, 'a92d22d11685af1c3ac7c7d016692d21', './application/admin/view/wechat/wechat_message/index.php', '1522402123', '1515136083', '1522141396'),
(2995, '752e3e5fc7b48fe91990e3848dbbdda3', './application/admin/view/wechat/wechat_user/tag.php', '1522637626', '1516779385', '1522141396'),
(2996, 'bbd77f95801a409aa98b5b814c24f05b', './application/admin/view/wechat/wechat_user/group.php', '1522637622', '1516780072', '1522141396'),
(2997, 'd72e2e7bada1169e9e225c273522815d', './application/admin/view/wechat/wechat_user/index.php', '1522402123', '1520220170', '1522141396'),
(2998, 'a2daecf39eaa0923a4fae0282397d663', './application/admin/view/wechat/wechat_template/index.php', '1522402123', '1515746353', '1522141396'),
(2999, '50926be4193122b978569f39d32a67ce', './application/admin/view/wechat/wechat_news/create.php', '1522402123', '1515136415', '1522141396'),
(3000, '35571dd35e52401d6de28ed71340a72e', './application/admin/view/wechat/wechat_news/index.php', '1522402123', '1515136229', '1522141396'),
(3001, '0a4fdc7fd663269a3e6c6aa269acf03e', './application/admin/view/wechat/wechat_news/merchantindex.php', '1522402123', '1515136327', '1522141396'),
(3002, '5c8eb76c8df38451fc4a8a6345fabbbc', './application/admin/view/wechat/menus/index.php', '1522402123', '1515135722', '1522141396'),
(3003, 'b52e6a5a5a24f0a9ef5c4c9d6ee83efc', './application/admin/model/store/StoreCouponIssue.php', '1522402123', '1516169163', '1522141396'),
(3004, 'b226fd68c872f270cfb426d6acda726d', './application/admin/model/store/StoreProduct.php', '1522402123', '1519974025', '1522141396'),
(3005, '6e473c327c30a344075e7ec0e238927e', './application/admin/model/store/StoreCategory.php', '1523154150', '1512984881', '1522141396'),
(3006, '55d6a46fbe49de7db6619fe83d08deee', './application/admin/model/store/StoreProductAttr.php', '1522402123', '1512985128', '1522141396'),
(3007, '809ffd885f9459798df8b29c41788ec6', './application/admin/model/store/StoreCouponUser.php', '1522402123', '1516074857', '1522141396'),
(3008, '62e96b66fb500ca592f83df9dec0a362', './application/admin/model/store/StoreServiceLog.php', '1522402123', '1516983202', '1522141396'),
(3009, '6ea16e95b5920a2269aacee17f62bcc1', './application/admin/model/store/StoreCoupon.php', '1522402123', '1516244621', '1522141396'),
(3010, '49bd3bc8a8972376e896448a995e99d0', './application/admin/model/store/StoreProductRelation.php', '1522402123', '1513569202', '1522141396'),
(3011, 'a5f1aa9f439906d5888dcd56dcf55e60', './application/admin/model/store/StoreProductAttrValue.php', '1523170394', '1514256504', '1522141396'),
(3012, '20c251c6f702b1dd6e09485c1734a786', './application/admin/model/store/StoreCombination.php', '1523169780', '1521698812', '1522141396'),
(3013, 'b0a376b3bc96a683a3c3d3f11926ef8b', './application/admin/model/store/StoreProductAttrResult.php', '1522402123', '1512786034', '1522141396'),
(3014, '2557947ea3184f4673403d28edce8236', './application/admin/model/store/StoreOrderStatus.php', '1523178531', '1516948378', '1522141396'),
(3015, 'faec8fbe578876a013810889ab55d5ee', './application/admin/model/store/StoreCouponIssueUser.php', '1522402123', '1516673382', '1522141396'),
(3016, '80475329419ac5034d2cc7e874452659', './application/admin/model/store/StoreOrder.php', '1523239248', '1521597765', '1522141396'),
(3017, 'd12d43b34d3177d838c02d0d0bcbe429', './application/admin/model/store/StoreService.php', '1522402123', '1516981919', '1522141396'),
(3018, 'c70143280d4a4e6facc962557139a432', './application/admin/model/store/StoreProductReply.php', '1522402123', '1513646624', '1522141396'),
(3019, '45a261a9268b2a2d05c20fe47188ffd5', './application/admin/model/system/SystemGroupData.php', '1523169778', '1515984965', '1522141396'),
(3020, '1a94c90076ac4f14c47320b959332c66', './application/admin/model/system/SystemFile.php', '1522402123', '1513675395', '1522141396'),
(3021, 'b925edf224b877ab428de4007a8d51f0', './application/admin/model/system/SystemConfigTab.php', '1522718464', '1512985233', '1522141396'),
(3022, '6ec70926a5b26b3aa96dd64d0d0253ab', './application/admin/model/system/SystemMenus.php', '1523239248', '1516852776', '1522141396'),
(3023, '601475284c380a71f63074b6510d8dea', './application/admin/model/system/SystemGroup.php', '1522402123', '1512985246', '1522141396'),
(3024, '135d43dcd330de31004e3dad9ae2cc23', './application/admin/model/system/SystemAdmin.php', '1523239170', '1520903945', '1522141396'),
(3025, 'b2b01a5805c055bdb7cacadf304e782c', './application/admin/model/system/SystemConfig.php', '1523239248', '1515555522', '1522141396'),
(3026, '1635346ae507060d379a09f3b30269b4', './application/admin/model/system/SystemRole.php', '1523239248', '1519355472', '1522141396'),
(3027, 'fe3af14ab18fed8af016c00a66a7ab76', './application/admin/model/system/SystemLog.php', '1523243271', '1515480032', '1522141396'),
(3028, '87b72c82eb252b767bb3b7f5663c4ec0', './application/admin/model/user/UserEnter.php', '1522402123', '1520218694', '1522141396'),
(3029, 'a79dbcaad8ac2eabc90cdad9517a6dc9', './application/admin/model/user/UserExtract.php', '1522636531', '1520317923', '1522141396'),
(3030, '6ba2e24275fc406589498f4d6c8faa04', './application/admin/model/user/User.php', '1522636507', '1521706217', '1522141396'),
(3031, '484a06c0c011f8736c02cc43e464a898', './application/admin/model/user/UserRecharge.php', '1522636529', '1515466874', '1522141396'),
(3032, '8a0305e608b5127fddbf085ee2a94bbc', './application/admin/model/user/UserNoticeSee.php', '1523169778', '1515235749', '1522141396'),
(3033, 'e4f1926520bd5fc3d6836a1919aefaa2', './application/admin/model/user/UserNotice.php', '1522402123', '1515512084', '1522141396'),
(3034, '26e2bdb3714cc78c5a26694398be1e60', './application/admin/model/wechat/WechatUser.php', '1523170034', '1516934883', '1522141396'),
(3035, 'fd68f816dadeaba7024149e0a7eac4d4', './application/admin/model/wechat/WechatNewsCategory.php', '1522402123', '1512985553', '1522141396'),
(3036, '076f85985e680dd741e7511b01fc0cbb', './application/admin/model/wechat/WechatMessage.php', '1522636559', '1514277702', '1522141396'),
(3037, '23a0669dc7c5f14b06a54e780f574ef9', './application/admin/model/wechat/WechatNews.php', '1522402123', '1515118591', '1522141396'),
(3038, 'b8d9ea91082fe5372d5488faebf7e4b4', './application/admin/model/wechat/WechatReply.php', '1522402123', '1515400456', '1522141396'),
(3039, 'b7bedf7369c94ca50c24fcf8393bf9fd', './application/admin/model/wechat/WechatQrcode.php', '1522402123', '1513909794', '1522141396'),
(3040, '65bb456f531c99308adf2a05de018c5c', './application/admin/model/wechat/WechatTemplate.php', '1522402123', '1514427053', '1522141396'),
(3041, 'fbf6afadb8cb10f5380ee6f47b54e919', './application/admin/model/wechat/ArticleCategory.php', '1522402123', '1513915124', '1522141396'),
(3042, '91eaa0aaf80934f5f52935b4a807ca97', './application/admin/controller/Login.php', '1523239171', '1515491246', '1522141396'),
(3043, '25d4d7e5e6c812b02cea9616ed5ea840', './application/admin/controller/store/StoreCouponIssue.php', '1522402123', '1516673215', '1522141396'),
(3044, '1e768df17fcff53d0f27fabb364e63f3', './application/admin/controller/store/StoreProduct.php', '1522402123', '1521084960', '1522141396'),
(3045, '493931296c41419b0b0fe1094a468852', './application/admin/controller/store/StoreCategory.php', '1523154150', '1512553332', '1522141396'),
(3046, '42b0d1af2fc55d0efa733a737ade90e3', './application/admin/controller/store/StoreOrderPink.php', '1522402123', '1521526550', '1522141396'),
(3047, 'b7b9c2661eb476705a8c2289fbf5e044', './application/admin/controller/store/StoreCouponUser.php', '1522402123', '1516863441', '1522141396'),
(3048, 'e5fd10785512fc4a96f63aa81a02b277', './application/admin/controller/store/StoreInfoMana.php', '1522402123', '1513562841', '1522141396'),
(3049, '2ca1afd2451460beb01b155c0e50b2cc', './application/admin/controller/store/StoreCoupon.php', '1522402123', '1516862941', '1522141396'),
(3050, 'c590dff46f2517736cca7f5ea50c57e2', './application/admin/controller/store/StoreCombination.php', '1522402123', '1521691593', '1522141396'),
(3051, 'dcb0c4e3dd80ce1c191a8077f4d5b01f', './application/admin/controller/store/StoreOrder.php', '1523243271', '1521507906', '1522141396'),
(3052, '8d266e54a2ea481ca1bc8faa0f596bfa', './application/admin/controller/store/StoreService.php', '1522402123', '1516982035', '1522141396'),
(3053, 'a3ff14574d8c178034617251081ff926', './application/admin/controller/store/StoreProductReply.php', '1522402123', '1513646145', '1522141396'),
(3054, '063d51e1e2f1b90c1961008e6cf8ac9b', './application/admin/controller/system/Clear.php', '1522402123', '1522313935', '1522313940'),
(3055, 'd96c3ecfad5101fae6a5da649153bf74', './application/admin/controller/system/SystemGroupData.php', '1522402123', '1514423354', '1522141396'),
(3056, 'b511c26dd116ca82abe325aa63fc1d5a', './application/admin/controller/system/SystemFile.php', '1523245766', '1516180061', '1522141396'),
(3057, 'cd8c1838a02a01bd77f6a1f4afa00355', './application/admin/controller/system/SystemConfigTab.php', '1522402123', '1512523853', '1522141396'),
(3058, 'e737b6a2eb95435b699f0af490d0fae5', './application/admin/controller/system/SystemMenus.php', '1522728703', '1515469655', '1522141396'),
(3059, '6cb5094f5f41b6033e10322e927263dd', './application/admin/controller/system/SystemGroup.php', '1522717658', '1513048107', '1522141396'),
(3060, '4f8d475f799f0f29de1f9901641e10e2', './application/admin/controller/system/SystemAdmin.php', '1523245712', '1520903911', '1522141396'),
(3061, 'c42cdb51d48336fb65e610d234a704cf', './application/admin/controller/system/SystemConfig.php', '1522718464', '1512523242', '1522141396'),
(3062, '856c2fb75b54df203472a604a5242252', './application/admin/controller/system/SystemRole.php', '1523245709', '1520903745', '1522141396'),
(3063, 'baeb27ef9b8fddf6661e30abf97da6e0', './application/admin/controller/system/SystemLog.php', '1522402123', '1515469954', '1522141396'),
(3064, '9369e1667d22b9b11adf791d4edf790e', './application/admin/controller/AuthController.php', '1523239170', '1512978200', '1522141396'),
(3065, 'fcf634b11b67d704eca2141bf5855320', './application/admin/controller/Index.php', '1523239170', '1522218955', '1522218959'),
(3066, '2765a71a61eeaedcb16468d6995161a3', './application/admin/controller/Common.php', '1522402123', '1512615960', '1522141396'),
(3067, '3b8891b2d38ad7a6b45fbbe42b5d5bf7', './application/admin/controller/user/UserEnter.php', '1522402123', '1517020998', '1522141396'),
(3068, '81f6ebbf3175aa104dc44ae029c20c86', './application/admin/controller/user/UserExtract.php', '1522636531', '1520243292', '1522141396'),
(3069, 'e93ea8e8f58645bf5f90ab6c68a8e3de', './application/admin/controller/user/User.php', '1522636507', '1521706034', '1522141396'),
(3070, '386870db3a9d8035f90ea2a301249168', './application/admin/controller/user/UserRecharge.php', '1522636529', '1515478456', '1522141396'),
(3071, 'f1d05e3cfe24658e85021f80df1f4d11', './application/admin/controller/user/UserNotice.php', '1522402123', '1515520293', '1522141396'),
(3072, 'a8575a4e25db4e9e7522594ee621df6a', './application/admin/controller/wechat/WechatUser.php', '1522636453', '1516934903', '1522141396'),
(3073, '1cc17415ed6a48e02c383bb164d558d2', './application/admin/controller/wechat/WechatNewsCategory.php', '1522402123', '1512464097', '1522141396'),
(3074, 'cae75f8c0c3e03b7b313c955841b9b17', './application/admin/controller/wechat/WechatMessage.php', '1522636559', '1512376066', '1522141396'),
(3075, 'ae14787e40ad39330dab23746ada5715', './application/admin/controller/wechat/Reply.php', '1522402123', '1512461623', '1522141396'),
(3076, '24f8ceb7574acd184a8a708e229f23fc', './application/admin/controller/wechat/WechatNews.php', '1522402123', '1516127006', '1522141396'),
(3077, '2925bf825644781cc8927b7ea0f60ca4', './application/admin/controller/wechat/WechatTemplate.php', '1522402123', '1522221964', '1522221967'),
(3078, '3db884b734d329c8d95e40150cf757ab', './application/admin/controller/wechat/ArticleCategory.php', '1522402123', '1513915022', '1522141396'),
(3079, '12fe88c8afb65eb00a3263cfce11ba88', './application/admin/controller/wechat/Menus.php', '1522402123', '1520045399', '1522141396'),
(3080, '73b1958e84f95fdb857c6120af268e73', './application/admin/config.php', '1523239170', '1516781621', '1522141396'),
(3081, 'ca4508cdbba3c76784a50a052c9498ab', './application/admin/library/formBuilderDriver/Select.php', '1523178524', '1512543189', '1522141396'),
(3082, 'd90928cc43ab533cb7cf7212b7e44fa2', './application/admin/library/formBuilderDriver/Input.php', '1523178524', '1511494836', '1522141396'),
(3083, '56846241000698e9112d76330eb56f54', './application/admin/library/formBuilderDriver/ColorPicker.php', '1522402123', '1507966182', '1522141396'),
(3084, '2ef8a117300d28fa7ae88c05d20e45f5', './application/admin/library/formBuilderDriver/Radio.php', '1523180540', '1512350713', '1522141396'),
(3085, '700f10e6700bae8ad4dfff0f873be67e', './application/admin/library/formBuilderDriver/InputNumber.php', '1523179698', '1508743758', '1522141396'),
(3086, '378a2d54ad71a71f0710ae7970202c8a', './application/admin/library/formBuilderDriver/DatePicker.php', '1522402123', '1509612656', '1522141396'),
(3087, '4ca9da09d485ae10dc5da784e260ea00', './application/admin/library/formBuilderDriver/FormBuilderTrait.php', '1522402123', '1507949074', '1522141396'),
(3088, '63d61e72de5a8c54b0becad07f5800da', './application/admin/library/formBuilderDriver/TimePicker.php', '1522402123', '1507964994', '1522141396'),
(3089, 'cc418384656fb1fa8b1a87965ad6010a', './application/admin/library/formBuilderDriver/Driver.php', '1523178524', '1512543234', '1522141396'),
(3090, '53fda1d8ef3bbb475c48c9257e844ad3', './application/admin/library/formBuilderDriver/Checkbox.php', '1522402123', '1512350734', '1522141396'),
(3091, 'bfe3b7fea74abfdea206b41dc4db6d02', './application/admin/library/formBuilderDriver/Upload.php', '1522402123', '1508917044', '1522141396'),
(3092, 'fa94c6d182d1acb547d135d0c3c97a28', './application/admin/library/FormBuilder.php', '1523178524', '1522313407', '1522313415'),
(3093, '51d4bf905ac570fdd8f7ce04380256fc', './application/admin/common.php', '1523239170', '1520225396', '1522141396'),
(3094, 'b70dddb11e41789a946f23e4704c59e0', './application/tags.php', '1522402123', '1511834679', '1522141396'),
(3095, '5cc8a02be988615b049f5abecba2f3a0', './application/.htaccess', '1522402123', '1506330862', '1522141396'),
(3096, 'd41d8cd98f00b204e9800998ecf8427e', './application/index.html', '1522402123', '1513733774', '1522141396'),
(3097, 'd16ff3e7581849d53f83249b03c7e6f7', './application/route.php', '1522402123', '1511170438', '1522141396'),
(3098, 'cfad82cc9cbb33d331a361b910622e86', './application/command.php', '1522402123', '1506330862', '1522141396'),
(3099, '8f239d5be400f174cdb1c20da6a3b933', './application/config.php', '1522402123', '1522203929', '1522203933'),
(3100, '86351da04951adb02275e4289dcbadc4', './application/wap/view/article/visit.php', '1522402123', '1515148081', '1522141396'),
(3101, '13f06b707f3486f33c07f92c0eaed171', './application/wap/view/article/index.php', '1522402123', '1515145191', '1522141396'),
(3102, '31c4b2464d31d429161da4b2266d3568', './application/wap/view/login/index.php', '1522398473', '1516256067', '1522141396'),
(3103, 'deef7100f8db79b134d3ecebf914f5ec', './application/wap/view/merchant/agreement.php', '1522402123', '1513995187', '1522219747'),
(3104, '3cc315aa0ca6702c30229f566275f0d1', './application/wap/view/merchant/apply.php', '1522402123', '1517019912', '1522219747'),
(3105, '47a9d39e67d85c13f3226b5511eb0dc1', './application/wap/view/store/reply_list.php', '1522402123', '1515576692', '1522141396'),
(3106, 'be1ea2fd144067b0ea03e99659707974', './application/wap/view/store/combination_detail.php', '1522402123', '1521698714', '1522141396'),
(3107, '11ef253fc1bef15ac2c5d2850b751f44', './application/wap/view/store/cart.php', '1523170386', '1516949026', '1522141396'),
(3108, '35e0d2b97df882d6b8b8e3d103fb442f', './application/wap/view/store/issue_coupon.php', '1522402123', '1516670554', '1522141396'),
(3109, '6f582627152ce67043fb880b73ae3b0b', './application/wap/view/store/combination.php', '1522402123', '1522305910', '1522305914'),
(3110, '312a86b410d23b26ed328e5888a8f5ce', './application/wap/view/store/confirm_order.php', '1523170024', '1522308247', '1522308343'),
(3111, '4f3f0ae5ffca60e029b125463a7563f5', './application/wap/view/store/index.php', '1522398553', '1521432341', '1522141396'),
(3112, '021f7415317aa63657d917671f218702', './application/wap/view/store/category.php', '1523147645', '1521532097', '1522141396'),
(3113, 'a09e2a484fcaa177f6b019a4219564d9', './application/wap/view/store/combination_order.php', '1522402123', '1522308235', '1522308349'),
(3114, 'a60a188ffc600a6de81672b90b3ec948', './application/wap/view/store/detail.php', '1523169805', '1520243194', '1522141396'),
(3115, '6c520c08b01dfa3b3663df09def91aae', './application/wap/view/index/spread.php', '1522402123', '1520044034', '1522141396'),
(3116, '291ba6c2fd86db3eeac62b2c9bcd7f76', './application/wap/view/index/index.php', '1522402123', '1522310153', '1522310161'),
(3117, 'bf4ebf86068ac976caece13452122edd', './application/wap/view/index/about.php', '1522402123', '1522309674', '1522309678'),
(3118, '6585778504e8ede299170c7140c330d2', './application/wap/view/service/service_ing.php', '1522402123', '1516991483', '1522141396'),
(3119, '009ec00b63d49670263594300d0715f4', './application/wap/view/service/service_list.php', '1522402123', '1517062891', '1522141396'),
(3120, '78737ac30b1088486d212bace5b2e86a', './application/wap/view/service/server_ing.php', '1522402123', '1514650049', '1522141396'),
(3121, 'b9563fa9ee9ad34a9bf35c1402ca594e', './application/wap/view/service/service_new.php', '1522402123', '1516986596', '1522141396'),
(3122, '489dc3209e361dfb15c6da365c46dbe3', './application/wap/view/public/foot.php', '1523169805', '1512972627', '1522141396'),
(3123, '37ff22e71052547dcde070905fe0c43e', './application/wap/view/public/style.php', '1523169805', '1521443674', '1522141396'),
(3124, '4f4c91e43089aef4f8b7cd8105492863', './application/wap/view/public/right_nav.php', '1523169805', '1516609466', '1522141396'),
(3125, 'be254b38d5eb45d994e9cc5eca907c74', './application/wap/view/public/requirejs.php', '1523169805', '1521597207', '1522141396'),
(3126, '626e610ee59dc7fd21bf1f21be52e38f', './application/wap/view/public/success.php', '1522402123', '1513061461', '1522141396'),
(3127, '8e1404c3d113d671423f416ea5ee4380', './application/wap/view/public/store_menu.php', '1523170386', '1520491160', '1522141396'),
(3128, '0d59e59918f7a2bd574c4e20b1fb0289', './application/wap/view/public/error.php', '1522398475', '1521708994', '1522141396'),
(3129, '57bd76726588a824aabb5e86d9f36631', './application/wap/view/public/container.php', '1523169805', '1514858159', '1522141396'),
(3130, '3e740aa09adddad723ac13404ccf6777', './application/wap/view/public/head.php', '1523169805', '1512972128', '1522141396'),
(3131, '96dbc0398d85877c264aca781ac1be5b', './application/wap/view/my/commission.php', '1522402123', '1522308240', '1522308346'),
(3132, '9ae02b8cb658e7e34a1e4d369b961daf', './application/wap/view/my/user_pro.php', '1522402123', '1522308289', '1522308324'),
(3133, '43da3ddef6d6ba50e72eea59f9d910b7', './application/wap/view/my/edit_address.php', '1522402123', '1521446257', '1522141396'),
(3134, '6e753f73e6cab1e145544abc5475de0b', './application/wap/view/my/coupon.php', '1522402123', '1515550664', '1522141396'),
(3135, 'c1933b1647400b2e54b83af61fb61fd0', './application/wap/view/my/balance.php', '1522402123', '1522308211', '1522308669'),
(3136, 'db0f90dd59ba6b68613f789ed731c529', './application/wap/view/my/order_pink.php', '1522402123', '1521704125', '1522141396'),
(3137, '785288dfe02e012d6981658e2986b981', './application/wap/view/my/order_pink_after.php', '1522402123', '1520211784', '1522141396'),
(3138, 'f2dcc55479b4fa7262c27104a32325d0', './application/wap/view/my/address.php', '1522402123', '1514187584', '1522141396'),
(3139, '8dce705d72d55c2f637e49531c0ff9db', './application/wap/view/my/order_customer.php', '1522402123', '1521708615', '1522141396'),
(3140, '5b98dad805cb9f7de88cb4ae3ee935e3', './application/wap/view/my/integral.php', '1522402123', '1515138786', '1522141396'),
(3141, 'c50516800391d3488674c2686eb49272', './application/wap/view/my/extract.php', '1522402123', '1522308253', '1522308339'),
(3142, 'd5ff78ecafed48612630cb4927420169', './application/wap/view/my/index.php', '1522402123', '1522310935', '1522310940'),
(3143, 'aebbfafb4004a8daa471f6b211ef98f7', './application/wap/view/my/notice.php', '1522402123', '1521453207', '1522141396'),
(3144, '26e446e8cebc9f0532ab9f663126b9df', './application/wap/view/my/order_list.php', '1522402123', '1521708053', '1522141396'),
(3145, 'a59f0c7228fab13d09fa259e8767e845', './application/wap/view/my/express.php', '1522402123', '1515553684', '1522141396'),
(3146, '053e50a3a5fa0c8926d6c10dc4016fc0', './application/wap/view/my/sign_in.php', '1522402123', '1520585668', '1522141396'),
(3147, 'ebd035f8f38f17b8dca5ac8a633229b6', './application/wap/view/my/collect.php', '1522402123', '1522288423', '1522288432'),
(3148, 'f2b599aa108410c629395033b87f71cc', './application/wap/view/my/spread_list.php', '1522402123', '1522308273', '1522308332'),
(3149, '2a85d1f9ecc03ad5a874ffc72ce255a5', './application/wap/view/my/order.php', '1523170034', '1522306258', '1522306264'),
(3150, '7c35cc673ca575f11ceb5af50fa7dbb2', './application/wap/view/my/order_reply.php', '1522402123', '1514865615', '1522141396'),
(3151, '7913f2b5f05a44a326c35f08c0b38a86', './application/wap/model/store/StoreOrderCartInfo.php', '1523170031', '1515577734', '1522141396'),
(3152, '6417f0a35a63c2316ceb85c5b247c21c', './application/wap/model/store/StoreCouponIssue.php', '1523169780', '1516604189', '1522141396'),
(3153, '7bc11af594efb0208332f31f8179f40c', './application/wap/model/store/StoreProduct.php', '1523169780', '1516977386', '1522141396'),
(3154, 'f51ea797db8ccc34829f4e1b329d19fe', './application/wap/model/store/StoreCategory.php', '1523169778', '1515139276', '1522141396'),
(3155, '05af84854c9ffb9f8ed7780c87e40194', './application/wap/model/store/StoreProductAttr.php', '1523169805', '1515139374', '1522141396'),
(3156, 'e5604b5d6e2cbaf89eb3bd302e03b486', './application/wap/model/store/StoreCouponUser.php', '1523170024', '1520903233', '1522141396'),
(3157, '8469dba3b7ea8f19eda13b877227b79e', './application/wap/model/store/StoreServiceLog.php', '1522402123', '1514655768', '1522141396'),
(3158, 'f11153d44ae9f976c1a12bfa7718a6dd', './application/wap/model/store/StoreCoupon.php', '1522402123', '1516603910', '1522141396'),
(3159, 'a7b83bdb6086c517d677b082bd67e87b', './application/wap/model/store/StorePink.php', '1523169778', '1521693209', '1522141396'),
(3160, '8008406d05cfa1f5e1dcdcf24c3dfb34', './application/wap/model/store/StoreProductRelation.php', '1523169805', '1515139381', '1522141396'),
(3161, 'fdf2047a395344a87b7bb0a41b17379d', './application/wap/model/store/StoreCombination.php', '1522402123', '1521705519', '1522141396'),
(3162, '3d5168c0f0b4de4cd1b4e3a1e8d841ae', './application/wap/model/store/StoreCart.php', '1523169807', '1521084823', '1522141396'),
(3163, 'a959cc0d519a37fd8fbab5c724e69b0b', './application/wap/model/store/StoreOrderStatus.php', '1523170031', '1514452684', '1522141396'),
(3164, 'fc536c61dd6cf7f77a7779f17dc0ea36', './application/wap/model/store/StoreCouponIssueUser.php', '1523169780', '1520824151', '1522141396'),
(3165, '78896b59ddc6bf241ca3c9909bebfc27', './application/wap/model/store/StoreOrder.php', '1523170024', '1521708496', '1522141396'),
(3166, 'df8314d620e2cef46c4b708b61624c09', './application/wap/model/store/StoreService.php', '1522402123', '1514646795', '1522141396'),
(3167, 'c1d5323106f4c84888d78a851bec9a75', './application/wap/model/store/StoreProductReply.php', '1523169805', '1514874270', '1522141396'),
(3168, '9ec560e86049c9c307229a7abb25eb69', './application/wap/model/user/WechatUser.php', '1523170031', '1519981350', '1522141396'),
(3169, '2cdcf867f9aa939e4b3c9ec4b9668b87', './application/wap/model/user/UserEnter.php', '1522402123', '1517019811', '1522141396'),
(3170, '5a5e95ca05203ebc2636d3195f26d203', './application/wap/model/user/UserExtract.php', '1522402123', '1522308303', '1522308316'),
(3171, '410c96b2752e339b2dac4b35a9d8993a', './application/wap/model/user/UserAddress.php', '1523170026', '1514191326', '1522141396'),
(3172, '88febcf3d342bf4809e7cd60c3d425e2', './application/wap/model/user/User.php', '1523169760', '1521447734', '1522141396'),
(3173, 'bd7148fc82ad03f1609302808d5d2e80', './application/wap/model/user/UserRecharge.php', '1522402123', '1515141295', '1522141396'),
(3174, 'f64ce2dc2b33307f146e80f77509b9a4', './application/wap/model/user/UserSign.php', '1522402123', '1520922909', '1522141396'),
(3175, '16cc1bca8852465935b64351ec995cdf', './application/wap/model/user/UserNotice.php', '1523169778', '1515522256', '1522141396'),
(3176, 'eefccc50710eed6ca4f14de8e09734aa', './application/wap/model/user/UserBill.php', '1523170031', '1514621030', '1522141396'),
(3177, 'da571301248e9b059a426591b2bf1a37', './application/wap/model/wap/ArticleCategory.php', '1522402123', '1515139183', '1522141396'),
(3178, '5b238df96484c4b8d1a6788c888ce39e', './application/wap/controller/Service.php', '1522402123', '1516991691', '1522141396'),
(3179, '93d13670495498654f3e4ff803626d11', './application/wap/controller/Login.php', '1523169760', '1522297459', '1522297464'),
(3180, 'b99241d052ceca1136145aba9c11a50d', './application/wap/controller/Article.php', '1522402123', '1515139224', '1522141396'),
(3181, '6174fa765285d4001d3d2db460664924', './application/wap/controller/AuthController.php', '1523169760', '1520297741', '1522141396'),
(3182, '7f678e8640c44004437ecd595addfa4d', './application/wap/controller/Index.php', '1523169760', '1522311734', '1522311739'),
(3183, 'c6f7e09b2f58e0ed4482619cf6ca8590', './application/wap/controller/Merchant.php', '1522402123', '1517019705', '1522218569'),
(3184, 'd5341a157d666cb5d4cd4ed40d812fa5', './application/wap/controller/PublicApi.php', '1523169780', '1522297234', '1522297239'),
(3185, '1d0370d493cbab38f240ce5eb8ce6719', './application/wap/controller/AuthApi.php', '1523169780', '1521707465', '1522141396'),
(3186, '8414d3edfe4146a9beacf5e891a9a6b6', './application/wap/controller/Store.php', '1523169805', '1521705506', '1522141396'),
(3187, '242c34ca59b19976ed4d1d75e292f5aa', './application/wap/controller/My.php', '1523170034', '1521708755', '1522141396'),
(3188, '1bbf79b1c39975877fbd0380acf1aca7', './application/wap/config.php', '1523169759', '1515565894', '1522141396'),
(3189, 'bf9086dcd3a57c2c2ca34c45838d8e6f', './application/wap/common.php', '1523169760', '1521171492', '1522141396'),
(3190, '7851b10522296f1748535775548e77e2', './application/common.php', '1522402123', '1520216589', '1522141396'),
(3191, 'c444e8a12cc401a5ba874624d7c3dcc0', './application/wechat/controller/Index.php', '1522402123', '1514275195', '1522141396'),
(3192, '1e4cb1c358065e7b0478e91a6146e7a2', './extend/basic/WapBasic.php', '1523169760', '1521709080', '1522141396'),
(3193, '2225b6b0bc3c25b2b258a9bfed6dd1bb', './extend/basic/SystemBasic.php', '1523239170', '1516693353', '1522141396'),
(3194, 'bab2cf1950c721d416224b76344ffc11', './extend/basic/WapException.php', '1522402123', '1516959984', '1522141396'),
(3195, 'f730a7452a5ee15b90856c404e0d9d0e', './extend/basic/ModelBasic.php', '1523239170', '1516074728', '1522141396'),
(3196, '66950bd4b95d902ab913fa121e215c31', './extend/Api/Express.php', '1522402123', '1515569689', '1522141396'),
(3197, '9cb8b374677a6ca83ab66c001b0bfa45', './extend/traits/CurdControllerTrait.php', '1522728703', '1516238209', '1522141396'),
(3198, 'a8cee4aa2d42e8e1a5d8bc0fe3912757', './extend/traits/ModelTrait.php', '1523239170', '1515153214', '1522141396'),
(3199, '04d3529b485a742c577ff52a15f06477', './extend/service/HookService.php', '1523239247', '1514623131', '1522141396'),
(3200, 'e4445124e8b0a5158fe88b266a346b20', './extend/service/ResultService.php', '1522402123', '1512611515', '1522141396'),
(3201, '3431d26fa53dadf65fe39dcd2b0d45be', './extend/service/SystemConfigService.php', '1523169760', '1515555744', '1522141396'),
(3202, '666fd44ec4686b097373a2c838c1e12a', './extend/service/JsonService.php', '1523169780', '1514425265', '1522141396'),
(3203, '1aa2de4b032e177a3d8b3ab74f3f93f3', './extend/service/ExportService.php', '1522402123', '1516766062', '1522141396'),
(3204, '751c01c5c084deaa121c770de2712b6c', './extend/service/WechatTemplateService.php', '1523170031', '1520237398', '1522141396'),
(3205, 'd57481be483051629445ab01ec42101e', './extend/service/QrcodeService.php', '1522402123', '1513909472', '1522141396'),
(3206, '0bf46689f128370d8003f45d13c877bc', './extend/service/GroupDataService.php', '1523169778', '1515985053', '1522141396'),
(3207, '528ff205370836cadd5a1c8c8709daed', './extend/service/CacheService.php', '1523170031', '1515554120', '1522141396'),
(3208, '49dd246d1e23c4b4d677a4de03808685', './extend/service/WechatService.php', '1523169760', '1519379289', '1522141396'),
(3209, '480d32d9df1953f943b7ba5591f63e43', './extend/service/UploadService.php', '1522402123', '1514859879', '1522141396'),
(3210, 'de717da66487ca478840ef3d2bc72bc5', './extend/service/UtilService.php', '1523239177', '1520062449', '1522141396'),
(3211, '3d27be54a3cd3d2e5f60725c98a1d9af', './extend/service/HttpService.php', '1522402123', '1515547256', '1522141396'),
(3212, 'b119809bbc809fc877b705481f3de988', './extend/behavior/system/SystemBehavior.php', '1523239247', '1512978167', '1522141396'),
(3213, 'c35551633617239c4470841b7f4f830f', './extend/behavior/wap/WapBehavior.php', '1523169760', '1522220199', '1522220199'),
(3214, '3aab5d72b6d559039d33c6b1207c7aa4', './extend/behavior/wap/UserBehavior.php', '1522402123', '1517020968', '1522141396'),
(3215, 'de44b980fd89775ac48f093c65e67d6d', './extend/behavior/wap/StoreProductBehavior.php', '1523170031', '1521450340', '1522141396'),
(3216, '76290f692b806736f2e0179c6ded8c3a', './extend/behavior/wechat/PaymentBehavior.php', '1523170032', '1516075015', '1522141396'),
(3217, 'b70972375dc35af7dfe24ddfde74bc8d', './extend/behavior/wechat/MaterialBehavior.php', '1522402123', '1512003517', '1522141396'),
(3218, '3d3ba9e345e85a489b38d4498a8f5454', './extend/behavior/wechat/UserBehavior.php', '1522402123', '1516097194', '1522141396'),
(3219, '2509883c944464b7418b7aeab663bb37', './extend/behavior/wechat/MessageBehavior.php', '1522402123', '1515141388', '1522141396'),
(3220, '3c3d9d2069c42942fcdfe85a389b98a8', './extend/behavior/wechat/QrcodeEventBehavior.php', '1522402123', '1520044591', '1522141396'),
(3221, '532dc601e38c3f91497b13f3bd6d0d55', './public/system/util/mpVuePackage.js', '1522402125', '1508739816', '1522141397'),
(3222, '66b087ccab3737680a58e00132730d08', './public/system/util/mpFrame.js', '1523245084', '1523245080', '1523245083'),
(3223, 'a696954c65b196751a086615938844aa', './public/system/util/mpVuePackage-compiled.js', '1522402125', '1508739816', '1522141397'),
(3224, '71a9174da489c02e737e42845e9c29bc', './public/system/util/mpTableBuilder-compiled.js', '1522402125', '1509694132', '1522141397'),
(3225, '6d6e04b1afbaa03d82acbd60c8c838f6', './public/system/util/mpVueComponent.js', '1522402125', '1507607804', '1522141397'),
(3226, '4e162240e7c9b93d3609527bc1bff780', './public/system/util/mpTableBuilder.js', '1522402125', '1509694130', '1522141397'),
(3227, '46661f839a096c9473a711c29bf21676', './public/system/util/mpFormBuilder-compiled.js', '1522402125', '1509694322', '1522141397'),
(3228, '01c3bf7bde5629ba5bdf220dff1e8fd4', './public/system/util/mpFormBuilder-bak-compiled.js', '1522402125', '1508723108', '1522141397'),
(3229, '8f28aef1a0ed282e81061d95403b4921', './public/system/util/mpBuilder.js', '1523178525', '1509604396', '1522141397'),
(3230, '4c8c4f7048d8693f253bcdd4e4ffa217', './public/system/util/mpHelper.js', '1522402125', '1506481178', '1522141397'),
(3231, '16a632fd2b5f1cd61b2606f8569a9766', './public/system/util/mpFormBuilder-bak.js', '1522402125', '1508723106', '1522141397'),
(3232, '184fcd1d7a8bad538700f1cf22431d8b', './public/system/util/mpFrame-compiled.js', '1522402125', '1510129550', '1522141397'),
(3233, 'd77c5ff546e673caee26fdb662e361e2', './public/system/util/mpFormBuilder.js', '1523178525', '1516160663', '1522141397'),
(3234, '6773515c82883df04709d41fa8301b66', './public/system/util/mpBuilder-compiled.js', '1522402125', '1509604398', '1522141397'),
(3235, '91d7e6b2beaccff61193c311b0005c40', './public/system/js/index.js', '1523239248', '1522206770', '1522206773'),
(3236, 'bbf97988923f161fc0517fd5c54e08c5', './public/system/js/create.js', '1522402125', '1507705170', '1522141397'),
(3237, '389336103c1ac9b5b6ca973ab5708c11', './public/system/css/main.css', '1523178524', '1515409046', '1522141397'),
(3238, '1c93128220dc4933a1698b5101140b07', './public/system/images/mobile_head.png', '1522402125', '1510710550', '1522141397'),
(3239, '4d5ad1ad526ac91ee497c2ccf5f5a7ba', './public/system/images/error.png', '1522402125', '1510890206', '1522141397'),
(3240, '993d2fdda8e32a49c8696549a42b8262', './public/system/images/index.png', '1522402125', '1511141374', '1522141397'),
(3241, '544fc30e6b6e9d334d81dac6a47cd65b', './public/system/images/mobile_foot.png', '1522402125', '1511142050', '1522141397'),
(3242, '02e8382fbd4d175817d43aeb99672c0a', './public/system/images/bg-logo.jpg', '1523243256', '1522231378', '1522231454'),
(3243, 'cfd4b538dc1d8b96a09310cab5fa44c9', './public/system/images/head.gif', '1522402125', '1510710990', '1522141397'),
(3244, '0045fd55170554cbf71bf895cda72ff3', './public/system/images/logo.png', '1523243255', '1522217333', '1522217906'),
(3245, 'a7c10ef75327c9c51401b8acae1454bf', './public/system/images/001.jpg', '1522402125', '1510730902', '1522141397'),
(3246, '4aceec735667f697e9e43f1e37d3702a', './public/system/frame/js/contabs.min.js', '1523243262', '1513828366', '1522141397'),
(3247, '9a094379d98c6458d480ad5a51c4aa27', './public/system/frame/js/jquery-2.1.1.min.js', '1523243263', '1511842032', '1522141397'),
(3248, '5590ebaa05337b08806cab568a0c837a', './public/system/frame/js/ajaxfileupload.js', '1522718469', '1510742568', '1522141397'),
(3249, '60e6e410ad8d295cdb5661279ffae689', './public/system/frame/js/jquery-ui-1.10.4.min.js', '1522402125', '1510135218', '1522141397'),
(3250, 'aca25c2d181857d39b20fd762dd1fc29', './public/system/frame/js/welcome.min.js', '1522402125', '1510135218', '1522141397'),
(3251, 'f691f0f93d6ec69869605418412fb564', './public/system/frame/js/jquery-ui.custom.min.js', '1522402125', '1510135218', '1522141397'),
(3252, 'b0dc11d0a434aafe88908c7f33d71095', './public/system/frame/js/jquery.min.js', '1523243261', '1510135218', '1522141397'),
(3253, '93e3e3db994dbef5ec10a567f7cbeb5b', './public/system/frame/js/demo/flot-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3254, '1c91b701285883f44e7128045f8cddb2', './public/system/frame/js/demo/bootstrap-table-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3255, 'e47cf7b21e1c4a554be865c7799ab29a', './public/system/frame/js/demo/rickshaw-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3256, '63f2c8cde4a0058ecfd7b90ea78b43d2', './public/system/frame/js/demo/treeview-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3257, '6916ede0d283cbb4423c48b5cc162a6a', './public/system/frame/js/demo/echarts-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3258, '827325dc681db61ffe7f0c737b10306e', './public/system/frame/js/demo/bootstrap_table_test2.json', '1522402125', '1510135218', '1522141397'),
(3259, '8eab7146be8b9200e922f99590985c0d', './public/system/frame/js/demo/form-advanced-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3260, 'fb086da44b27713226ca6a98a1ac70bb', './public/system/frame/js/demo/peity-demo.min.js', '1523243263', '1510135218', '1522141397'),
(3261, '3f9fdef72ad17873b1a955059427829e', './public/system/frame/js/demo/morris-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3262, '4f233a40cad91bae8b2609ad3fce7237', './public/system/frame/js/demo/webuploader-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3263, 'c0273878eeb15db9f39f935261c3824c', './public/system/frame/js/demo/table_base.json', '1522402125', '1510135218', '1522141397'),
(3264, 'be7d5bed72b45233d6428edecd4a9096', './public/system/frame/js/demo/photos.json', '1522402125', '1510135218', '1522141397'),
(3265, '5d80921354a855e59634ddf2add62974', './public/system/frame/js/demo/sparkline-demo.min.js', '1523243263', '1510135218', '1522141397'),
(3266, 'dc26166d7ae42c2da10cba534a0d5752', './public/system/frame/js/demo/layer-demo.min.js', '1522402125', '1510135218', '1522141397'),
(3267, '9b06518d703ae6c1767d5ea3a9926967', './public/system/frame/js/demo/form-validate-demo.min.js', '1522402125', '1510135218', '1522141397');
INSERT INTO `eb_system_file` (`id`, `cthash`, `filename`, `atime`, `mtime`, `ctime`) VALUES
(3268, '4e8b6cc92a15ed079c2eba9c46048a75', './public/system/frame/js/demo/bootstrap_table_test.json', '1522402125', '1510135218', '1522141397'),
(3269, 'ceb877c657f927a446402fa8813bbd42', './public/system/frame/js/content.min.js', '1523243263', '1510135218', '1522141397'),
(3270, '2e53acbf6518a85fcad23b41db2c7425', './public/system/frame/js/plugins/validate/messages_zh.min.js', '1522402125', '1510135218', '1522141397'),
(3271, '0909b4a0efdadf7a2a679e1f43d7d7cf', './public/system/frame/js/plugins/validate/jquery.validate.min.js', '1522402125', '1510135218', '1522141397'),
(3272, 'c4cecde152e13e56df2fbbc91087ee69', './public/system/frame/js/plugins/toastr/toastr.min.js', '1522402125', '1510135218', '1522141397'),
(3273, '84068ec2ad4348a665956dc7b154bb4e', './public/system/frame/js/plugins/beautifyhtml/beautifyhtml.js', '1522402125', '1510135218', '1522141397'),
(3274, '54e9cfbf1a4ba61064ec4af2222d830a', './public/system/frame/js/plugins/treeview/bootstrap-treeview.js', '1522402125', '1510135218', '1522141397'),
(3275, '4a8d89b77da06fed1822f23e6fe7e416', './public/system/frame/js/plugins/clockpicker/clockpicker.js', '1522402125', '1510135218', '1522141397'),
(3276, '14d11eeb9d8bd92065150d311a83db48', './public/system/frame/js/plugins/bootstrap-table/extensions/angular/bootstrap-table-angular.min.js', '1522402125', '1510135218', '1522141397'),
(3277, 'd22ec6f60e7c5970e29f2e5fdc028069', './public/system/frame/js/plugins/bootstrap-table/extensions/angular/bootstrap-table-angular.js', '1522402125', '1510135218', '1522141397'),
(3278, 'fedeb47ca7c887d7048e063e61588cb5', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by-v2/bootstrap-table-group-by.js', '1522402125', '1510135218', '1522141397'),
(3279, '523778fd63a73c667c479edb6edf7d7b', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by-v2/bootstrap-table-group-by.css', '1522402125', '1510135218', '1522141397'),
(3280, '6d3de113f8c21593bf80820b49a1a7c9', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by-v2/bootstrap-table-group-by.min.js', '1522402125', '1510135218', '1522141397'),
(3281, 'c882943217703e6557f8267b0debfd14', './public/system/frame/js/plugins/bootstrap-table/extensions/accent-neutralise/bootstrap-table-accent-neutralise.min.js', '1522402125', '1510135218', '1522141397'),
(3282, '8517a8277b0d493ab8d2f7435c7f022f', './public/system/frame/js/plugins/bootstrap-table/extensions/accent-neutralise/bootstrap-table-accent-neutralise.js', '1522402125', '1510135218', '1522141397'),
(3283, 'b355aeacd8fbbc6c6cc1ae7e0b0b4315', './public/system/frame/js/plugins/bootstrap-table/extensions/mobile/bootstrap-table-mobile.js', '1522402125', '1510135218', '1522141397'),
(3284, '0eba7e1eb41e6ce3dd95c716186b73db', './public/system/frame/js/plugins/bootstrap-table/extensions/mobile/bootstrap-table-mobile.min.js', '1522402125', '1510135218', '1522141397'),
(3285, '1c1f8444a0cb6090c532a722f1753931', './public/system/frame/js/plugins/bootstrap-table/extensions/export/bootstrap-table-export.min.js', '1522402125', '1510135218', '1522141397'),
(3286, '36a207b398c3f35cd48a336e364f20b6', './public/system/frame/js/plugins/bootstrap-table/extensions/export/bootstrap-table-export.js', '1522402125', '1510135218', '1522141397'),
(3287, '845b43894c907b163b23764804d673fa', './public/system/frame/js/plugins/bootstrap-table/extensions/filter-control/bootstrap-table-filter-control.min.js', '1522402125', '1510135218', '1522141397'),
(3288, 'ecfd7f9bfaac40a568c3dd7a48fc2e3f', './public/system/frame/js/plugins/bootstrap-table/extensions/filter-control/bootstrap-table-filter-control.js', '1522402125', '1510135218', '1522141397'),
(3289, '1bd52a15a63da067547a0247a813f215', './public/system/frame/js/plugins/bootstrap-table/extensions/natural-sorting/bootstrap-table-natural-sorting.min.js', '1522402125', '1510135218', '1522141397'),
(3290, '85fae99da0887705b57a008a79289dc8', './public/system/frame/js/plugins/bootstrap-table/extensions/natural-sorting/bootstrap-table-natural-sorting.js', '1522402125', '1510135218', '1522141397'),
(3291, '219181ee5385b4d85da6baa61066094e', './public/system/frame/js/plugins/bootstrap-table/extensions/reorder-columns/bootstrap-table-reorder-columns.min.js', '1522402125', '1510135218', '1522141397'),
(3292, 'c3eb73e74f4631f5b54fb9443f464c4f', './public/system/frame/js/plugins/bootstrap-table/extensions/reorder-columns/bootstrap-table-reorder-columns.js', '1522402125', '1510135218', '1522141397'),
(3293, 'eab361f2aedbce9a3a35828c7f293050', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by/bootstrap-table-group-by.js', '1522402125', '1510135218', '1522141397'),
(3294, '13ea9a5e0b2483aedd02eb5c14651a36', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by/bootstrap-table-group-by.css', '1522402125', '1510135218', '1522141397'),
(3295, '0ee89e5e45bca21599b7cd81d465ade8', './public/system/frame/js/plugins/bootstrap-table/extensions/group-by/bootstrap-table-group-by.min.js', '1522402125', '1510135218', '1522141397'),
(3296, 'f9f7cba1b1727c6a7d1759386c9c5fe4', './public/system/frame/js/plugins/bootstrap-table/extensions/resizable/bootstrap-table-resizable.min.js', '1522402125', '1510135218', '1522141397'),
(3297, 'c583040340d550541a8ff2cc2f78f881', './public/system/frame/js/plugins/bootstrap-table/extensions/resizable/bootstrap-table-resizable.js', '1522402125', '1510135218', '1522141397'),
(3298, '454ac90cf6c4ed1c3e2ce5ad14c84c3d', './public/system/frame/js/plugins/bootstrap-table/extensions/multiple-sort/bootstrap-table-multiple-sort.min.js', '1522402125', '1510135218', '1522141397'),
(3299, '5ac54c057ce0e7f58eb852ea243e118c', './public/system/frame/js/plugins/bootstrap-table/extensions/multiple-sort/bootstrap-table-multiple-sort.js', '1522402125', '1510135218', '1522141397'),
(3300, '66101d83923357f78537f5992d9f2b0b', './public/system/frame/js/plugins/bootstrap-table/extensions/sticky-header/bootstrap-table-sticky-header.min.js', '1522402125', '1510135218', '1522141397'),
(3301, '9f21d5534b61162acaf793d737c86e3d', './public/system/frame/js/plugins/bootstrap-table/extensions/sticky-header/bootstrap-table-sticky-header.js', '1522402125', '1510135218', '1522141397'),
(3302, '38baf5d074b1bb07db10b44735082c84', './public/system/frame/js/plugins/bootstrap-table/extensions/sticky-header/bootstrap-table-sticky-header.css', '1522402125', '1510135218', '1522141397'),
(3303, 'c0990835973f40b43c4afda2b1f93b2a', './public/system/frame/js/plugins/bootstrap-table/extensions/flat-json/bootstrap-table-flat-json.min.js', '1522402125', '1510135218', '1522141397'),
(3304, 'aaafa58fe187a4730fc6141efce0e33a', './public/system/frame/js/plugins/bootstrap-table/extensions/flat-json/bootstrap-table-flat-json.js', '1522402125', '1510135218', '1522141397'),
(3305, '961f29f4e4782b3e78e0c9e1d3d1672a', './public/system/frame/js/plugins/bootstrap-table/extensions/key-events/bootstrap-table-key-events.min.js', '1522402125', '1510135218', '1522141397'),
(3306, 'e323a4ae8ebb1ac4b467344417face47', './public/system/frame/js/plugins/bootstrap-table/extensions/key-events/bootstrap-table-key-events.js', '1522402125', '1510135218', '1522141397'),
(3307, '923c90c54a74d871b65a5a3db6146155', './public/system/frame/js/plugins/bootstrap-table/extensions/reorder-rows/bootstrap-table-reorder-rows.min.js', '1522402125', '1510135218', '1522141397'),
(3308, '2be546efabfc7ab03287b912f2aeb600', './public/system/frame/js/plugins/bootstrap-table/extensions/reorder-rows/bootstrap-table-reorder-rows.js', '1522402125', '1510135218', '1522141397'),
(3309, '928f390fe3883c46b71720e10518080b', './public/system/frame/js/plugins/bootstrap-table/extensions/reorder-rows/bootstrap-table-reorder-rows.css', '1522402125', '1510135218', '1522141397'),
(3310, '1f6439d5a661c6c2dd6fd9f18a552035', './public/system/frame/js/plugins/bootstrap-table/extensions/multiple-search/bootstrap-table-multiple-search.min.js', '1522402125', '1510135218', '1522141397'),
(3311, 'f790dcd3df15bfd57a04924520040a0f', './public/system/frame/js/plugins/bootstrap-table/extensions/multiple-search/bootstrap-table-multiple-search.js', '1522402125', '1510135218', '1522141397'),
(3312, '8953c7d35903a56c24f07449645200b9', './public/system/frame/js/plugins/bootstrap-table/extensions/cookie/bootstrap-table-cookie.min.js', '1522402125', '1510135218', '1522141397'),
(3313, 'b412246e949577583ae761ecea92faeb', './public/system/frame/js/plugins/bootstrap-table/extensions/cookie/bootstrap-table-cookie.js', '1522402125', '1510135218', '1522141397'),
(3314, 'fbf77402f88a2c1960a2736fedf9d05f', './public/system/frame/js/plugins/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.js', '1522402125', '1510135218', '1522141397'),
(3315, '2ceb17b3c9782b0c1c6ba56a6e3204eb', './public/system/frame/js/plugins/bootstrap-table/extensions/toolbar/bootstrap-table-toolbar.min.js', '1522402125', '1510135218', '1522141397'),
(3316, 'acd5660de96b5a3639dc17e560896517', './public/system/frame/js/plugins/bootstrap-table/extensions/filter/bootstrap-table-filter.min.js', '1522402125', '1510135218', '1522141397'),
(3317, '407768c2c55458f1bb5612722f5d194d', './public/system/frame/js/plugins/bootstrap-table/extensions/filter/bootstrap-table-filter.js', '1522402125', '1510135218', '1522141397'),
(3318, '95395b0591d137ba229bfed85707e1d0', './public/system/frame/js/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.min.js', '1522402125', '1510135218', '1522141397'),
(3319, '38cb56a061a9c1483ac2c38c9ee5cd41', './public/system/frame/js/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.js', '1522402125', '1510135218', '1522141397'),
(3320, 'ebe0eb7ae8c86a857856ea3a50c02f5f', './public/system/frame/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js', '1522402125', '1510135218', '1522141397'),
(3321, 'dbeeadf33d5d74a18d48bcc0364bc4fa', './public/system/frame/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js', '1522402125', '1510135218', '1522141397'),
(3322, '1204c2ea7bd2c209c1d2c67abb488a19', './public/system/frame/js/plugins/bootstrap-table/bootstrap-table.min.js', '1522402125', '1510135218', '1522141397'),
(3323, '564974405307cf6b8dcbecd3d94af206', './public/system/frame/js/plugins/morris/raphael-2.1.0.min.js', '1522402125', '1510135218', '1522141397'),
(3324, 'a9ec46e8691c516cb2256622246eac4f', './public/system/frame/js/plugins/morris/morris.js', '1522402125', '1510135218', '1522141397'),
(3325, 'a3f5888e3f49071d395d44d7d9a2bbc4', './public/system/frame/js/plugins/morris/morris.js.b', '1522402125', '1510135218', '1522141397'),
(3326, '1d0a75db06f0e9b3ecea5ea293be2791', './public/system/frame/js/plugins/dropzone/dropzone.js', '1522402125', '1510135218', '1522141397'),
(3327, '2dcaeadac3faa100c851e913f2eb423a', './public/system/frame/js/plugins/diff_match_patch/diff_match_patch.js', '1522402125', '1510135218', '1522141397'),
(3328, '0bf3813657fa74b575e77225f1540c77', './public/system/frame/js/plugins/jqgrid/jquery.jqGrid.min.js', '1522402125', '1510135218', '1522141397'),
(3329, '0cb865ceefcff683f06f99433c1e6e4d', './public/system/frame/js/plugins/jqgrid/i18n/grid.locale-cn.js', '1522402125', '1510135218', '1522141397'),
(3330, '64651af8e8852fa0877746fc3b423cc0', './public/system/frame/js/plugins/chosen/chosen.jquery.js', '1522402125', '1510135218', '1522141397'),
(3331, '4a4e19b8cb78f7aee42fbe9ccc6802f3', './public/system/frame/js/plugins/nouslider/jquery.nouislider.min.js', '1522402125', '1510135218', '1522141397'),
(3332, 'edfff4e3a7d693ef6b7359d6438eaf77', './public/system/frame/js/plugins/fullcalendar/fullcalendar.min.js', '1522402125', '1510135218', '1522141397'),
(3333, '1ece36e042b6fa4a0b8ef2f2e25f9ca7', './public/system/frame/js/plugins/prettyfile/bootstrap-prettyfile.js', '1522402125', '1510135218', '1522141397'),
(3334, '6980a56ee492295bd095409c780883bb', './public/system/frame/js/plugins/datapicker/bootstrap-datepicker.js', '1522402125', '1510135218', '1522141397'),
(3335, 'bbec8aefd19acdbd8dff5df6f4087037', './public/system/frame/js/plugins/markdown/markdown.js', '1522402125', '1510135218', '1522141397'),
(3336, 'bbad2a13e76044e98826b9cf4a904228', './public/system/frame/js/plugins/markdown/bootstrap-markdown.zh.js', '1522402125', '1510135218', '1522141397'),
(3337, 'f8fad19eea0d122f63090e067b54361c', './public/system/frame/js/plugins/markdown/bootstrap-markdown.js', '1522402125', '1510135218', '1522141397'),
(3338, 'f48eea40703f3e3c716a4ef4ed8c12c0', './public/system/frame/js/plugins/markdown/to-markdown.js', '1522402125', '1510135218', '1522141397'),
(3339, 'bbdfceed11286b858c1f575c9c64baf0', './public/system/frame/js/plugins/echarts/echarts-all.js.b', '1522402125', '1510135218', '1522141397'),
(3340, 'c9d69960ec11f6e98f756206c0f0e35d', './public/system/frame/js/plugins/echarts/echarts-all.js', '1522402125', '1510135218', '1522141397'),
(3341, 'f5952713157546372bfcd9b4e1f089e6', './public/system/frame/js/plugins/echarts/echarts-all.js.b1', '1522402125', '1510135218', '1522141397'),
(3342, '9a53821c7659ca62340658465562075c', './public/system/frame/js/plugins/chartJs/Chart.min.js', '1522402125', '1510135218', '1522141397'),
(3343, '3a7d2c63265e29464c78214d8506524f', './public/system/frame/js/plugins/jasny/jasny-bootstrap.min.js', '1522402125', '1510135218', '1522141397'),
(3344, 'f947a3975efd1a7f010997c75b374731', './public/system/frame/js/plugins/metisMenu/jquery.metisMenu.js', '1523243261', '1510135218', '1522141397'),
(3345, '5dab06035b3483ea7e39a36a7499166f', './public/system/frame/js/plugins/layer/extend/layer.ext.js', '1523243262', '1510135218', '1522141397'),
(3346, 'c06505e8e2ee6e8aa6e832588db32e6c', './public/system/frame/js/plugins/layer/layim/loading.gif', '1522402125', '1510135218', '1522141397'),
(3347, '4d2d6825089819b4ac0fa1891dd7c6be', './public/system/frame/js/plugins/layer/layim/layim.js', '1522402125', '1510135218', '1522141397'),
(3348, 'be97711d4772755d0ae51bb0e2983f19', './public/system/frame/js/plugins/layer/layim/data/group.json', '1522402125', '1510135218', '1522141397'),
(3349, '32aa4e66f339bb0f829e5a42b800d0ac', './public/system/frame/js/plugins/layer/layim/data/groups.json', '1522402125', '1510135218', '1522141397'),
(3350, '8af5634dfd946dbf9d26abc9e056c53b', './public/system/frame/js/plugins/layer/layim/data/friend.json', '1522402125', '1510135218', '1522141397'),
(3351, '1fd7cfaf61828c298b7b58f075d6272e', './public/system/frame/js/plugins/layer/layim/data/chatlog.json', '1522402125', '1510135218', '1522141397'),
(3352, '1ad78fc31ee5254053fe600b4907a30b', './public/system/frame/js/plugins/layer/layim/layim.css', '1522402125', '1510135218', '1522141397'),
(3353, 'f2a8c3d46bc70a65e6af1f5a395d2382', './public/system/frame/js/plugins/layer/laydate/laydate.js', '1522402125', '1510135218', '1522141397'),
(3354, '0749a66e51c9a3c8e84035727742786e', './public/system/frame/js/plugins/layer/laydate/need/laydate.css', '1522402125', '1510135218', '1522141397'),
(3355, '5e3b3c7a1c3f0e97af0d9478af79d17a', './public/system/frame/js/plugins/layer/laydate/skins/default/laydate.css', '1522402125', '1510135218', '1522141397'),
(3356, '117d7e4b7e0fe6774616872b1b1edf33', './public/system/frame/js/plugins/layer/laydate/skins/default/icon.png', '1522402125', '1510135218', '1522141397'),
(3357, '445c389b4b68e20e1c13a41cd9aa2508', './public/system/frame/js/plugins/layer/skin/moon/style.css', '1523243263', '1510135218', '1522141397'),
(3358, '6528d6e2adc761d165e17b7976759591', './public/system/frame/js/plugins/layer/skin/layer.ext.css', '1523243262', '1510135218', '1522141397'),
(3359, '898ebae43c062388a1ba5487982fed85', './public/system/frame/js/plugins/layer/skin/layer.css', '1523243262', '1510135218', '1522141397'),
(3360, '6c9a379aa0cc397bc4b2099bba440545', './public/system/frame/js/plugins/layer/layer.min.js', '1523243261', '1510135218', '1522141397'),
(3361, '63bbd44668fcfba60c46af26b627804a', './public/system/frame/js/plugins/summernote/summernote-zh-CN.js', '1522402125', '1510135218', '1522141397'),
(3362, 'a361cf347e297c10d81dc73be533e387', './public/system/frame/js/plugins/summernote/summernote.min.js', '1522402125', '1510135218', '1522141397'),
(3363, '12937f931bb69d41827d58a05f684e72', './public/system/frame/js/plugins/plyr/plyr.js', '1522402125', '1510135218', '1522141397'),
(3364, '54e82d182109fe8ae73f45110152285e', './public/system/frame/js/plugins/gritter/jquery.gritter.css', '1523243262', '1510135218', '1522141397'),
(3365, 'df3e567d6f16d040326c7a0ea29a4f41', './public/system/frame/js/plugins/gritter/images/ie-spacer.gif', '1522402125', '1510135218', '1522141397'),
(3366, 'e6bf207bb4ab9d76d812353b9684e34e', './public/system/frame/js/plugins/gritter/images/gritter.png', '1522402125', '1510135218', '1522141397'),
(3367, 'e78d3fcf0bf309416d930a40c74ee500', './public/system/frame/js/plugins/gritter/images/gritter-light.png', '1522402125', '1510135218', '1522141397'),
(3368, '66f45cdcbbf92f5efeddd9f3f15c0292', './public/system/frame/js/plugins/gritter/jquery.gritter.min.js', '1522402125', '1510135218', '1522141397'),
(3369, '8b9a55954ff36de7232dda5c9b534ce2', './public/system/frame/js/plugins/footable/footable.all.min.js', '1523174435', '1510135218', '1522141397'),
(3370, '52c68295b2e8b557bef3d1a4cb2c997a', './public/system/frame/js/plugins/cropper/cropper.min.js', '1522402125', '1510135218', '1522141397'),
(3371, '14cf8e669d648dcaff6987162299bb87', './public/system/frame/js/plugins/ionRangeSlider/ion.rangeSlider.min.js', '1522402125', '1510135218', '1522141397'),
(3372, '268fea5599f2f1f5d0ed3e82fc328e81', './public/system/frame/js/plugins/peity/jquery.peity.min.js', '1523243263', '1510135218', '1522141397'),
(3373, 'c97dcb7abb993899fd7fc9386bc5c03c', './public/system/frame/js/plugins/sweetalert/sweetalert.min.js', '1522402125', '1510135218', '1522141397'),
(3374, 'b154465a39dc097253351b2d41ab15ea', './public/system/frame/js/plugins/rickshaw/vendor/d3.v3.js', '1522402125', '1510135218', '1522141397'),
(3375, '691adaa24f28e9b24940b45f292e7439', './public/system/frame/js/plugins/rickshaw/rickshaw.min.js', '1522402125', '1510135218', '1522141397'),
(3376, '3d75fb1296bae3951bbdcfe070e3e41c', './public/system/frame/js/plugins/codemirror/codemirror.js', '1522402125', '1510135218', '1522141397'),
(3377, '6e1964a86a352f8d8cb2722e8cc916ad', './public/system/frame/js/plugins/codemirror/mode/javascript/default.htm', '1522402125', '1510135218', '1522141397'),
(3378, '14ceff1b72c92ecceeb9b7ad48c57979', './public/system/frame/js/plugins/codemirror/mode/javascript/javascript.js', '1522402125', '1510135218', '1522141397'),
(3379, '3f40041e359cb3410c3194e86e756ca4', './public/system/frame/js/plugins/codemirror/mode/default.htm', '1522402125', '1510135218', '1522141397'),
(3380, '60dff7a6f66a346f281e040d21e0cc49', './public/system/frame/js/plugins/jsKnob/jquery.knob.js', '1522402125', '1510135218', '1522141397'),
(3381, '60e6e410ad8d295cdb5661279ffae689', './public/system/frame/js/plugins/jquery-ui/jquery-ui.min.js', '1523243263', '1510135218', '1522141397'),
(3382, 'fbcac6b25c81ea883a885c5348030279', './public/system/frame/js/plugins/flot/jquery.flot.spline.js', '1523243263', '1510135218', '1522141397'),
(3383, 'cbe46e7489a48fc98f54ddfc15728841', './public/system/frame/js/plugins/flot/jquery.flot.pie.js', '1523243263', '1510135218', '1522141397'),
(3384, '2f57ad456c906dfd1b4a043d55076d46', './public/system/frame/js/plugins/flot/jquery.flot.tooltip.min.js', '1523243263', '1510135218', '1522141397'),
(3385, 'ed02fc18524a36175738021f91d58174', './public/system/frame/js/plugins/flot/jquery.flot.symbol.js', '1523243263', '1510135218', '1522141397'),
(3386, '7f2a058161d0175803d3b78ca8990b55', './public/system/frame/js/plugins/flot/curvedLines.js', '1522402125', '1510135218', '1522141397'),
(3387, '633f487a2784965faad0f8521633049f', './public/system/frame/js/plugins/flot/jquery.flot.js', '1523243263', '1510135218', '1522141397'),
(3388, 'c0a97c40d22ff36c451240e5e247abe8', './public/system/frame/js/plugins/flot/jquery.flot.resize.js', '1523243263', '1510135218', '1522141397'),
(3389, '205266b35be5b9bb9690c728bbee6187', './public/system/frame/js/plugins/colorpicker/bootstrap-colorpicker.min.js', '1522402125', '1510135218', '1522141397'),
(3390, '44e42330b275dc27b900eef16d1fefc9', './public/system/frame/js/plugins/fancybox/jquery.fancybox.js', '1522402125', '1510135218', '1522141397'),
(3391, 'f92938639fa894a0e8ded1c3368abe98', './public/system/frame/js/plugins/fancybox/fancybox_loading_402x.gif', '1522402125', '1510135218', '1522141397'),
(3392, '328cc0f6c78211485058d460e80f4fa8', './public/system/frame/js/plugins/fancybox/fancybox_loading.gif', '1522402125', '1510135218', '1522141397'),
(3393, 'ed9970ce22242421e66ff150aa97fe5f', './public/system/frame/js/plugins/fancybox/fancybox_sprite_402x.png', '1522402125', '1510135218', '1522141397'),
(3394, '77aeaa52715b898b73c74d68c630330e', './public/system/frame/js/plugins/fancybox/fancybox_overlay.png', '1522402125', '1510135218', '1522141397'),
(3395, '783d4031fe50c3d83c960911e1fbc705', './public/system/frame/js/plugins/fancybox/fancybox_sprite.png', '1522402125', '1510135218', '1522141397'),
(3396, '325472601571f31e1bf00674c368d335', './public/system/frame/js/plugins/fancybox/blank.gif', '1522402125', '1510135218', '1522141397'),
(3397, '62305f43d3933de94e6b9804ad716cd5', './public/system/frame/js/plugins/fancybox/jquery.fancybox.css', '1522402125', '1510135218', '1522141397'),
(3398, '575d2966830c0aad6edd5ab8fa31b87c', './public/system/frame/js/plugins/simditor/uploader.js', '1522402125', '1510135218', '1522141397'),
(3399, '100bd7db8d54e16ec6654e96ced57f43', './public/system/frame/js/plugins/simditor/simditor.js', '1522402125', '1510135218', '1522141397'),
(3400, '00b4fd61128a629ec72831000062a8d7', './public/system/frame/js/plugins/simditor/hotkeys.js', '1522402125', '1510135218', '1522141397'),
(3401, 'f12e3af70b78d67eb2d8864bc1478a3d', './public/system/frame/js/plugins/simditor/module.js', '1522402125', '1510135218', '1522141397'),
(3402, 'e83a094df2568878e00746c60e2acd77', './public/system/frame/js/plugins/dataTables/jquery.dataTables.js', '1522402125', '1510135218', '1522141397'),
(3403, '1b858ece0a540e76c32619837ea86d57', './public/system/frame/js/plugins/dataTables/dataTables.bootstrap.js', '1522402125', '1510135218', '1522141397'),
(3404, '3148ec70556e9a5f69cf776ece902fdb', './public/system/frame/js/plugins/blueimp/jquery.blueimp-gallery.min.js', '1522402125', '1510135218', '1522141397'),
(3405, 'a55a3c867d1203b5ebaaa8a7edac8e01', './public/system/frame/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js', '1523243263', '1510135218', '1522141397'),
(3406, 'eb53a1c488516febd11eb02ea2a80763', './public/system/frame/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js', '1523243263', '1510135218', '1522141397'),
(3407, '72965f550afd0bdb90c988cf0b8b5ee5', './public/system/frame/js/plugins/switchery/switchery.js', '1522402125', '1510135218', '1522141397'),
(3408, '174da76683c73e9046195d2ec95f5d59', './public/system/frame/js/plugins/slimscroll/jquery.slimscroll.min.js', '1523243261', '1510135218', '1522141397'),
(3409, '77d05ce0b2ae04f747de49f8ff5e8d9a', './public/system/frame/js/plugins/staps/jquery.steps.min.js', '1522402125', '1510135218', '1522141397'),
(3410, 'fffa913698c15fcb93637784fd5b976d', './public/system/frame/js/plugins/jsTree/jstree.min.js', '1522402125', '1510135218', '1522141397'),
(3411, '292df7311a21879071a83cacd0371847', './public/system/frame/js/plugins/easypiechart/jquery.easypiechart.js', '1523243263', '1510135218', '1522141397'),
(3412, '0ca697a5f3f2861d39b0061def169b89', './public/system/frame/js/plugins/nestable/jquery.nestable.js', '1522402125', '1510135218', '1522141397'),
(3413, '82ea6a0ab46d9589722a58ca84dd9e6c', './public/system/frame/js/plugins/sparkline/jquery.sparkline.min.js', '1523243263', '1510135218', '1522141397'),
(3414, 'b401b45c5395cfe818235e034e2580d5', './public/system/frame/js/plugins/preetyTextDiff/jquery.pretty-text-diff.min.js', '1522402125', '1510135218', '1522141397'),
(3415, 'b54b619a8c9cdaf85809357415e11b1b', './public/system/frame/js/plugins/suggest/data.json', '1522402125', '1510135218', '1522141397'),
(3416, '23ff6bd87cd370c4a76458e6b473d037', './public/system/frame/js/plugins/suggest/bootstrap-suggest.min.js', '1522402125', '1510135218', '1522141397'),
(3417, 'ccca6c85be30c06351e16e1abccf80c6', './public/system/frame/js/plugins/webuploader/webuploader.min.js', '1522402125', '1510135218', '1522141397'),
(3418, '43f90b92e7cb56c8f740acc7bb39aad0', './public/system/frame/js/plugins/iCheck/icheck.min.js', '1522636454', '1510135218', '1522141397'),
(3419, 'f8963cc4697cc774434c82e36a94d872', './public/system/frame/js/plugins/jeditable/jquery.jeditable.js', '1522402125', '1510135218', '1522141397'),
(3420, '4484b452eed403da6cc746e8865ecad1', './public/system/frame/js/plugins/pace/pace.min.js', '1523243262', '1510135218', '1522141397'),
(3421, 'd6c8c6d7b996538e355355c443f49b13', './public/system/frame/js/bootstrap.min.js', '1523243256', '1510135218', '1522141397'),
(3422, '27fa7dd5fbe3a8c5b57739bfa7856827', './public/system/frame/js/hplus.min.js', '1523243261', '1510285240', '1522141397'),
(3423, '2a634a94d5b175c41a71fac233a52f53', './public/system/frame/css/patterns/header-profile.png', '1522402125', '1510135218', '1522141397'),
(3424, '85efa900c0fc12fee15a5398deba06e8', './public/system/frame/css/patterns/header-profile-skin-1.png', '1522402125', '1510135218', '1522141397'),
(3425, 'ea2316224d45899c59bc285ba09dd920', './public/system/frame/css/patterns/shattered.png', '1522402125', '1510135218', '1522141397'),
(3426, 'bf471ec3d4085883e061ca35006e86e8', './public/system/frame/css/patterns/header-profile-skin-3.png', '1522402125', '1510135218', '1522141397'),
(3427, 'a478907d06ff0541564cbf8b8db1666f', './public/system/frame/css/M663 1125q-11 -1 -15.5 -10.5t-8.5 -9.5q-5 -1 -5 5q0 12 19 15h10zM750 1111q-4 -1 -11.5 6.5t-17.5 4.5q03F7DC5A5A', '1522402125', '1510135218', '1522141397'),
(3428, 'ef89d396de4b6b31cc0dfa79cbdbf6b9', './public/system/frame/css/font-awesome.min.css', '1523243255', '1510135218', '1522141397'),
(3429, 'fbeea0349a7ef438d2a0536f6b6122e4', './public/system/frame/css/bootstrap.min.css', '1523243255', '1510135218', '1522141397'),
(3430, '59cd45b63c94e5179343cfcdd05cf299', './public/system/frame/css/style.min.css', '1523177842', '1523177838', '1523177840'),
(3431, '57b4a61535b96a0fea07815640e0632d', './public/system/frame/css/animate.min.css', '1523243255', '1510135218', '1522141397'),
(3432, '6432e380fd49a3ca60bd01fb3cc8d058', './public/system/frame/css/demo/webuploader-demo.min.css', '1522402125', '1510135218', '1522141397'),
(3433, '426317fe2772522bbe1f460a70061c3a', './public/system/frame/css/plugins/toastr/toastr.min.css', '1522402125', '1510135218', '1522141397'),
(3434, '899cfd25ea7e1919ddb53d876d05f85e', './public/system/frame/css/plugins/treeview/bootstrap-treeview.css', '1522402125', '1510135218', '1522141397'),
(3435, '1514254d8c34ba42449af113e9e4d6fb', './public/system/frame/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css', '1522402125', '1510135218', '1522141397'),
(3436, 'f6a033c69a39bcbf2e9dcb0e509c38e9', './public/system/frame/css/plugins/steps/jquery.steps.css', '1522402125', '1510135218', '1522141397'),
(3437, '30a904abe1ef47790243c68d2d9b7ce0', './public/system/frame/css/plugins/clockpicker/clockpicker.css', '1522402125', '1510135218', '1522141397'),
(3438, 'c45ed1e9b43d738b6fad917f1fc76ce2', './public/system/frame/css/plugins/bootstrap-table/bootstrap-table.min.css', '1522402125', '1510135218', '1522141397'),
(3439, 'f46dbe0ae122d786160a9429bd32df35', './public/system/frame/css/plugins/morris/morris-0.4.3.min.css', '1523243262', '1510135218', '1522141397'),
(3440, '6674a325a53949083446ff5c360846e7', './public/system/frame/css/plugins/dropzone/basic.css', '1522402125', '1510135218', '1522141397'),
(3441, '1a825ea9fa2c94190dd86ea0a275ad47', './public/system/frame/css/plugins/dropzone/dropzone.css', '1522402125', '1510135218', '1522141397'),
(3442, 'b5fe99b0eb9e1b0d87af662aefa71f25', './public/system/frame/css/plugins/jqgrid/ui.jqgrid.css', '1522402125', '1510135218', '1522141397'),
(3443, '7edf7ad6f10b37f5962008a6f8616f61', './public/system/frame/css/plugins/chosen/chosen.css', '1522402125', '1510135218', '1522141397'),
(3444, 'cb0d09c93b99c5cab6848147fdb3d7e4', './public/system/frame/css/plugins/chosen/chosen-sprite_402x.png', '1522402125', '1510135218', '1522141397'),
(3445, '25b9acb1b504c95c6b95c33986b7317e', './public/system/frame/css/plugins/chosen/chosen-sprite.png', '1522402125', '1510135218', '1522141397'),
(3446, 'c7d9eb14da33509faf2b0ae316b732d2', './public/system/frame/css/plugins/nouslider/jquery.nouislider.css', '1522402125', '1510135218', '1522141397'),
(3447, '6babfbff79440ecd17aa7832ad51ddfe', './public/system/frame/css/plugins/fullcalendar/fullcalendar.print.css', '1522402125', '1510135218', '1522141397'),
(3448, 'a2ddd71bf9532bf8305625c75443664b', './public/system/frame/css/plugins/fullcalendar/fullcalendar.css', '1522402125', '1510135218', '1522141397'),
(3449, 'a116cc04c05762f423a91b8fcc094d18', './public/system/frame/css/plugins/datapicker/datepicker3.css', '1522402125', '1510135218', '1522141397'),
(3450, 'dbfcbd6d2153efbc2cc0d8ef05e9d941', './public/system/frame/css/plugins/markdown/bootstrap-markdown.min.css', '1522402125', '1510135218', '1522141397'),
(3451, '6599e67f0c8174d99d123e03629ef74c', './public/system/frame/css/plugins/jasny/jasny-bootstrap.min.css', '1522402125', '1510135218', '1522141397'),
(3452, '4c86e5a2499976172e660b3fc5885c2b', './public/system/frame/css/plugins/summernote/summernote.css', '1522402125', '1510135218', '1522141397'),
(3453, 'd829018219af0313509ab662f6cbd656', './public/system/frame/css/plugins/summernote/summernote-bs3.css', '1522402125', '1510135218', '1522141397'),
(3454, '929829e2abc184f8875df9dd3bc49bc2', './public/system/frame/css/plugins/plyr/sprite.svg', '1522402125', '1510135218', '1522141397'),
(3455, '53e376482da8f579eb40a85d687564d6', './public/system/frame/css/plugins/plyr/plyr.css', '1522402125', '1510135218', '1522141397'),
(3456, '873523781b369512e7d677adf2f0e083', './public/system/frame/css/plugins/images/sort_desc.png', '1522402125', '1510135218', '1522141397'),
(3457, 'b363c10c480daebf2e9fab3572dfe325', './public/system/frame/css/plugins/images/sprite-skin-flat.png', '1522402125', '1510135218', '1522141397'),
(3458, '99cc9360eb5c063ee46655fd014ce2d4', './public/system/frame/css/plugins/images/spritemap_402x.png', '1522402125', '1510135218', '1522141397'),
(3459, '1ddf746a85707231f84d947637efd63a', './public/system/frame/css/plugins/images/sort_asc.png', '1522402125', '1510135218', '1522141397'),
(3460, '7b51acacc1feb8be0580e8467a4d306b', './public/system/frame/css/plugins/images/spritemap.png', '1522402125', '1510135218', '1522141397'),
(3461, '2256ee07c7a1a366e5bac1c3fcb8e216', './public/system/frame/css/plugins/footable/fonts/footable.ttf', '1522402125', '1510135218', '1522141397'),
(3462, '91c343856c56695b45993db2e1575519', './public/system/frame/css/plugins/footable/fonts/footable.eot', '1522402125', '1510135218', '1522141397'),
(3463, '08342474b531a0837a6414bcf7541dcc', './public/system/frame/css/plugins/footable/fonts/footable.svg', '1522402125', '1510135218', '1522141397'),
(3464, '634513dc791352157f12cb0a5ed8782b', './public/system/frame/css/plugins/footable/fonts/footable.woff', '1523174849', '1510135218', '1522141397'),
(3465, '46b288d61dd08483b180ea06333abcb3', './public/system/frame/css/plugins/footable/footable.core.css', '1523174848', '1510135218', '1522141397'),
(3466, 'add645e8a0c47cafe2b8ea0ec811db7e', './public/system/frame/css/plugins/cropper/cropper.min.css', '1522402125', '1510135218', '1522141397'),
(3467, 'f4c513ff3d5f9c43c2124d49fe41c880', './public/system/frame/css/plugins/ionRangeSlider/ion.rangeSlider.css', '1522402125', '1510135218', '1522141397'),
(3468, 'ddeb87f905113fe41d9e9f6bea632d8d', './public/system/frame/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css', '1522402125', '1510135218', '1522141397'),
(3469, '6f53b132f0ddde631c0e7a138c3389ee', './public/system/frame/css/plugins/sweetalert/sweetalert.css', '1522402125', '1510135218', '1522141397'),
(3470, 'aadb5cb41b97332870ace4eba7d193b2', './public/system/frame/css/plugins/codemirror/ambiance.css', '1522402125', '1510135218', '1522141397'),
(3471, '360b0c7aaa66405e01bb966acca9e73c', './public/system/frame/css/plugins/codemirror/codemirror.css', '1522402125', '1510135218', '1522141397'),
(3472, 'bb158d8ad98357224e050a1643af5faa', './public/system/frame/css/plugins/colorpicker/css/bootstrap-colorpicker.min.css', '1522402125', '1510135218', '1522141397'),
(3473, 'df1e75c9de8c1b5b68f7144463afdb87', './public/system/frame/css/plugins/colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '1522402125', '1510135218', '1522141397'),
(3474, 'de10f7b98e37a57ee81149a71d2c6106', './public/system/frame/css/plugins/colorpicker/img/bootstrap-colorpicker/hue.png', '1522402125', '1510135218', '1522141397'),
(3475, '10f4b956ec4d7e11c2b0c1cc11e18db1', './public/system/frame/css/plugins/colorpicker/img/bootstrap-colorpicker/alpha.png', '1522402125', '1510135218', '1522141397'),
(3476, '512a83ac26d1574e25d742fe81cf531b', './public/system/frame/css/plugins/colorpicker/img/bootstrap-colorpicker/saturation.png', '1522402125', '1510135218', '1522141397'),
(3477, '58fc83686953e32bce2b1e8d87438abc', './public/system/frame/css/plugins/colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '1522402125', '1510135218', '1522141397'),
(3478, '77570e1e1bf99550578d43c0ba71516b', './public/system/frame/css/plugins/simditor/simditor.css', '1522402125', '1510135218', '1522141397'),
(3479, 'c269ecbefde7906a072154188d967575', './public/system/frame/css/plugins/dataTables/dataTables.bootstrap.css', '1523243272', '1510135218', '1522141397'),
(3480, '0f3515c1a6cc917899b3b0e259cb01ec', './public/system/frame/css/plugins/blueimp/css/blueimp-gallery.min.css', '1522402125', '1510135218', '1522141397'),
(3481, '05992d3434d3589b38a3a5431842d38f', './public/system/frame/css/plugins/blueimp/img/loading.gif', '1522402125', '1510135218', '1522141397'),
(3482, '90901890fbf9b379405f47a23313e63b', './public/system/frame/css/plugins/blueimp/img/error.png', '1522402125', '1510135218', '1522141397'),
(3483, 'd43e4b0705e7790d5e520cebbd16458e', './public/system/frame/css/plugins/blueimp/img/video-play.svg', '1522402125', '1510135218', '1522141397'),
(3484, '288308b2037f409d293916c7a3913f20', './public/system/frame/css/plugins/blueimp/img/video-play.png', '1522402125', '1510135218', '1522141397'),
(3485, 'd81d3bbe1f1116eaf8a316b8293d082a', './public/system/frame/css/plugins/blueimp/img/error.svg', '1522402125', '1510135218', '1522141397'),
(3486, 'a012413b54276e2eefd145c7aec60f93', './public/system/frame/css/plugins/blueimp/img/play-pause.png', '1522402125', '1510135218', '1522141397'),
(3487, '0228333d411065d373458006a7815015', './public/system/frame/css/plugins/blueimp/img/play-pause.svg', '1522402125', '1510135218', '1522141397'),
(3488, '5e1b3524635c04e793320cf8ddcdb447', './public/system/frame/css/plugins/switchery/switchery.css', '1522402125', '1510135218', '1522141397'),
(3489, '9ed4669f524bec38319be63a2ee4ba26', './public/system/frame/css/plugins/jsTree/throbber.gif', '1522402125', '1510135218', '1522141397'),
(3490, '9fe235708276baf45c16e2967b3eb272', './public/system/frame/css/plugins/jsTree/style.min.css', '1522402125', '1510135218', '1522141397'),
(3491, 'e86ef2ebbe960443d5dddcba6e398211', './public/system/frame/css/plugins/jsTree/32px.png', '1522402125', '1510135218', '1522141397'),
(3492, '62435bfb5526961b8fc4322e21bde144', './public/system/frame/css/plugins/webuploader/webuploader.css', '1522402125', '1510135218', '1522141397'),
(3493, '3c4bf794e3e2af3e68d2f4bd77d0baa7', './public/system/frame/css/plugins/iCheck/green.png', '1522636455', '1510135218', '1522141397'),
(3494, 'a9949782f83fe749cf551b604619de9c', './public/system/frame/css/plugins/iCheck/green_402x.png', '1522402125', '1510135218', '1522141397'),
(3495, '232ebfd558515792229e5611ed42414b', './public/system/frame/css/plugins/iCheck/custom.css', '1522636454', '1510135218', '1522141397'),
(3496, '4075b6b463dd4922fc149d07c28ac096', './public/system/frame/css/login.min.css', '1522402125', '1510135218', '1522141397'),
(3497, 'dfb02f8f6d0cedc009ee5887cc68f1f3', './public/system/frame/fonts/fontawesome-webfont.woff', '1522402125', '1510135218', '1522141397'),
(3498, '0423209d65f49d7af06023aeb5345eb5', './public/system/frame/fonts/fontawesome-webfont.svg', '1522402125', '1510135218', '1522141397'),
(3499, '7c87870ab40d63cfb8870c1f183f9939', './public/system/frame/fonts/fontawesome-webfont.ttf', '1522402125', '1510135218', '1522141397'),
(3500, '4b5a84aaf1c9485e060c503a0ff8cadb', './public/system/frame/fonts/fontawesome-webfont.woff2', '1523243261', '1510135218', '1522141397'),
(3501, 'f4769f9bdb7466be65088239c12046d1', './public/system/frame/fonts/glyphicons-halflings-regular.eot', '1522402125', '1510135218', '1522141397'),
(3502, 'e18bbf611f2a2e43afc071aa2f4e1512', './public/system/frame/fonts/glyphicons-halflings-regular.ttf', '1522402125', '1510135218', '1522141397'),
(3503, 'fa2772327f55d8198301fdb8bcfc8158', './public/system/frame/fonts/glyphicons-halflings-regular.woff', '1522402125', '1510135218', '1522141397'),
(3504, '45c73723862c6fc5eb3d6961db2d71fb', './public/system/frame/fonts/fontawesome-webfont.eot', '1522402125', '1510135218', '1522141397'),
(3505, '448c34a56d699c29117adc64c43affeb', './public/system/frame/fonts/glyphicons-halflings-regular.woff2', '1522402125', '1510135218', '1522141397'),
(3506, '14987112e7626d45e065362a1245059c', './public/system/frame/fonts/glyphicons-halflings-regular.svg', '1522402125', '1510135218', '1522141397'),
(3507, 'aec2294728d596978c9e016774171521', './public/system/frame/img/profile_small.jpg', '1522402125', '1510135218', '1522141397'),
(3508, '8feae3652f626ba9ec74d14792de6b95', './public/system/frame/img/qr_code.png', '1522402125', '1510135218', '1522141397'),
(3509, 'c435098ccf06e4248d918f91ed0992c8', './public/system/frame/img/a6.jpg', '1522402125', '1510135218', '1522141397'),
(3510, '22508d7389277290584be5a09c16853e', './public/system/frame/img/p_big2.jpg', '1522402125', '1510135218', '1522141397'),
(3511, '31e21fdea575697a651cf4572562e398', './public/system/frame/img/login-background.jpg', '1522402125', '1510135218', '1522141397'),
(3512, '6326cd02ec7029ff4027da83ff09374f', './public/system/frame/img/index.jpg', '1522402125', '1510135218', '1522141397'),
(3513, 'c9ceb83c0a247ae47f54c3e1d3cb4bac', './public/system/frame/img/icons.png', '1522402125', '1510135218', '1522141397'),
(3514, '38c934d558c5b12766781553c6279a32', './public/system/frame/img/profile_big.jpg', '1522402125', '1510135218', '1522141397'),
(3515, '5112881784000c6cf6d81e5a8aa10f3c', './public/system/frame/img/index_4.jpg', '1522402125', '1510135218', '1522141397'),
(3516, '9b6adf5c5f23ff87b3d9873809052831', './public/system/frame/img/a3.jpg', '1522402125', '1510135218', '1522141397'),
(3517, '3c00f0f466522fbd0ef442917a71f55f', './public/system/frame/img/a9.jpg', '1522402125', '1510135218', '1522141397'),
(3518, 'b1d9bd8ff3834f780bc8aa565a73d306', './public/system/frame/img/p2.jpg', '1522402125', '1510135218', '1522141397'),
(3519, '8f3abaa10b9a98880a0ba87a1744a255', './public/system/frame/img/1.png', '1522402125', '1510135218', '1522141397'),
(3520, '46732e763f50c337fecabcc42150d842', './public/system/frame/img/progress.png', '1522402125', '1510135218', '1522141397'),
(3521, '9053bb860fb23722497df4bc2c25eaa3', './public/system/frame/img/a2.jpg', '1522402125', '1510135218', '1522141397'),
(3522, '96660bd7d061e19f46a305390651f9e0', './public/system/frame/img/pay.png', '1522402125', '1510135218', '1522141397'),
(3523, 'aa6af324962786fac1fcd19d856bbf3a', './public/system/frame/img/p3.jpg', '1522402125', '1510135218', '1522141397'),
(3524, 'f6f30beb72f584e218bfec975eb1109d', './public/system/frame/img/locked.png', '1522402125', '1510135218', '1522141397'),
(3525, '06773f8873a55483445586519da6aec5', './public/system/frame/img/iconfont-logo.png', '1522402125', '1510135218', '1522141397'),
(3526, 'dd5c23469d5041758ba1e774e91cce0f', './public/system/frame/img/profile.jpg', '1522402125', '1510135218', '1522141397'),
(3527, '4990787de11666d9d94edbc718ddf071', './public/system/frame/img/a1.jpg', '1522402125', '1510135218', '1522141397'),
(3528, '2da0807814ad64841cd597c4e8a653d1', './public/system/frame/img/loading-upload.gif', '1522402125', '1510135218', '1522141397'),
(3529, 'cc608c637bec9117018cef0e4cc9c6dd', './public/system/frame/img/a8.jpg', '1522402125', '1510135218', '1522141397'),
(3530, 'b80425bbf53402d499d54c86ca365870', './public/system/frame/img/success.png', '1522402125', '1510135218', '1522141397'),
(3531, 'bd835163b61fa2dd11579b2de70023fc', './public/system/frame/img/a7.jpg', '1522402125', '1510135218', '1522141397'),
(3532, 'f9f491385463e7ffa95af8f8c17aea2a', './public/system/frame/img/p_big3.jpg', '1522402125', '1510135218', '1522141397'),
(3533, '4523359ec4ba32f807b1de8f213cf188', './public/system/frame/img/a5.jpg', '1522402125', '1510135218', '1522141397'),
(3534, '8ddad23ce6dcc70bf111b23ae022f10c', './public/system/frame/img/bg.png', '1522402125', '1510135218', '1522141397'),
(3535, 'f43a1ca7e9274d881d3b7ec00d102965', './public/system/frame/img/p1.jpg', '1522402125', '1510135218', '1522141397'),
(3536, '61e4e8b958e12b2de6d125edadb99d38', './public/system/frame/img/wenku_logo.png', '1522402125', '1510135218', '1522141397'),
(3537, 'c7f148b2a45d68e1f2baba730dca2c78', './public/system/frame/img/a4.jpg', '1522402125', '1510135218', '1522141397'),
(3538, '681dfebf3a20ec9c580d8dc248eb6a6e', './public/system/frame/img/user.png', '1522402125', '1510135218', '1522141397'),
(3539, '43c338754928ee7ed34b33b9e7c82dff', './public/system/frame/img/p_big1.jpg', '1522402125', '1510135218', '1522141397'),
(3540, 'e9d3f08af0b8f4f56211c7e890128b5a', './public/system/frame/plugins/fullavatareditor/scripts/demo.js', '1522402125', '1510135218', '1522141397'),
(3541, 'd79e96247e087023edc62440446c10a0', './public/system/frame/plugins/fullavatareditor/scripts/fullAvatarEditor.js.b', '1522402125', '1510135218', '1522141397'),
(3542, '9aab324eab8a3917b4bff9aae10413f1', './public/system/frame/plugins/fullavatareditor/scripts/swfobject.js', '1522402125', '1510135218', '1522141397'),
(3543, '9aab324eab8a3917b4bff9aae10413f1', './public/system/frame/plugins/fullavatareditor/scripts/swfobject.js.b', '1522402125', '1510135218', '1522141397'),
(3544, '44d1629ef91c177f5cb8f82fd1516853', './public/system/frame/plugins/fullavatareditor/scripts/jQuery.Cookie.js', '1522402125', '1510135218', '1522141397'),
(3545, 'd79e96247e087023edc62440446c10a0', './public/system/frame/plugins/fullavatareditor/scripts/fullAvatarEditor.js', '1522402125', '1510135218', '1522141397'),
(3546, '64f0dd11f29114c2f256a57cdb7b1834', './public/system/frame/plugins/fullavatareditor/scripts/test.js', '1522402125', '1510135218', '1522141397'),
(3547, '204f4711f899c1aa766791daafc7a552', './public/system/frame/plugins/fullavatareditor/expressInstall.swf', '1522402125', '1510135218', '1522141397'),
(3548, 'e57b57a54fa35dbb5a228e00d6c1c16e', './public/system/frame/plugins/fullavatareditor/fullAvatarEditor.swf', '1522402125', '1510135218', '1522141397'),
(3549, '8b06529b3118fbeea9a317bc10665a21', './public/system/plug/validate/jquery.validate.js', '1522718469', '1510714312', '1522141397'),
(3550, 'b9c130e7f47765cadef3f4a80ad3b412', './public/system/plug/requirejs/README.md', '1522402125', '1506397294', '1522141397'),
(3551, '4bead4b1b0a417582825231dbfe121b1', './public/system/plug/requirejs/package.json', '1522402125', '1506397294', '1522141397'),
(3552, '43ca9edc23ee4fa84db2b1ec676e7c4e', './public/system/plug/requirejs/bin/r.js', '1522402125', '1506397294', '1522141397'),
(3553, 'e7199843dfd445bb66ec816e98a03214', './public/system/plug/requirejs/require.js', '1523243262', '1506397294', '1522141397'),
(3554, '1decfd5bb39b92078468e96255e5b2f2', './public/system/plug/umeditor/umeditor.min.js', '1522402125', '1486710014', '1522141397'),
(3555, 'c3deba51bd3bf360e8e79e368fb8571e', './public/system/plug/umeditor/third-party/mathquill/mathquill.css', '1522402125', '1486710014', '1522141397'),
(3556, '52a6aac18ae26b6ecbd4f3a0d9579c9f', './public/system/plug/umeditor/third-party/mathquill/font/Symbola.ttf', '1522402125', '1486710014', '1522141397'),
(3557, '20db57ba32a046dfea3c30519898b278', './public/system/plug/umeditor/third-party/mathquill/font/Symbola.svg', '1522402125', '1486710014', '1522141397'),
(3558, 'f8a321822630f4adfe89eef680b5e33f', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbol-webfont.ttf', '1522402125', '1486710014', '1522141397'),
(3559, 'aed55dccb65ef93aa9e2ae02e604d534', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralitalic-webfont.woff', '1522402125', '1486710014', '1522141397'),
(3560, 'bc5dcd8fd5b0922f2d219c9640903929', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralitalic-webfont.svg', '1522402125', '1486710014', '1522141397'),
(3561, '7bcbb2bf1e04b2458e0fbba8bb182f4e', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbolita-webfont.svg', '1522402125', '1486710014', '1522141397'),
(3562, 'dc8d21944741d366179418bb17515edb', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbolita-webfont.woff', '1522402125', '1486710014', '1522141397'),
(3563, '727a7fb84c1db602e74d8fb20714791c', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbolita-webfont.eot', '1522402125', '1486710014', '1522141397'),
(3564, '39f79995d4f5c15cfa7d1e8a4ca0b122', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbol-webfont.svg', '1522402125', '1486710014', '1522141397'),
(3565, 'a1f259dc8fd8263c926559da16c1d1ce', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbolita-webfont.ttf', '1522402125', '1486710014', '1522141397'),
(3566, 'ce70b34a2fd253deac2b7a294cd566c6', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbol-webfont.woff', '1522402125', '1486710014', '1522141397'),
(3567, 'edc5cda09ec11f6bb35a68993af422db', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralitalic-webfont.ttf', '1522402125', '1486710014', '1522141397'),
(3568, '26e3c55cff231fcc0826b8cca003e7f9', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneral-webfont.woff', '1522402125', '1486710014', '1522141397'),
(3569, '827773c0af0c03b4c944c10f2534a405', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralbol-webfont.eot', '1522402125', '1486710014', '1522141397'),
(3570, '30f0f43b350904c1e58186674cf46306', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneral-webfont.svg', '1522402125', '1486710014', '1522141397'),
(3571, '3ead76b2082228a75edf84c00c5477c7', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneral-webfont.eot', '1522402125', '1486710014', '1522141397'),
(3572, '179645aaa47e148ec0ec78a89ae6c7a0', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneralitalic-webfont.eot', '1522402125', '1486710014', '1522141397'),
(3573, '2ca57df1ad9421422eebb36b03aceea9', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/stixgeneral-webfont.ttf', '1522402125', '1486710014', '1522141397'),
(3574, 'b1af7bbd3cea93a60bf68cf571ad6cab', './public/system/plug/umeditor/third-party/mathquill/font/stixgeneral-bundle/STIXFontLicense2010.txt', '1522402125', '1486710014', '1522141397'),
(3575, '72981090d0240678c5d0a964fe29f082', './public/system/plug/umeditor/third-party/mathquill/font/Symbola.woff', '1522402125', '1486710014', '1522141397'),
(3576, '4621fcfd9def63c694914f7ec5add610', './public/system/plug/umeditor/third-party/mathquill/font/Symbola.otf', '1522402125', '1486710014', '1522141397'),
(3577, 'e4ae9ff7ac2476ae421fc4278e5d3806', './public/system/plug/umeditor/third-party/mathquill/font/Symbola.eot', '1522402125', '1486710014', '1522141397'),
(3578, 'a13a67d334416c042d5d4508b0044c1f', './public/system/plug/umeditor/third-party/mathquill/mathquill.js', '1522402125', '1486710014', '1522141397'),
(3579, 'aeddfdf8062e887e58ba144baa73ee95', './public/system/plug/umeditor/third-party/mathquill/mathquill.min.js', '1522402125', '1486710014', '1522141397'),
(3580, '628072e7212db1e8cdacb22b21752cda', './public/system/plug/umeditor/third-party/jquery.min.js', '1522402125', '1486710014', '1522141397'),
(3581, '63247d4e8047fc210dfa4e412d279bb7', './public/system/plug/umeditor/third-party/template.min.js', '1522402125', '1486710014', '1522141397'),
(3582, '5c9d2e4f5d64f397b50715b7730268bf', './public/system/plug/umeditor/dialogs/video/video.js', '1522402125', '1486710014', '1522141397'),
(3583, '85b08393f830bcc62c1376252b807f81', './public/system/plug/umeditor/dialogs/video/images/none_focus.jpg', '1522402125', '1486710014', '1522141397'),
(3584, '17e1af76de01403df026af28cc4aecda', './public/system/plug/umeditor/dialogs/video/images/right_focus.jpg', '1522402125', '1486710014', '1522141397'),
(3585, '13813ba01bf8267721a8a9d9ea56bf90', './public/system/plug/umeditor/dialogs/video/images/center_focus.jpg', '1522402125', '1486710014', '1522141397'),
(3586, 'e6f556abcbe48e0115995bcc106a8531', './public/system/plug/umeditor/dialogs/video/images/left_focus.jpg', '1522402125', '1486710014', '1522141397'),
(3587, '8ea7009849ed2eb55f6b2305e00d7350', './public/system/plug/umeditor/dialogs/video/video.css', '1522402125', '1486710014', '1522141397'),
(3588, 'b485ad9dca112e4cebe66de8923f59b2', './public/system/plug/umeditor/dialogs/formula/formula.css', '1522402126', '1486710014', '1522141397'),
(3589, 'a31a4f477981ae56e36b9337455355f1', './public/system/plug/umeditor/dialogs/formula/formula.html', '1522402126', '1486710014', '1522141397'),
(3590, 'f11cc42b343d3dd137b23e4ef9de76d9', './public/system/plug/umeditor/dialogs/formula/images/formula.png', '1522402126', '1486710014', '1522141397'),
(3591, 'a10cf46d604d95ceea7b27d4ca3bc1f5', './public/system/plug/umeditor/dialogs/formula/formula.js', '1522402126', '1486710014', '1522141397');
INSERT INTO `eb_system_file` (`id`, `cthash`, `filename`, `atime`, `mtime`, `ctime`) VALUES
(3592, '18571dbbe29b49ba038ce1d24c88674e', './public/system/plug/umeditor/dialogs/link/link.js', '1522402126', '1486710014', '1522141397'),
(3593, '43c43aada4dd1ec8bc352f092e39c7b0', './public/system/plug/umeditor/dialogs/emotion/images/yface.gif', '1522402126', '1486710014', '1522141397'),
(3594, '5d39be760e912b058a42fc59b3731bec', './public/system/plug/umeditor/dialogs/emotion/images/cface.gif', '1522402126', '1486710014', '1522141397'),
(3595, '629ccc774aed95b2c6bec91151f7292d', './public/system/plug/umeditor/dialogs/emotion/images/0.gif', '1522402126', '1486710014', '1522141397'),
(3596, '6ea3533c3b0adbe19467ebccd1a7afa1', './public/system/plug/umeditor/dialogs/emotion/images/bface.gif', '1522402126', '1486710014', '1522141397'),
(3597, 'a4fc234a5ca005ba8845b36a09004738', './public/system/plug/umeditor/dialogs/emotion/images/fface.gif', '1522402126', '1486710014', '1522141397'),
(3598, '30e42f9792a388ea7b049ee8715ce8fa', './public/system/plug/umeditor/dialogs/emotion/images/tface.gif', '1522402126', '1486710014', '1522141397'),
(3599, '1085988d048e25ad630451eba57dc09d', './public/system/plug/umeditor/dialogs/emotion/images/jxface2.gif', '1522402126', '1486710014', '1522141397'),
(3600, '647a02b861c53e54d603db363aeec236', './public/system/plug/umeditor/dialogs/emotion/images/wface.gif', '1522402126', '1486710014', '1522141397'),
(3601, '4869b022d6ba52d8c4312e9f40564efd', './public/system/plug/umeditor/dialogs/emotion/images/neweditor-tab-bg.png', '1522402126', '1486710014', '1522141397'),
(3602, '2986171b3f9f5967e0faa144eaacd222', './public/system/plug/umeditor/dialogs/emotion/emotion.css', '1522402126', '1486710014', '1522141397'),
(3603, 'bbba1bb2a8e3845a4da9dfc37e9041d4', './public/system/plug/umeditor/dialogs/emotion/emotion.js', '1522402126', '1510646424', '1522141397'),
(3604, '25f2465d1d9ec6b9c3d3d089b8bc7405', './public/system/plug/umeditor/dialogs/image/image.css', '1522402126', '1486710014', '1522141397'),
(3605, 'a6b5ceede5de10ccede5842caafbf445', './public/system/plug/umeditor/dialogs/image/image.js', '1522402126', '1486710014', '1522141397'),
(3606, '50745e5aea6a0dd22ac107dc0d8c2216', './public/system/plug/umeditor/dialogs/image/images/upload2.png', '1522402126', '1486710014', '1522141397'),
(3607, '7b23a0c7d197e0c5557b714bd7161162', './public/system/plug/umeditor/dialogs/image/images/close.png', '1522402126', '1486710014', '1522141397'),
(3608, '58a9aef441d29f473da8266a5b44e389', './public/system/plug/umeditor/dialogs/image/images/upload1.png', '1522402126', '1486710014', '1522141397'),
(3609, '258c0588e53f292f3bac2f4eb4253d39', './public/system/plug/umeditor/dialogs/map/map.html', '1522402126', '1486710014', '1522141397'),
(3610, '007b2f0a48f50424adb9729eea38ade5', './public/system/plug/umeditor/dialogs/map/map.js', '1522402126', '1486710014', '1522141397'),
(3611, '66cd701eef0e71bce692429f0ca90c22', './public/system/plug/umeditor/lang/en/en.js', '1522402126', '1486710014', '1522141397'),
(3612, '4c5b9e9ad29724e8a1296059523d56f5', './public/system/plug/umeditor/lang/en/images/deletedisable.png', '1522402126', '1486710014', '1522141397'),
(3613, '6d7265b07429ceca1b03fce1e9266e14', './public/system/plug/umeditor/lang/en/images/alldeletebtnupskin.png', '1522402126', '1486710014', '1522141397'),
(3614, '1eb887698a395ffb7f1a6175d05442af', './public/system/plug/umeditor/lang/en/images/alldeletebtnhoverskin.png', '1522402126', '1486710014', '1522141397'),
(3615, 'b012453148feba7207940356f0db91e2', './public/system/plug/umeditor/lang/en/images/deleteenable.png', '1522402126', '1486710014', '1522141397'),
(3616, '89afeb92719844076f19f20c03331226', './public/system/plug/umeditor/lang/en/images/imglabel.png', '1522402126', '1486710014', '1522141397'),
(3617, '98b6c213a9b89b7959da7aeb7368c738', './public/system/plug/umeditor/lang/en/images/localimage.png', '1522402126', '1486710014', '1522141397'),
(3618, '34206a03b2459da6ad36ff6ad2998fa0', './public/system/plug/umeditor/lang/en/images/rotaterightdisable.png', '1522402126', '1486710014', '1522141397'),
(3619, 'd3320c66e053049d1fed97de1422006b', './public/system/plug/umeditor/lang/en/images/background.png', '1522402126', '1486710014', '1522141397'),
(3620, '88e7d05b61025278ff1b1230cfd21aa5', './public/system/plug/umeditor/lang/en/images/addimage.png', '1522402126', '1486710014', '1522141397'),
(3621, '3ad9255e6398f1694395b0e0c3d330a4', './public/system/plug/umeditor/lang/en/images/listbackground.png', '1522402126', '1486710014', '1522141397'),
(3622, 'bfc1b0155bfe9e60373c6e7f131f2771', './public/system/plug/umeditor/lang/en/images/rotaterightenable.png', '1522402126', '1486710014', '1522141397'),
(3623, '9da36dab96ef97bf14115b4bd5169e78', './public/system/plug/umeditor/lang/en/images/upload.png', '1522402126', '1486710014', '1522141397'),
(3624, '6cae1397f4ae4f052293ca7a42fdf16c', './public/system/plug/umeditor/lang/en/images/rotateleftdisable.png', '1522402126', '1486710014', '1522141397'),
(3625, 'b512aa9fa0ee7783ff516f9f0828b060', './public/system/plug/umeditor/lang/en/images/copy.png', '1522402126', '1486710014', '1522141397'),
(3626, '2cd78f0b4eb01b8f00a44bfb029e3824', './public/system/plug/umeditor/lang/en/images/music.png', '1522402126', '1486710014', '1522141397'),
(3627, 'dfa3aef5fe3087a5450753aa28529304', './public/system/plug/umeditor/lang/en/images/button.png', '1522402126', '1486710014', '1522141397'),
(3628, '9e6628c34db960d682a591bc24d4f557', './public/system/plug/umeditor/lang/en/images/rotateleftenable.png', '1522402126', '1486710014', '1522141397'),
(3629, '0536481fe18c84e2a393259bda2f381d', './public/system/plug/umeditor/lang/zh-cn/zh-cn.js', '1522402126', '1510647192', '1522141397'),
(3630, 'a4d92a42a41238e43e2874c2c31582f9', './public/system/plug/umeditor/lang/zh-cn/images/imglabel.png', '1522402126', '1486710014', '1522141397'),
(3631, 'c754e6ca1921cd639739499d3cf45875', './public/system/plug/umeditor/lang/zh-cn/images/localimage.png', '1522402126', '1486710014', '1522141397'),
(3632, 'e0a1a76441b4da770097e1af0a650b93', './public/system/plug/umeditor/lang/zh-cn/images/upload.png', '1522402126', '1486710014', '1522141397'),
(3633, '40644255bb10f102763cbce4a3a2f7d9', './public/system/plug/umeditor/lang/zh-cn/images/copy.png', '1522402126', '1486710014', '1522141397'),
(3634, '6d299069db6f24cf2ba1a90a64b49db7', './public/system/plug/umeditor/lang/zh-cn/images/music.png', '1522402126', '1486710014', '1522141397'),
(3635, '0aad127afb5d3d45bc734158c83ad30c', './public/system/plug/umeditor/themes/default/css/umeditor.css', '1522402126', '1486710014', '1522141397'),
(3636, '4728fa5d5a548462b0df0cc3638fb02d', './public/system/plug/umeditor/themes/default/css/umeditor.min.css', '1522402126', '1510647952', '1522141397'),
(3637, '5f8a63bf407967d5ac160c839d50aabe', './public/system/plug/umeditor/themes/default/images/icons.gif', '1522402126', '1486710014', '1522141397'),
(3638, '84941c498e2abb7988d343d9df530077', './public/system/plug/umeditor/themes/default/images/caret.png', '1522402126', '1486710014', '1522141397'),
(3639, 'c4f73e335fcc0b33db904909ae99475e', './public/system/plug/umeditor/themes/default/images/icons.png', '1522402126', '1486710014', '1522141397'),
(3640, 'fa743a8e18903aa44727fdda3dad4807', './public/system/plug/umeditor/themes/default/images/pop-bg.png', '1522402126', '1486710014', '1522141397'),
(3641, 'f857581368e75fcada43649be5de483b', './public/system/plug/umeditor/themes/default/images/videologo.gif', '1522402126', '1486710014', '1522141397'),
(3642, 'df3e567d6f16d040326c7a0ea29a4f41', './public/system/plug/umeditor/themes/default/images/spacer.gif', '1522402126', '1486710014', '1522141397'),
(3643, '45c75be70f44e5712f166d22f0a2504e', './public/system/plug/umeditor/themes/default/images/ok.gif', '1522402126', '1486710014', '1522141397'),
(3644, '9b8e2f524d19c85e0026a33796182115', './public/system/plug/umeditor/themes/default/images/close.png', '1522402126', '1486710014', '1522141397'),
(3645, '79b4687609be6e1f8c948f246c668a21', './public/system/plug/umeditor/php/imageUp.php', '1522402126', '1510645762', '1522141397'),
(3646, '5abd584d7a3167cc1c9c4ff23d350aeb', './public/system/plug/umeditor/php/Uploader.class.php', '1522402126', '1486710014', '1522141397'),
(3647, 'ae2992f67384cafed0bf8e42a9e4b75f', './public/system/plug/umeditor/php/getContent.php', '1522402126', '1486710014', '1522141397'),
(3648, 'bb756f307a8166dfc34df1e77291d713', './public/system/plug/umeditor/umeditor.js', '1522402126', '1486710014', '1522141397'),
(3649, '595ae66e8921d1c2aa0af861f75f7c39', './public/system/plug/umeditor/umeditor.config.js', '1522402126', '1510648000', '1522141397'),
(3650, '55aa848bc74dde42637d7ae96f38ec01', './public/system/plug/vue/dist/vue.common.js', '1522402126', '1506397294', '1522141397'),
(3651, 'a64ac1319064e7e88d336ce95f667d52', './public/system/plug/vue/dist/README.md', '1522402126', '1506397294', '1522141397'),
(3652, '9eb63dbfb2badb381a3b6892b4da9f04', './public/system/plug/vue/dist/vue.runtime.esm.js', '1522402126', '1506397294', '1522141397'),
(3653, '7f7d01342623404fe6dadc6bea8a5d22', './public/system/plug/vue/dist/vue.esm.js', '1522402126', '1506397294', '1522141397'),
(3654, '3901c2214f7cbdf0dc2c962e3cc1a5ad', './public/system/plug/vue/dist/vue.runtime.min.js', '1522402126', '1506397294', '1522141397'),
(3655, 'bd3852d9ff082206759b1d322eeccfe8', './public/system/plug/vue/dist/vue.runtime.js', '1522402126', '1506397294', '1522141397'),
(3656, '037d997219804a79cea6540312fc8e0a', './public/system/plug/vue/dist/vue.js', '1522402126', '1506397294', '1522141397'),
(3657, '7e052e2850e70a8db1bd837e08ddda83', './public/system/plug/vue/dist/vue.min.js', '1522402126', '1506397294', '1522141397'),
(3658, '917f70e72ec5e171ea46987517925f1e', './public/system/plug/vue/dist/vue.runtime.common.js', '1522402126', '1506397294', '1522141397'),
(3659, '30173fd15782a5653e5c1b234521a959', './public/system/plug/iview/dist/iview.min.js', '1522402126', '1506397294', '1522141397'),
(3660, '8ffbb5a88713c5d685d974a4fc839d40', './public/system/plug/iview/dist/styles/iview.css', '1522402126', '1506397294', '1522141397'),
(3661, '05acfdb568b3df49ad31355b19495d4a', './public/system/plug/iview/dist/styles/fonts/ionicons.woff', '1522402126', '1506397294', '1522141397'),
(3662, '2c2ae068be3b089e0a5b59abb1831550', './public/system/plug/iview/dist/styles/fonts/ionicons.eot', '1522402126', '1506397294', '1522141397'),
(3663, '621bd386841f74e0053cb8e67f8a0604', './public/system/plug/iview/dist/styles/fonts/ionicons.svg', '1522402126', '1506397294', '1522141397'),
(3664, '24712f6c47821394fba7942fbb52c3b2', './public/system/plug/iview/dist/styles/fonts/ionicons.ttf', '1522402126', '1506397294', '1522141397'),
(3665, 'ced8fbbbc266a42b4f20a0a909be2491', './public/system/plug/iview/dist/locale/pt-PT.js', '1522402126', '1506397294', '1522141397'),
(3666, 'a4591f9285817b3096881112430e4505', './public/system/plug/iview/dist/locale/de-DE.js', '1522402126', '1506397294', '1522141397'),
(3667, '31ec5dbdd426ce6bfebc21c4c8858016', './public/system/plug/iview/dist/locale/ru-RU.js', '1522402126', '1506397294', '1522141397'),
(3668, '522aa18fb0e6fd7370aea1e2888d6a4b', './public/system/plug/iview/dist/locale/pt-BR.js', '1522402126', '1506397294', '1522141397'),
(3669, '30c93bd10e9a17601a3120c633ce6e45', './public/system/plug/iview/dist/locale/vi-VN.js', '1522402126', '1506397294', '1522141397'),
(3670, 'c052220f96815a15b1f68c1fd4f7ee12', './public/system/plug/iview/dist/locale/id-ID.js', '1522402126', '1506397294', '1522141397'),
(3671, 'c0de3c748f7b067d4a08289176c38761', './public/system/plug/iview/dist/locale/zh-CN.js', '1522402126', '1506397294', '1522141397'),
(3672, 'a147e39fc3f1fcc10d8d7b0d949ae123', './public/system/plug/iview/dist/locale/ko-KR.js', '1522402126', '1506397294', '1522141397'),
(3673, '7cd6a5caafff87f609ce78a076a44643', './public/system/plug/iview/dist/locale/fr-FR.js', '1522402126', '1506397294', '1522141397'),
(3674, 'f5ea82d56a1e757e17b25f0ab1bd407e', './public/system/plug/iview/dist/locale/tr-TR.js', '1522402126', '1506397294', '1522141397'),
(3675, '4333bc8adac238a5d020b396126bd42b', './public/system/plug/iview/dist/locale/en-US.js', '1522402126', '1506397294', '1522141397'),
(3676, 'c10e6a171e98a3dac5f34f738c808a68', './public/system/plug/iview/dist/locale/sv-SE.js', '1522402126', '1506397294', '1522141397'),
(3677, 'c8b21eba8334d31d063d2eeb8ccea94d', './public/system/plug/iview/dist/locale/zh-TW.js', '1522402126', '1506397294', '1522141397'),
(3678, '5fad473ad29a2ca3005e81918eba4038', './public/system/plug/iview/dist/locale/ja-JP.js', '1522402126', '1506397294', '1522141397'),
(3679, '62c5469b2dc3d06e43775781fe345598', './public/system/plug/iview/dist/locale/es-ES.js', '1522402126', '1506397294', '1522141397'),
(3680, 'd31fbe198c3839d9a8459c4ce23ff76a', './public/system/plug/iview/dist/iview.js', '1522402126', '1506397294', '1522141397'),
(3681, 'ab66401d78013fb07912c7460c438411', './public/system/module/success/css/reset-2.0.css', '1522402126', '1511832590', '1522141397'),
(3682, 'f62d65954ec04e247e1a4512c2c4a801', './public/system/module/success/images/success-icon.png', '1522402126', '1511832590', '1522141397'),
(3683, '915bfb69cb1299506d73f951e0407c51', './public/system/module/login/index.js', '1523243256', '1511166674', '1522141397'),
(3684, 'c911f7f66b47d0e9efa9648af3462466', './public/system/module/index/index.js', '1522402126', '1513592488', '1522141397'),
(3685, '00f1fbd0cc85b2450fdfadc2cfa1b7d4', './public/system/module/exception/css/style.css', '1522402126', '1511236218', '1522141397'),
(3686, '8671869d7112ee5f5bdd69e8f9e5f9b4', './public/system/module/exception/images/errorPageBorder.png', '1522402126', '1511235740', '1522141397'),
(3687, 'ab66401d78013fb07912c7460c438411', './public/system/module/error/css/reset-2.0.css', '1523170852', '1511832590', '1522141397'),
(3688, '570ef5094435f96f4c1c8a6bd122edda', './public/system/module/error/css/style.css', '1523170852', '1512524032', '1522141397'),
(3689, 'cd64fd136d56db19dc6f5e0c279e6c56', './public/system/module/error/images/01.png', '1522402126', '1511230198', '1522141397'),
(3690, '79d81eb10e31cb868dcfc1c320e90a0d', './public/system/module/error/images/04.png', '1522402126', '1511230144', '1522141397'),
(3691, '0c654a24811c8ce32f964b9a32efff86', './public/system/module/error/images/back-icon.png', '1523170852', '1511832590', '1522141397'),
(3692, '499506ace3f5de5b42f478122c49e92a', './public/system/module/error/images/failure-icon.png', '1523170852', '1511832590', '1522141397'),
(3693, 'e573789ff03ad5b05e1f9a5bf2e48ca8', './public/system/module/error/images/01.jpg', '1522402126', '1511230148', '1522141397'),
(3694, 'afaf0c6951fc2290ec2e0d6a72f3d0fd', './public/system/module/error/images/refresh-iocn.png', '1523170852', '1511833554', '1522141397'),
(3695, '3e9fb8ecd1a45951a971a95bc9a2c25f', './public/system/module/error/images/02.png', '1522402126', '1511230168', '1522141397'),
(3696, 'b762076fd5aaaceec3e9515f15d2c3e8', './public/system/module/error/images/03.png', '1522402126', '1511230140', '1522141397'),
(3697, '20961523df03340fa1f05bf43a017112', './public/system/module/wechat/news/css/index.css', '1522402126', '1512710564', '1522141397'),
(3698, '2b3a670c3d9db670bb5083ed11eae9e7', './public/system/module/wechat/news/css/style.css', '1522402126', '1512790148', '1522141397'),
(3699, '6b00566e6a7a54df0b83fe8a1d8b9427', './public/system/module/wechat/news/images/image.png', '1522718469', '1511253188', '1522141397'),
(3700, 'c8a1350b2bef32fc2871ca04630a1533', './public/system/module/wechat/news_category/css/style.css', '1522402126', '1515409716', '1522141397'),
(3701, '8ba31474130566d0d42a0656b86d3c64', './public/wap/crmeb/js/swiper-3.4.1.jquery.min.js', '1522402126', '1512521742', '1522141397'),
(3702, '5790ead7ad3ba27397aedfa3d263b867', './public/wap/crmeb/js/jquery-1.11.2.min.js', '1522402126', '1512521742', '1522141397'),
(3703, 'f85be0f6523f37d7d16b8ac682c76cf7', './public/wap/crmeb/js/car-model.js', '1523169779', '1512521742', '1522141397'),
(3704, '83fce5387f7e29912ffd067da5753f2d', './public/wap/crmeb/js/media.js', '1522402126', '1512521742', '1522141397'),
(3705, '887491d3a13565c1b2eef1ac914d3d98', './public/wap/crmeb/js/common.js', '1523169760', '1516609472', '1522141397'),
(3706, '8a010634d0be8abb8370dc2aa45e065c', './public/wap/crmeb/js/jquery.downCount.js', '1523169779', '1512521742', '1522141397'),
(3707, 'efaf1ffd9a687d0a482f3d8b78b12555', './public/wap/crmeb/css/store_service.css', '1522402126', '1522310004', '1522310010'),
(3708, '95d04d911bdc78604da5f9d599645a16', './public/wap/crmeb/css/service.css', '1522402126', '1514013668', '1522141397'),
(3709, '87b5a664bdbe9536623d1f054cdf8447', './public/wap/crmeb/css/style.css', '1523169760', '1522309906', '1522309915'),
(3710, 'edf7b178b729d8c4f2c4f520112cca9c', './public/wap/crmeb/font/iconfont.svg', '1522402126', '1512521742', '1522141397'),
(3711, '10984d654728e3c7144ef544a4fb0397', './public/wap/crmeb/font/iconfont.ttf', '1522402126', '1512521742', '1522141397'),
(3712, '0cdc63e7f3f3d23a5fc991f8801af8df', './public/wap/crmeb/font/iconfont.css', '1523169760', '1512521742', '1522141397'),
(3713, '4ba1a9c4c7691bf3f14b0f02256e7484', './public/wap/crmeb/font/iconfont.woff', '1522402126', '1512521742', '1522141397'),
(3714, 'e3f4544486133798845e9654ef8b1577', './public/wap/crmeb/font/iconfont.js', '1522402126', '1512521742', '1522141397'),
(3715, '5fd881481a9a47ed96806d4cc8a5d5b4', './public/wap/crmeb/font/iconfont.eot', '1522402126', '1512521742', '1522141397'),
(3716, '94839573b7f23d5d0e636026dc50d23b', './public/wap/crmeb/images/user-service01.png', '1522402126', '1512521742', '1522141397'),
(3717, 'f8ebd32657b38ed26e01f4d2d4791dd4', './public/wap/crmeb/images/nav-list006.png', '1522402126', '1512521742', '1522141397'),
(3718, 'fd2188bc7e4518ec094492c915fb5f9d', './public/wap/crmeb/images/hot-icon.png', '1523169779', '1515980062', '1522141397'),
(3719, 'a382c6d88168927cf59d0699531f21a2', './public/wap/crmeb/images/title-back.png', '1522402126', '1516990007', '1522141397'),
(3720, 'fa0bedf8fb77e64365dd411d81cde893', './public/wap/crmeb/images/share-info.png', '1522402126', '1498789597', '1522141397'),
(3721, '0e20368c7f50169c38311a0ddc9e817d', './public/wap/crmeb/images/banner.jpg', '1522402126', '1512521742', '1522141397'),
(3722, 'f04397b692a93e5ef91432206b8402c7', './public/wap/crmeb/images/index-icon03.png', '1523169780', '1515980062', '1522141397'),
(3723, '6f5464feaa77fa830cd6fda1ce4dbab2', './public/wap/crmeb/images/state-ypj.png', '1522402126', '1512521742', '1522141397'),
(3724, 'c0b0ec9f63f8bb3afe50826def79e12e', './public/wap/crmeb/images/empty_coupon.png', '1523170026', '1513646722', '1522141397'),
(3725, '1640851ee7de444214548555dc50d4c6', './public/wap/crmeb/images/yiwen.png', '1522402126', '1512521742', '1522141397'),
(3726, 'fee383307d877797ba4aa660027bbd00', './public/wap/crmeb/images/user-service07.png', '1522402126', '1512521742', '1522141397'),
(3727, '247a7fc750f6cda0a67a7579f2a4ff71', './public/wap/crmeb/images/nav-list003.png', '1522402126', '1512521742', '1522141397'),
(3728, '7323539619e0d44c4bda4d25bbbac357', './public/wap/crmeb/images/select-add.png', '1522402126', '1514164120', '1522141397'),
(3729, 'be8a3f7dd919cd4fb1a86d7df02273bd', './public/wap/crmeb/images/ewm-bar.png', '1522402126', '1512521742', '1522141397'),
(3730, 'c93d59fc82c5358f5ef729b0286382ef', './public/wap/crmeb/images/index-icon02.png', '1522398553', '1513923730', '1522141397'),
(3731, 'dca456346a0426031bc37bffc405a71c', './public/wap/crmeb/images/enter2.png', '1522402126', '1512789330', '1522141397'),
(3732, 'fecb52c315ec4a40e99492050c7888ab', './public/wap/crmeb/images/drug-09.jpg', '1522402126', '1512521742', '1522141397'),
(3733, 'a05942d96005875b9ead21fb4aec420d', './public/wap/crmeb/images/expired-img.png', '1522402126', '1513923730', '1522141397'),
(3734, 'fcc5f444cf865a9b540f57da82053bf3', './public/wap/crmeb/images/drug-05.jpg', '1522402126', '1512521742', '1522141397'),
(3735, '23da22c2bfd6d05db040f32325a22af7', './public/wap/crmeb/images/empty_message.png', '1522402126', '1513646722', '1522141397'),
(3736, '9074d1772f07b4e32279a3d45aab88eb', './public/wap/crmeb/images/nav-list010.png', '1522402126', '1512521742', '1522141397'),
(3737, 'd940da485aa636002f2e2cd5eb2455f8', './public/wap/crmeb/images/nav-list008.png', '1522402126', '1512521742', '1522141397'),
(3738, '9e768a5f5c096e3c95fd6787f4dcaf15', './public/wap/crmeb/images/chat_img.png', '1522402126', '1483523474', '1522141397'),
(3739, 'd3d0e30e040b02095569402de4b94032', './public/wap/crmeb/images/state-nfh.png', '1523170035', '1512521742', '1522141397'),
(3740, 'ea30fbf071eb5b41d3a8f31bc7a4f206', './public/wap/crmeb/images/empty_kefu.png', '1522402126', '1515463644', '1522141397'),
(3741, '0e7883897649523b8eb26e0452e72e40', './public/wap/crmeb/images/enterprise-info.jpg', '1522402126', '1513923730', '1522141397'),
(3742, '8fe78f810fbb9317148396ca21787b3c', './public/wap/crmeb/images/user-address.png', '1522402126', '1513998916', '1522141397'),
(3743, '8b79e87104b2bc529ace5fa42ce6d111', './public/wap/crmeb/images/discount-list-icon.png', '1523170026', '1512521742', '1522141397'),
(3744, '8db347f9ed9c68e967ab96b0559e2566', './public/wap/crmeb/images/storeservice/49.png', '1522402126', '1483523480', '1522141397'),
(3745, 'febb6ac4689648448f7723404d932698', './public/wap/crmeb/images/storeservice/4.png', '1522402126', '1483523480', '1522141397'),
(3746, '180ffe87a0ac13fa924c5e7c7e70b6dd', './public/wap/crmeb/images/storeservice/34.png', '1522402126', '1483523480', '1522141397'),
(3747, '9e2695ccdd32b7345bfa2cd825a525f7', './public/wap/crmeb/images/storeservice/26.png', '1522402126', '1483523480', '1522141397'),
(3748, '9f2850690f75a13b9c4677fcf0332465', './public/wap/crmeb/images/storeservice/51.png', '1522402126', '1483523480', '1522141397'),
(3749, 'c7c0f7c7cd156b809b7b33943b08433e', './public/wap/crmeb/images/storeservice/31.png', '1522402126', '1483523480', '1522141397'),
(3750, '69ef787a723448dc74f70c4a17a3da7a', './public/wap/crmeb/images/storeservice/43.png', '1522402126', '1483523480', '1522141397'),
(3751, 'b575b5b056dc819e6f7dbb0236170ded', './public/wap/crmeb/images/storeservice/53.png', '1522402126', '1483523480', '1522141397'),
(3752, 'ea0b7dd15328b31ebd2a442c77fe8671', './public/wap/crmeb/images/storeservice/48.png', '1522402126', '1483523480', '1522141397'),
(3753, 'f0f2d734f49d24edf8be0bd09ded5c45', './public/wap/crmeb/images/storeservice/47.png', '1522402126', '1483523480', '1522141397'),
(3754, 'cf3811ee8cfcc83ccf835916182f1f0d', './public/wap/crmeb/images/storeservice/32.png', '1522402126', '1483523480', '1522141397'),
(3755, 'ce8566c247441b2819ae65bb5deeb670', './public/wap/crmeb/images/storeservice/20.png', '1522402126', '1483523480', '1522141397'),
(3756, '960ae580c47cc4ae9ca0af5281760a8a', './public/wap/crmeb/images/storeservice/36.png', '1522402126', '1483523480', '1522141397'),
(3757, '0ac0c03365a99534da5cc8e44c21258d', './public/wap/crmeb/images/storeservice/2.png', '1522402126', '1483523480', '1522141397'),
(3758, 'f0cf714bd8cb5ce4765788b9bbfec102', './public/wap/crmeb/images/storeservice/11.png', '1522402126', '1483523480', '1522141397'),
(3759, '108a659b47331d0190214aec84f829c5', './public/wap/crmeb/images/storeservice/22.png', '1522402126', '1483523480', '1522141397'),
(3760, 'ec6f9dffa2a82e851da3c50aa85df45b', './public/wap/crmeb/images/storeservice/52.png', '1522402126', '1483523480', '1522141397'),
(3761, '80f508014f34d2220c63b9a78eaa2663', './public/wap/crmeb/images/storeservice/1.png', '1522402126', '1483523480', '1522141397'),
(3762, '16b309dcd2bf56d8cb154a6455337ce0', './public/wap/crmeb/images/storeservice/27.png', '1522402126', '1483523480', '1522141397'),
(3763, '1537430c5f47917aa0c95a800425885e', './public/wap/crmeb/images/storeservice/10.png', '1522402126', '1483523480', '1522141397'),
(3764, '4acd2acf3532002a536103ce5e04ba14', './public/wap/crmeb/images/storeservice/6.png', '1522402126', '1483523480', '1522141397'),
(3765, '5be21292fd108d0221d8d6f46ec8ab37', './public/wap/crmeb/images/storeservice/50.png', '1522402126', '1483523480', '1522141397'),
(3766, 'b63e56b2f0aca1705a869c4da45c4036', './public/wap/crmeb/images/storeservice/37.png', '1522402126', '1483523480', '1522141397'),
(3767, '37a792f5bcbe7074c8220ac0b71c4633', './public/wap/crmeb/images/storeservice/24.png', '1522402126', '1483523480', '1522141397'),
(3768, '2c09d836b77d91ff82e441ced4830df7', './public/wap/crmeb/images/storeservice/15.png', '1522402126', '1483523480', '1522141397'),
(3769, '814101b72f9e1a7dab020cbf03da487e', './public/wap/crmeb/images/storeservice/38.png', '1522402126', '1483523480', '1522141397'),
(3770, 'ef75495d03c4d637b742dfd1e68b964a', './public/wap/crmeb/images/storeservice/46.png', '1522402126', '1483523480', '1522141397'),
(3771, '5f15154e3e8a92660c22d05ad591d4f6', './public/wap/crmeb/images/storeservice/16.png', '1522402126', '1483523480', '1522141397'),
(3772, '4ed28c0b6228c45749e325e540363f5c', './public/wap/crmeb/images/storeservice/29.png', '1522402126', '1483523480', '1522141397'),
(3773, '36a64b4fd48ec067b113fe38087f3c81', './public/wap/crmeb/images/storeservice/8.png', '1522402126', '1483523480', '1522141397'),
(3774, '71bcfcf4a059d935a6d7b9e84190a091', './public/wap/crmeb/images/storeservice/3.png', '1522402126', '1483523480', '1522141397'),
(3775, '870fdb248491dc271a3c6d13de948273', './public/wap/crmeb/images/storeservice/23.png', '1522402126', '1483523480', '1522141397'),
(3776, '30be00066787c2c6ebcb791a4decab1c', './public/wap/crmeb/images/storeservice/33.png', '1522402126', '1483523480', '1522141397'),
(3777, '6080aa7f002f495f7a1ee8efff90fb74', './public/wap/crmeb/images/storeservice/12.png', '1522402126', '1483523480', '1522141397'),
(3778, 'da7c90ae577cb99e09ea9415956dd51a', './public/wap/crmeb/images/storeservice/35.png', '1522402126', '1483523480', '1522141397'),
(3779, '096d1fb6be32cf4629c067cd47fb3886', './public/wap/crmeb/images/storeservice/9.png', '1522402126', '1483523480', '1522141397'),
(3780, '3dd8ed544ffd11d46ddf02c1e8371570', './public/wap/crmeb/images/storeservice/25.png', '1522402126', '1483523480', '1522141397'),
(3781, '922a0500c4ebbf38113043acc4dbd546', './public/wap/crmeb/images/storeservice/14.png', '1522402126', '1483523480', '1522141397'),
(3782, '1977c2ba78c34d095a16d1eac150bbfc', './public/wap/crmeb/images/storeservice/17.png', '1522402126', '1483523480', '1522141397'),
(3783, '43f4d62af900377bd32b1f72887e38e6', './public/wap/crmeb/images/storeservice/5.png', '1522402126', '1483523480', '1522141397'),
(3784, 'ff0c815d18f6046b4659a5fd0a121274', './public/wap/crmeb/images/storeservice/45.png', '1522402126', '1483523480', '1522141397'),
(3785, 'b3b8754526a57a456c9ed1be8bd02cc6', './public/wap/crmeb/images/storeservice/44.png', '1522402126', '1483523480', '1522141397'),
(3786, '0c53c00e8cf37fa59f9503486fb57985', './public/wap/crmeb/images/storeservice/7.png', '1522402126', '1483523480', '1522141397'),
(3787, 'b8f5fd58ca9536ac58f0ff76433d925a', './public/wap/crmeb/images/storeservice/21.png', '1522402126', '1483523480', '1522141397'),
(3788, 'd8105b8b143e6a398f5c93e92fd556c7', './public/wap/crmeb/images/storeservice/13.png', '1522402126', '1483523480', '1522141397'),
(3789, '7964e582196572ce3551d9e5efc3314e', './public/wap/crmeb/images/storeservice/39.png', '1522402126', '1483523480', '1522141397'),
(3790, 'c965baf3c7b2791b9a74dc91085dc6df', './public/wap/crmeb/images/storeservice/41.png', '1522402126', '1483523480', '1522141397'),
(3791, 'b14cb7fde60d868b8706056593c9428c', './public/wap/crmeb/images/storeservice/28.png', '1522402126', '1483523480', '1522141397'),
(3792, 'c99ff75b73de0a80c499389dc30d4136', './public/wap/crmeb/images/storeservice/40.png', '1522402126', '1483523480', '1522141397'),
(3793, '8a049701933acf5f973d247f42dcd03b', './public/wap/crmeb/images/storeservice/18.png', '1522402126', '1483523480', '1522141397'),
(3794, 'e07877d7ce4ff2241b5554ce81ac1268', './public/wap/crmeb/images/storeservice/19.png', '1522402126', '1483523480', '1522141397'),
(3795, '090c3e596d9bbcc089a01394ce4a2a6c', './public/wap/crmeb/images/storeservice/30.png', '1522402126', '1483523480', '1522141397'),
(3796, '35ecba52545ace6090293dfe7a701a7f', './public/wap/crmeb/images/storeservice/42.png', '1522402126', '1483523480', '1522141397'),
(3797, 'e4ab1c82c74a6f9b928a9f4e0e1a23c4', './public/wap/crmeb/images/drug-04.jpg', '1522402126', '1512521742', '1522141397'),
(3798, 'e67186e02404320e3b71421be6c01d24', './public/wap/crmeb/images/weixin02.png', '1523170025', '1512521742', '1522141397'),
(3799, '00b8bd7ec55dd8f730c53bfdc3b23c9f', './public/wap/crmeb/images/drug-10.jpg', '1522402126', '1512521742', '1522141397'),
(3800, 'f183876082b28a433e3596938c190efe', './public/wap/crmeb/images/drug-08.jpg', '1522402126', '1512521742', '1522141397'),
(3801, '6272576897a2e42385ddbcf41435d938', './public/wap/crmeb/images/avatar.jpg', '1522402126', '1512521742', '1522141397'),
(3802, '0dc318734bc531b463957d3d9d74fbf2', './public/wap/crmeb/images/empty_detail.png', '1522402126', '1513646722', '1522141397'),
(3803, '1bf9f56070a72e38a51d9556684ae23a', './public/wap/crmeb/images/delete-btn1.png', '1522402126', '1513923730', '1522141397'),
(3804, 'b59879038f7d61ea940b6bc5bf817b90', './public/wap/crmeb/images/crmeb-logo.png', '1522402126', '1522310167', '1522310222'),
(3805, '0d921d59699caca425eba4f65f8fdfe2', './public/wap/crmeb/images/state-dqh.png', '1522402126', '1512521742', '1522141397'),
(3806, '5c3e5d084215b9c283427b909dfb8609', './public/wap/crmeb/images/camera-icon.png', '1522402126', '1513923730', '1522141397'),
(3807, 'db1c7430abf632bf2b922b64e4d2a645', './public/wap/crmeb/images/state-ytk.png', '1522402126', '1512521742', '1522141397'),
(3808, 'c0b0ec9f63f8bb3afe50826def79e12e', './public/wap/crmeb/images/empt_coupon.png', '1522402126', '1513646722', '1522141397'),
(3809, 'ab1c5a35b0dda53a6422fa24ff337d6e', './public/wap/crmeb/images/drug-01.jpg', '1522402126', '1512521742', '1522141397'),
(3810, 'f4a3e58f5c69894f7887b5d6412342f1', './public/wap/crmeb/images/integral-content-abg.png', '1522402126', '1512521742', '1522141397'),
(3811, '702cb04ca0b64b5aa9086759990a1202', './public/wap/crmeb/images/like-line.png', '1522402126', '1513756195', '1522141397'),
(3812, '228ce8de0fd770e8fd35584b91913f40', './public/wap/crmeb/images/more-icon.png', '1523169780', '1515980062', '1522141397'),
(3813, 'e70be90df32ad161610212294b08c321', './public/wap/crmeb/images/nav-list007.png', '1522402126', '1512521742', '1522141397'),
(3814, '8d619244496a35e5588a991424b8066d', './public/wap/crmeb/images/index-icon.png', '1522398558', '1515571030', '1522141397'),
(3815, '1f8d6ac88fae6292ada406e9918e5a03', './public/wap/crmeb/images/nav-list004.png', '1522402126', '1512521742', '1522141397'),
(3816, '3b3b6b95b2d2ff585e350d8e57ada0c1', './public/wap/crmeb/images/integral-content-icon.png', '1522402126', '1515138064', '1522141397'),
(3817, '28a1bed4dbc4f8bcc217bf7a525b0ce6', './public/wap/crmeb/images/1.png', '1522402126', '1515980062', '1522141397'),
(3818, '398033d11a496d73c82509d4eb9466d2', './public/wap/crmeb/images/user-service06.png', '1522402126', '1512521742', '1522141397'),
(3819, '3b78c31b99d836465876435bbc63d659', './public/wap/crmeb/images/state-send.png', '1522402126', '1512521742', '1522141397'),
(3820, 'fb4e7f517289f36b42c1629891623cc2', './public/wap/crmeb/images/wenhao.png', '1522402126', '1513756195', '1522141397'),
(3821, 'de4ef1237d0d70d5642ca9cf5a177a38', './public/wap/crmeb/images/empty_address.png', '1523170026', '1513646722', '1522141397'),
(3822, '35316825d7c4dca4f1240e4b5c02c41a', './public/wap/crmeb/images/xin-icon.png', '1523169780', '1515980062', '1522141397'),
(3823, 'd1f6c952b995dec76fc3c82703e12b37', './public/wap/crmeb/images/user-service05.png', '1522402126', '1512521742', '1522141397'),
(3824, '8894d224a04e2285b988a341fae46a0b', './public/wap/crmeb/images/banner1.jpg', '1522402126', '1515980062', '1522141397'),
(3825, '2b12a8b52fe9544ea7c3156204117880', './public/wap/crmeb/images/empty_product.png', '1522402126', '1513646722', '1522141397'),
(3826, '35b8327a57ca3fb173693468a500abfe', './public/wap/crmeb/images/user-service04.png', '1522402126', '1512521742', '1522141397'),
(3827, '5e305dae2a31cf92498a26186f098b17', './public/wap/crmeb/images/model-close.png', '1523169807', '1512521742', '1522141397'),
(3828, '111be19d491055d9dbd45017ea992889', './public/wap/crmeb/images/delete-btn.png', '1522402126', '1512521742', '1522141397'),
(3829, '1faaaa65dac4c191a50a9066ff85a05c', './public/wap/crmeb/images/service-icon.png', '1522402126', '1514014804', '1522141397'),
(3830, '1f7e145e875524962f563188a325ff07', './public/wap/crmeb/images/ruzhu_banner.jpg', '1522402126', '1516938598', '1522141397'),
(3831, '929f55c1dd295be126c77a1cf432a7ff', './public/wap/crmeb/images/time.png', '1522402126', '1512521742', '1522141397'),
(3832, 'f2e366273a55e13fe0d18b9a007ce197', './public/wap/crmeb/images/address-icon01.png', '1523170025', '1512521742', '1522141397'),
(3833, '63b5fcf4f27efa8f96c54c9668a1ac55', './public/wap/crmeb/images/delete-btn3.png', '1522402126', '1516957199', '1522141397'),
(3834, 'cb7c3e0df60c7bb6b128b239d3ffc3e4', './public/wap/crmeb/images/user-orders-list003.png', '1522398557', '1521531132', '1522141397'),
(3835, 'aad03a33f18acfac56ce57443dae7ed6', './public/wap/crmeb/images/integral-content-bg.png', '1522402126', '1512521742', '1522141397'),
(3836, 'b808020f81c2d7eec34eb62e353fb416', './public/wap/crmeb/images/video-play.png', '1522402126', '1512521742', '1522141397'),
(3837, 'e1e5153db9a7bc54c46756b57286fe3b', './public/wap/crmeb/images/state-nobuy.png', '1523170050', '1512521742', '1522141397'),
(3838, '19ebb3f416367e6d02e54013fa2e2b77', './public/wap/crmeb/images/nav-list005.png', '1522402126', '1512521742', '1522141397'),
(3839, '41f1e97bbae0cf2ff2222e1f710c2666', './public/wap/crmeb/images/count.png', '1522402126', '1512521742', '1522141397'),
(3840, 'ba1d378801ce5ecb00bd6ee9632a83ef', './public/wap/crmeb/images/more.gif', '1522402126', '1512521742', '1522141397'),
(3841, '1a3a4920cb3ce8f8018736442f51b29a', './public/wap/crmeb/images/addto-pic.png', '1522402126', '1512521742', '1522141397'),
(3842, 'ea8090fa1516bf5cfdc797944fc2e57f', './public/wap/crmeb/images/enter01.png', '1522402126', '1513923730', '1522141397'),
(3843, '7e13458f5f1315e033ec64f2820ea4eb', './public/wap/crmeb/images/empty_cart.png', '1523170387', '1513646722', '1522141397'),
(3844, '19a7be0746683111480a438cc61f08e2', './public/wap/crmeb/images/state-sqtk.png', '1522402126', '1512521742', '1522141397'),
(3845, '778cc285b448a11610bc1aadc36e2bdd', './public/wap/crmeb/images/img_icon.png', '1522402127', '1490713018', '1522141397'),
(3846, 'd591419bc4865740bbd379b64f811c63', './public/wap/crmeb/images/exceptional-bg.jpg', '1522402127', '1512521742', '1522141397'),
(3847, '7fcd142493534480e8339d93df304f87', './public/wap/crmeb/images/enter.png', '1523170387', '1512521742', '1522141397'),
(3848, '6c927f8b9d5d01758853a4851043feba', './public/wap/crmeb/images/user-orders-list002.png', '1522398557', '1521531123', '1522141397'),
(3849, 'c04e4b7c9f5f3418a96d9eada9421231', './public/wap/crmeb/images/nav-list001.png', '1522402127', '1512521742', '1522141397'),
(3850, '3b5e238761d7f4af194581ea211bea51', './public/wap/crmeb/images/star-empty.png', '1522402127', '1513923730', '1522141397'),
(3851, 'd5a8a97bad4e75f02aadc065d54526eb', './public/wap/crmeb/images/myci.png', '1522402127', '1483523474', '1522141397'),
(3852, '130653ac1426444794c1768e836d6684', './public/wap/crmeb/images/user-orders-list004.png', '1522398557', '1521531126', '1522141397'),
(3853, '6820027e0030666538d8c29d61dd740b', './public/wap/crmeb/images/yue02.png', '1523170025', '1512521742', '1522141397'),
(3854, '49afb224e1387b63aa36feed01174050', './public/wap/crmeb/images/right-menu-icon.png', '1523169760', '1516266311', '1522141397'),
(3855, 'b591b93a8b407321c7e5f0776aa1467d', './public/wap/crmeb/images/toci.png', '1522402127', '1483523474', '1522141397'),
(3856, '077aa3d917ec786367757480d1f7f494', './public/wap/crmeb/images/drug-02.jpg', '1522402127', '1512521742', '1522141397'),
(3857, '7ae1a028c00c333e3c93dde1dcaeaabf', './public/wap/crmeb/images/phone-icon.png', '1522402127', '1514013696', '1522141397'),
(3858, 'be8858b75101518ce9af9914fb1417bc', './public/wap/crmeb/images/user-service02.png', '1522402127', '1512521742', '1522141397'),
(3859, 'e0e1e1ae381a32ac48c046f1676f5679', './public/wap/crmeb/images/nav-list009.png', '1522402127', '1512521742', '1522141397'),
(3860, '38438252add269e1077d5699a3988ab3', './public/wap/crmeb/images/logistics-icon.png', '1522402127', '1515551348', '1522141397'),
(3861, 'e02cbc013861be0f079a23609dac9cf9', './public/wap/crmeb/images/user-orders-list005.png', '1522398557', '1521531130', '1522141397'),
(3862, '779c10d6e39a57f0f5e875b0d261adeb', './public/wap/crmeb/images/logistics-bg.png', '1523170035', '1512521742', '1522141397'),
(3863, '3e5dfb3a15e34345827997b39659ecdf', './public/wap/crmeb/images/audit-status.png', '1522402127', '1513923730', '1522141397'),
(3864, '87d00b582736f06be791b7de367848a3', './public/wap/crmeb/images/drug-07.jpg', '1522402127', '1512521742', '1522141397'),
(3865, '0f78f231136d94b164e2dea8a734b76b', './public/wap/crmeb/images/drug-03.jpg', '1522402127', '1512521742', '1522141397'),
(3866, 'bdc0b9349efb78155934618441e909be', './public/wap/crmeb/images/ico-select02.png', '1523170026', '1512521742', '1522141397'),
(3867, '2920ecd024e1c81cf0852d5a65306fe5', './public/wap/crmeb/images/user-orders-list001.png', '1522398557', '1521531128', '1522141397'),
(3868, '4e95ffe4dd68f9600f3b4aa03b3ca83e', './public/wap/crmeb/images/search1.png', '1522402127', '1508399638', '1522141397'),
(3869, '219ca75519f440b077b5008d528856f4', './public/wap/crmeb/images/line.png', '1523170025', '1512521742', '1522141397'),
(3870, '8b9aa6898f3ec02464d11cb837f583a3', './public/wap/crmeb/images/like-line-right.png', '1522402127', '1513756195', '1522141397'),
(3871, '52862267485ebcc84ef1fe0c7f68eebf', './public/wap/crmeb/images/tu.jpg', '1522402127', '1512521742', '1522141397'),
(3872, '6cfd6f2169537900d7f0d3f037ddf746', './public/wap/crmeb/images/express_icon.jpg', '1522402127', '1515554000', '1522141397'),
(3873, 'ae4e74bb129661a82930c8f081b1ad78', './public/wap/crmeb/images/gc-icon.png', '1522398553', '1512521742', '1522141397'),
(3874, '4092791ef0f38a65411cc481247282a7', './public/wap/crmeb/images/buy-cars.png', '1522398554', '1520244102', '1522141397'),
(3875, '3a1c0de40c5b7297b1677b5ce18485ec', './public/wap/crmeb/images/star-icon.png', '1522402127', '1512521742', '1522141397'),
(3876, '59499ea4992425edf8e8fb90e765f692', './public/wap/crmeb/images/user-balance-bg.png', '1522402127', '1512521742', '1522141397'),
(3877, 'b7ac406f273c4967acf85a27fc053da2', './public/wap/crmeb/images/empty_collect.png', '1522402127', '1513646722', '1522141397'),
(3878, '319253331b8e77011d93d0ec64458ced', './public/wap/crmeb/images/ruzhu-banner.png', '1522402127', '1513998280', '1522141397'),
(3879, '76e6275cf70ec0671145d96053fd0f87', './public/wap/crmeb/images/edit01.png', '1523170026', '1514886596', '1522141397'),
(3880, '5b7bbdeafa7546566b15e25ad3ff0264', './public/wap/crmeb/images/nav-list002.png', '1522402127', '1512521742', '1522141397'),
(3881, '55ad375b306ccd8089e69901d141be60', './public/wap/crmeb/images/empty_order.png', '1522402127', '1513646722', '1522141397'),
(3882, '5c3642ab67d16731e37ffb7fbde1c02a', './public/wap/crmeb/images/user-service03.png', '1522402127', '1512521742', '1522141397'),
(3883, 'b7833c06f8c482976e7e83a826c22df9', './public/wap/crmeb/images/search-icon.png', '1522402127', '1515980062', '1522141397'),
(3884, '4b2d954533dcf4fd875d0bcd58aaecab', './public/wap/crmeb/images/star-full.png', '1522402127', '1513923730', '1522141397'),
(3885, 'dbeafa06020513e52c3b8693a25cfc8e', './public/wap/crmeb/images/drug-06.jpg', '1522402127', '1512521742', '1522141397'),
(3886, '1a524b4706ce8ab3a17bd5cf6d1a8b60', './public/wap/crmeb/images/fail_collect.png', '1522402127', '1513935738', '1522141397'),
(3887, 'f8753eb5f8b143d5b376f7693c10ef35', './public/wap/crmeb/images/empty_reply.png', '1522402127', '1513646722', '1522141397'),
(3888, '485351bd59076b80fe0d12804a0b33b8', './public/wap/crmeb/images/thickness-wrapper-bg.jpg', '1522402127', '1512521742', '1522141397'),
(3889, '7954c33a03c549ff14fc8a958457e2b0', './public/wap/crmeb/images/empty_integral.png', '1522402127', '1513646722', '1522141397'),
(3890, '6469c80d241b03a9753700d92e40d192', './public/wap/crmeb/images/edit.png', '1523170387', '1512521742', '1522141397'),
(3891, 'd444c68ad0b3aaeb84520ed84474049c', './public/wap/crmeb/images/icon-shandian.png', '1522402127', '1512521742', '1522141397'),
(3892, '6dadb31cdd0f9a6bef3dd413d158a2da', './public/wap/crmeb/images/xianxia02.png', '1522402127', '1512521742', '1522141397'),
(3893, '716b54653579b8239fb68b8a7ef61c6b', './public/wap/crmeb/images/user-service08.png', '1522402127', '1512521742', '1522141397'),
(3894, '8b42487613b7f2157c3208e3337dd3fc', './public/wap/crmeb/images/state-ysh.png', '1522402127', '1512521742', '1522141397'),
(3895, 'e68cc3a827cbf175c665cf3bd15c79c9', './public/wap/crmeb/images/001.jpg', '1522402127', '1515980062', '1522141397'),
(3896, '332475344b7c41e4356298b25d587b9a', './public/wap/crmeb/images/ico-select.png', '1523170025', '1512521742', '1522141397'),
(3897, '63811bc309c22e32ffe682c280344367', './public/wap/crmeb/picture/002.jpg', '1522402127', '1512521742', '1522141397'),
(3898, '71f6f7b3999a72d37bef15d1e5eb430d', './public/wap/crmeb/picture/test.jpg', '1522402127', '1512521742', '1522141397'),
(3899, '02a88b5b43a46bb5608eb1fbe5b88eae', './public/wap/crmeb/picture/#U62e8#U53f7.png', '1522402127', '1512521742', '1522141397'),
(3900, 'd19d756e4efc4e9b5a4ceea5d7cf5eaf', './public/wap/crmeb/picture/avatar.jpg', '1522402127', '1512521742', '1522141397'),
(3901, '9b98bd7f6e0793535307b72f17bd73b8', './public/wap/crmeb/picture/#U65b0#U54c1.png', '1522402127', '1512521742', '1522141397'),
(3902, '17d766ecada9a0f414ef00fbdc8b1411', './public/wap/crmeb/picture/index-icon.png', '1522402127', '1512521742', '1522141397'),
(3903, '6d7afdc1aa43b4362a8c9c9878ba1ab4', './public/wap/crmeb/picture/#U70ed#U5356.png', '1522402127', '1512521742', '1522141397'),
(3904, '6e7f1aeee960e2d9bc80cfbf4914484a', './public/wap/crmeb/picture/004.jpg', '1522402127', '1512521742', '1522141397'),
(3905, '17d766ecada9a0f414ef00fbdc8b1411', './public/wap/crmeb/picture/img.png', '1522402127', '1512521742', '1522141397'),
(3906, '0e96ea4ff16da9aa5e58940828c7a379', './public/wap/crmeb/picture/#U4fe1#U5c01.png', '1522402127', '1512521742', '1522141397'),
(3907, 'c634cfcba59540ca6c76da534405dbc3', './public/wap/crmeb/picture/#U4fc3#U9500.png', '1522402127', '1512521742', '1522141397'),
(3908, '63f5de3a2cb695f34912de04a89bee41', './public/wap/crmeb/picture/001.png', '1522402127', '1512521742', '1522141397'),
(3909, '1686ec765986843a17c1a1f4b7318f15', './public/wap/crmeb/picture/drug-banner.jpg', '1522402127', '1512521742', '1522141397'),
(3910, '383a23e34d454e69aa70d2b1eeb8d5eb', './public/wap/crmeb/picture/001.jpg', '1522402127', '1512521742', '1522141397'),
(3911, '39d408a208ddb827b17e459da72e94b7', './public/wap/crmeb/picture/ewm.jpg', '1522402127', '1512521742', '1522141397'),
(3912, '51affd3bc1bc053e13943375b60a571a', './public/wap/crmeb/picture/003.jpg', '1522402127', '1512521742', '1522141397'),
(3913, '506c82bfb1ebe1fe831d3c933cde519a', './public/wap/crmeb/module/store.js', '1523169779', '1521704520', '1522141397'),
(3914, 'b71c09fa1a9a08b101ae569e1fe92f0f', './public/wap/crmeb/module/refund-reason.js', '1522402127', '1521703499', '1522141397'),
(3915, 'b0337d8b19fa052edb0d0d590f586322', './public/wap/crmeb/module/store/use-address.js', '1523170025', '1515459674', '1522141397'),
(3916, 'e9f2decec10ddecd6f730fd2da4c52f2', './public/wap/crmeb/module/store/use-coupon.js', '1523170025', '1514189062', '1522141397'),
(3917, '33b1189053bae5eb1ed439ff444a556d', './public/wap/crmeb/module/store/shop-card.js', '1523169806', '1522306887', '1522306892'),
(3918, 'e9b3d862ed16d9db46f90c62e651b0f3', './public/wap/crmeb/module/store/scroll-load.js', '1522402127', '1513994554', '1522141397'),
(3919, '611bcada29dc1690bd362325e4e01484', './public/wap/crmeb/module/store_service/jquery.touchSwipe.min.js', '1522402127', '1483617742', '1522141397'),
(3920, '3fd2f2e9ab37ba9e2b20d47fcd6ee39c', './public/wap/crmeb/module/store_service/unslider.js', '1522402127', '1483617728', '1522141397'),
(3921, 'e8cdc98d1a718ec002f0ba18f2edac0c', './public/wap/crmeb/module/store_service/moment.min.js', '1522402127', '1483617734', '1522141397'),
(3922, 'ba6e996b030d541d9c67f80408b8e37c', './public/wap/crmeb/module/store_service/mobile.js', '1522402127', '1483617752', '1522141397'),
(3923, '0b7e886a6500576ae3bd9eb755d3cc11', './public/wap/crmeb/module/store_service/msn.js', '1522402127', '1517062958', '1522141397'),
(3924, 'e351296583f2b21d83c1297b303856bc', './public/wap/crmeb/module/cart.js', '1523170386', '1522304038', '1522304045'),
(3925, '8ba31474130566d0d42a0656b86d3c64', './public/wap/sx/js/swiper-3.4.1.jquery.min.js', '1522402127', '1519720987', '1522141397'),
(3926, '5790ead7ad3ba27397aedfa3d263b867', './public/wap/sx/js/jquery-1.11.2.min.js', '1522398551', '1519720987', '1522141397'),
(3927, 'a3f43bab5ace67f3616f5ebfc66744dc', './public/wap/sx/js/iscroll.js', '1522402127', '1519720987', '1522141397'),
(3928, '83fce5387f7e29912ffd067da5753f2d', './public/wap/sx/js/media.js', '1522398551', '1519720987', '1522141397'),
(3929, '8a010634d0be8abb8370dc2aa45e065c', './public/wap/sx/js/jquery.downCount.js', '1522402127', '1519720987', '1522141397'),
(3930, 'cd00b8ef8c34316c6ccf8b995ae4accc', './public/wap/sx/css/reset.css', '1522398551', '1519720987', '1522141397'),
(3931, '0176bf1163b6f65f3c8cf11cd367e67c', './public/wap/sx/css/swiper-3.4.1.min.css', '1522402127', '1519720987', '1522141397'),
(3932, 'be4af37694eefca47673e41b86c2ced8', './public/wap/sx/css/style.css', '1522398551', '1522310030', '1522310059'),
(3933, 'edf7b178b729d8c4f2c4f520112cca9c', './public/wap/sx/font/iconfont.svg', '1522402127', '1519720987', '1522141397'),
(3934, '10984d654728e3c7144ef544a4fb0397', './public/wap/sx/font/iconfont.ttf', '1522402127', '1519720987', '1522141397'),
(3935, '0cdc63e7f3f3d23a5fc991f8801af8df', './public/wap/sx/font/iconfont.css', '1522402127', '1519720987', '1522141397'),
(3936, '4ba1a9c4c7691bf3f14b0f02256e7484', './public/wap/sx/font/iconfont.woff', '1522402127', '1519720987', '1522141397'),
(3937, 'e3f4544486133798845e9654ef8b1577', './public/wap/sx/font/iconfont.js', '1522402127', '1519720987', '1522141397'),
(3938, '5fd881481a9a47ed96806d4cc8a5d5b4', './public/wap/sx/font/iconfont.eot', '1522402127', '1519720987', '1522141397'),
(3939, '94839573b7f23d5d0e636026dc50d23b', './public/wap/sx/images/user-service01.png', '1522402127', '1519720987', '1522141397'),
(3940, 'fd2188bc7e4518ec094492c915fb5f9d', './public/wap/sx/images/hot-icon.png', '1522402127', '1519720987', '1522141397'),
(3941, '19532e9260bc164ae316776d06d719e4', './public/wap/sx/images/index-nav04.png', '1522402127', '1519720987', '1522141397'),
(3942, '4e8f2e75a7dda23ce879001a79631a1a', './public/wap/sx/images/index-nav03.png', '1522402127', '1519720987', '1522141397'),
(3943, '6f5464feaa77fa830cd6fda1ce4dbab2', './public/wap/sx/images/state-ypj.png', '1522402127', '1519720987', '1522141397'),
(3944, 'd925630a86763dc96f181ff398150de0', './public/wap/sx/images/index-nav02.png', '1522402127', '1519720987', '1522141397'),
(3945, 'fee383307d877797ba4aa660027bbd00', './public/wap/sx/images/user-service07.png', '1522402127', '1519720987', '1522141397'),
(3946, '5a07ddf08caf040064ae0e2967aaf24f', './public/wap/sx/images/product-banner.jpg', '1522402127', '1519720987', '1522141397'),
(3947, '2f1ff83ce406537c73424a037ebe0dcf', './public/wap/sx/images/pro-banner.jpg', '1522402127', '1519720987', '1522141397'),
(3948, 'bb6f23a89a5dc82b8bf8b32ee88be905', './public/wap/sx/images/index-icon02.png', '1522402127', '1519720987', '1522141397'),
(3949, '0efb9b070f66f6812f28223161a978a6', './public/wap/sx/images/status-received.gif', '1522402127', '1519720987', '1522141397'),
(3950, '2f180f0ccfeac8de49c26d6ff4555e33', './public/wap/sx/images/status-complete.gif', '1522402127', '1519720987', '1522141397'),
(3951, 'd3d0e30e040b02095569402de4b94032', './public/wap/sx/images/state-nfh.png', '1522402127', '1519720987', '1522141397'),
(3952, 'bf3e47117344c465c70fe454c80eef7e', './public/wap/sx/images/dropup.png', '1522402127', '1519720987', '1522141397'),
(3953, '6272576897a2e42385ddbcf41435d938', './public/wap/sx/images/avatar.jpg', '1522402127', '1519720987', '1522141397'),
(3954, 'a1f53eca545924cbf627a6ecfce1e3ea', './public/wap/sx/images/warn.png', '1522402127', '1521617497', '1522141397'),
(3955, '0d921d59699caca425eba4f65f8fdfe2', './public/wap/sx/images/state-dqh.png', '1522402127', '1519720987', '1522141397'),
(3956, 'c528b79c688684e10b058cab48fb8050', './public/wap/sx/images/dropdown.png', '1522402127', '1519720987', '1522141397'),
(3957, 'db1c7430abf632bf2b922b64e4d2a645', './public/wap/sx/images/state-ytk.png', '1522402127', '1519720987', '1522141397'),
(3958, '69c5e2b5d7ebb3f1646f431f630b6faf', './public/wap/sx/images/pt-bg.png', '1523169779', '1519720987', '1522141397'),
(3959, '228ce8de0fd770e8fd35584b91913f40', './public/wap/sx/images/more-icon.png', '1522402127', '1519720987', '1522141397'),
(3960, '872aa687f375a400633d0dfe235207bb', './public/wap/sx/images/index-icon.png', '1523169779', '1519720987', '1522141397'),
(3961, 'b7e1c35162a389b3716c84b55cb4bc8d', './public/wap/sx/images/details-icon.png', '1522402127', '1519720987', '1522141397'),
(3962, 'd81e58a72cebac3b4462afa380a9a816', './public/wap/sx/images/lv1.png', '1522402127', '1519720987', '1522141397'),
(3963, '28a1bed4dbc4f8bcc217bf7a525b0ce6', './public/wap/sx/images/1.png', '1522402127', '1519720987', '1522141397'),
(3964, '398033d11a496d73c82509d4eb9466d2', './public/wap/sx/images/user-service06.png', '1522402127', '1519720987', '1522141397'),
(3965, '3b78c31b99d836465876435bbc63d659', './public/wap/sx/images/state-send.png', '1522402127', '1519720987', '1522141397'),
(3966, 'fb4e7f517289f36b42c1629891623cc2', './public/wap/sx/images/wenhao.png', '1522402127', '1519720987', '1522141397'),
(3967, '35316825d7c4dca4f1240e4b5c02c41a', './public/wap/sx/images/xin-icon.png', '1522402127', '1519720987', '1522141397'),
(3968, 'd1f6c952b995dec76fc3c82703e12b37', './public/wap/sx/images/user-service05.png', '1522402127', '1519720987', '1522141397');
INSERT INTO `eb_system_file` (`id`, `cthash`, `filename`, `atime`, `mtime`, `ctime`) VALUES
(3969, '7481ef58ed721cbbb7ee18fbf74d5380', './public/wap/sx/images/search-icon3.png', '1522398553', '1519720987', '1522141397'),
(3970, 'be642d609eec50f8f9e8ed2bc5197662', './public/wap/sx/images/banner1.jpg', '1522402127', '1519720987', '1522141397'),
(3971, 'bbecabe6a23274f8a9d7e282ae9c43ae', './public/wap/sx/images/user-service04.png', '1522402127', '1519720987', '1522141397'),
(3972, '5e305dae2a31cf92498a26186f098b17', './public/wap/sx/images/model-close.png', '1522402127', '1519720987', '1522141397'),
(3973, '4e04786e110aa382c4ee7ed2e7f927e7', './public/wap/sx/images/foot-icon.png', '1523169779', '1519720987', '1522141397'),
(3974, '280976f0d7e008d2ebcb5fe9d2da54f9', './public/wap/sx/images/pt-success.png', '1522402127', '1519720987', '1522141397'),
(3975, 'f2e366273a55e13fe0d18b9a007ce197', './public/wap/sx/images/address-icon01.png', '1522402127', '1519720987', '1522141397'),
(3976, '79feef98255fcf8092e72ad8003f4d10', './public/wap/sx/images/status-drop.gif', '1522402127', '1519720987', '1522141397'),
(3977, 'fa5dda51a40bee121990d754d593bb73', './public/wap/sx/images/hot-banner.jpg', '1522402127', '1519720987', '1522141397'),
(3978, '4111e361016559f17571ca7f2c7bcb71', './public/wap/sx/images/user-orders-list003.png', '1522402127', '1519720987', '1522141397'),
(3979, '13da7410c9d6ca50fd56d3e103ceb07c', './public/wap/sx/images/singin-title-bg.jpg', '1522402127', '1519720987', '1522141397'),
(3980, 'b789a558388f783435a366f312378008', './public/wap/sx/images/fail.png', '1522402127', '1519720987', '1522141397'),
(3981, '19a7be0746683111480a438cc61f08e2', './public/wap/sx/images/state-sqtk.png', '1522402127', '1519720987', '1522141397'),
(3982, '7fcd142493534480e8339d93df304f87', './public/wap/sx/images/enter.png', '1522402127', '1519720987', '1522141397'),
(3983, 'a07da7e3968646ea25b221c8a447627c', './public/wap/sx/images/user-orders-list002.png', '1522402127', '1519720987', '1522141397'),
(3984, '2a3899e911c47ba674269686277856fb', './public/wap/sx/images/user-singin-bg.png', '1522402127', '1519720987', '1522141397'),
(3985, 'e245f8e7aed16c4f6793f229b70c9482', './public/wap/sx/images/count-wrapper-bg.png', '1522402127', '1519720987', '1522141397'),
(3986, '1d3648f8c28cfd9d99e3b595279ee5d3', './public/wap/sx/images/user-orders-list004.png', '1522402127', '1519720987', '1522141397'),
(3987, 'd6e45de39d0bb105311abec5c0fe25ea', './public/wap/sx/images/close.png', '1522402127', '1519720987', '1522141397'),
(3988, 'b1ece6497e977b03be68b6c31466f2cd', './public/wap/sx/images/pt-error.png', '1522402127', '1519720987', '1522141397'),
(3989, 'be8858b75101518ce9af9914fb1417bc', './public/wap/sx/images/user-service02.png', '1522402127', '1519720987', '1522141397'),
(3990, '114153c26ab2f7057f8b358ad330974b', './public/wap/sx/images/user-orders-list005.png', '1522402127', '1519720987', '1522141397'),
(3991, '779c10d6e39a57f0f5e875b0d261adeb', './public/wap/sx/images/logistics-bg.png', '1522402127', '1519720987', '1522141397'),
(3992, 'aa7ceb2b66db9251a03431536b161de3', './public/wap/sx/images/user-orders-list001.png', '1522402127', '1519720987', '1522141397'),
(3993, 'ae4e74bb129661a82930c8f081b1ad78', './public/wap/sx/images/gc-icon.png', '1522402127', '1519720987', '1522141397'),
(3994, '67e46344d74a2c64de7113e9378c115f', './public/wap/sx/images/star-icon.png', '1522402127', '1519720987', '1522141397'),
(3995, 'e1e5153db9a7bc54c46756b57286fe3b', './public/wap/sx/images/state-nobuy.png.png', '1522402127', '1519720987', '1522141397'),
(3996, '1cad69a59f5e9efc7dd65fd9d2db0e3e', './public/wap/sx/images/user-service03.png', '1522402127', '1519720987', '1522141397'),
(3997, '8d17f175fd00902023461e882dc923cb', './public/wap/sx/images/search-icon.png', '1523169779', '1519720987', '1522141397'),
(3998, '6469c80d241b03a9753700d92e40d192', './public/wap/sx/images/edit.png', '1522402127', '1519720987', '1522141397'),
(3999, '716b54653579b8239fb68b8a7ef61c6b', './public/wap/sx/images/user-service08.png', '1522402127', '1519720987', '1522141397'),
(4000, 'e0a7a5b525ec2955efe1cc8c8d1ff1a5', './public/wap/sx/images/nav-bg.jpg', '1523169779', '1519720987', '1522141397'),
(4001, '8b42487613b7f2157c3208e3337dd3fc', './public/wap/sx/images/state-ysh.png', '1522402127', '1519720987', '1522141397'),
(4002, 'e68cc3a827cbf175c665cf3bd15c79c9', './public/wap/sx/images/001.jpg', '1522402127', '1519720987', '1522141397'),
(4003, '2175ce29a75052222243547341f7c6d9', './public/wap/sx/images/mtw-close.png', '1522402127', '1521702195', '1522141397'),
(4004, 'ecde49e514f8e94765b06f03a765c509', './public/wap/sx/images/index-nav01.png', '1522402127', '1519720987', '1522141397'),
(4005, '83fce5387f7e29912ffd067da5753f2d', './public/static/js/media.js', '1523169760', '1512521742', '1522141397'),
(4006, '57db4a2811f951ff841fb4f77220d95b', './public/static/css/animate.css', '1523178524', '1506648394', '1522141397'),
(4007, 'cd02043bef6ec50507da15c298d406ce', './public/static/css/reset.css', '1523169760', '1514187990', '1522141397'),
(4008, 'db0eb3e080078a53626d846636fad24b', './public/static/plug/jquery-1.10.2.min.js', '1523243256', '1482714330', '1522141397'),
(4009, 'a3f43bab5ace67f3616f5ebfc66744dc', './public/static/plug/iscroll5.js', '1522402127', '1498016732', '1522141397'),
(4010, 'b9c130e7f47765cadef3f4a80ad3b412', './public/static/plug/requirejs/README.md', '1522402127', '1506397294', '1522141397'),
(4011, 'fa71c855757afa72f454060031db4159', './public/static/plug/requirejs/require-compiled.js', '1522402127', '1507795478', '1522141397'),
(4012, '5bea7d748bd7cc0ffadd553cfb7d7df0', './public/static/plug/requirejs/require-css.js', '1523243263', '1506419298', '1522141397'),
(4013, '96ecf6f665d3f1ecbf121e436f1bb19f', './public/static/plug/requirejs/require-basket-load.js', '1522402127', '1507795460', '1522141397'),
(4014, '55c17f69ae6c2d587a0e33dc0a3efcf4', './public/static/plug/requirejs/require-compiled.js.map', '1522402127', '1507795478', '1522141397'),
(4015, '4bead4b1b0a417582825231dbfe121b1', './public/static/plug/requirejs/package.json', '1522402127', '1506397294', '1522141397'),
(4016, '134360260efaa95a5c79a6fe4723167b', './public/static/plug/requirejs/require-basket-load-compiled.js.map', '1522402127', '1507795462', '1522141397'),
(4017, '43ca9edc23ee4fa84db2b1ec676e7c4e', './public/static/plug/requirejs/bin/r.js', '1522402127', '1506397294', '1522141397'),
(4018, '354cf34e88ac81f464adc56d5b4b6647', './public/static/plug/requirejs/require.js', '1523169760', '1507795474', '1522141397'),
(4019, '61f8c2e37f77a591e0672b7721d8c758', './public/static/plug/requirejs/require-basket-load-compiled.js', '1522402127', '1507795462', '1522141397'),
(4020, 'cf2786de75573240473e4e56cef443f8', './public/static/plug/better-scroll.js', '1523169779', '1509070816', '1522141397'),
(4021, '28fbf6a436794c45587747ebf711418b', './public/static/plug/reg-verify.js', '1522402127', '1516953713', '1522141397'),
(4022, 'e0dfccd4ca8ac5ca5d601a61035a0da9', './public/static/plug/axios.min.js', '1523243264', '1504077028', '1522141397'),
(4023, '55e89fffe3580c903dfd79d787070645', './public/static/plug/basket.js', '1522402127', '1506754736', '1522141397'),
(4024, '191da69d6b0f0f2dbb12271c8428219f', './public/static/plug/lodash.js', '1522402127', '1507532784', '1522141397'),
(4025, '8ba31474130566d0d42a0656b86d3c64', './public/static/plug/swiper/swiper-3.4.1.jquery.min.js', '1523169779', '1483493834', '1522141398'),
(4026, '9571a2b9196123c124e88bf55a16ed90', './public/static/plug/swiper/swiper.jquery.js', '1522402127', '1486631732', '1522141398'),
(4027, '0176bf1163b6f65f3c8cf11cd367e67c', './public/static/plug/swiper/swiper-3.4.1.min.css', '1523169779', '1483493830', '1522141398'),
(4028, '7b9d65cd421b833d3711523179fef3ec', './public/static/plug/sweetalert2/sweetalert2.all.min.js', '1523243264', '1510306946', '1522141398'),
(4029, '5ff6a80730ca572d24352e6508f56040', './public/static/plug/ydui/ydui-px.css', '1522402127', '1514170638', '1522141398'),
(4030, 'a4832e43e88b83274dca7c8b186c98de', './public/static/plug/ydui/cityselect.js', '1522402127', '1514001622', '1522141398'),
(4031, '927996b7c45e4dc887f009f3dbcf0a62', './public/static/plug/ydui/province_city_area_id.js', '1522402127', '1514169582', '1522141398'),
(4032, '4f67a8852e1278a4288f3a7c55a5db30', './public/static/plug/ydui/ydui.js', '1522402127', '1514170182', '1522141398'),
(4033, 'fb53d3cd5696e69c22dccaf057133e89', './public/static/plug/ydui/ydui2.js', '1522402127', '1510107500', '1522141398'),
(4034, 'd0ce8d18bb758fcf8bd0da3c76ea67c0', './public/static/plug/ydui/province_city.js', '1522402127', '1514169602', '1522141398'),
(4035, '453ef465af9a92167d5af6c0527ded83', './public/static/plug/ydui/province_city_area2.js', '1522402127', '1510108876', '1522141398'),
(4036, 'b3d826f230222dab7a450be99e447175', './public/static/plug/ydui/province_city_area.js', '1522402127', '1514169560', '1522141398'),
(4037, '6c8de0e7a70adbdf21c695bdd7508ecc', './public/static/plug/ydui/province_city_id.js', '1522402127', '1514169590', '1522141398'),
(4038, '4aaa06f28382bfb4b74e0f4e19afa001', './public/static/plug/moment.js', '1523243271', '1509612698', '1522141398'),
(4039, '50c5e3e79b276c92df6cc52caeb464f0', './public/static/plug/layer/theme/default/loading-2.gif', '1523170031', '1512446244', '1522141398'),
(4040, 'a72011ccdc2bcd23ba440f104c416193', './public/static/plug/layer/theme/default/loading-0.gif', '1522402127', '1512446244', '1522141398'),
(4041, '1140bc5c7863f8e54a3c2b179e640758', './public/static/plug/layer/theme/default/loading-1.gif', '1523178524', '1512446244', '1522141398'),
(4042, 'ba81b24c06e2e0eac1e219405b33766b', './public/static/plug/layer/theme/default/icon-ext.png', '1522402127', '1512446244', '1522141398'),
(4043, '3d2e0d91c5c0b96abb8dbdc2234aba77', './public/static/plug/layer/theme/default/layer.css', '1523243263', '1512446244', '1522141398'),
(4044, '551539f873d9ebe0792b120a9867d399', './public/static/plug/layer/theme/default/icon.png', '1523170030', '1512446244', '1522141398'),
(4045, '3859550db3293c2e669a440a80e081b3', './public/static/plug/layer/mobile/layer-compiled.js', '1522402127', '1508921398', '1522141398'),
(4046, '633915e62d14a714594b95b974ee0836', './public/static/plug/layer/mobile/need/layer.css', '1522402127', '1512446244', '1522141398'),
(4047, '2028e407c22ee7a12b05a35ee9c71882', './public/static/plug/layer/mobile/layer.js', '1522402127', '1512446244', '1522141398'),
(4048, 'f86c47baefd32fded3eea00b502e802f', './public/static/plug/layer/mobile/layer-compiled.js.map', '1522402127', '1508921398', '1522141398'),
(4049, '5eed218554f21c8fcb6d0f53d75ec8b0', './public/static/plug/layer/layer-compiled.js', '1522402127', '1508921400', '1522141398'),
(4050, '6e80f0cff749c82653b9cdde9eeab937', './public/static/plug/layer/layer.js', '1523243263', '1512446244', '1522141398'),
(4051, 'cd07461cfdea4bd644f0e0b0bfbf54a1', './public/static/plug/layer/layer-compiled.js.map', '1522402127', '1508921400', '1522141398'),
(4052, '3aa9b9ebda33033336cce574b6f148ed', './public/static/plug/jquery-1.4.1.min.js', '1522402127', '1506415086', '1522141398'),
(4053, '49615fa68d2512d2b432d2f5c25a0df0', './public/static/plug/jquery-slide-up.js', '1523169779', '1516241576', '1522141398'),
(4054, 'c5873fa3b95636deac5ba3d97c08601f', './public/static/plug/echarts.common.min.js', '1523160600', '1519613316', '1523160512'),
(4055, '344bc711f245e4802ad3dfd598a1f2dc', './public/static/plug/helper.js', '1523169779', '1515120364', '1522141398'),
(4056, '17410722717c1e9395f02d0dd74c2590', './public/static/plug/daterangepicker/daterangepicker.js', '1523243271', '1502197774', '1522141398'),
(4057, '2fba2a36f4a0188d6ac539e97ac788c4', './public/static/plug/daterangepicker/daterangepicker.css', '1523243271', '1502197774', '1522141398'),
(4058, 'ce57a13a0b3045e3b4fbf30b83f7841b', './public/static/plug/wxApi.js', '1523169760', '1514274856', '1522141398'),
(4059, 'd7c6e123e87924be0abd384ac6579c01', './public/static/plug/vant/vant.min.js', '1522402127', '1514188530', '1522141398'),
(4060, '9e6119f9c349ed8fde1af51a819a8fa3', './public/static/plug/vant/vant.css', '1522402127', '1514188554', '1522141398'),
(4061, '55aa848bc74dde42637d7ae96f38ec01', './public/static/plug/vue/dist/vue.common.js', '1522402127', '1506397294', '1522141398'),
(4062, 'a64ac1319064e7e88d336ce95f667d52', './public/static/plug/vue/dist/README.md', '1522402127', '1506397294', '1522141398'),
(4063, '9eb63dbfb2badb381a3b6892b4da9f04', './public/static/plug/vue/dist/vue.runtime.esm.js', '1522402127', '1506397294', '1522141398'),
(4064, '7f7d01342623404fe6dadc6bea8a5d22', './public/static/plug/vue/dist/vue.esm.js', '1522402127', '1506397294', '1522141398'),
(4065, '3901c2214f7cbdf0dc2c962e3cc1a5ad', './public/static/plug/vue/dist/vue.runtime.min.js', '1522402127', '1506397294', '1522141398'),
(4066, 'bd3852d9ff082206759b1d322eeccfe8', './public/static/plug/vue/dist/vue.runtime.js', '1522402127', '1506397294', '1522141398'),
(4067, '037d997219804a79cea6540312fc8e0a', './public/static/plug/vue/dist/vue.js', '1522402127', '1506397294', '1522141398'),
(4068, '7e052e2850e70a8db1bd837e08ddda83', './public/static/plug/vue/dist/vue.min.js', '1523243262', '1506397294', '1522141398'),
(4069, '917f70e72ec5e171ea46987517925f1e', './public/static/plug/vue/dist/vue.runtime.common.js', '1522402127', '1506397294', '1522141398'),
(4070, '30173fd15782a5653e5c1b234521a959', './public/static/plug/iview/dist/iview.min.js', '1523243263', '1506397294', '1522141398'),
(4071, '8ffbb5a88713c5d685d974a4fc839d40', './public/static/plug/iview/dist/styles/iview.css', '1523243263', '1506397294', '1522141398'),
(4072, '05acfdb568b3df49ad31355b19495d4a', './public/static/plug/iview/dist/styles/fonts/ionicons.woff', '1522402127', '1506397294', '1522141398'),
(4073, '2c2ae068be3b089e0a5b59abb1831550', './public/static/plug/iview/dist/styles/fonts/ionicons.eot', '1522402127', '1506397294', '1522141398'),
(4074, '621bd386841f74e0053cb8e67f8a0604', './public/static/plug/iview/dist/styles/fonts/ionicons.svg', '1522402127', '1506397294', '1522141398'),
(4075, '24712f6c47821394fba7942fbb52c3b2', './public/static/plug/iview/dist/styles/fonts/ionicons.ttf', '1523178525', '1506397294', '1522141398'),
(4076, 'ced8fbbbc266a42b4f20a0a909be2491', './public/static/plug/iview/dist/locale/pt-PT.js', '1522402127', '1506397294', '1522141398'),
(4077, 'a4591f9285817b3096881112430e4505', './public/static/plug/iview/dist/locale/de-DE.js', '1522402127', '1506397294', '1522141398'),
(4078, '31ec5dbdd426ce6bfebc21c4c8858016', './public/static/plug/iview/dist/locale/ru-RU.js', '1522402127', '1506397294', '1522141398'),
(4079, '522aa18fb0e6fd7370aea1e2888d6a4b', './public/static/plug/iview/dist/locale/pt-BR.js', '1522402127', '1506397294', '1522141398'),
(4080, '30c93bd10e9a17601a3120c633ce6e45', './public/static/plug/iview/dist/locale/vi-VN.js', '1522402127', '1506397294', '1522141398'),
(4081, 'c052220f96815a15b1f68c1fd4f7ee12', './public/static/plug/iview/dist/locale/id-ID.js', '1522402127', '1506397294', '1522141398'),
(4082, 'c0de3c748f7b067d4a08289176c38761', './public/static/plug/iview/dist/locale/zh-CN.js', '1522402127', '1506397294', '1522141398'),
(4083, 'a147e39fc3f1fcc10d8d7b0d949ae123', './public/static/plug/iview/dist/locale/ko-KR.js', '1522402127', '1506397294', '1522141398'),
(4084, '7cd6a5caafff87f609ce78a076a44643', './public/static/plug/iview/dist/locale/fr-FR.js', '1522402127', '1506397294', '1522141398'),
(4085, 'f5ea82d56a1e757e17b25f0ab1bd407e', './public/static/plug/iview/dist/locale/tr-TR.js', '1522402127', '1506397294', '1522141398'),
(4086, '4333bc8adac238a5d020b396126bd42b', './public/static/plug/iview/dist/locale/en-US.js', '1522402127', '1506397294', '1522141398'),
(4087, 'c10e6a171e98a3dac5f34f738c808a68', './public/static/plug/iview/dist/locale/sv-SE.js', '1522402127', '1506397294', '1522141398'),
(4088, 'c8b21eba8334d31d063d2eeb8ccea94d', './public/static/plug/iview/dist/locale/zh-TW.js', '1522402127', '1506397294', '1522141398'),
(4089, '5fad473ad29a2ca3005e81918eba4038', './public/static/plug/iview/dist/locale/ja-JP.js', '1522402127', '1506397294', '1522141398'),
(4090, '62c5469b2dc3d06e43775781fe345598', './public/static/plug/iview/dist/locale/es-ES.js', '1522402127', '1506397294', '1522141398'),
(4091, 'd31fbe198c3839d9a8459c4ce23ff76a', './public/static/plug/iview/dist/iview.js', '1522402127', '1506397294', '1522141398'),
(4092, '8a010634d0be8abb8370dc2aa45e065c', './public/static/plug/jquery.downCount.js', '1522402127', '1513756195', '1522141398'),
(4093, '1d2c4f01f610421cd154a8d8fec7bed0', './public/static/plug/copy.js', '1522402127', '1515554536', '1522141398');

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_group`
--

CREATE TABLE IF NOT EXISTS `eb_system_group` (
  `id` int(11) NOT NULL COMMENT '组合数据ID',
  `name` varchar(50) NOT NULL COMMENT '数据组名称',
  `info` varchar(256) NOT NULL COMMENT '数据提示',
  `config_name` varchar(50) NOT NULL COMMENT '数据字段',
  `fields` text COMMENT '数据组字段以及类型（json数据）'
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='组合数据表';

--
-- 转存表中的数据 `eb_system_group`
--

INSERT INTO `eb_system_group` (`id`, `name`, `info`, `config_name`, `fields`) VALUES
(32, '个人中心菜单', '个人中心菜单设置', 'my_index_menu', '[{"name":"\\u540d\\u79f0","title":"name","type":"input","param":""},{"name":"\\u56fe\\u6807","title":"icon","type":"upload","param":""},{"name":"\\u94fe\\u63a5","title":"url","type":"input","param":""}]'),
(34, '商城首页banner', '商城首页banner设置', 'store_home_banner', '[{"name":"\\u6807\\u9898","title":"title","type":"input","param":""},{"name":"\\u94fe\\u63a5","title":"url","type":"input","param":""},{"name":"\\u56fe\\u7247","title":"pic","type":"upload","param":""}]'),
(35, '商城首页分类按钮', '商城首页分类按钮', 'store_home_menus', '[{"name":"\\u540d\\u79f0","title":"name","type":"input","param":""},{"name":"\\u94fe\\u63a5","title":"url","type":"input","param":""},{"name":"\\u56fe\\u6807","title":"icon","type":"upload","param":""}]'),
(36, '商城首页滚动新闻', '商城首页滚动新闻', 'store_home_roll_news', '[{"name":"\\u6eda\\u52a8\\u6587\\u5b57","title":"info","type":"input","param":""},{"name":"\\u70b9\\u51fb\\u94fe\\u63a5","title":"url","type":"input","param":""}]'),
(37, '小程序首页猜你喜欢banner', '小程序首页猜你喜欢banner', 'routine_lovely', '[{"name":"\\u56fe\\u7247","title":"img","type":"upload","param":""}]'),
(38, '砍价列表图片', '砍价列表顶部图片', 'bargain_banner', '[{"name":"banner","title":"banner","type":"upload","param":""}]');

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_group_data`
--

CREATE TABLE IF NOT EXISTS `eb_system_group_data` (
  `id` int(11) NOT NULL COMMENT '组合数据详情ID',
  `gid` int(11) NOT NULL COMMENT '对应的数据组id',
  `value` text NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int(10) NOT NULL COMMENT '添加数据时间',
  `sort` int(11) NOT NULL COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）'
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='组合数据详情表';

--
-- 转存表中的数据 `eb_system_group_data`
--

INSERT INTO `eb_system_group_data` (`id`, `gid`, `value`, `add_time`, `sort`, `status`) VALUES
(52, 32, '{"name":{"type":"input","value":"\\u6211\\u7684\\u79ef\\u5206"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aeab2ef8a656.png"]},"url":{"type":"input","value":"\\/wap\\/my\\/integral.html"}}', 1513846430, 1, 1),
(53, 32, '{"name":{"type":"input","value":"\\u4f18\\u60e0\\u5238"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aeab3b43f217.png"]},"url":{"type":"input","value":"\\/wap\\/my\\/coupon.html"}}', 1513846448, 1, 1),
(84, 34, '{"title":{"type":"input","value":"banner3"},"url":{"type":"input","value":"#"},"pic":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b0ca89fcfa2b.jpg"]}}', 1522135667, 1, 1),
(56, 32, '{"name":{"type":"input","value":"\\u5df2\\u6536\\u85cf\\u5546\\u54c1"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5abc57454d6c7.png"]},"url":{"type":"input","value":"\\/wap\\/my\\/collect.html"}}', 1513846605, 1, 1),
(57, 32, '{"name":{"type":"input","value":"\\u5730\\u5740\\u7ba1\\u7406"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5abc574fc0570.png"]},"url":{"type":"input","value":"\\/wap\\/my\\/address.html"}}', 1513846618, 1, 1),
(87, 32, '{"name":{"type":"input","value":"\\u6211\\u7684\\u4f59\\u989d"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aeab2b4c5f99.png"]},"url":{"type":"input","value":"\\/wap\\/my\\/balance.html"}}', 1525330614, 1, 1),
(67, 32, '{"name":{"type":"input","value":"\\u804a\\u5929\\u8bb0\\u5f55"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5abc576dba8a2.png"]},"url":{"type":"input","value":"\\/wap\\/service\\/service_new.html"}}', 1515570261, 1, 1),
(68, 34, '{"title":{"type":"input","value":"banner1"},"url":{"type":"input","value":"#"},"pic":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b0ca8abe7fe9.jpg"]}}', 1515984801, 10, 1),
(69, 34, '{"title":{"type":"input","value":"banner2"},"url":{"type":"input","value":"#"},"pic":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b0ca8b734a89.jpg"]}}', 1515984809, 9, 1),
(71, 35, '{"name":{"type":"input","value":"\\u6211\\u7684\\u6536\\u85cf"},"url":{"type":"input","value":"\\/wap\\/my\\/collect.html"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aebd1cae4b16.png"]}}', 1515985418, 1, 1),
(72, 35, '{"name":{"type":"input","value":"\\u9886\\u5238\\u4e2d\\u5fc3"},"url":{"type":"input","value":"\\/wap\\/store\\/issue_coupon.html"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aebd1c2cc2b2.png"]}}', 1515985426, 1, 1),
(73, 35, '{"name":{"type":"input","value":"\\u52b2\\u7206\\u62fc\\u56e2"},"url":{"type":"input","value":"\\/wap\\/store\\/combination.html"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aebd19b0ad3e.png"]}}', 1515985435, 1, 1),
(74, 35, '{"name":{"type":"input","value":"\\u6bcf\\u65e5\\u7b7e\\u5230"},"url":{"type":"input","value":"\\/wap\\/my\\/sign_in.html"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aebd18a320bc.png"]}}', 1515985441, 1, 1),
(80, 36, '{"info":{"type":"input","value":"\\u606d\\u8d3a CRMEB\\u7535\\u5546\\u7cfb\\u7edf\\u6210\\u529f\\u4e0a\\u7ebf\\u5566\\uff01\\uff01\\uff01"},"url":{"type":"input","value":"#"}}', 1515985907, 1, 1),
(81, 36, '{"info":{"type":"input","value":"\\u606d\\u8d3a CRMEB\\u7535\\u5546\\u7cfb\\u7edf\\u6210\\u529f\\u4e0a\\u7ebf\\u5566\\uff01\\uff01\\uff01"},"url":{"type":"input","value":"#"}}', 1515985918, 1, 1),
(82, 36, '{"info":{"type":"input","value":"\\u606d\\u8d3a CRMEB\\u7535\\u5546\\u7cfb\\u7edf\\u6210\\u529f\\u4e0a\\u7ebf\\u5566\\uff01\\uff01\\uff01"},"url":{"type":"input","value":"#"}}', 1515985931, 1, 1),
(88, 37, '{"img":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b0ca90e7df18.jpg"]}}', 1526699754, 1, 1),
(89, 38, '{"banner":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b0683be28863.png"]}}', 1527153599, 1, 1),
(86, 32, '{"name":{"type":"input","value":"\\u8054\\u7cfb\\u5ba2\\u670d"},"icon":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5aeab3e1d4ecb.png"]},"url":{"type":"input","value":"\\/wap\\/index\\/about.html"}}', 1522310836, 1, 1),
(90, 34, '{"title":{"type":"input","value":"1"},"url":{"type":"input","value":"1"},"pic":{"type":"upload","value":["\\/public\\/uploads\\/common\\/s_5b10bcc46b10a.jpg"]}}', 1527823558, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_log`
--

CREATE TABLE IF NOT EXISTS `eb_system_log` (
  `id` int(10) unsigned NOT NULL COMMENT '管理员操作记录ID',
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL COMMENT '链接',
  `page` varchar(64) NOT NULL COMMENT '行为',
  `method` varchar(12) NOT NULL COMMENT '访问类型',
  `ip` varchar(16) NOT NULL COMMENT '登录IP',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `add_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  `merchant_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='管理员操作记录表';

--
-- 转存表中的数据 `eb_system_log`
--

INSERT INTO `eb_system_log` (`id`, `admin_id`, `admin_name`, `path`, `page`, `method`, `ip`, `type`, `add_time`, `merchant_id`) VALUES
(1, 7, 'demo', 'admin/system.systemconfig/index/tab_id/1', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193670, 0),
(2, 7, 'demo', 'admin/system.systemconfig/index/tab_id/5/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193673, 0),
(3, 7, 'demo', 'admin/system.systemconfig/index/tab_id/9/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193673, 0),
(4, 7, 'demo', 'admin/system.systemconfig/index/tab_id/10/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193674, 0),
(5, 7, 'demo', 'admin/system.systemconfig/index/tab_id/9/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193675, 0),
(6, 7, 'demo', 'admin/system.systemconfig/index/tab_id/5/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193675, 0),
(7, 7, 'demo', 'admin/system.systemconfig/index/tab_id/1/type/0', '配置列表展示页', 'GET', '123.139.93.228', 'system', 1528193676, 0),
(8, 7, 'demo', 'admin/wechat.wechatnews/index/', '内容管理', 'GET', '123.139.93.228', 'system', 1528193683, 0),
(9, 7, 'demo', 'admin/wechat.articlecategory/index/', '文章分类管理展示页', 'GET', '123.139.93.228', 'system', 1528193685, 0),
(10, 7, 'demo', 'admin/store.storeproduct/index/', '产品管理展示页', 'GET', '123.139.93.228', 'system', 1528193688, 0),
(11, 7, 'demo', 'admin/wechat.wechatmessage/index/', '微信用户行为纪录展示页', 'GET', '123.139.93.228', 'system', 1528193696, 0),
(12, 7, 'demo', 'admin/wechat.wechatuser/index/', '微信用户展示页', 'GET', '123.139.93.228', 'system', 1528193697, 0),
(13, 7, 'demo', 'admin/wechat.wechatuser/tag/', '用户标签', 'GET', '123.139.93.228', 'system', 1528193702, 0),
(14, 7, 'demo', 'admin/wechat.wechatuser/group/', '用户分组', 'GET', '123.139.93.228', 'system', 1528193703, 0),
(15, 7, 'demo', 'admin/wechat.wechatuser/group/', '用户分组', 'GET', '123.139.93.228', 'system', 1528193704, 0),
(16, 7, 'demo', 'admin/wechat.wechatmessage/index/', '微信用户行为纪录展示页', 'GET', '123.139.93.228', 'system', 1528193708, 0),
(17, 7, 'demo', 'admin/wechat.articlecategory/index/', '文章分类管理展示页', 'GET', '123.139.93.228', 'system', 1528193708, 0),
(18, 7, 'demo', 'admin/wechat.wechatnews/index/', '内容管理', 'GET', '123.139.93.228', 'system', 1528193714, 0),
(19, 7, 'demo', 'admin/store.storeproduct/index/', '产品管理展示页', 'GET', '123.139.93.228', 'system', 1528193716, 0),
(20, 7, 'demo', 'admin/wechat.wechattemplate/index/', '微信模板消息', 'GET', '123.139.93.228', 'system', 1528193721, 0),
(21, 7, 'demo', 'admin/wechat.menus/index/', '微信菜单展示页', 'GET', '123.139.93.228', 'system', 1528193723, 0),
(22, 7, 'demo', 'admin/wechat.wechatnewscategory/index/', '图文消息展示页', 'GET', '123.139.93.228', 'system', 1528193725, 0),
(23, 7, 'demo', 'admin/wechat.reply/index/key/default/title/编辑无效关键字默认回复', '微信关注回复展示页', 'GET', '123.139.93.228', 'system', 1528193727, 0),
(24, 7, 'demo', 'admin/wechat.reply/keyword/', '关键字回复展示页', 'GET', '123.139.93.228', 'system', 1528193730, 0),
(25, 7, 'demo', 'admin/wechat.reply/index/key/subscribe/title/编辑无配置默认回复', '微信关注回复展示页', 'GET', '123.139.93.228', 'system', 1528193730, 0),
(26, 7, 'demo', 'admin/wechat.wechatuser/index/', '微信用户展示页', 'GET', '123.139.93.228', 'system', 1528193839, 0),
(27, 7, 'demo', 'admin/wechat.wechatmessage/index/', '微信用户行为纪录展示页', 'GET', '123.139.93.228', 'system', 1528193842, 0),
(28, 7, 'demo', 'admin/wechat.wechatmessage/index/', '微信用户行为纪录展示页', 'GET', '123.139.93.228', 'system', 1528193844, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_menus`
--

CREATE TABLE IF NOT EXISTS `eb_system_menus` (
  `id` smallint(5) unsigned NOT NULL COMMENT '菜单ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '子管理员是否可用'
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- 转存表中的数据 `eb_system_menus`
--

INSERT INTO `eb_system_menus` (`id`, `pid`, `icon`, `menu_name`, `module`, `controller`, `action`, `params`, `sort`, `is_show`, `access`) VALUES
(1, 0, 'gears', '系统设置', 'admin', 'system.systemConfig', 'index', '[]', 4, 1, 1),
(2, 153, '', '权限规则', 'admin', 'system.systemMenus', 'index', '{"cate":"12"}', 7, 1, 1),
(4, 153, '', '管理员列表', 'admin', 'system.systemAdmin', 'index', '[]', 9, 1, 1),
(6, 1, '', '系统配置', 'admin', 'system.systemConfig', 'index', '{"tab_id":"1"}', 1, 1, 1),
(7, 1, '', '配置分类', 'admin', 'system.systemConfigTab', 'index', '[]', 1, 1, 1),
(8, 153, '', '身份管理', 'admin', 'system.systemRole', 'index', '[]', 10, 1, 1),
(9, 1, '', '组合数据', 'admin', 'system.systemGroup', 'index', '[]', 1, 1, 1),
(11, 0, 'wechat', '公众号管理', 'admin', 'wechat.wechat', 'index', '[]', 40, 1, 1),
(12, 79, '', '微信关注回复', 'admin', 'wechat.reply', 'index', '{"key":"subscribe","title":"编辑无配置默认回复"}', 1, 1, 1),
(17, 275, '', '微信菜单', 'admin', 'wechat.menus', 'index', '[]', 1, 1, 1),
(18, 80, 'edit', '文章管理', 'admin', 'wechat.wechatNews', 'index', '[]', 1, 1, 1),
(19, 11, '', '图文管理', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', 1, 1, 1),
(21, 0, ' fa-bell', '系统服务', 'admin', 'system.system', '', '[]', 1, 1, 1),
(23, 0, 'fa fa-laptop', '商城管理', 'admin', 'store.store', 'index', '[]', 100, 1, 1),
(24, 274, '', '产品列表', 'admin', 'store.storeProduct', 'index', '[]', 1, 1, 1),
(25, 274, '', '产品分类', 'admin', 'store.storeCategory', 'index', '[]', 1, 1, 1),
(26, 23, '', '订单管理', 'admin', 'store.storeOrder', 'index', '[]', 1, 1, 1),
(30, 79, '', '关键字回复', 'admin', 'wechat.reply', 'keyword', '[]', 1, 1, 1),
(31, 79, '', '无效关键词回复', 'admin', 'wechat.reply', 'index', '{"key":"default","title":"编辑无效关键字默认回复"}', 2, 1, 1),
(32, 80, '', '文章分类管理', 'admin', 'wechat.articleCategory', 'index', '[]', 1, 1, 1),
(33, 32, '', '附加权限', 'admin', 'wechat.articleCategory', '', '[]', 0, 0, 1),
(34, 33, '', '添加文章分类', 'admin', 'wechat.articleCategory', 'create', '[]', 0, 0, 1),
(35, 33, '', '编辑文章分类', 'admin', 'wechat.articleCategory', 'edit', '[]', 0, 0, 1),
(36, 33, '', '删除文章分类', 'admin', 'wechat.articleCategory', 'delete', '[]', 0, 0, 1),
(37, 31, '', '附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(38, 18, '', '附加权限', 'admin', 'wechat.wechatNews', '', '[]', 0, 0, 1),
(39, 38, '', '添加文章', 'admin', 'wechat.wechatNews', 'create', '[]', 0, 0, 1),
(40, 38, '', '编辑文章', 'admin', 'wechat.wechatNews', 'add_new', '[]', 0, 0, 1),
(41, 38, '', '删除文章', 'admin', 'wechat.wechatNews', 'delete', '[]', 0, 0, 1),
(42, 19, '', '附加权限', 'admin', 'wechat.wechatNewsCategory', '', '[]', 0, 0, 1),
(43, 42, '', '添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'create', '[]', 0, 0, 1),
(44, 42, '', '编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'edit', '[]', 0, 0, 1),
(45, 42, '', '删除图文消息', 'admin', 'wechat.wechatNewsCategory', 'delete', '[]', 0, 0, 1),
(46, 7, '', '配置分类附加权限', 'admin', 'system.systemConfigTab', '', '[]', 0, 0, 1),
(47, 46, '', '添加配置分类', 'admin', 'system.systemConfigTab', 'create', '[]', 0, 0, 1),
(48, 46, '', '添加配置', 'admin', 'system.systemConfig', 'create', '[]', 0, 0, 1),
(49, 46, '', '编辑配置分类', 'admin', 'system.systemConfigTab', 'edit', '[]', 0, 0, 1),
(50, 46, '', '删除配置分类', 'admin', 'system.systemConfigTab', 'delete', '[]', 0, 0, 1),
(51, 46, '', '查看子字段', 'admin', 'system.systemConfigTab', 'sonConfigTab', '[]', 0, 0, 1),
(52, 9, '', '组合数据附加权限', 'admin', 'system.systemGroup', '', '[]', 0, 0, 1),
(53, 52, '', '添加数据', 'admin', 'system.systemGroupData', 'create', '[]', 0, 0, 1),
(54, 52, '', '编辑数据', 'admin', 'system.systemGroupData', 'edit', '[]', 0, 0, 1),
(55, 52, '', '删除数据', 'admin', 'system.systemGroupData', 'delete', '[]', 0, 0, 1),
(56, 52, '', '数据列表', 'admin', 'system.systemGroupData', 'index', '[]', 0, 0, 1),
(57, 52, '', '添加数据组', 'admin', 'system.systemGroup', 'create', '[]', 0, 0, 1),
(58, 52, '', '删除数据组', 'admin', 'system.systemGroup', 'delete', '[]', 0, 0, 1),
(59, 4, '', '管理员列表附加权限', 'admin', 'system.systemAdmin', '', '[]', 0, 0, 1),
(60, 59, '', '添加管理员', 'admin', 'system.systemAdmin', 'create', '[]', 0, 0, 1),
(61, 59, '', '编辑管理员', 'admin', 'system.systemAdmin', 'edit', '[]', 0, 0, 1),
(62, 59, '', '删除管理员', 'admin', 'system.systemAdmin', 'delete', '[]', 0, 0, 1),
(63, 8, '', '身份管理附加权限', 'admin', 'system.systemRole', '', '[]', 0, 0, 1),
(64, 63, '', '添加身份', 'admin', 'system.systemRole', 'create', '[]', 0, 0, 1),
(65, 63, '', '修改身份', 'admin', 'system.systemRole', 'edit', '[]', 0, 0, 1),
(66, 63, '', '删除身份', 'admin', 'system.systemRole', 'delete', '[]', 0, 0, 1),
(67, 8, '', '身份管理展示页', 'admin', 'system.systemRole', 'index', '[]', 0, 0, 1),
(68, 4, '', '管理员列表展示页', 'admin', 'system.systemAdmin', 'index', '[]', 0, 0, 1),
(69, 7, '', '配置分类展示页', 'admin', 'system.systemConfigTab', 'index', '[]', 0, 0, 1),
(70, 9, '', '组合数据展示页', 'admin', 'system.systemGroup', 'index', '[]', 0, 0, 1),
(71, 32, '', '文章分类管理展示页', 'admin', 'wechat.articleCategory', 'index', '[]', 0, 0, 1),
(72, 18, '', '文章管理展示页', 'admin', 'wechat.wechatNews', 'index', '[]', 0, 0, 1),
(73, 19, '', '图文消息展示页', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', 0, 0, 1),
(74, 2, '', '菜单管理附加权限', 'admin', 'system.systemMenus', '', '[]', 0, 0, 1),
(75, 74, '', '添加菜单', 'admin', 'system.systemMenus', 'create', '[]', 0, 0, 1),
(76, 74, '', '编辑菜单', 'admin', 'system.systemMenus', 'edit', '[]', 0, 0, 1),
(77, 74, '', '删除菜单', 'admin', 'system.systemMenus', 'delete', '[]', 0, 0, 1),
(78, 2, '', '菜单管理展示页', 'admin', 'system.systemMenus', 'index', '[]', 0, 0, 1),
(79, 11, '', '关键字管理', 'admin', '', 'index', '[]', 0, 1, 1),
(80, 0, 'leanpub', '内容管理', 'admin', 'wechat.wechatNews', 'index', '[]', 7, 1, 1),
(82, 11, '', '微信用户管理', 'admin', 'user', 'list', '[]', 5, 1, 1),
(84, 82, '', '用户标签', 'admin', 'wechat.wechatUser', 'tag', '[]', 0, 1, 1),
(89, 30, '', '关键字回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(90, 89, '', '添加关键字', 'admin', 'wechat.reply', 'add_keyword', '[]', 0, 0, 1),
(91, 89, '', '修改关键字', 'admin', 'wechat.reply', 'info_keyword', '[]', 0, 0, 1),
(92, 89, '', '删除关键字', 'admin', 'wechat.reply', 'delete', '[]', 0, 0, 1),
(93, 30, '', '关键字回复展示页', 'admin', 'wechat.reply', 'keyword', '[]', 0, 0, 1),
(94, 31, '', '无效关键词回复展示页', 'admin', 'wechat.reply', 'index', '[]', 0, 0, 1),
(95, 31, '', '无效关键词回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(96, 95, '', '无效关键词回复提交按钮', 'admin', 'wechat.reply', 'save', '{"key":"default","title":"编辑无效关键字默认回复"}', 0, 0, 1),
(97, 12, '', '微信关注回复展示页', 'admin', 'wechat.reply', 'index', '[]', 0, 0, 1),
(98, 12, '', '微信关注回复附加权限', 'admin', 'wechat.reply', '', '[]', 0, 0, 1),
(99, 98, '', '微信关注回复提交按钮', 'admin', 'wechat.reply', 'save', '{"key":"subscribe","title":"编辑无配置默认回复"}', 0, 0, 1),
(100, 74, '', '添加提交菜单', 'admin', 'system.systemMenus', 'save', '[]', 0, 0, 1),
(101, 74, '', '编辑提交菜单', 'admin', 'system.systemMenus', 'update', '[]', 0, 1, 1),
(102, 59, '', '提交添加管理员', 'admin', 'system.systemAdmin', 'save', '[]', 0, 0, 1),
(103, 59, '', '提交修改管理员', 'admin', 'system.systemAdmin', 'update', '[]', 0, 0, 1),
(104, 63, '', '提交添加身份', 'admin', 'system.systemRole', 'save', '[]', 0, 0, 1),
(105, 63, '', '提交修改身份', 'admin', 'system.systemRole', 'update', '[]', 0, 0, 1),
(106, 46, '', '提交添加配置分类', 'admin', 'system.systemConfigTab', 'save', '[]', 0, 0, 1),
(107, 46, '', '提交修改配置分类', 'admin', 'system.systemConfigTab', 'update', '[]', 0, 0, 1),
(108, 46, '', '提交添加配置列表', 'admin', 'system.systemConfig', 'save', '[]', 0, 0, 1),
(109, 52, '', '提交添加数据组', 'admin', 'system.systemGroup', 'save', '[]', 0, 0, 1),
(110, 52, '', '提交修改数据组', 'admin', 'system.systemGroup', 'update', '[]', 0, 0, 1),
(111, 52, '', '提交添加数据', 'admin', 'system.systemGroupData', 'save', '[]', 0, 0, 1),
(112, 52, '', '提交修改数据', 'admin', 'system.systemGroupData', 'update', '[]', 0, 0, 1),
(113, 33, '', '提交添加文章分类', 'admin', 'wechat.articleCategory', 'save', '[]', 0, 0, 1),
(114, 33, '', '提交添加文章分类', 'admin', 'wechat.articleCategory', 'update', '[]', 0, 0, 1),
(115, 42, '', '提交添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'save', '[]', 0, 0, 1),
(116, 42, '', '提交编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'update', '[]', 0, 0, 1),
(117, 6, '', '配置列表附加权限', 'admin', 'system.systemConfig', '', '[]', 0, 0, 1),
(118, 6, '', '配置列表展示页', 'admin', 'system.systemConfig', 'index', '[]', 0, 0, 1),
(119, 117, '', '提交保存配置列表', 'admin', 'system.systemConfig', 'save_basics', '[]', 0, 0, 1),
(123, 89, '', '提交添加关键字', 'admin', 'wechat.reply', 'save_keyword', '{"dis":"1"}', 0, 0, 1),
(124, 89, '', '提交修改关键字', 'admin', 'wechat.reply', 'save_keyword', '{"dis":"2"}', 0, 0, 1),
(126, 17, '', '微信菜单展示页', 'admin', 'wechat.menus', 'index', '[]', 0, 0, 1),
(127, 17, '', '微信菜单附加权限', 'admin', 'wechat.menus', '', '[]', 0, 0, 1),
(128, 127, '', '提交微信菜单按钮', 'admin', 'wechat.menus', 'save', '{"dis":"1"}', 0, 0, 1),
(129, 82, '', '用户行为纪录', 'admin', 'wechat.wechatMessage', 'index', '[]', 0, 1, 1),
(130, 153, '', '管理员操作记录', 'admin', 'system.systemLog', 'index', '[]', 5, 1, 1),
(131, 130, '', '管理员操作记录展示页', 'admin', 'system.systemLog', 'index', '[]', 0, 0, 1),
(132, 129, '', '微信用户行为纪录展示页', 'admin', 'wechat.wechatMessage', 'index', '[]', 0, 0, 1),
(133, 82, '', '微信用户', 'admin', 'wechat.wechatUser', 'index', '[]', 1, 1, 1),
(134, 133, '', '微信用户展示页', 'admin', 'wechat.wechatUser', 'index', '[]', 0, 0, 1),
(241, 273, '', '限时秒杀', 'admin', 'store.storeSeckill', 'index', '[]', 0, 1, 1),
(137, 135, '', '添加通知模板', 'admin', 'system.systemNotice', 'create', '[]', 0, 0, 1),
(138, 135, '', '编辑通知模板', 'admin', 'system.systemNotice', 'edit', '[]', 0, 0, 1),
(139, 135, '', '删除辑通知模板', 'admin', 'system.systemNotice', 'delete', '[]', 0, 0, 1),
(140, 135, '', '提交编辑辑通知模板', 'admin', 'system.systemNotice', 'update', '[]', 0, 0, 1),
(141, 135, '', '提交添加辑通知模板', 'admin', 'system.systemNotice', 'save', '[]', 0, 0, 1),
(142, 25, '', '产品分类展示页', 'admin', 'store.storeCategory', 'index', '[]', 0, 0, 1),
(143, 25, '', '产品分类附加权限', 'admin', 'store.storeCategory', '', '[]', 0, 0, 1),
(144, 117, '', '获取配置列表上传文件的名称', 'admin', 'system.systemConfig', 'getimagename', '[]', 0, 0, 1),
(145, 117, '', '配置列表上传文件', 'admin', 'system.systemConfig', 'view_upload', '[]', 0, 0, 1),
(146, 24, '', '产品管理展示页', 'admin', 'store.storeProduct', 'index', '[]', 0, 0, 1),
(147, 24, '', '产品管理附加权限', 'admin', 'store.storeProduct', '', '[]', 0, 0, 1),
(148, 23, '', '优惠券', '', '', '', '[]', 10, 1, 1),
(149, 148, '', '优惠券管理', 'admin', 'store.storeCoupon', 'index', '[]', 5, 1, 1),
(150, 148, '', '优惠券领取记录', 'admin', 'store.storeCouponUser', 'index', '[]', 1, 1, 1),
(151, 0, 'users', '用户管理', 'admin', 'user.userList', 'list', '[]', 127, 1, 1),
(153, 0, 'user-plus', '管理员中心', 'admin', 'system.systemAdmin', '', '[]', 6, 1, 1),
(155, 154, '', '商户产品展示页', 'admin', 'store.storeMerchant', 'index', '[]', 0, 0, 1),
(156, 154, '', '商户产品附加权限', 'admin', 'store.storeMerchant', '', '[]', 0, 0, 1),
(158, 157, '', '商户文章管理展示页', 'admin', 'wechat.wechatNews', 'merchantIndex', '[]', 0, 0, 1),
(159, 157, '', '商户文章管理附加权限', 'admin', 'wechat.wechatNews', '', '[]', 0, 0, 1),
(170, 23, '', '评论管理', 'admin', 'store.storeProductReply', '', '[]', 0, 1, 1),
(173, 21, '', '文件校验', 'admin', 'system.system_file', 'index', '[]', 1, 1, 1),
(174, 275, '', '微信模板消息', 'admin', 'wechat.wechatTemplate', 'index', '[]', 1, 1, 1),
(175, 11, '', '客服管理', 'admin', 'store.storeService', 'index', '[]', 1, 1, 1),
(176, 151, '', '用户通知', 'admin', 'user.user_notice', 'index', '[]', 8, 1, 1),
(177, 151, '', '用户管理', 'admin', 'user.user', 'index', '[]', 10, 1, 1),
(179, 151, '', '用户充值记录', 'admin', 'user.userRecharge', 'index', '[]', 1, 1, 1),
(190, 26, '', '订单管理展示页', 'admin', 'store.storeOrder', 'index', '[]', 0, 0, 1),
(191, 26, '', '订单管理附加权限', 'admin', 'store.storeOrder', '', '[]', 0, 0, 1),
(192, 191, '', '订单管理去发货', 'admin', 'store.storeOrder', 'deliver_goods', '[]', 0, 0, 1),
(193, 191, '', '订单管理备注', 'admin', 'store.storeOrder', 'remark', '[]', 0, 0, 1),
(194, 191, '', '订单管理去送货', 'admin', 'store.storeOrder', 'delivery', '[]', 0, 0, 1),
(195, 191, '', '订单管理已收货', 'admin', 'store.storeOrder', 'take_delivery', '[]', 0, 0, 1),
(196, 191, '', '订单管理退款', 'admin', 'store.storeOrder', 'refund_y', '[]', 0, 0, 1),
(197, 191, '', '订单管理修改订单', 'admin', 'store.storeOrder', 'edit', '[]', 0, 0, 1),
(198, 191, '', '订单管理修改订单提交', 'admin', 'store.storeOrder', 'update', '[]', 0, 0, 1),
(199, 191, '', '订单管理退积分', 'admin', 'store.storeOrder', 'integral_back', '[]', 0, 0, 1),
(200, 191, '', '订单管理退积分提交', 'admin', 'store.storeOrder', 'updateIntegralBack', '[]', 0, 0, 1),
(201, 191, '', '订单管理立即支付', 'admin', 'store.storeOrder', 'offline', '[]', 0, 0, 1),
(202, 191, '', '订单管理退款原因', 'admin', 'store.storeOrder', 'refund_n', '[]', 0, 0, 1),
(203, 191, '', '订单管理退款原因提交', 'admin', 'store.storeOrder', 'updateRefundN', '[]', 0, 0, 1),
(204, 191, '', '订单管理修改配送信息', 'admin', 'store.storeOrder', 'distribution', '[]', 0, 0, 1),
(205, 191, '', '订单管理修改配送信息提交', 'admin', 'store.storeOrder', 'updateDistribution', '[]', 0, 0, 1),
(206, 191, '', '订单管理退款提交', 'admin', 'store.storeOrder', 'updateRefundY', '[]', 0, 0, 1),
(207, 191, '', '订单管理去发货提交', 'admin', 'store.storeOrder', 'updateDeliveryGoods', '[]', 0, 0, 1),
(208, 191, '', '订单管理去送货提交', 'admin', 'store.storeOrder', 'updateDelivery', '[]', 0, 0, 1),
(209, 175, '', '客服管理展示页', 'admin', 'store.storeService', 'index', '[]', 0, 0, 1),
(210, 175, '', '客服管理附加权限', 'admin', 'store.storeService', '', '[]', 0, 0, 1),
(211, 210, '', '客服管理添加', 'admin', 'store.storeService', 'create', '[]', 0, 0, 1),
(212, 210, '', '客服管理添加提交', 'admin', 'store.storeService', 'save', '[]', 0, 0, 1),
(213, 210, '', '客服管理编辑', 'admin', 'store.storeService', 'edit', '[]', 0, 0, 1),
(214, 210, '', '客服管理编辑提交', 'admin', 'store.storeService', 'update', '[]', 0, 0, 1),
(215, 210, '', '客服管理删除', 'admin', 'store.storeService', 'delete', '[]', 0, 0, 1),
(216, 179, '', '用户充值记录展示页', 'admin', 'user.userRecharge', 'index', '[]', 0, 0, 1),
(217, 179, '', '用户充值记录附加权限', 'admin', 'user.userRecharge', '', '[]', 0, 0, 1),
(218, 217, '', '用户充值记录退款', 'admin', 'user.userRecharge', 'edit', '[]', 0, 0, 1),
(219, 217, '', '用户充值记录退款提交', 'admin', 'user.userRecharge', 'updaterefundy', '[]', 0, 0, 1),
(220, 180, '', '预售卡管理批量修改预售卡金额', 'admin', 'presell.presellCard', 'batch_price', '[]', 0, 0, 1),
(221, 180, '', '预售卡管理批量修改预售卡金额提交', 'admin', 'presell.presellCard', 'savebatch', '[]', 0, 0, 1),
(222, 210, '', '客服管理聊天记录查询', 'admin', 'store.storeService', 'chat_user', '[]', 0, 0, 1),
(223, 210, '', '客服管理聊天记录查询详情', 'admin', 'store.storeService', 'chat_list', '[]', 0, 0, 1),
(224, 170, '', '评论管理展示页', 'admin', 'store.storeProductReply', 'index', '[]', 0, 0, 1),
(225, 170, '', '评论管理附加权限', 'admin', 'store.storeProductReply', '', '[]', 0, 0, 1),
(226, 225, '', '评论管理回复评论', 'admin', 'store.storeProductReply', 'set_reply', '[]', 0, 0, 1),
(227, 225, '', '评论管理修改回复评论', 'admin', 'store.storeProductReply', 'edit_reply', '[]', 0, 0, 1),
(228, 225, '', '评论管理删除评论', 'admin', 'store.storeProductReply', 'delete', '[]', 0, 0, 1),
(229, 149, '', '优惠券管理展示页', 'admin', 'store.storeCoupon', 'index', '[]', 0, 0, 1),
(230, 149, '', '优惠券管理附加权限', 'admin', 'store.storeCoupon', '', '[]', 0, 0, 1),
(231, 230, '', '优惠券管理添加', 'admin', 'store.storeCoupon', 'create', '[]', 0, 0, 1),
(232, 230, '', '优惠券管理添加提交', 'admin', 'store.storeCoupon', 'save', '[]', 0, 0, 1),
(233, 230, '', '优惠券管理删除', 'admin', 'store.storeCoupon', 'delete', '[]', 0, 0, 1),
(234, 230, '', '优惠券管理立即失效', 'admin', 'store.storeCoupon', 'status', '[]', 0, 0, 1),
(235, 148, '', '发布优惠劵管理', 'admin', 'store.storeCouponIssue', 'index', '[]', 3, 1, 1),
(236, 82, '', '用户分组', 'admin', 'wechat.wechatUser', 'group', '[]', 0, 1, 1),
(237, 21, '', '刷新缓存', 'admin', 'system.clear', 'index', '[]', 0, 1, 1),
(238, 272, '', '拼团产品', 'admin', 'store.storeCombination', 'index', '[]', 0, 1, 1),
(239, 151, '', '用户提现管理', 'admin', 'user.user_extract', 'index', '[]', 0, 1, 1),
(240, 272, '', '拼团列表', 'admin', 'store.storeOrderPink', 'index', '[]', 0, 1, 1),
(243, 0, 'line-chart', '统计管理', 'admin', 'store.store', '', '[]', 7, 1, 1),
(244, 243, '', '财务统计', 'admin', 'store.storeStatistics', 'index', '[]', 0, 1, 1),
(245, 243, '', '产品统计', 'admin', 'store.storeProduct', 'statistics', '[]', 0, 1, 1),
(246, 243, '', '用户统计', 'admin', 'user.user', 'user_analysis', '[]', 0, 1, 1),
(247, 153, '', '个人资料', 'admin', 'system.systemAdmin', 'admininfo', '[]', 0, 1, 1),
(248, 247, '', '个人资料附加权限', 'admin', 'system.systemAdmin', '', '[]', 0, 0, 1),
(249, 248, '', '个人资料提交保存', 'admin', 'system.systemAdmin', 'setAdminInfo', '[]', 0, 0, 1),
(250, 247, '', '个人资料展示页', 'admin', 'system.systemAdmin', 'admininfo', '[]', 0, 0, 1),
(251, 243, '', '订单统计', 'admin', 'store.storeOrder', 'orderchart', '[]', 0, 1, 1),
(252, 21, '', '在线更新', 'admin', 'system.system_upgradeclient', 'index', '[]', 0, 1, 1),
(254, 271, '', '砍价产品', 'admin', 'store.storeBargain', 'index', '[]', 0, 1, 1),
(255, 21, '', '后台通知', 'admin', 'system.systemNotice', 'index', '[]', 0, 1, 1),
(256, 0, 'cloud', '升级服务器端管理', 'admin', 'upgrade', 'index', '[]', -100, 1, 1),
(261, 147, '', '编辑产品', 'admin', 'store.storeproduct', 'edit', '[]', 0, 0, 1),
(262, 147, '', '添加产品', 'admin', 'store.storeproduct', 'create', '[]', 0, 0, 1),
(263, 147, '', '编辑产品详情', 'admin', 'store.storeproduct', 'edit_content', '[]', 0, 0, 1),
(264, 147, '', '开启秒杀', 'admin', 'store.storeproduct', 'seckill', '[]', 0, 0, 1),
(265, 147, '', '开启秒杀', 'admin', 'store.store_product', 'bargain', '[]', 0, 0, 1),
(266, 147, '', '产品编辑属性', 'admin', 'store.storeproduct', 'attr', '[]', 0, 0, 1),
(267, 275, '', '公众号配置', 'admin', 'system.systemConfig', 'index', '{"type":"1","tab_id":"2"}', 0, 1, 1),
(269, 0, 'qrcode', '小程序管理', 'admin', 'system.system', '', '[]', 80, 1, 1),
(270, 269, '', '小程序配置', 'admin', 'system.systemConfig', 'index', '{"type":"2","tab_id":"7"}', 0, 1, 1),
(271, 23, '', '砍价管理', 'admin', '', '', '[]', 0, 1, 1),
(272, 23, '', '拼团管理', 'admin', '', '', '[]', 0, 1, 1),
(273, 23, '', '秒杀管理', 'admin', '', '', '[]', 0, 1, 1),
(274, 23, '', '产品管理', 'admin', '', '', '[]', 10, 1, 1),
(275, 11, '', '微信配置', 'admin', '', '', '[]', 0, 1, 1),
(276, 21, 'cloud-upload', '附件管理', 'admin', 'system.system_attachment', 'index', '[]', 0, 1, 1),
(278, 21, '', '清除数据', 'admin', 'system.system_cleardata', 'index', '[]', 0, 1, 1),
(279, 276, '', '菜单管理附加权限', 'admin', '', '', '[]', 0, 0, 1),
(280, 279, '', '删除附件', 'admin', 'system.system_attachment', 'delete', '[]', 0, 1, 1),
(281, 1, '', 'ceshi', 'admin', 'system.systemMenus', 'ceshi', '[]', 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_notice`
--

CREATE TABLE IF NOT EXISTS `eb_system_notice` (
  `id` int(10) unsigned NOT NULL COMMENT '通知模板id',
  `title` varchar(64) NOT NULL COMMENT '通知标题',
  `type` varchar(64) NOT NULL COMMENT '通知类型',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `url` varchar(64) NOT NULL COMMENT '链接',
  `table_title` varchar(256) NOT NULL COMMENT '通知数据',
  `template` varchar(64) NOT NULL COMMENT '通知模板',
  `push_admin` varchar(128) NOT NULL COMMENT '通知管理员id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知模板表';

--
-- 转存表中的数据 `eb_system_notice`
--

INSERT INTO `eb_system_notice` (`id`, `title`, `type`, `icon`, `url`, `table_title`, `template`, `push_admin`, `status`) VALUES
(5, '用户关注通知', 'user_sub', 'user-plus', '', '[{"title":"openid","key":"openid"},{"title":"\\u5fae\\u4fe1\\u6635\\u79f0","key":"nickname"},{"title":"\\u5173\\u6ce8\\u4e8b\\u4ef6","key":"add_time"}]', '有%u个新用户关注了公众号', '2,4', 1),
(7, '测试', '测试', '', '', '[]', '测试消息', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_notice_admin`
--

CREATE TABLE IF NOT EXISTS `eb_system_notice_admin` (
  `id` int(10) unsigned NOT NULL COMMENT '通知记录ID',
  `notice_type` varchar(64) NOT NULL COMMENT '通知类型',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '通知的管理员',
  `link_id` int(10) unsigned NOT NULL COMMENT '关联ID',
  `table_data` text NOT NULL COMMENT '通知的数据',
  `is_click` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_visit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visit_time` int(11) NOT NULL COMMENT '访问时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '通知时间'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知记录表';

--
-- 转存表中的数据 `eb_system_notice_admin`
--

INSERT INTO `eb_system_notice_admin` (`id`, `notice_type`, `admin_id`, `link_id`, `table_data`, `is_click`, `is_visit`, `visit_time`, `add_time`) VALUES
(7, 'user_sub', 1, 2, '{"openid":2,"nickname":123,"change_time":1512444900}', 0, 1, 1512525411, 1512444900),
(8, 'user_sub', 2, 2, '{"openid":2,"nickname":123,"change_time":1512444900}', 0, 1, 1512459748, 1512444901),
(9, 'user_sub', 1, 2, '{"openid":2,"nickname":123,"change_time":1512454840}', 0, 1, 1512525411, 1512454840),
(10, 'user_sub', 2, 2, '{"openid":2,"nickname":123,"change_time":1512454840}', 0, 1, 1512459748, 1512454840);

-- --------------------------------------------------------

--
-- 表的结构 `eb_system_role`
--

CREATE TABLE IF NOT EXISTS `eb_system_role` (
  `id` int(10) unsigned NOT NULL COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='身份管理表';

--
-- 转存表中的数据 `eb_system_role`
--

INSERT INTO `eb_system_role` (`id`, `role_name`, `rules`, `level`, `status`) VALUES
(1, '超级管理员', '85,86,11,174,17,127,128,126,80,32,71,33,36,35,34,113,114,19,73,42,43,44,45,115,116,18,72,38,41,40,39,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,240,238,148,150,149,229,230,234,233,232,231,235,175,210,223,222,215,214,213,212,211,209,170,225,228,227,226,224,160,162,161,26,190,191,192,193,194,206,195,205,204,203,202,201,200,199,198,197,207,208,196,25,142,143,24,147,146,21,237,130,131,22,136,135,139,138,137,140,141,1,173,5,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,51,50,49,48,47,108,107,106,6,118,117,145,144,119,2,74,75,76,101,100,77,78,153,4,59,62,61,60,103,102,68,8,63,64,65,66,105,104,67,151,177,176,239,179,217,219,218,216,82,129,132,133,134,236,84', 0, 1),
(15, '子管理员', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,241,240,238,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,236,84,133,134,129,132,18,72,38,39,40,41,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,1,2,78,74,101,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,173,237,130,131,0', 2, 1),
(10, '客服', '23,241,240,238,148,150,149,229,230,231,234,233,232,235,26,191,197,196,195,194,193,192,198,207,206,205,204,203,202,201,200,208,199,190,175,209,210,223,222,215,214,213,212,211,170,225,228,227,226,224,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,133,134,129,132,236,84', 1, 1),
(14, '演示账号', '11,174,17,127,128,126,19,73,42,45,44,43,115,116,79,31,94,37,95,96,30,89,124,123,92,91,90,93,12,98,99,97,23,148,149,230,234,233,232,231,229,150,235,175,210,213,212,211,214,215,223,222,209,170,225,228,227,226,224,26,190,191,198,202,203,192,193,201,194,200,199,196,197,195,208,207,206,205,204,25,142,143,24,146,147,238,240,241,151,179,216,217,219,218,176,177,239,80,32,71,33,36,35,34,114,113,18,72,38,40,39,41,82,129,132,133,134,236,84,8,63,64,66,65,105,104,67,4,59,62,61,60,103,102,68,250,246,245,244,21,130,131,173,237,101,78,70,56,112,111,110,109,5,7,69,46,51,50,49,48,47,108,107,106,6,117,144,145,119,118,0,153,247,243,74,2,9,52,1', 1, 1),
(16, '三级身份', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,241,240,238,151,179,217,219,218,216,177,176,239,82,133,134,129,132,236,84,18,38,39,40,41,72,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,130,131,173,237,0,1', 3, 1),
(17, 'boss', '11,174,17,126,127,128,19,42,43,44,45,115,116,73,79,31,37,94,95,96,30,93,89,123,124,90,91,92,12,97,98,99,23,241,240,238,148,149,230,234,233,232,231,229,150,235,170,225,228,227,226,224,175,210,212,211,213,214,223,222,215,209,25,143,142,24,147,146,26,191,197,196,195,194,202,198,192,200,203,201,199,193,208,207,206,205,204,190,151,176,177,239,179,217,219,218,216,80,32,71,33,34,35,36,113,114,18,72,38,39,40,41,0', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user`
--

CREATE TABLE IF NOT EXISTS `eb_user` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `nickname` varchar(16) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(256) NOT NULL COMMENT '用户头像',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `add_ip` varchar(16) NOT NULL COMMENT '添加ip',
  `last_time` int(11) unsigned NOT NULL COMMENT '最后一次登录时间',
  `last_ip` varchar(16) NOT NULL COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `user_type` varchar(32) NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员'
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `eb_user`
--

INSERT INTO `eb_user` (`uid`, `account`, `pwd`, `nickname`, `avatar`, `add_time`, `add_ip`, `last_time`, `last_ip`, `now_money`, `integral`, `status`, `level`, `spread_uid`, `user_type`, `is_promoter`) VALUES
(1, 'crmeb', 'e10adc3949ba59abbe56e057f20f883e', '无懈可击', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEJp7NAdwBo3icWticiaibgDIRbiag2Ubpp5AiaN3H1iaKqbu2M07IFDibLpQcvQb8mIIcnr1VFRFGx0YMwTdw/132', 1520043907, '123.139.134.91', 1528163050, '123.139.93.228', '1604.03', '20.00', 1, 0, 0, 'wechat', 1),
(65, 'wx651523512454', 'e10adc3949ba59abbe56e057f20f883e', '༄许のོ࿆༘荣耀࿐', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEaDyfibNrmKR9UK2c18sUPVr7bnHGzwkJpYDoK4sIibO1pMJHINPklmqAEP9E0pIFGFFtR5muDfzPy/132', 1523512454, '140.207.54.80', 1528182520, '223.104.11.70', '0.00', '15.00', 1, 0, 105, 'wechat', 0),
(66, 'wx661523512902', 'e10adc3949ba59abbe56e057f20f883e', '弱冠而立_', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3ECbC3H8tHEYibicdkhRILBb6aIJXNXrLhv7u8l10GVPwVRVAQdvSdfjMXVJicmWMd6bicHKg4PjSaQsA/132', 1523512902, '140.207.54.80', 1527923230, '123.139.172.123', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(67, 'wx671523513492', 'e10adc3949ba59abbe56e057f20f883e', '在路上……', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhYkRcBgqQYfCXsU0lrt8hcw0qHyGevE8OOx9p7icqH39bEXtfKJB7uo0dOnnfbo8RGN0nYQQDyuibaIyJBSFkoIiaic/132', 1523513492, '140.207.54.76', 1523513587, '113.139.247.112', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(68, 'wx681523515670', 'e10adc3949ba59abbe56e057f20f883e', '共同好友，', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3HJq7X1Vd5aNjBibGMx5XJlFbBeicmo8ms3BTUusHtBTvJE767sFu5Tcs2ZQ8Q87XibwOHsA5pL0OptGiaIMjvYXeqY/132', 1523515670, '140.207.54.76', 1527847090, '61.151.207.252', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(69, 'wx691523526469', 'e10adc3949ba59abbe56e057f20f883e', '众邦科技张鹏飞', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhbdKXQEAaJgBply1MCKqlH3iaKMEEUwanJ6l4GAhibCNhKyMf9YK3UzdS6fJiaKBXGaU6hLUy9C0jk56vqNBwVPGbd/132', 1523526469, '140.207.54.79', 1524127877, '61.151.179.27', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(70, 'wx701523545008', 'e10adc3949ba59abbe56e057f20f883e', '互联网从业者 徐斗明', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicJhKy7BCxmAVk8iaB5ALCibRthYufBmqAeuLibBiaDppbRtOMNib5iat9yDBOGsnYWia9WfjoO8ISonoSDngkyuAG85d/132', 1523545008, '140.207.54.80', 1528178389, '117.136.86.54', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(71, 'wx711523583116', 'e10adc3949ba59abbe56e057f20f883e', '一个粉丝', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6mkLr2t1OgjRuhsC3nzVLoKLkYte7sibCGoJ5aPUOiaQZ4QEvbwibYQfMZo6YTNYxkDPbdC4piaAubTY/132', 1523583116, '140.207.54.80', 1523583120, '223.167.152.13', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(74, 'wx741523777363', 'e10adc3949ba59abbe56e057f20f883e', '少年加油', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3FBwodMrPV0zlt1uYT4ZrrmjX6tGh2MX6MaGHQRTsxCfFxwqgic5hXCKvAyBuPicXYRVgKiaE7z9yHJBEprO6WmvR/132', 1523777363, '140.207.54.80', 1528182620, '101.226.225.59', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(72, 'wx721523624575', 'e10adc3949ba59abbe56e057f20f883e', '暮鼓晨钟', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic1bsThicpUP2LosDiaTk0wvEsAicRDCx4phN9UA4BGDic8owJ3AevRPiboMlx8dug94hoOUQdtcjyNiax5pFSvqv2TIe6/132', 1523624575, '140.207.54.79', 1523624575, '140.207.54.79', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(73, 'wx731523669212', 'e10adc3949ba59abbe56e057f20f883e', '木子刀削面', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QScGmHny7EUEOgTKuoNdM8PmuTSZaPdvgyjvUUBic08N9w2jlicowiaODW64xrBibwMMEjYvaVD8KA85I/132', 1523669212, '140.207.54.80', 1527732278, '61.129.8.179', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(75, 'wx751523803091', 'e10adc3949ba59abbe56e057f20f883e', '袁磊', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLC5FQyp3AtZ086HnBNuPdkrLqm8BtZ4lzspAGxsBIanMc4JxYibDmOeFQ4rNkIo6z2VG0NjxwChReA/132', 1523803091, '140.207.54.79', 1528183024, '122.96.43.99', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(76, 'wx761523803733', 'e10adc3949ba59abbe56e057f20f883e', '男同学', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEeiciaGG0TJyeqMt7N750vYo8HfK9LcO6cZ1FBHkuUK8DES73IczwqcAn390munGMlKaUlt8icrORZI/132', 1523803733, '140.207.54.80', 1523803738, '101.226.225.85', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(77, 'wx771523862189', 'e10adc3949ba59abbe56e057f20f883e', '骑着蜗牛上高速', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEaWJno88Fhn7LTGoicGxr5uuF4GmIdibgDthufCSbyDUia0sv5UCR9L8e0fWou4gyyzJPhEiaYXhA2Lk/132', 1523862189, '140.207.54.76', 1524204235, '61.151.178.176', '0.00', '6.00', 1, 0, 0, 'wechat', 0),
(78, 'wx781523864750', 'e10adc3949ba59abbe56e057f20f883e', 'Xiao D', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJNxMqDoNODfCw4TbaJ9pPyI4Yf9QoiapaOVjoUXT1AWdwCoZVM4Ugrq5nNvuyujRg5WbATrLCkC1A/132', 1523864750, '61.151.178.175', 1523864750, '61.151.178.175', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(79, 'wx791523864769', 'e10adc3949ba59abbe56e057f20f883e', '尕男、   尕美', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eotA7qNjpXLsUWIuUicYSfxkwlnfjY1vWQfdTVZ8LYM5IeoaFvkwELGRLhpEGF4tutezDPn6175yfg/132', 1523864769, '61.129.6.147', 1523864769, '61.129.6.147', '0.00', '5.00', 1, 0, 0, 'wechat', 0),
(80, 'wx801523864987', 'e10adc3949ba59abbe56e057f20f883e', '吖呵', 'http://thirdwx.qlogo.cn/mmopen/vi_32/fvdkD06ibYtLs5vbEOrFpQWQDv6f4hzMTia3Kic3dibqGDiakias6EdCCCFxO8xpnQRibl42ibKZxOofSUIHMZu6sIO6Cg/132', 1523864987, '58.247.212.140', 1523864987, '58.247.212.140', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(81, 'wx811523865291', 'e10adc3949ba59abbe56e057f20f883e', '梁海涛', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3FzEY3nSLVkwKtibGTgKYpBsFnJkItDcxoj30e8jiclGHTLYBTXGaLAQ54Aarbw0E6sgaAoGnKDS1AA/132', 1523865291, '61.151.178.164', 1528182960, '61.151.178.180', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(82, 'wx821523865638', 'e10adc3949ba59abbe56e057f20f883e', '笑而不语。', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3FBwodMrPV01QCoGOfGNvA71lZicogjZLiapoDG4h4WibNmXVX5u144PocicrMXVyMn0IgoRRJnfHiayUCo9vI5FAOG/132', 1523865638, '223.104.11.61', 1523865638, '223.104.11.61', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(83, 'wx831523867344', 'e10adc3949ba59abbe56e057f20f883e', '快乐一生', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqNKGqOqXlibicWtvmiaV95IOnKktVd9YwZs3zAlApQic7Nicgbr9yrbgWicb8k9U4CPdI81Sr3LPbnBLBQ/132', 1523867344, '58.247.212.139', 1523867344, '58.247.212.139', '0.00', '0.00', 1, 0, 102, 'wechat', 0),
(84, 'wx841523867894', 'e10adc3949ba59abbe56e057f20f883e', '`', 'http://thirdwx.qlogo.cn/mmopen/vi_32/bxH37kgdXHSicKvW59q8poIwf6asDISLMHiaIIl2Wn0twgetEMicHVt1I27TYKb2CskbF8y2yRySProX62r9ibia6vw/132', 1523867894, '61.151.178.171', 1523867894, '61.151.178.171', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(85, 'wx851523869342', 'e10adc3949ba59abbe56e057f20f883e', '韬', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIFgGwHiax7ZvJVzXeCsjNdsuEicY4LkUE89p7xN3lxRtczGuic4KBmGuia6Olzh4X6FaZSjl6hhWoSLw/132', 1523869342, '123.151.77.81', 1523869344, '123.151.77.81', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(86, 'wx861523872179', 'e10adc3949ba59abbe56e057f20f883e', '.°F', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epLLXBLBLgticiaE1fvw7svKfYhibvQC2MeUeMO00F0ZHdmAfOx4qz2uCU1hzxelExsdpJSVX5cs4ntw/132', 1523872179, '117.136.86.144', 1523872179, '117.136.86.144', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(87, 'wx871523882865', 'e10adc3949ba59abbe56e057f20f883e', '春风', 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKOwOFxQSzEpASdhbX0IpwA43aUUpsHT6Wicm5VsaHDRjJmNKVvia6qUaPFcanI8rVWm6NVbibR3S95Q/132', 1523882865, '61.151.178.180', 1523882865, '61.151.178.180', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(99, 'wx991524216273', 'e10adc3949ba59abbe56e057f20f883e', '@', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFha8bUVd3N5cqnVmricxhcLZYL21hgy0JL1exHGpo44YXb9Hg3szLO5v7ic2iaS2Za7USCNHoNL6TAlicwzkBX7dRpzC/132', 1524216273, '140.207.54.75', 1524216273, '140.207.54.75', '0.00', '0.00', 1, 0, 90, 'wechat', 1),
(88, 'wx881523929170', 'e10adc3949ba59abbe56e057f20f883e', '黑心土豆', 'http://thirdwx.qlogo.cn/mmopen/Licf0c7Y1EHdnic0uaxPyDmoF8ibYRLSojlZ5OWiaIkVm2QN8NeaicOvbKQSpEux3z5omq9n01IaEfAGy89hBwRD6GsXqSyKw9Xlm/132', 1523929170, '140.207.54.79', 1523929174, '14.116.137.168', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(89, 'wx891523940283', 'e10adc3949ba59abbe56e057f20f883e', '～', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzR7tvgrCiabUuJ4QaO7QLFRAicz1tTog4AYZ1TqAFWgjTFE4QN6RmaVrchfqQXEbBEWd861H2JYTbRiaOG7gLzWHiaa/132', 1523940283, '140.207.54.79', 1523940288, '113.96.219.243', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(90, 'wx901523953618', 'e10adc3949ba59abbe56e057f20f883e', '天会亮、心会暖', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHJzlaWskqtgN5qCAojya1LHbjlhIHzWOBehN78WTuAqUjOnUUbSpJKpYJlaysap1HUpfzeQg0ugP/132', 1523953618, '140.207.54.76', 1527937192, '182.131.12.11', '0.00', '0.00', 1, 0, 1, 'wechat', 0),
(91, 'wx911524012803', 'e10adc3949ba59abbe56e057f20f883e', '易刚', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6sExpjn17C4jM5FNl1XYNYnOtLK70IaZD1I398XiaicibgJ5YILDicTxnnzBqMRtZ9g7FYuDnicrEaoaq/132', 1524012803, '140.207.54.75', 1524012814, '113.96.218.51', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(92, 'wx921524018974', 'e10adc3949ba59abbe56e057f20f883e', '小七', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhbkbZYxohLPpNYpTiaG0N209aJBCsjZQ3et0HxIA1V5V7PBsCto4cEia1g2kcQbFqDaGV0PRy6vLMLgXMlsTaG5Be/132', 1524018974, '140.207.54.75', 1524018978, '123.151.76.158', '0.00', '0.00', 1, 0, 102, 'wechat', 0),
(93, 'wx931524024396', 'e10adc3949ba59abbe56e057f20f883e', '宁都同城网：秒杀抢购、新闻曝光', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHMf4qceUqUUv0Q73jf9gsJruvpL1JW9QtaRLfbcCwdXDrTDchA9MOYn8jperuMxJdNMqbfEgNlb7/132', 1524024396, '140.207.54.80', 1524024401, '183.36.112.205', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(94, 'wx941524033657', 'e10adc3949ba59abbe56e057f20f883e', '´`背影﹖ノ', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5piaOoibvYtu5sCzh8wYwyFkoWPVibbvdzPckMeODuWoOklNHcY2WfQ16dXAy0BZ1OJLhxUicsvXWZD0w1NHiaL5KWASrJgnDK9QDI/132', 1524033657, '140.207.54.79', 1524033665, '36.46.167.84', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(95, 'wx951524103399', 'e10adc3949ba59abbe56e057f20f883e', 'A-云谷主控1372602937', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAVpTW6LLlv4ibg6OMKSgriaJjxlTDGFfbklydcd3yLHgms7iaL94ulleic0G50ZxjeAvpyME4bciaeT3g/132', 1524103399, '140.207.54.80', 1524103405, '223.104.131.209', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(96, 'wx961524160931', 'e10adc3949ba59abbe56e057f20f883e', '千丝湾', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHH5tfwPRHN7sZAtPb1lOfpsibvlmsUyfbV18iaZsv6PdhNrpOTbzTfFTq0ibfiazFvMAgEezRDJ2RNJv/132', 1524160931, '140.207.54.80', 1524160939, '49.79.96.126', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(97, 'wx971524188593', 'e10adc3949ba59abbe56e057f20f883e', '东来网络科技', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaELnL8lIIxAjddntdciaglL1PSic11IE2s7fxxN6fsv8gK7YqOe3CCXWQMpbPckRcjl8QYWwYkzE6iaRg/132', 1524188593, '140.207.54.79', 1524188598, '112.101.255.247', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(98, 'wx981524196852', 'e10adc3949ba59abbe56e057f20f883e', 'james王剑', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QSVmS3yVzJY4XE7KQp1LUnjb2uOicPPEMxiarzcic0yzIhc6GCWujdpUGJXyQtiaK44HVYu0cI4f89lJB0yUsjiaurJMg/132', 1524196852, '140.207.54.79', 1528182431, '180.154.69.27', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(100, 'rt1001525488703', 'e10adc3949ba59abbe56e057f20f883e', '天会亮、心会暖', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhLoI4BCkSKysaiaoNJQssbTfzTEUibSvp1Ht54vIWFqfanOXhpnUj7bRticXYLU5biapHMicdibQBIEibQ/132', 0, '', 0, '', '9606.80', '30.00', 1, 0, 0, 'routine', 0),
(101, 'rt1011525686081', 'e10adc3949ba59abbe56e057f20f883e', '小小', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIBodhAzhMQrMo63ehXAbfTIduMphKWfCrRBRNv9J5TKWxKNcYdt27FzHvKoVicbndPES54cW0T5A/132', 1525686081, '', 0, '', '99928.20', '509.00', 1, 0, 102, 'routine', 0),
(102, 'rt1021526436286', 'e10adc3949ba59abbe56e057f20f883e', '全', 'https://wx.qlogo.cn/mmopen/vi_32/g1JibSd7LaYzic2Qgevvh8EaQw6CMjrFexZX04xjRYpAMM4kgwueMKDJzFN7wzzUQCMn6OTlAicKVbZPfianN3yWibw/132', 1526436286, '', 0, '', '218789.00', '200545.00', 1, 0, 100, 'routine', 0),
(103, 'rt1031527136911', 'e10adc3949ba59abbe56e057f20f883e', '梁海涛', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqMkmjZTCbYAagHZIZDibTwPuF3ib0tPTgnicq6WBEH3uBhuUibAbiaIxAQQc4iaC9uRn3xicLsEEflGLCrA/132', 1527136911, '', 0, '', '0.00', '0.00', 1, 0, 0, 'routine', 0),
(104, 'rt1041527141387', 'e10adc3949ba59abbe56e057f20f883e', '弱冠而立_', 'https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCkbJCnP7UVYaSPQoNQskAhavjy67fErqP1wib3ncbQqK3TdqV2JiaicYusJegPbPl6UkbzbX0CLkMfQ/132', 1527141387, '', 0, '', '0.00', '0.00', 1, 0, 0, 'routine', 0),
(105, 'rt1051527509461', 'e10adc3949ba59abbe56e057f20f883e', '༄许のོ࿆༘荣耀࿐', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLajLoBBBPgMI0nb3Mn0IKt7KXUtIlfVtv2pRbN2ab8cA84OuZm6mWD2tHLsu300ysRaM1ViaMpvIw/132', 1527509461, '', 0, '', '0.00', '0.00', 1, 0, 0, 'routine', 0),
(119, 'wx1191528006217', 'e10adc3949ba59abbe56e057f20f883e', 'ぃ绣滊泡泡℃', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEb9Eic5UlVEhZvhVA1iaIUPoHGSHjxD1ZD7icEGD4mU6T5SBNuvnmISMy0FBu85dIA9OQ1yuPU83kbF/132', 1528006217, '140.207.54.80', 1528117767, '117.101.219.183', '0.00', '3.00', 1, 0, 0, 'wechat', 0),
(106, 'wx1061527525584', 'e10adc3949ba59abbe56e057f20f883e', '乌骓马（马超）', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erkFXFeUqjsbRVaKR1hyAOILspW2ceQ3btf5a7iavzXN7wxHEkKp1sPRFlACelqB0fKKq21KjET7Fg/132', 1527525584, '117.136.27.68', 1527525584, '117.136.27.68', '0.00', '3.00', 1, 0, 0, 'wechat', 0),
(107, 'wx1071527569659', 'e10adc3949ba59abbe56e057f20f883e', '闫鑫', 'http://thirdwx.qlogo.cn/mmopen/vi_32/2Cyo35shrRG745IKmgZskRhSRMYgeO3LaT8mYPvStyzvMF8pA2jSBWCf3g7pNLDLSZr982iaK8Eia8lKSEZjD5YA/132', 1527569659, '113.96.219.247', 1527986283, '123.151.77.73', '0.00', '4.00', 1, 0, 0, 'wechat', 0),
(108, 'rt1081527574686', 'e10adc3949ba59abbe56e057f20f883e', '天会亮、心会暖', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhLoI4BCkSKysaiaoNJQssbTfzTEUibSvp1Ht54vIWFqfanOXhpnUj7bRticXYLU5biapHMicdibQBIEibQ/132', 1527574686, '', 0, '', '0.00', '0.00', 1, 0, 0, 'routine', 0),
(109, 'wx1091527587946', 'e10adc3949ba59abbe56e057f20f883e', '等风来，随风去', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCx03Y4hkSeVgQZGZLYDSQz6SZ7PDDNSLj3RxVPYqibMvW4cIOicPSSmA0xbrL9DY2RkunA1pulAs9g/132', 1527587946, '140.207.54.79', 1527587947, '221.11.61.24', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(110, 'wx1101527588015', 'e10adc3949ba59abbe56e057f20f883e', 'A众邦网络科技', 'http://thirdwx.qlogo.cn/mmopen/CibtHwDFib6wWv4NQeQnG6Dp6o8SqrtTU1uSMjYs1Os4koGnIiblETISZYQtDuQOaHQKzMHqlIaTZjnqibiabc8n57ZLkjZpHZYB9/132', 1527588015, '140.207.54.80', 1527923185, '61.151.179.83', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(111, 'rt1111527642751', 'e10adc3949ba59abbe56e057f20f883e', '༄许のོ࿆༘荣耀࿐', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLajLoBBBPgMI0nb3Mn0IKt7KXUtIlfVtv2pRbN2ab8cA84OuZm6mWD2tHLsu300ysRaM1ViaMpvIw/132', 1527642751, '', 0, '', '0.00', '0.00', 1, 0, 0, 'routine', 0),
(112, 'wx1121527674507', 'e10adc3949ba59abbe56e057f20f883e', '最是人间留不住@辉少', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM65vogqibwss9lPzq0d5oYp4C8lcjGy2ibxniaBoic1HVCD6HEMUobIsYkkQ4vjrlEHhRU4wuSWpnkHUpZ5ClGveOuFfWQm8t9SU3g/132', 1527674507, '140.207.54.80', 1527674516, '113.103.5.11', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(113, 'wx1131527675646', 'e10adc3949ba59abbe56e057f20f883e', '魑魅魍魉', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhaOHSaJPWdIib3wrnh4CiaicwMaZicqrBXcicqKr3rC0YpibKZXB46dvJCYD0cB7n3szOicIUb1xcybibo6qCFa854oaPDT/132', 1527675646, '140.207.54.75', 1528182543, '61.151.178.172', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(114, 'wx1141527682530', 'e10adc3949ba59abbe56e057f20f883e', '福州旅游通', 'http://thirdwx.qlogo.cn/mmopen/Licf0c7Y1EHdnic0uaxPyDmqnP5ZiaQvl09P1GNY2tWY8fNEPQKSDpT1iaMncGtk3vhtG4QnefnSAYRKycQDOZK8wjiaP3Cic9dJm5/132', 1527682530, '140.207.54.80', 1527682532, '101.226.225.85', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(115, 'wx1151527756527', 'e10adc3949ba59abbe56e057f20f883e', '满招逊，谦受益', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3FYibias9GAOLIic4TkibRYEVSNNcjacK8zXkcFib1ZKkXLsHcrIDEINYHWHw3mqMpH9VlGOvciaW6Da33JD1dptZHXbN/132', 1527756527, '140.207.54.80', 1527756534, '183.3.255.32', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(116, 'wx1161527756868', 'e10adc3949ba59abbe56e057f20f883e', '承阳-奥色认证摄影师', 'http://thirdwx.qlogo.cn/mmopen/vi_32/I807iciatNXWUz83EmU9qsjgIa9EWgs6KcWTVnzuNUoj8zReEZOAQpGElcMc1yKNaB976ibvsnwBcWb9viaenAZVAQ/132', 1527756868, '119.123.122.168', 1527756868, '119.123.122.168', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(117, 'wx1171527873218', 'e10adc3949ba59abbe56e057f20f883e', '山丘十八弯', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3UhvYnyPQ5NjdETUeeSKjKdNYE4ia8kic4Yv3OWEGribnoByibhnWQcF3UykXKK2gVZrUibIV6QMRy9ibJdnGIgSIsx1/132', 1527873218, '140.207.54.79', 1528189930, '61.129.6.81', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(118, 'wx1181527926591', 'e10adc3949ba59abbe56e057f20f883e', '满国耀', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzSCQRZWVvTvqT7k4CsBdzju9xeHph0alqia5DfHkF2eAodkgic911tAEklk8wCDb5wLVWMbOCPIdk2YEq2D0qmol2/132', 1527926591, '140.207.54.76', 1527926822, '113.143.165.105', '0.00', '3.00', 1, 0, 0, 'wechat', 0),
(120, 'wx1201528108785', 'e10adc3949ba59abbe56e057f20f883e', 'CC', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QSaaYgEaYiaGuGPL5lOrGMKElnTibXrGWkDOdPsrIib39aPxeNAzOXtcPSNonCFPMfpxPWwTib4KweL3u/132', 1528108785, '124.114.148.30', 1528183793, '124.114.148.30', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(121, 'wx1211528157965', 'e10adc3949ba59abbe56e057f20f883e', '快乐发明', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEdYG0UaxsI9H9a3MBu08QMqOADNeicwB2ntxJjydoGFicicWNmVaz3Mc3LUdvMuibbnCgL8U27ibiczWiae/132', 1528157965, '140.207.54.75', 1528172355, '60.180.226.112', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(122, 'wx1221528182394', 'e10adc3949ba59abbe56e057f20f883e', '麦子', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKGC139BHEmqesxc2M1VLs1EyYsSsGPVL2VJFWEacWEOVtGTOyeGHXTqsxlHiaROlS7KoaW8fV33hQ/132', 1528182394, '140.207.54.79', 1528182395, '124.236.175.33', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(123, 'wx1231528182435', 'e10adc3949ba59abbe56e057f20f883e', '新大陆星驿付-400997220', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHKMAnh3j7XMjEELtVtn0DovA8DjDasVWAx0g0NkyibGm8kfMNyI2qs5wa9HDibf7xcnHc6SkibSI2e9/132', 1528182435, '140.207.54.79', 1528182436, '183.198.3.27', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(124, 'wx1241528182517', 'e10adc3949ba59abbe56e057f20f883e', 'GeGang', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6tic7jlbNicOZr1icgcNpwPTA0O8zAaMuo5ghxkxWMgknmaiaeGoDVPM1ueezDWQWPjNIBPSF2hQup4G/132', 1528182517, '140.207.54.80', 1528182521, '113.200.106.135', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(125, 'wx1251528182557', 'e10adc3949ba59abbe56e057f20f883e', '淡然(拼)', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHAR67K1rm023Gme9hou1AqQBDAsPiag3mdwuKZOfUqnDLS89rZdAU6ntXV2zx8fpgpibbXxianibRDrQ/132', 1528182557, '140.207.54.79', 1528182558, '49.92.219.253', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(126, 'wx1261528182613', 'e10adc3949ba59abbe56e057f20f883e', '无忧', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBhXVHdkeSxMFVrjL806zxicPvlNW1udrwxxpnkOP5pHaicZZicB4pUorlkKKmfhepiaoKgIibTrHYLH4A/132', 1528182613, '140.207.54.80', 1528182893, '61.129.6.147', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(127, 'wx1271528183260', 'e10adc3949ba59abbe56e057f20f883e', '我可想笑', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHBYk6gtfYlmfUlrYPBibAjH7JgalRPYdQ1qCiaVGs9gNicTYyN7enAbTqfhtdIPvLLTDt0dRicSGGBic5/132', 1528183260, '223.90.198.174', 1528183260, '223.90.198.174', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(128, 'wx1281528183442', 'e10adc3949ba59abbe56e057f20f883e', 'A骑着蜗牛漫步', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5ELNicaHrqhib1QMQ4nAiaeZX5mjqtlEtpAXfef55QInF0IYXgMRIuAVJD9F8ubBuHeErQYd7icqLvmtw9KfhJkecvzZNZG8uoIkc/132', 1528183442, '140.207.54.79', 1528183446, '14.116.137.166', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(129, 'wx1291528184036', 'e10adc3949ba59abbe56e057f20f883e', 'Eva', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5piaOoibvYtu5sCzh8wYwyFkjUrx5huniaBlmxLvffyJBy91r69piaXXc2Lpr4kpp1HZmYIm6xlgRqhUs1ibhu6FfXskysXP70ODo8/132', 1528184036, '140.207.54.79', 1528184037, '183.37.46.10', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(130, 'wx1301528184410', 'e10adc3949ba59abbe56e057f20f883e', '加油2018', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egES9l6N9Y1RmI6UN57bFp5dOMRJhOQgWJ0bUS46QrBSEFUnYS21wCDNkJtzNia4czR5BgWiaegvLTSw/132', 1528184410, '140.207.54.79', 1528184411, '111.26.194.123', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(131, 'wx1311528184506', 'e10adc3949ba59abbe56e057f20f883e', '', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZxkWQuJ7ibGPkMGP02qZYEcZIrTtiaNic4Wl2o9IBQWXDwLoZTfrSBSRFMibXNVE319D2Bvz8iawZHRs87DeeG6g0xw/132', 1528184506, '140.207.54.80', 1528184511, '14.116.133.170', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(132, 'wx1321528184756', 'e10adc3949ba59abbe56e057f20f883e', '李南', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3ib8ibWFbYc4FrFLJzOOgk7YyDQkwP8ep9RQdqicJaq3iaxkNk2bcN3ur13HZXe6ibA7bX6RhEWOUiacFwibPO4dqOVf0/132', 1528184756, '175.167.138.152', 1528184756, '175.167.138.152', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(133, 'wx1331528186871', 'e10adc3949ba59abbe56e057f20f883e', '暮潇凝月', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHAFPZQib6pibyf0mWlAenW8fia6pW8gTGzjUxgYfEmtau8edibzv7KoXwr4d9WlOOwZWwauy41yd09pD/132', 1528186871, '140.207.54.79', 1528186873, '61.129.6.151', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(134, 'wx1341528186916', 'e10adc3949ba59abbe56e057f20f883e', '刘海宁', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZ4AISLE952apxlbKhfPwe1bqJ5dhejsQk5EpqEyysibHkT7Gu1UxzPic2dNJnicHuSCXLIJ7QxtrZSUBb9BKEBMy1/132', 1528186916, '111.18.43.95', 1528186916, '111.18.43.95', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(135, 'wx1351528187099', 'e10adc3949ba59abbe56e057f20f883e', 'A秦军13528862888', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEc5TRahqDlHna4CZynTUywbibo8R15omL8jwoUI4gl69PiaNnibAM5vibYk2eibFSVvjLQCU3kDXJnKjq/132', 1528187099, '140.207.54.80', 1528187101, '223.104.63.14', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(136, 'wx1361528189614', 'e10adc3949ba59abbe56e057f20f883e', '不知云', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDw0JeMmqY4B6wibu4BiaHQXcmqlx6Jn9X0fP8nCW7iafmWJbiaP4sOqYicYGDiaxtZuMLWjNbm46ibAwicjQ/132', 1528189614, '140.207.54.76', 1528189619, '61.151.178.170', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(137, 'wx1371528189860', 'e10adc3949ba59abbe56e057f20f883e', '黄白', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6otRE6FYDvbPO2Gh85ic8UTboZLicbcXJ6VhG99TGjzWAibyxcNepIOqUicLicXaz35icBJ0aVUT0ibFWSD/132', 1528189860, '140.207.54.75', 1528189879, '61.153.121.116', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(138, 'wx1381528190623', 'e10adc3949ba59abbe56e057f20f883e', '张晓曦', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEL5tROjGtp1Z0LJ5FicecSEhSWjJrQ4vdR0Ef7ojGdmtfqfvEpswibbU8eibEBIdfic0JFaRG2KyPlf3w/132', 1528190623, '218.17.196.250', 1528190623, '218.17.196.250', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(139, 'wx1391528192329', 'e10adc3949ba59abbe56e057f20f883e', '孤独的守望者', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6uPcbwTExAxxAicoeqAsq0lYJad5aRgmUFbH5G5yQUSb3L7jqXlGoCzL8PjSpeJnHeAN1r5kiagYic7/132', 1528192329, '140.207.54.76', 1528192330, '202.85.220.36', '0.00', '0.00', 1, 0, 0, 'wechat', 0),
(140, 'wx1401528192412', 'e10adc3949ba59abbe56e057f20f883e', 'Bin', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6gbQxV9lVlUS6F6X4wqAMftqoVKan116dlKzbr8pQjIluCypSW4jacbW89PiaMqDXrJx0SzCjUpnC/132', 1528192412, '58.247.212.55', 1528192412, '58.247.212.55', '0.00', '0.00', 1, 0, 0, 'wechat', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_address`
--

CREATE TABLE IF NOT EXISTS `eb_user_address` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '用户地址id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(16) NOT NULL COMMENT '收货人电话',
  `province` varchar(64) NOT NULL COMMENT '收货人所在省',
  `city` varchar(64) NOT NULL COMMENT '收货人所在市',
  `district` varchar(64) NOT NULL COMMENT '收货人所在区',
  `detail` varchar(256) NOT NULL COMMENT '收货人详细地址',
  `post_code` int(10) unsigned NOT NULL COMMENT '邮编',
  `longitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='用户地址表';

--
-- 转存表中的数据 `eb_user_address`
--

INSERT INTO `eb_user_address` (`id`, `uid`, `real_name`, `phone`, `province`, `city`, `district`, `detail`, `post_code`, `longitude`, `latitude`, `is_default`, `is_del`, `add_time`) VALUES
(1, 1, '测试001', '18311111111', '陕西', '西安市', '莲湖区', '1111', 0, '0', '0', 0, 0, 1514174361),
(2, 1, '测试002', '18311111111', '陕西', '西安市', '莲湖区', '红庙破街道1', 0, '0', '0', 0, 0, 1514182439),
(3, 1, '测试003', '18311111111', '陕西', '西安市', '长安区', '测试地址11123123', 710038, '0', '0', 1, 0, 1514187555),
(20, 65, '许荣耀', '13679281569', '陕西', '西安市', '莲湖区', '西安市莲湖区红庙坡龙湖国际', 0, '0', '0', 1, 0, 1523526462),
(21, 71, '刘', '15563299688', '北京', '朝阳区', '三环以内', '88', 100000, '0', '0', 1, 0, 1523583249),
(23, 100, '测试', '13088888888', '北京市', '北京市', '东城区', '地址', 0, '0', '0', 1, 0, 1526461589),
(24, 100, 'ceshi1', '13088888888', '北京市', '北京市', '东城区', '地址', 0, '0', '0', 0, 0, 1526461653),
(25, 100, '测试', '13055555555', '河北省', '石家庄市', '长安区', '县级市', 0, '0', '0', 0, 1, 1526526221),
(26, 101, 'wds', '15241258741', '河北省', '石家庄市', '长安区', 'wdsd', 0, '0', '0', 1, 0, 1526701691),
(27, 102, '测试', '13055555555', '北京市', '北京市', '东城区', '地址', 0, '0', '0', 1, 0, 1527070833),
(28, 105, '许荣耀', '13679281569', '内蒙古自治区', '包头市', '土默特右旗', '红庙坡龙湖国际', 0, '0', '0', 1, 0, 1527510125),
(29, 108, '测试', '13055555555', '北京市', '北京市', '东城区', '阿斯蒂芬', 0, '0', '0', 1, 0, 1527574719),
(30, 111, '许荣耀', '13679281569', '陕西省', '西安市', '莲湖区', '红庙坡龙湖国际11', 0, '0', '0', 1, 0, 1527642885),
(31, 107, '雷神', '13000000000', '北京', '密云区', '城区', '天庭中阁', 0, '0', '0', 1, 0, 1527643596);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_bill`
--

CREATE TABLE IF NOT EXISTS `eb_user_bill` (
  `id` int(10) unsigned NOT NULL COMMENT '用户账单id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) NOT NULL COMMENT '账单标题',
  `category` varchar(64) NOT NULL COMMENT '明细种类',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效'
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COMMENT='用户账单表';

--
-- 转存表中的数据 `eb_user_bill`
--

INSERT INTO `eb_user_bill` (`id`, `uid`, `link_id`, `pm`, `title`, `category`, `type`, `number`, `balance`, `mark`, `add_time`, `status`) VALUES
(3, 102, '0', 1, '用户签到', 'integral', 'sign', '2.00', '58.00', '签到获得2积分', 1519873468, 1),
(4, 102, '8bb87df509bc88d3b2a53652eb4ffbe0', 0, '积分抵扣', 'integral', 'deduction', '30.00', '30.00', '购买商品使用30积分抵扣0.3元', 1519873589, 1),
(5, 1, '221', 0, '购买商品', 'now_money', 'pay_product', '48.70', '1000.00', '余额支付48.7元购买商品', 1519873589, 1),
(183, 1, '439', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '0.00', '购买商品赠送30积分', 1522289025, 1),
(7, 102, '222', 0, '购买商品', 'now_money', 'pay_product', '49.00', '951.30', '余额支付49元购买商品', 1519873784, 1),
(184, 1, '0', 1, '用户签到', 'integral', 'sign', '5.00', '30.00', '签到获得5积分', 1522289251, 1),
(185, 102, 'ef023e136b2885ea3850c5044fcfff85', 0, '积分抵扣', 'integral', 'deduction', '35.00', '35.00', '购买商品使用35积分抵扣0.35元', 1522303707, 1),
(9, 1, '223', 0, '购买商品', 'now_money', 'pay_product', '30.00', '99838.02', '余额支付30元购买商品', 1520037170, 1),
(10, 1, '224', 0, '购买商品', 'now_money', 'pay_product', '30.00', '99808.02', '余额支付30元购买商品', 1520037455, 1),
(11, 1, '2', 1, '系统增加余额', 'now_money', 'system_add', '1000.00', '0.00', '系统增加了1000余额', 1520046630, 1),
(12, 1, '226', 0, '购买商品', 'now_money', 'pay_product', '30.00', '1000.00', '余额支付30元购买商品', 1520046687, 1),
(13, 1, '228', 0, '购买商品', 'now_money', 'pay_product', '30.00', '99778.02', '余额支付30元购买商品', 1520047955, 1),
(14, 1, '229', 0, '购买商品', 'now_money', 'pay_product', '30.00', '970.00', '余额支付30元购买商品', 1520057841, 1),
(15, 102, '236', 0, '购买商品', 'now_money', 'pay_product', '0.04', '99748.02', '余额支付0.04元购买商品', 1520061812, 1),
(16, 1, '237', 0, '购买商品', 'now_money', 'pay_product', '0.04', '99747.98', '余额支付0.04元购买商品', 1520062779, 1),
(17, 1, '33', 0, '佣金提现', 'now_money', 'extract', '100.00', '99647.00', '支付宝提现100元', 1520062874, 1),
(18, 1, '34', 0, '佣金提现', 'now_money', 'extract', '600.00', '99047.00', '使用支付宝提现600元', 1520063132, 1),
(19, 1, '238', 0, '购买商品', 'now_money', 'pay_product', '0.04', '99047.00', '余额支付0.04元购买商品', 1520064069, 1),
(20, 1, '239', 0, '购买商品', 'now_money', 'pay_product', '0.01', '940.00', '余额支付0.01元购买商品', 1520067782, 1),
(21, 1, '35', 0, '佣金提现', 'now_money', 'extract', '100.00', '700.00', '使用支付宝提现100元', 1520068115, 1),
(22, 1, '36', 0, '佣金提现', 'now_money', 'extract', '100.00', '600.00', '使用支付宝提现100元', 1520068621, 1),
(23, 1, '247', 0, '购买商品', 'now_money', 'pay_product', '80.00', '99046.96', '余额支付80元购买商品', 1520071676, 1),
(24, 1, 'b9d7f414248185287a60b25f31619eec', 0, '积分抵扣', 'integral', 'deduction', '30.00', '30.00', '购买商品使用30积分抵扣0.3元', 1520220419, 1),
(25, 1, '250', 0, '购买商品', 'now_money', 'pay_product', '450.00', '600.00', '余额支付450元购买商品', 1520230428, 1),
(182, 1, '439', 0, '购买商品', 'now_money', 'pay_product', '24.81', '9755.01', '余额支付24.81元购买商品', 1522288983, 1),
(41, 1, '37', 0, '佣金提现', 'now_money', 'extract', '10.00', '310.00', '使用支付宝提现10元', 1520237549, 1),
(181, 1, '552d5b79016ab2ff2fe55fab1ce876e9', 0, '积分抵扣', 'integral', 'deduction', '509.00', '509.00', '购买商品使用509积分抵扣5.09元', 1522288983, 1),
(43, 1, '36', 1, '提现失败', 'now_money', 'extract', '0.01', '320.00', '提现失败,退回佣金0.01元', 1520238042, 1),
(44, 1, '37', 1, '提现失败', 'now_money', 'extract', '10.00', '320.01', '提现失败,退回佣金10.00元', 1520238207, 1),
(45, 1, '38', 0, '佣金提现', 'now_money', 'extract', '100.00', '230.00', '使用支付宝提现100元', 1520238803, 1),
(46, 1, '38', 1, '提现失败', 'now_money', 'extract', '100.00', '230.00', '提现失败,退回佣金100.00元', 1520238827, 1),
(47, 1, '39', 0, '佣金提现', 'now_money', 'extract', '100.00', '230.00', '使用支付宝提现100元', 1520238837, 1),
(48, 1, 'eb1f639191dd3dce9915a9084279363b', 0, '积分抵扣', 'integral', 'deduction', '10.00', '10.00', '购买商品使用10积分抵扣0.1元', 1520299208, 1),
(49, 1, '253', 0, '购买商品', 'now_money', 'pay_product', '29.90', '230.00', '余额支付29.9元购买商品', 1520299208, 1),
(50, 1, '0', 1, '用户签到', 'integral', 'sign', '4.00', '0.00', '签到获得4积分', 1520499428, 1),
(51, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '0.00', '签到获得1积分', 1520524298, 1),
(52, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '4.00', '签到获得3积分', 1520558833, 1),
(53, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '0.00', '签到获得2积分', 1520564556, 1),
(54, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1520585535, 1),
(55, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '7.00', '签到获得2积分', 1520825701, 1),
(56, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '0.00', '签到获得2积分', 1520827925, 1),
(57, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '1.00', '签到获得1积分', 1520844962, 1),
(58, 1, 'ec4d6cf8fb40a01a55eec49d90fc44e9', 0, '积分抵扣', 'integral', 'deduction', '1.00', '9.00', '购买商品使用1积分抵扣0.01元', 1520909711, 1),
(59, 1, '0', 1, '用户签到', 'integral', 'sign', '4.00', '2.00', '签到获得4积分', 1520922350, 1),
(60, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '3.00', '签到获得3积分', 1520922935, 1),
(61, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '8.00', '签到获得1积分', 1520960424, 1),
(62, 1, '0', 1, '用户签到', 'integral', 'sign', '4.00', '2.00', '签到获得4积分', 1520994662, 1),
(63, 1, 'e3e3e30514b55a8b1740d6f3d317c3ae', 0, '积分抵扣', 'integral', 'deduction', '1.00', '9.00', '购买商品使用1积分抵扣0.01元', 1521104459, 1),
(64, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '8.00', '签到获得2积分', 1521127409, 1),
(65, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '10.00', '签到获得2积分', 1521163808, 1),
(66, 1, '297', 0, '购买商品', 'now_money', 'pay_product', '0.02', '200.10', '余额支付0.02元购买商品', 1521169908, 1),
(67, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '6.00', '签到获得2积分', 1521427143, 1),
(68, 1, '6', 1, '系统增加余额', 'now_money', 'system_add', '10.00', '0.00', '系统增加了10余额', 1521430151, 1),
(69, 1, '6', 1, '系统增加积分', 'integral', 'system_add', '20.00', '0.00', '系统增加了20积分', 1521430151, 1),
(70, 1, '6', 1, '系统增加余额', 'now_money', 'system_add', '90.00', '10.00', '系统增加了90余额', 1521430178, 1),
(71, 1, '40', 0, '佣金提现', 'now_money', 'extract', '100.00', '0.00', '使用银联卡6212263002008541107提现100元', 1521430303, 1),
(72, 1, '3325479287d5198de8764498944ee0fc', 0, '积分抵扣', 'integral', 'deduction', '6.00', '6.00', '购买商品使用6积分抵扣0.06元', 1521430678, 1),
(73, 1, '323', 0, '购买商品', 'now_money', 'pay_product', '17.94', '200.08', '余额支付17.94元购买商品', 1521430678, 1),
(74, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '2.00', '签到获得2积分', 1521446853, 1),
(75, 1, '329', 0, '购买商品', 'now_money', 'pay_product', '18.00', '182.14', '余额支付18元购买商品', 1521446968, 1),
(76, 1, '330', 0, '购买商品', 'now_money', 'pay_product', '0.00', '0.00', '余额支付0元购买商品', 1521447037, 1),
(77, 1, '2', 1, '系统增加余额', 'now_money', 'system_add', '10.00', '0.00', '系统增加了10余额', 1521448476, 1),
(78, 1, '2', 1, '系统增加积分', 'integral', 'system_add', '20.00', '4.00', '系统增加了20积分', 1521448476, 1),
(79, 1, '332', 0, '购买商品', 'now_money', 'pay_product', '18.00', '939.99', '余额支付18元购买商品', 1521449931, 1),
(80, 1, '329', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521450000, 1),
(81, 1, '329', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521450149, 1),
(82, 1, '329', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521450381, 1),
(83, 1, '329', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521450456, 1),
(84, 1, '329', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521450484, 1),
(85, 1, '333', 0, '购买商品', 'now_money', 'pay_product', '0.02', '254.14', '余额支付0.02元购买商品', 1521451015, 1),
(86, 1, '334', 0, '购买商品', 'now_money', 'pay_product', '0.02', '921.99', '余额支付0.02元购买商品', 1521451095, 1),
(87, 1, '333', 1, '商品退款', 'now_money', 'pay_product_refund', '0.02', '0.02', '订单退款到余额0.02元', 1521451120, 1),
(88, 1, '335', 0, '购买商品', 'now_money', 'pay_product', '0.02', '254.14', '余额支付0.02元购买商品', 1521451304, 1),
(89, 1, '336', 0, '购买商品', 'now_money', 'pay_product', '0.02', '921.97', '余额支付0.02元购买商品', 1521451343, 1),
(90, 1, '335', 1, '商品退款', 'now_money', 'pay_product_refund', '0.02', '0.02', '订单退款到余额0.02元', 1521451363, 1),
(91, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '8.00', '签到获得2积分', 1521514170, 1),
(92, 1, '351', 0, '购买商品', 'now_money', 'pay_product', '0.01', '254.14', '余额支付0.01元购买商品', 1521515747, 1),
(93, 1, '351', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521515798, 1),
(94, 1, '354', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.95', '余额支付0.01元购买商品', 1521517357, 1),
(95, 1, '354', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521517428, 1),
(96, 1, '355', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.95', '余额支付0.01元购买商品', 1521518038, 1),
(97, 1, '355', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521518085, 1),
(98, 1, '356', 0, '购买商品', 'now_money', 'pay_product', '0.01', '10.00', '余额支付0.01元购买商品', 1521518168, 1),
(99, 1, '2', 1, '系统增加余额', 'now_money', 'system_add', '1000.00', '9.99', '系统增加了1000余额', 1521518181, 1),
(100, 1, '356', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521518204, 1),
(101, 1, '357', 0, '购买商品', 'now_money', 'pay_product', '0.01', '1010.00', '余额支付0.01元购买商品', 1521518238, 1),
(102, 1, '358', 0, '购买商品', 'now_money', 'pay_product', '0.02', '254.14', '余额支付0.02元购买商品', 1521518350, 1),
(103, 1, '359', 0, '购买商品', 'now_money', 'pay_product', '0.01', '254.12', '余额支付0.01元购买商品', 1521518409, 1),
(104, 1, '360', 0, '购买商品', 'now_money', 'pay_product', '0.01', '1009.99', '余额支付0.01元购买商品', 1521518436, 1),
(105, 1, '359', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521518509, 1),
(106, 1, '362', 0, '购买商品', 'now_money', 'pay_product', '0.02', '1009.98', '余额支付0.02元购买商品', 1521518745, 1),
(107, 1, '358', 1, '商品退款', 'now_money', 'pay_product_refund', '0.02', '0.02', '订单退款到余额0.02元', 1521518803, 1),
(108, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1521526020, 1),
(109, 1, '363', 0, '购买商品', 'now_money', 'pay_product', '0.01', '254.14', '余额支付0.01元购买商品', 1521528476, 1),
(110, 1, '364', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.95', '余额支付0.01元购买商品', 1521528530, 1),
(111, 1, '364', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521528588, 1),
(112, 1, '365', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.95', '余额支付0.01元购买商品', 1521528642, 1),
(113, 1, '366', 0, '购买商品', 'now_money', 'pay_product', '0.01', '1009.96', '余额支付0.01元购买商品', 1521529171, 1),
(114, 1, '366', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521529514, 1),
(115, 1, '367', 0, '购买商品', 'now_money', 'pay_product', '0.01', '254.13', '余额支付0.01元购买商品', 1521531616, 1),
(116, 1, '368', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.94', '余额支付0.01元购买商品', 1521533318, 1),
(117, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '12.00', '签到获得1积分', 1521545604, 1),
(118, 1, '6', 0, '系统减少积分', 'integral', 'system_sub', '20.00', '20.00', '系统扣除了20积分', 1521545814, 1),
(119, 1, '378', 0, '购买商品', 'now_money', 'pay_product', '0.02', '254.12', '余额支付0.02元购买商品', 1521597920, 1),
(120, 1, '379', 0, '购买商品', 'now_money', 'pay_product', '18.00', '254.10', '余额支付18元购买商品', 1521597979, 1),
(121, 1, '380', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.10', '余额支付0.01元购买商品', 1521598255, 1),
(122, 1, '381', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.93', '余额支付0.01元购买商品', 1521598312, 1),
(123, 1, '381', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521598377, 1),
(124, 1, '380', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521598705, 1),
(125, 1, '379', 1, '商品退款', 'now_money', 'pay_product_refund', '18.00', '18.00', '订单退款到余额18元', 1521598950, 1),
(126, 1, '376', 0, '购买商品', 'now_money', 'pay_product', '0.01', '254.10', '余额支付0.01元购买商品', 1521606841, 1),
(127, 1, '2', 1, '系统增加余额', 'now_money', 'system_add', '10.00', '0.00', '系统增加了10余额', 1521617214, 1),
(128, 1, '2', 1, '系统增加积分', 'integral', 'system_add', '100.00', '0.00', '系统增加了100积分', 1521617214, 1),
(129, 1, '387', 0, '购买商品', 'now_money', 'pay_product', '18.00', '254.09', '余额支付18元购买商品', 1521619169, 1),
(130, 1, '402', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.93', '余额支付0.01元购买商品', 1521681858, 1),
(131, 1, '403', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.92', '余额支付0.01元购买商品', 1521681937, 1),
(132, 1, '404', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.91', '余额支付0.01元购买商品', 1521682080, 1),
(133, 1, '405', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.09', '余额支付0.01元购买商品', 1521682231, 1),
(134, 1, '406', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.08', '余额支付0.01元购买商品', 1521682299, 1),
(135, 1, '407', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.07', '余额支付0.01元购买商品', 1521682487, 1),
(136, 1, '408', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.06', '余额支付0.01元购买商品', 1521682586, 1),
(137, 1, '409', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.05', '余额支付0.01元购买商品', 1521682626, 1),
(138, 1, '410', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.04', '余额支付0.01元购买商品', 1521682652, 1),
(139, 1, '411', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.03', '余额支付0.01元购买商品', 1521682719, 1),
(140, 1, '412', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.02', '余额支付0.01元购买商品', 1521682751, 1),
(141, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1521682907, 1),
(142, 1, '0', 1, '用户签到', 'integral', 'sign', '5.00', '0.00', '签到获得5积分', 1521682915, 1),
(143, 1, '413', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.01', '余额支付0.01元购买商品', 1521683632, 1),
(144, 1, '414', 0, '购买商品', 'now_money', 'pay_product', '0.01', '236.00', '余额支付0.01元购买商品', 1521686043, 1),
(145, 1, '415', 0, '购买商品', 'now_money', 'pay_product', '0.01', '235.99', '余额支付0.01元购买商品', 1521686090, 1),
(146, 1, '416', 0, '购买商品', 'now_money', 'pay_product', '0.01', '235.98', '余额支付0.01元购买商品', 1521686138, 1),
(147, 1, '417', 0, '购买商品', 'now_money', 'pay_product', '0.01', '235.97', '余额支付0.01元购买商品', 1521686237, 1),
(148, 1, '418', 0, '购买商品', 'now_money', 'pay_product', '0.01', '235.96', '余额支付0.01元购买商品', 1521686272, 1),
(149, 1, '420', 0, '购买商品', 'now_money', 'pay_product', '0.01', '235.95', '余额支付0.01元购买商品', 1521692681, 1),
(150, 1, '421', 0, '购买商品', 'now_money', 'pay_product', '0.02', '235.94', '余额支付0.02元购买商品', 1521701350, 1),
(151, 1, '422', 0, '购买商品', 'now_money', 'pay_product', '0.01', '921.90', '余额支付0.01元购买商品', 1521701363, 1),
(152, 1, '422', 1, '商品退款', 'now_money', 'pay_product_refund', '0.01', '0.01', '订单退款到余额0.01元', 1521701448, 1),
(153, 1, '421', 1, '商品退款', 'now_money', 'pay_product_refund', '0.02', '0.02', '订单退款到余额0.02元', 1521703964, 1),
(154, 1, '423', 0, '购买商品', 'now_money', 'pay_product', '0.02', '235.94', '余额支付0.02元购买商品', 1521704440, 1),
(155, 1, '425', 0, '购买商品', 'now_money', 'pay_product', '29.90', '235.92', '余额支付29.9元购买商品', 1521704760, 1),
(156, 1, '425', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '3.00', '购买商品赠送30积分', 1521704804, 1),
(157, 1, '0', 1, '用户签到', 'integral', 'sign', '4.00', '33.00', '签到获得4积分', 1521706279, 1),
(158, 1, '428', 0, '购买商品', 'now_money', 'pay_product', '29.90', '921.90', '余额支付29.9元购买商品', 1521706372, 1),
(159, 1, '428', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '0.00', '购买商品赠送30积分', 1521706390, 1),
(161, 1, '429', 0, '购买商品', 'now_money', 'pay_product', '21.90', '207.51', '余额支付21.9元购买商品', 1521706415, 1),
(162, 1, '429', 1, '购买商品赠送积分', 'integral', 'gain', '22.00', '37.00', '购买商品赠送22积分', 1521706433, 1),
(163, 1, '430', 1, '购买商品赠送积分', 'integral', 'gain', '1.00', '0.00', '购买商品赠送1积分', 1521706657, 1),
(186, 1, '440', 0, '购买商品', 'now_money', 'pay_product', '1932.85', '9730.20', '余额支付1932.85元购买商品', 1522303707, 1),
(165, 1, '431', 0, '购买商品', 'now_money', 'pay_product', '131.60', '185.61', '余额支付131.6元购买商品', 1521706691, 1),
(166, 1, '431', 1, '购买商品赠送积分', 'integral', 'gain', '132.00', '59.00', '购买商品赠送132积分', 1521706704, 1),
(167, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '13.00', '签到获得3积分', 1521707119, 1),
(168, 1, '2', 1, '系统增加余额', 'now_money', 'system_add', '10000.00', '54.01', '系统增加了10000余额', 1521707161, 1),
(169, 1, '434', 0, '购买商品', 'now_money', 'pay_product', '101.70', '10054.01', '余额支付101.7元购买商品', 1521707168, 1),
(170, 1, '434', 1, '购买商品赠送积分', 'integral', 'gain', '102.00', '191.00', '购买商品赠送102积分', 1521707184, 1),
(171, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '1.00', '签到获得1积分', 1521707448, 1),
(172, 1, '435', 0, '购买商品', 'now_money', 'pay_product', '29.90', '9952.31', '余额支付29.9元购买商品', 1521707608, 1),
(173, 1, '435', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '293.00', '购买商品赠送30积分', 1521707626, 1),
(174, 1, '436', 0, '购买商品', 'now_money', 'pay_product', '83.70', '9922.41', '余额支付83.7元购买商品', 1521707643, 1),
(175, 1, '436', 1, '购买商品赠送积分', 'integral', 'gain', '92.00', '323.00', '购买商品赠送92积分', 1521707658, 1),
(176, 1, '437', 0, '购买商品', 'now_money', 'pay_product', '83.70', '9838.71', '余额支付83.7元购买商品', 1521707706, 1),
(177, 1, '437', 1, '购买商品赠送积分', 'integral', 'gain', '92.00', '415.00', '购买商品赠送92积分', 1521707831, 1),
(178, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '100.00', '签到获得2积分', 1521721321, 1),
(179, 1, '0', 1, '用户签到', 'integral', 'sign', '1.00', '0.00', '签到获得1积分', 1521817777, 1),
(180, 1, '0', 1, '用户签到', 'integral', 'sign', '2.00', '507.00', '签到获得2积分', 1522054211, 1),
(187, 1, '441', 0, '购买商品', 'now_money', 'pay_product', '100.00', '7797.35', '余额支付100元购买商品', 1522304233, 1),
(188, 1, '442', 0, '购买商品', 'now_money', 'pay_product', '15.90', '7697.35', '余额支付15.9元购买商品', 1523170031, 1),
(189, 1, '444', 0, '购买商品', 'now_money', 'pay_product', '59.70', '7681.45', '余额支付59.7元购买商品', 1523170394, 1),
(190, 1, '445', 0, '购买商品', 'now_money', 'pay_product', '23.99', '7621.75', '余额支付23.99元购买商品', 1523171074, 1),
(191, 1, '446', 0, '购买商品', 'now_money', 'pay_product', '15.90', '7597.76', '余额支付15.9元购买商品', 1523267394, 1),
(192, 1, '446', 1, '商品退款', 'now_money', 'pay_product_refund', '1.00', '15.90', '订单退款到余额1元', 1523267737, 1),
(193, 1, '446', 1, '商品退款', 'now_money', 'pay_product_refund', '1.00', '15.90', '订单退款到余额1元', 1523268649, 1),
(194, 1, '446', 1, '商品退款', 'now_money', 'pay_product_refund', '13.90', '15.90', '订单退款到余额13.9元', 1523268677, 1),
(195, 65, '0', 1, '用户签到', 'integral', 'sign', '5.00', '0.00', '签到获得5积分', 1523521072, 1),
(196, 65, '0', 1, '用户签到', 'integral', 'sign', '5.00', '5.00', '签到获得5积分', 1523601754, 1),
(197, 77, '0', 1, '用户签到', 'integral', 'sign', '4.00', '0.00', '签到获得4积分', 1523862231, 1),
(198, 79, '0', 1, '用户签到', 'integral', 'sign', '5.00', '0.00', '签到获得5积分', 1523864814, 1),
(199, 77, '0', 1, '用户签到', 'integral', 'sign', '2.00', '4.00', '签到获得2积分', 1523927201, 1),
(200, 1, '452', 0, '购买商品', 'now_money', 'pay_product', '29.90', '7597.76', '余额支付29.9元购买商品', 1524032836, 1),
(201, 1, '453', 0, '购买商品', 'now_money', 'pay_product', '15.90', '7567.86', '余额支付15.9元购买商品', 1524478612, 1),
(202, 1, '454', 0, '购买商品', 'now_money', 'pay_product', '1578.26', '7551.96', '余额支付1578.26元购买商品', 1524478634, 1),
(203, 1, '455', 0, '购买商品', 'now_money', 'pay_product', '1200.00', '5973.70', '余额支付1200元购买商品', 1524478904, 1),
(204, 1, '456', 0, '购买商品', 'now_money', 'pay_product', '15.90', '4773.70', '余额支付15.9元购买商品', 1524530737, 1),
(205, 1, '457', 0, '购买商品', 'now_money', 'pay_product', '0.00', '4757.80', '余额支付0元购买商品', 1524533446, 1),
(206, 1, '458', 0, '购买商品', 'now_money', 'pay_product', '128.88', '4757.80', '余额支付128.88元购买商品', 1524540654, 1),
(207, 1, '459', 0, '购买商品', 'now_money', 'pay_product', '2400.00', '4628.92', '余额支付2400元购买商品', 1524540778, 1),
(208, 1, '460', 0, '购买商品', 'now_money', 'pay_product', '1200.00', '2228.92', '余额支付1200元购买商品', 1524541465, 1),
(209, 1, '461', 0, '购买商品', 'now_money', 'pay_product', '100.00', '1028.92', '余额支付100元购买商品', 1524542603, 1),
(210, 1, '462', 0, '购买商品', 'now_money', 'pay_product', '100.00', '928.92', '余额支付100元购买商品', 1524542636, 1),
(211, 1, '463', 0, '购买商品', 'now_money', 'pay_product', '15.90', '828.92', '余额支付15.9元购买商品', 1524550948, 1),
(212, 1, '464', 0, '购买商品', 'now_money', 'pay_product', '100.00', '813.02', '余额支付100元购买商品', 1524550965, 1),
(213, 1, '1', 1, '系统增加积分', 'integral', 'system_add', '5000.00', '0.00', '系统增加了5000积分', 1524619171, 1),
(214, 1, 'caf2ff722dc89a76a501cf7e95e669e4', 0, '积分抵扣', 'integral', 'deduction', '5000.00', '5000.00', '购买商品使用5000积分抵扣50元', 1524619212, 1),
(215, 1, '1', 1, '系统增加余额', 'now_money', 'system_add', '5000.00', '713.02', '系统增加了5000余额', 1524619230, 1),
(216, 1, '466', 0, '购买商品', 'now_money', 'pay_product', '1130.00', '5713.02', '余额支付1130元购买商品', 1524619236, 1),
(217, 1, '467', 0, '购买商品', 'now_money', 'pay_product', '90.00', '4583.02', '余额支付90元购买商品', 1524621398, 1),
(218, 1, '468', 0, '购买商品', 'now_money', 'pay_product', '23.99', '4493.02', '余额支付23.99元购买商品', 1524621659, 1),
(219, 1, '469', 0, '购买商品', 'now_money', 'pay_product', '888.00', '4469.03', '余额支付888元购买商品', 1524642249, 1),
(220, 1, '472', 0, '购买商品', 'now_money', 'pay_product', '0.00', '3581.03', '微信支付0元购买商品', 1524647465, 1),
(221, 1, '473', 0, '购买商品', 'now_money', 'pay_product', '77.00', '3581.03', '余额支付77元购买商品', 1524648553, 1),
(222, 1, '474', 0, '购买商品', 'now_money', 'pay_product', '900.00', '3504.03', '余额支付900元购买商品', 1524650446, 1),
(223, 1, '0', 1, '用户签到', 'integral', 'sign', '4.00', '0.00', '签到获得4积分', 1524725755, 1),
(224, 1, '475', 0, '购买商品', 'now_money', 'pay_product', '900.00', '2604.03', '余额支付900元购买商品', 1524799602, 1),
(225, 1, '463', 1, '购买商品赠送积分', 'integral', 'gain', '10.00', '4.00', '购买商品赠送10积分', 1524809929, 1),
(226, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '14.00', '签到获得3积分', 1524877808, 1),
(227, 102, '42', 0, '余额提现', 'now_money', 'extract', '210.00', '1580.00', '使用银联卡321654987684提现210元', 1526545385, 1),
(228, 102, '43', 0, '余额提现', 'now_money', 'extract', '210.00', '1370.00', '使用银联卡321654987684提现210元', 1526545460, 1),
(229, 102, '44', 0, '余额提现', 'now_money', 'extract', '210.00', '1160.00', '使用银联卡321654987684提现210元', 1526545527, 1),
(230, 102, '45', 0, '余额提现', 'now_money', 'extract', '210.00', '950.00', '使用银联卡321654987684提现210元', 1526545566, 1),
(231, 102, '46', 0, '余额提现', 'now_money', 'extract', '210.00', '740.00', '使用银联卡321654987684提现210元', 1526545607, 1),
(232, 102, '47', 0, '余额提现', 'now_money', 'extract', '210.00', '530.00', '使用银联卡321654987684提现210元', 1526545700, 1),
(233, 102, '48', 0, '余额提现', 'now_money', 'extract', '210.00', '320.00', '使用银联卡321654987684提现210元', 1526545927, 1),
(234, 102, '49', 0, '余额提现', 'now_money', 'extract', '210.00', '110.00', '使用银联卡321654987684提现210元', 1526546025, 1),
(235, 102, '50', 0, '余额提现', 'now_money', 'extract', '210.00', '0.00', '使用银联卡321654987684提现210元', 1526546068, 1),
(236, 102, '51', 0, '余额提现', 'now_money', 'extract', '230.00', '0.00', '使用银联卡3197846541414提现230元', 1526546157, 1),
(237, 102, '52', 0, '余额提现', 'now_money', 'extract', '230.00', '219770.00', '使用银联卡3197846541414提现230元', 1526546344, 1),
(238, 102, '53', 0, '余额提现', 'now_money', 'extract', '230.00', '219540.00', '使用银联卡21354687954提现230元', 1526546368, 1),
(239, 102, '54', 0, '余额提现', 'now_money', 'extract', '230.00', '219310.00', '使用银联卡21354687954提现230元', 1526546403, 1),
(240, 102, '55', 0, '余额提现', 'now_money', 'extract', '230.00', '219080.00', '使用银联卡21354687954提现230元', 1526546420, 1),
(241, 102, '56', 0, '余额提现', 'now_money', 'extract', '250.00', '218830.00', '使用微信提现250元', 1526546499, 1),
(242, 101, '466', 1, '购买商品赠送积分', 'integral', 'gain', '50.00', '0.00', '购买商品赠送50积分', 1526553157, 1),
(243, 101, '456', 1, '购买商品赠送积分', 'integral', 'gain', '10.00', '50.00', '购买商品赠送10积分', 1526553945, 1),
(244, 101, '472', 1, '购买商品赠送积分', 'integral', 'gain', '70.00', '60.00', '购买商品赠送70积分', 1526554922, 1),
(245, 101, '474', 1, '购买商品赠送积分', 'integral', 'gain', '50.00', '130.00', '购买商品赠送50积分', 1526638853, 1),
(246, 101, '473', 1, '购买商品赠送积分', 'integral', 'gain', '40.00', '180.00', '购买商品赠送40积分', 1526639177, 1),
(247, 101, '455', 1, '购买商品赠送积分', 'integral', 'gain', '50.00', '220.00', '购买商品赠送50积分', 1526639907, 1),
(248, 101, '454', 1, '购买商品赠送积分', 'integral', 'gain', '179.00', '270.00', '购买商品赠送179积分', 1526641678, 1),
(249, 100, '1', 1, '系统增加余额', 'now_money', 'system_add', '10000.00', '0.00', '系统增加了10000余额', 1526693395, 1),
(250, 100, '480', 0, '购买商品', 'now_money', 'pay_product', '25.00', '10000.00', '余额支付25元购买商品', 1526693496, 1),
(251, 100, '481', 0, '购买商品', 'now_money', 'pay_product', '25.00', '9975.00', '余额支付25元购买商品', 1526693910, 1),
(252, 100, '482', 0, '购买商品', 'now_money', 'pay_product', '25.00', '9950.00', '余额支付25元购买商品', 1526693980, 1),
(253, 100, '483', 0, '购买商品', 'now_money', 'pay_product', '25.00', '9925.00', '余额支付25元购买商品', 1526694059, 1),
(254, 101, '1', 1, '系统增加余额', 'now_money', 'system_add', '100000.00', '0.00', '系统增加了100000余额', 1526710620, 1),
(255, 101, '485', 0, '购买商品', 'now_money', 'pay_product', '25.00', '100000.00', '余额支付25元购买商品', 1526710676, 1),
(256, 101, '486', 0, '购买商品', 'now_money', 'pay_product', '46.80', '99975.00', '余额支付46.8元购买商品', 1526710772, 1),
(257, 101, '485', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '449.00', '购买商品赠送30积分', 1526710987, 1),
(258, 101, '452', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '479.00', '购买商品赠送30积分', 1526711101, 1),
(259, 100, '488', 0, '购买商品', 'now_money', 'pay_product', '46.80', '9900.00', '余额支付46.8元购买商品', 1526726038, 1),
(260, 100, '489', 0, '购买商品', 'now_money', 'pay_product', '20.00', '9853.20', '余额支付20元购买商品', 1526882848, 1),
(261, 100, '490', 0, '购买商品', 'now_money', 'pay_product', '900.00', '9833.20', '余额支付900元购买商品', 1526951009, 1),
(262, 100, '479', 0, '购买商品', 'now_money', 'pay_product', '165.40', '8933.20', '余额支付165.4元购买商品', 1526958987, 1),
(263, 100, '490', 1, '商品退款', 'now_money', 'pay_product_refund', '900.00', '900.00', '订单退款到余额900元', 1526987906, 1),
(264, 102, '491', 0, '购买商品', 'now_money', 'pay_product', '20.00', '218830.00', '余额支付20元购买商品', 1527070861, 1),
(265, 102, '492', 0, '购买商品', 'now_money', 'pay_product', '21.00', '218810.00', '余额支付21元购买商品', 1527124482, 1),
(266, 100, '493', 0, '购买商品', 'now_money', 'pay_product', '20.00', '9667.80', '余额支付20元购买商品', 1527126191, 1),
(267, 100, '489', 1, '购买商品赠送积分', 'integral', 'gain', '30.00', '0.00', '购买商品赠送30积分', 1527211325, 1),
(268, 100, '494', 0, '购买商品', 'now_money', 'pay_product', '21.00', '9647.80', '余额支付21元购买商品', 1527213135, 1),
(269, 100, '495', 0, '购买商品', 'now_money', 'pay_product', '20.00', '9626.80', '余额支付20元购买商品', 1527220073, 1),
(270, 106, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1527525681, 1),
(271, 65, '0', 1, '用户签到', 'integral', 'sign', '5.00', '10.00', '签到获得5积分', 1527556558, 1),
(272, 1, '522', 0, '购买商品', 'now_money', 'pay_product', '100.00', '1704.03', '余额支付100元购买商品', 1527847140, 1),
(273, 118, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1527926949, 1),
(274, 107, '0', 1, '用户签到', 'integral', 'sign', '4.00', '0.00', '签到获得4积分', 1527927605, 1),
(275, 119, '0', 1, '用户签到', 'integral', 'sign', '3.00', '0.00', '签到获得3积分', 1528075141, 1),
(276, 1, '0', 1, '用户签到', 'integral', 'sign', '3.00', '17.00', '签到获得3积分', 1528163715, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_enter`
--

CREATE TABLE IF NOT EXISTS `eb_user_enter` (
  `id` int(10) unsigned NOT NULL COMMENT '商户申请ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `province` varchar(32) NOT NULL COMMENT '商户所在省',
  `city` varchar(32) NOT NULL COMMENT '商户所在市',
  `district` varchar(32) NOT NULL COMMENT '商户所在区',
  `address` varchar(256) NOT NULL COMMENT '商户详细地址',
  `merchant_name` varchar(256) NOT NULL COMMENT '商户名称',
  `link_user` varchar(32) NOT NULL,
  `link_tel` varchar(16) NOT NULL COMMENT '商户电话',
  `charter` varchar(512) NOT NULL COMMENT '商户证书',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `apply_time` int(10) unsigned NOT NULL COMMENT '审核时间',
  `success_time` int(11) NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) NOT NULL COMMENT '未通过原因',
  `fail_time` int(10) unsigned NOT NULL COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商户申请表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_extract`
--

CREATE TABLE IF NOT EXISTS `eb_user_extract` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) DEFAULT NULL COMMENT '无效原因',
  `fail_time` int(10) unsigned DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) DEFAULT NULL COMMENT '微信号'
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='用户提现表';

--
-- 转存表中的数据 `eb_user_extract`
--

INSERT INTO `eb_user_extract` (`id`, `uid`, `real_name`, `extract_type`, `bank_code`, `bank_address`, `alipay_code`, `extract_price`, `mark`, `balance`, `fail_msg`, `fail_time`, `add_time`, `status`, `wechat`) VALUES
(41, 102, '公司给对方', 'bank', '321654987684', '农业银行', '', '210.00', NULL, '1790.00', NULL, NULL, 1526545333, 1, ''),
(56, 102, '', 'weixin', '', '', '', '250.00', NULL, '218830.00', NULL, NULL, 1526546499, 1, '13629289871');

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_group`
--

CREATE TABLE IF NOT EXISTS `eb_user_group` (
  `id` smallint(5) unsigned NOT NULL,
  `group_name` varchar(64) DEFAULT NULL COMMENT '用户分组名称'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户分组表';

--
-- 转存表中的数据 `eb_user_group`
--

INSERT INTO `eb_user_group` (`id`, `group_name`) VALUES
(1, '未分组'),
(2, '活跃用户'),
(3, '测试');

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_notice`
--

CREATE TABLE IF NOT EXISTS `eb_user_notice` (
  `id` int(11) NOT NULL,
  `uid` text NOT NULL COMMENT '接收消息的用户id（类型：json数据）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息通知类型（1：系统消息；2：用户通知）',
  `user` varchar(20) NOT NULL DEFAULT '' COMMENT '发送人',
  `title` varchar(20) NOT NULL COMMENT '通知消息的标题信息',
  `content` varchar(500) NOT NULL COMMENT '通知消息的内容',
  `add_time` int(11) NOT NULL COMMENT '通知消息发送的时间',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送（0：未发送；1：已发送）',
  `send_time` int(11) NOT NULL COMMENT '发送时间'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户通知表';

--
-- 转存表中的数据 `eb_user_notice`
--

INSERT INTO `eb_user_notice` (`id`, `uid`, `type`, `user`, `title`, `content`, `add_time`, `is_send`, `send_time`) VALUES
(1, '', 1, '系统管理员', 'dfg', 'dfg', 1525487556, 0, 0),
(2, ',100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,1,', 2, '系统管理员', 'dfg', 'dfg', 1525489292, 1, 1527039917);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_notice_see`
--

CREATE TABLE IF NOT EXISTS `eb_user_notice_see` (
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL COMMENT '查看的通知id',
  `uid` int(11) NOT NULL COMMENT '查看通知的用户id',
  `add_time` int(11) NOT NULL COMMENT '查看通知的时间'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户通知发送记录表';

--
-- 转存表中的数据 `eb_user_notice_see`
--

INSERT INTO `eb_user_notice_see` (`id`, `nid`, `uid`, `add_time`) VALUES
(25, 2, 1, 1527155233),
(26, 2, 65, 1527594271);

-- --------------------------------------------------------

--
-- 表的结构 `eb_user_recharge`
--

CREATE TABLE IF NOT EXISTS `eb_user_recharge` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL COMMENT '充值用户UID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_type` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int(10) DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int(12) DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) unsigned NOT NULL COMMENT '退款金额'
) ENGINE=MyISAM AUTO_INCREMENT=3136 DEFAULT CHARSET=utf8 COMMENT='用户充值表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_media`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_media` (
  `id` int(10) unsigned NOT NULL COMMENT '微信视频音频id',
  `type` varchar(16) NOT NULL COMMENT '回复类型',
  `path` varchar(128) NOT NULL COMMENT '文件路径',
  `media_id` varchar(64) NOT NULL COMMENT '微信服务器返回的id',
  `url` varchar(256) NOT NULL COMMENT '地址',
  `temporary` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='微信回复表';

--
-- 转存表中的数据 `eb_wechat_media`
--

INSERT INTO `eb_wechat_media` (`id`, `type`, `path`, `media_id`, `url`, `temporary`, `add_time`) VALUES
(12, 'image', '/public/uploads/wechat/image/5b042ca618139.jpg', '6sFx6PzPF2v_Lv4FGOMzzwcwmM2wuoA63ZMSxiN-7DY', 'http://mmbiz.qpic.cn/mmbiz_jpg/xVkDhuiaGm78WOdUXuPE1oYLnU4J0LCEiaSuLhwwSrfdyINspibXsllaj8rOMSs5estAv0qhGuGniaqhb6HftecPuw/0?wx_fmt=jpeg', 0, 1527000231);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_message`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_message` (
  `id` int(10) unsigned NOT NULL COMMENT '用户行为记录id',
  `openid` varchar(32) NOT NULL COMMENT '用户openid',
  `type` varchar(32) NOT NULL COMMENT '操作类型',
  `result` varchar(512) NOT NULL COMMENT '操作详细记录',
  `add_time` int(10) unsigned NOT NULL COMMENT '操作时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户行为记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_news`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_news` (
  `id` int(10) unsigned NOT NULL COMMENT '文章管理ID',
  `cid` varchar(255) DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '文章简介',
  `share_title` varchar(255) DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '原文链接',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id'
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='文章管理表';

--
-- 转存表中的数据 `eb_wechat_news`
--

INSERT INTO `eb_wechat_news` (`id`, `cid`, `title`, `author`, `image_input`, `synopsis`, `share_title`, `share_synopsis`, `visit`, `sort`, `url`, `status`, `add_time`, `hide`, `admin_id`, `mer_id`) VALUES
(34, '9,13', '测试', 'hour', '/public/uploads/wechat/image/5b0538aa6e6eb.jpg', '测试', NULL, NULL, '0', 0, '', 1, '1526703318', 0, 1, 0),
(35, '11', 'fsdfdsfs', 'sdfdsfds', '/public/uploads/wechat/image/5b0538a0d7192.jpg', 'sfdsfdsf', NULL, NULL, '0', 0, '', 1, '1527058445', 0, 7, 0),
(36, '10', '第三篇文章', 'honor', '/public/uploads/wechat/image/20180601/5b10a27cbc7fc.jpg', '第三篇文章', NULL, NULL, '0', 0, '', 1, '1527768962', 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_news_category`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_news_category` (
  `id` int(10) unsigned NOT NULL COMMENT '图文消息管理ID',
  `cate_name` varchar(255) NOT NULL COMMENT '图文名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `new_id` varchar(255) NOT NULL COMMENT '文章id',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='图文消息管理表';

--
-- 转存表中的数据 `eb_wechat_news_category`
--

INSERT INTO `eb_wechat_news_category` (`id`, `cate_name`, `sort`, `status`, `new_id`, `add_time`) VALUES
(18, '欢迎关注', 0, 1, '34,35', '1527560284');

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_news_content`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_news_content` (
  `nid` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '文章内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容表';

--
-- 转存表中的数据 `eb_wechat_news_content`
--

INSERT INTO `eb_wechat_news_content` (`nid`, `content`) VALUES
(34, '<p>测试</p>'),
(35, '<p>sdfsfsdfds<br/></p>'),
(36, '<p><img src="http://shop.crmeb.net/public/uploads/editor/20180602/5b1282ae623b9.jpg"/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180602/5b12829614101.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b23763b9d.jpg" style=""/><br/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b23dcfd66.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2436876e.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b24a3833d.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b28560c1d.png" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b28c6e0da.png" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b293eaf82.png" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b29abf8c6.png" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2a4445a8.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2aaa33d8.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2b0969d7.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2c80066a.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2cd8b646.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2d35dc37.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2d909305.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2deb5b20.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2e4b6cf2.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2f010692.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2f5cd89b.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b2fbcca27.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b30134f5a.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b306e1cf6.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/20180601/5b10b30d42f4b.jpg" style=""/></p><p><img src="http://shop.crmeb.net/public/uploads/editor/5b10ac1b55ed3.jpg"/>第三篇文章第三篇文章第三篇文章第三篇文章第三篇文章第三篇文章<img src="http://shop.crmeb.net/public/system/uploads/editor/20180601/15278168718912.jpg"/><br/></p>');

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_qrcode`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_qrcode` (
  `id` int(10) unsigned NOT NULL COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型',
  `third_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `ticket` varchar(255) NOT NULL COMMENT '二维码参数',
  `expire_seconds` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `url` varchar(255) NOT NULL COMMENT '微信访问url',
  `qrcode_url` varchar(255) NOT NULL COMMENT '微信二维码url',
  `scan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被扫的次数'
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='微信二维码管理表';

--
-- 转存表中的数据 `eb_wechat_qrcode`
--

INSERT INTO `eb_wechat_qrcode` (`id`, `third_type`, `third_id`, `ticket`, `expire_seconds`, `status`, `add_time`, `url`, `qrcode_url`, `scan`) VALUES
(16, 'spread', 98, 'gQEN8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyM2RrVGdnUDBiRy0xMDAwMDAwM3IAAgTKr9laAwQAAAAA', 0, 1, '1524215754', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEN8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyM2RrVGdnUDBiRy0xMDAwMDAwM3IAAgTKr9laAwQAAAAA', 'http://weixin.qq.com/q/023dkTggP0bG-10000003r', 0),
(17, 'spread', 97, 'gQGz8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZWlHamdJUDBiRy0xMDAwMHcwM3kAAgTLr9laAwQAAAAA', 0, 1, '1524215755', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGz8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZWlHamdJUDBiRy0xMDAwMHcwM3kAAgTLr9laAwQAAAAA', 'http://weixin.qq.com/q/02eiGjgIP0bG-10000w03y', 0),
(18, 'spread', 96, 'gQFn8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEpCOWdoUDBiRy0xMDAwMHcwMzAAAgTLr9laAwQAAAAA', 0, 1, '1524215755', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFn8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMEpCOWdoUDBiRy0xMDAwMHcwMzAAAgTLr9laAwQAAAAA', 'http://weixin.qq.com/q/020JB9ghP0bG-10000w030', 0),
(19, 'spread', 95, 'gQEz8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyalBoaWdEUDBiRy0xMDAwMDAwMzgAAgTMr9laAwQAAAAA', 0, 1, '1524215756', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEz8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyalBoaWdEUDBiRy0xMDAwMDAwMzgAAgTMr9laAwQAAAAA', 'http://weixin.qq.com/q/02jPhigDP0bG-100000038', 0),
(20, 'spread', 94, 'gQEY8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyU29hRWdHUDBiRy0xMDAwME0wM1YAAgTMr9laAwQAAAAA', 0, 1, '1524215756', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEY8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyU29hRWdHUDBiRy0xMDAwME0wM1YAAgTMr9laAwQAAAAA', 'http://weixin.qq.com/q/02SoaEgGP0bG-10000M03V', 0),
(21, 'spread', 93, 'gQEG8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWWR5TWdjUDBiRy0xMDAwMDAwM04AAgTMr9laAwQAAAAA', 0, 1, '1524215756', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEG8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWWR5TWdjUDBiRy0xMDAwMDAwM04AAgTMr9laAwQAAAAA', 'http://weixin.qq.com/q/02YdyMgcP0bG-10000003N', 0),
(22, 'spread', 92, 'gQHX8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRE44bmdwUDBiRy0xMDAwMHcwM3MAAgTNr9laAwQAAAAA', 0, 1, '1524215757', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHX8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRE44bmdwUDBiRy0xMDAwMHcwM3MAAgTNr9laAwQAAAAA', 'http://weixin.qq.com/q/02DN8ngpP0bG-10000w03s', 0),
(23, 'spread', 91, 'gQFK8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySUJtYWgwUDBiRy0xMDAwME0wM0gAAgTNr9laAwQAAAAA', 0, 1, '1524215757', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFK8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySUJtYWgwUDBiRy0xMDAwME0wM0gAAgTNr9laAwQAAAAA', 'http://weixin.qq.com/q/02IBmah0P0bG-10000M03H', 0),
(24, 'spread', 90, 'gQEB8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYllPUmh1UDBiRy0xMDAwME0wM0kAAgTNr9laAwQAAAAA', 0, 1, '1524215757', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEB8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYllPUmh1UDBiRy0xMDAwME0wM0kAAgTNr9laAwQAAAAA', 'http://weixin.qq.com/q/02bYORhuP0bG-10000M03I', 1),
(25, 'spread', 89, 'gQGT8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydG82MmctUDBiRy0xMDAwMDAwMy0AAgTOr9laAwQAAAAA', 0, 1, '1524215758', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGT8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydG82MmctUDBiRy0xMDAwMDAwMy0AAgTOr9laAwQAAAAA', 'http://weixin.qq.com/q/02to62g-P0bG-10000003-', 0),
(26, 'spread', 88, 'gQGQ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWElybmh4UDBiRy0xMDAwMGcwM3cAAgTOr9laAwQAAAAA', 0, 1, '1524215758', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGQ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWElybmh4UDBiRy0xMDAwMGcwM3cAAgTOr9laAwQAAAAA', 'http://weixin.qq.com/q/02XIrnhxP0bG-10000g03w', 0),
(27, 'spread', 87, 'gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaV9Lc2hlUDBiRy0xMDAwMDAwM1IAAgTPr9laAwQAAAAA', 0, 1, '1524215759', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaV9Lc2hlUDBiRy0xMDAwMDAwM1IAAgTPr9laAwQAAAAA', 'http://weixin.qq.com/q/02i_KsheP0bG-10000003R', 0),
(28, 'spread', 86, 'gQEF8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ080SGhoUDBiRy0xMDAwMHcwM3QAAgTPr9laAwQAAAAA', 0, 1, '1524215759', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEF8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQ080SGhoUDBiRy0xMDAwMHcwM3QAAgTPr9laAwQAAAAA', 'http://weixin.qq.com/q/02CO4HhhP0bG-10000w03t', 0),
(29, 'spread', 85, 'gQF08jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMUQyY2h2UDBiRy0xMDAwMDAwM0IAAgTPr9laAwQAAAAA', 0, 1, '1524215759', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF08jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMUQyY2h2UDBiRy0xMDAwMDAwM0IAAgTPr9laAwQAAAAA', 'http://weixin.qq.com/q/021D2chvP0bG-10000003B', 0),
(30, 'spread', 84, 'gQEi8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZjZWVmdMUDBiRy0xMDAwMGcwM0gAAgTRr9laAwQAAAAA', 0, 1, '1524215761', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEi8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZjZWVmdMUDBiRy0xMDAwMGcwM0gAAgTRr9laAwQAAAAA', 'http://weixin.qq.com/q/02f6VVgLP0bG-10000g03H', 0),
(31, 'spread', 83, 'gQHK8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyd2pBUGdsUDBiRy0xMDAwME0wM3AAAgTRr9laAwQAAAAA', 0, 1, '1524215761', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHK8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyd2pBUGdsUDBiRy0xMDAwME0wM3AAAgTRr9laAwQAAAAA', 'http://weixin.qq.com/q/02wjAPglP0bG-10000M03p', 0),
(32, 'spread', 82, 'gQHe8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ0haS2dpUDBiRy0xMDAwMGcwM2MAAgTRr9laAwQAAAAA', 0, 1, '1524215761', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHe8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ0haS2dpUDBiRy0xMDAwMGcwM2MAAgTRr9laAwQAAAAA', 'http://weixin.qq.com/q/02gHZKgiP0bG-10000g03c', 0),
(33, 'spread', 81, 'gQHa8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydEljVmdYUDBiRy0xMDAwME0wM28AAgTSr9laAwQAAAAA', 0, 1, '1524215762', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHa8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydEljVmdYUDBiRy0xMDAwME0wM28AAgTSr9laAwQAAAAA', 'http://weixin.qq.com/q/02tIcVgXP0bG-10000M03o', 0),
(34, 'spread', 80, 'gQFr8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyLUQ0bGg4UDBiRy0xMDAwMGcwM0gAAgTSr9laAwQAAAAA', 0, 1, '1524215762', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFr8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyLUQ0bGg4UDBiRy0xMDAwMGcwM0gAAgTSr9laAwQAAAAA', 'http://weixin.qq.com/q/02-D4lh8P0bG-10000g03H', 0),
(35, 'spread', 79, 'gQHw8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT1Z0SmdvUDBiRy0xMDAwME0wM1UAAgTSr9laAwQAAAAA', 0, 1, '1524215762', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHw8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT1Z0SmdvUDBiRy0xMDAwME0wM1UAAgTSr9laAwQAAAAA', 'http://weixin.qq.com/q/02OVtJgoP0bG-10000M03U', 0),
(36, 'spread', 78, 'gQF38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycURIeGdPUDBiRy0xMDAwME0wM3gAAgQ1sNlaAwQAAAAA', 0, 1, '1524215861', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycURIeGdPUDBiRy0xMDAwME0wM3gAAgQ1sNlaAwQAAAAA', 'http://weixin.qq.com/q/02qDHxgOP0bG-10000M03x', 0),
(37, 'spread', 77, 'gQFd8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycVNuemczUDBiRy0xMDAwME0wM3YAAgQ2sNlaAwQAAAAA', 0, 1, '1524215862', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFd8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycVNuemczUDBiRy0xMDAwME0wM3YAAgQ2sNlaAwQAAAAA', 'http://weixin.qq.com/q/02qSnzg3P0bG-10000M03v', 0),
(38, 'spread', 76, 'gQGZ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycW5JOWdtUDBiRy0xMDAwME0wMzkAAgTYhnVYAwQAAAAA', 0, 1, '1524215862', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGZ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycW5JOWdtUDBiRy0xMDAwME0wMzkAAgTYhnVYAwQAAAAA', 'http://weixin.qq.com/q/02qnI9gmP0bG-10000M039', 0),
(39, 'spread', 75, 'gQG68DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRnpRSWdQUDBiRy0xMDAwMHcwM28AAgR_g3VYAwQAAAAA', 0, 1, '1524215862', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG68DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRnpRSWdQUDBiRy0xMDAwMHcwM28AAgR_g3VYAwQAAAAA', 'http://weixin.qq.com/q/02FzQIgPP0bG-10000w03o', 0),
(40, 'spread', 74, 'gQE28TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ24yTGhTUDBiRy0xMDAwME0wM1kAAgQCz2xYAwQAAAAA', 0, 1, '1524215863', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQE28TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZ24yTGhTUDBiRy0xMDAwME0wM1kAAgQCz2xYAwQAAAAA', 'http://weixin.qq.com/q/02gn2LhSP0bG-10000M03Y', 0),
(41, 'spread', 73, 'gQGF8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTlR4S2duUDBiRy0xMDAwMDAwM3EAAgTleGpYAwQAAAAA', 0, 1, '1524215863', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGF8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTlR4S2duUDBiRy0xMDAwMDAwM3EAAgTleGpYAwQAAAAA', 'http://weixin.qq.com/q/02NTxKgnP0bG-10000003q', 0),
(42, 'spread', 72, 'gQGu8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeVVOVWdhUDBiRy0xMDAwMHcwM3QAAgQB8GRYAwQAAAAA', 0, 1, '1524215863', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGu8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeVVOVWdhUDBiRy0xMDAwMHcwM3QAAgQB8GRYAwQAAAAA', 'http://weixin.qq.com/q/02yUNUgaP0bG-10000w03t', 0),
(43, 'spread', 71, 'gQGD8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZEV5ZGhWUDBiRy0xMDAwME0wM0MAAgSM4GRYAwQAAAAA', 0, 1, '1524215864', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGD8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZEV5ZGhWUDBiRy0xMDAwME0wM0MAAgSM4GRYAwQAAAAA', 'http://weixin.qq.com/q/02dEydhVP0bG-10000M03C', 0),
(44, 'spread', 70, 'gQGr8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT1FLVWhOUDBiRy0xMDAwMDAwMzcAAgQYr1hYAwQAAAAA', 0, 1, '1524215864', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGr8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyT1FLVWhOUDBiRy0xMDAwMDAwMzcAAgQYr1hYAwQAAAAA', 'http://weixin.qq.com/q/02OQKUhNP0bG-100000037', 0),
(45, 'spread', 69, 'gQHg8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycm9WS2hIUDBiRy0xMDAwMGcwM3EAAgQ6q1hYAwQAAAAA', 0, 1, '1524215864', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHg8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycm9WS2hIUDBiRy0xMDAwMGcwM3EAAgQ6q1hYAwQAAAAA', 'http://weixin.qq.com/q/02roVKhHP0bG-10000g03q', 0),
(46, 'spread', 68, 'gQE68TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYnd6NWhlUDBiRy0xMDAwMHcwMzYAAgTpqlhYAwQAAAAA', 0, 1, '1524215865', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQE68TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYnd6NWhlUDBiRy0xMDAwMHcwMzYAAgTpqlhYAwQAAAAA', 'http://weixin.qq.com/q/02bwz5heP0bG-10000w036', 0),
(47, 'spread', 67, 'gQH88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaHNxTWdyUDBiRy0xMDAwMDAwM00AAgRColhYAwQAAAAA', 0, 1, '1524215865', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyaHNxTWdyUDBiRy0xMDAwMDAwM00AAgRColhYAwQAAAAA', 'http://weixin.qq.com/q/02hsqMgrP0bG-10000003M', 0),
(48, 'spread', 66, 'gQH88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyME15emdNUDBiRy0xMDAwMGcwM3IAAgSWQ1VYAwQAAAAA', 0, 1, '1524215865', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH88DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyME15emdNUDBiRy0xMDAwMGcwM3IAAgSWQ1VYAwQAAAAA', 'http://weixin.qq.com/q/020MyzgMP0bG-10000g03r', 0),
(49, 'spread', 65, 'gQF/8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydmVWeWh4UDBiRy0xMDAwMGcwM2EAAgRKuFRYAwQAAAAA', 0, 1, '1524215866', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF/8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydmVWeWh4UDBiRy0xMDAwMGcwM2EAAgRKuFRYAwQAAAAA', 'http://weixin.qq.com/q/02veVyhxP0bG-10000g03a', 0),
(50, 'spread', 1, 'gQFm8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycG9JSGd5UDBiRy0xMDAwMHcwMzUAAgQ6sNlaAwQAAAAA', 0, 1, '1524215866', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFm8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycG9JSGd5UDBiRy0xMDAwMHcwMzUAAgQ6sNlaAwQAAAAA', 'http://weixin.qq.com/q/02poIHgyP0bG-10000w035', 1),
(51, 'spread', 99, 'gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN2lyN2dmUDBiRy0xMDAwMGcwM1AAAgTVsdlaAwQAAAAA', 0, 1, '1524216277', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN2lyN2dmUDBiRy0xMDAwMGcwM1AAAgTVsdlaAwQAAAAA', 'http://weixin.qq.com/q/027ir7gfP0bG-10000g03P', 0),
(52, 'spread', 100, 'gQG38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNWJycWhsUDBiRy0xMDAwMDAwM0kAAgRDht5aAwQAAAAA', 0, 1, '1525494069', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNWJycWhsUDBiRy0xMDAwMDAwM0kAAgRDht5aAwQAAAAA', 'http://weixin.qq.com/q/025brqhlP0bG-10000003I', 0),
(53, 'spread', 101, 'gQGp8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUlVQVGdfUDBiRy0xMDAwMHcwM00AAgRDht5aAwQAAAAA', 0, 1, '1525706157', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGp8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUlVQVGdfUDBiRy0xMDAwMHcwM00AAgRDht5aAwQAAAAA', 'http://weixin.qq.com/q/02RUPTg_P0bG-10000w03M', 0),
(54, 'spread', 102, 'gQGJ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZWZzUWdjUDBiRy0xMDAwME0wM2cAAgS62vtaAwQAAAAA', 0, 1, '1526454970', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGJ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZWZzUWdjUDBiRy0xMDAwME0wM2cAAgS62vtaAwQAAAAA', 'http://weixin.qq.com/q/02efsQgcP0bG-10000M03g', 0),
(55, '651911616', 0, 'gQES8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVFAtQ2hpUDBiRy0xMDAwMHcwNzMAAgT2i-9aAwQAAAAA', 0, 1, '1526696951', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQES8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVFAtQ2hpUDBiRy0xMDAwMHcwNzMAAgT2i-9aAwQAAAAA', 'http://weixin.qq.com/q/02TP-ChiP0bG-10000w073', 0),
(56, '12345', 0, 'gQES8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVFAtQ2hpUDBiRy0xMDAwMHcwNzMAAgT2i-9aAwQAAAAA', 0, 1, '1526699931', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQES8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVFAtQ2hpUDBiRy0xMDAwMHcwNzMAAgT2i-9aAwQAAAAA', 'http://shopcrmebcs.kycms.net/wap', 0),
(57, 'category', 0, 'gQHH8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTndZUGhTUDBiRy0xMDAwME0wN3gAAgTIpf9aAwQAAAAA', 0, 1, '1526703560', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHH8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTndZUGhTUDBiRy0xMDAwME0wN3gAAgTIpf9aAwQAAAAA', 'http://weixin.qq.com/q/02NwYPhSP0bG-10000M07x', 0),
(58, 'egory', 0, 'gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUNLd2dGUDBiRy0xMDAwMDAwN3IAAgTOpv9aAwQAAAAA', 0, 1, '1526703981', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUNLd2dGUDBiRy0xMDAwMDAwN3IAAgTOpv9aAwQAAAAA', 'http://weixin.qq.com/q/02aCKwgFP0bG-10000007r', 0),
(59, 'ory', 0, 'gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUNLd2dGUDBiRy0xMDAwMDAwN3IAAgTOpv9aAwQAAAAA', 0, 1, '1526704155', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH58TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUNLd2dGUDBiRy0xMDAwMDAwN3IAAgTOpv9aAwQAAAAA', 'http://weixin.qq.com/q/02aCKwgFP0bG-10000007r', 0),
(60, 'spread', 106, 'gQEh8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMXdtaWczUDBiRy0xMDAwMDAwM3MAAgSPrQxbAwQAAAAA', 0, 1, '1527557519', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEh8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMXdtaWczUDBiRy0xMDAwMDAwM3MAAgSPrQxbAwQAAAAA', 'http://weixin.qq.com/q/021wmig3P0bG-10000003s', 0),
(61, 'spread', 105, 'gQGO8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycHR2RWdoUDBiRy0xMDAwMHcwM2kAAgSPrQxbAwQAAAAA', 0, 1, '1527557519', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGO8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycHR2RWdoUDBiRy0xMDAwMHcwM2kAAgSPrQxbAwQAAAAA', 'http://weixin.qq.com/q/02ptvEghP0bG-10000w03i', 1),
(62, 'spread', 104, 'gQGx8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydVJpR2hzUDBiRy0xMDAwMGcwM3IAAgSPrQxbAwQAAAAA', 0, 1, '1527557519', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGx8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydVJpR2hzUDBiRy0xMDAwMGcwM3IAAgSPrQxbAwQAAAAA', 'http://weixin.qq.com/q/02uRiGhsP0bG-10000g03r', 0),
(63, 'spread', 103, 'gQFn8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQTV0QWhGUDBiRy0xMDAwMGcwMzUAAgSPrQxbAwQAAAAA', 0, 1, '1527557519', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFn8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQTV0QWhGUDBiRy0xMDAwMGcwMzUAAgSPrQxbAwQAAAAA', 'http://weixin.qq.com/q/02A5tAhFP0bG-10000g035', 0),
(64, 'spread', 107, 'gQH_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTkFrX2dWUDBiRy0xMDAwME0wMzMAAgSX7QxbAwQAAAAA', 0, 1, '1527573911', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTkFrX2dWUDBiRy0xMDAwME0wMzMAAgSX7QxbAwQAAAAA', 'http://weixin.qq.com/q/02NAk_gVP0bG-10000M033', 0),
(65, 'spread', 108, 'gQE_8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMTdBdWdUUDBiRy0xMDAwME0wMzYAAgSL8wxbAwQAAAAA', 0, 1, '1527575435', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQE_8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMTdBdWdUUDBiRy0xMDAwME0wMzYAAgSL8wxbAwQAAAAA', 'http://weixin.qq.com/q/0217AugTP0bG-10000M036', 0),
(66, 'spread', 110, 'gQGw8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMXM5bGdzUDBiRy0xMDAwMHcwMzAAAgTk5ONaAwQAAAAA', 0, 1, '1527589639', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGw8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMXM5bGdzUDBiRy0xMDAwMHcwMzAAAgTk5ONaAwQAAAAA', 'http://weixin.qq.com/q/021s9lgsP0bG-10000w030', 0),
(67, 'spread', 109, 'gQFu8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMmRGemhpUDBiRy0xMDAwMHcwM20AAgTl5ONaAwQAAAAA', 0, 1, '1527589639', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFu8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyMmRGemhpUDBiRy0xMDAwMHcwM20AAgTl5ONaAwQAAAAA', 'http://weixin.qq.com/q/022dFzhiP0bG-10000w03m', 0),
(68, 'spread', 111, 'gQGn8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTFZvYWgyUDBiRy0xMDAwME0wM3oAAgTk5ONaAwQAAAAA', 0, 1, '1527643134', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGn8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTFZvYWgyUDBiRy0xMDAwME0wM3oAAgTk5ONaAwQAAAAA', 'http://weixin.qq.com/q/02LVoah2P0bG-10000M03z', 0),
(69, 'spread', 114, 'gQF_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAya0ZsT2dtUDBiRy0xMDAwMGcwM1cAAgTi5ONaAwQAAAAA', 0, 1, '1527727735', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAya0ZsT2dtUDBiRy0xMDAwMGcwM1cAAgTi5ONaAwQAAAAA', 'http://weixin.qq.com/q/02kFlOgmP0bG-10000g03W', 0),
(70, 'spread', 113, 'gQGf8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySVRYbGdTUDBiRy0xMDAwMGcwM1oAAgTj5ONaAwQAAAAA', 0, 1, '1527727735', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGf8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySVRYbGdTUDBiRy0xMDAwMGcwM1oAAgTj5ONaAwQAAAAA', 'http://weixin.qq.com/q/02ITXlgSP0bG-10000g03Z', 0),
(71, 'spread', 112, 'gQFm8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybk5fWmd6UDBiRy0xMDAwMGcwM1gAAgTj5ONaAwQAAAAA', 0, 1, '1527727735', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFm8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybk5fWmd6UDBiRy0xMDAwMGcwM1gAAgTj5ONaAwQAAAAA', 'http://weixin.qq.com/q/02nN_ZgzP0bG-10000g03X', 0),
(72, 'spread', 117, 'gQGj8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyc2hzWmgxUDBiRy0xMDAwME0wM0wAAgTh5ONaAwQAAAAA', 0, 1, '1527901534', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGj8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyc2hzWmgxUDBiRy0xMDAwME0wM0wAAgTh5ONaAwQAAAAA', 'http://weixin.qq.com/q/02shsZh1P0bG-10000M03L', 0),
(73, 'spread', 116, 'gQF38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydDFVUmhwUDBiRy0xMDAwMHcwM2oAAgTi5ONaAwQAAAAA', 0, 1, '1527901534', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF38TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydDFVUmhwUDBiRy0xMDAwMHcwM2oAAgTi5ONaAwQAAAAA', 'http://weixin.qq.com/q/02t1URhpP0bG-10000w03j', 0),
(74, 'spread', 115, 'gQH78TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN0JYbGc5UDBiRy0xMDAwMHcwMy0AAgTi5ONaAwQAAAAA', 0, 1, '1527901534', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH78TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN0JYbGc5UDBiRy0xMDAwMHcwMy0AAgTi5ONaAwQAAAAA', 'http://weixin.qq.com/q/027BXlg9P0bG-10000w03-', 0),
(75, 'spread', 118, 'gQEW8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycTJKNGdtUDBiRy0xMDAwMDAwM0IAAgTh5ONaAwQAAAAA', 0, 1, '1527926617', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEW8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAycTJKNGdtUDBiRy0xMDAwMDAwM0IAAgTh5ONaAwQAAAAA', 'http://weixin.qq.com/q/02q2J4gmP0bG-10000003B', 0),
(76, 'spread', 140, 'gQGy8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQlA1eWczUDBiRy0xMDAwMDAwMzAAAgS7luhaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGy8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyQlA1eWczUDBiRy0xMDAwMDAwMzAAAgS7luhaAwQAAAAA', 'http://weixin.qq.com/q/02BP5yg3P0bG-100000030', 0),
(77, 'spread', 139, 'gQFS8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNll3YWdDUDBiRy0xMDAwMDAwM2oAAgQ0DedaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFS8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyNll3YWdDUDBiRy0xMDAwMDAwM2oAAgQ0DedaAwQAAAAA', 'http://weixin.qq.com/q/026YwagCP0bG-10000003j', 0),
(78, 'spread', 138, 'gQHK8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybnhoa2dCUDBiRy0xMDAwMGcwM2oAAgQ0DedaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHK8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybnhoa2dCUDBiRy0xMDAwMGcwM2oAAgQ0DedaAwQAAAAA', 'http://weixin.qq.com/q/02nxhkgBP0bG-10000g03j', 0),
(79, 'spread', 137, 'gQGR8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZjNHRmhHUDBiRy0xMDAwMGcwMzAAAgQ0DedaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGR8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyZjNHRmhHUDBiRy0xMDAwMGcwMzAAAgQ0DedaAwQAAAAA', 'http://weixin.qq.com/q/02f3GFhGP0bG-10000g030', 0),
(80, 'spread', 136, 'gQGa8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOGgwYmgzUDBiRy0xMDAwMDAwM2UAAgQ1DedaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGa8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyOGgwYmgzUDBiRy0xMDAwMDAwM2UAAgQ1DedaAwQAAAAA', 'http://weixin.qq.com/q/028h0bh3P0bG-10000003e', 0),
(81, 'spread', 135, 'gQHo8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeWZZRWhvUDBiRy0xMDAwME0wM3MAAgQ1DedaAwQAAAAA', 0, 1, '1528193698', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHo8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyeWZZRWhvUDBiRy0xMDAwME0wM3MAAgQ1DedaAwQAAAAA', 'http://weixin.qq.com/q/02yfYEhoP0bG-10000M03s', 0),
(82, 'spread', 134, 'gQG28DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySnVSZmh2UDBiRy0xMDAwMHcwM3kAAgQ2DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG28DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySnVSZmh2UDBiRy0xMDAwMHcwM3kAAgQ2DedaAwQAAAAA', 'http://weixin.qq.com/q/02JuRfhvP0bG-10000w03y', 0),
(83, 'spread', 133, 'gQG98DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyelFwRWdnUDBiRy0xMDAwMHcwM3kAAgQ2DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG98DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyelFwRWdnUDBiRy0xMDAwMHcwM3kAAgQ2DedaAwQAAAAA', 'http://weixin.qq.com/q/02zQpEggP0bG-10000w03y', 0),
(84, 'spread', 132, 'gQGk8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY3VSa2d4UDBiRy0xMDAwMHcwM2wAAgQ2DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGk8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyY3VSa2d4UDBiRy0xMDAwMHcwM2wAAgQ2DedaAwQAAAAA', 'http://weixin.qq.com/q/02cuRkgxP0bG-10000w03l', 0),
(85, 'spread', 131, 'gQFt8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVGpWTGc3UDBiRy0xMDAwME0wM0IAAgQ3DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFt8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVGpWTGc3UDBiRy0xMDAwME0wM0IAAgQ3DedaAwQAAAAA', 'http://weixin.qq.com/q/02TjVLg7P0bG-10000M03B', 0),
(86, 'spread', 130, 'gQFl8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTUg4RGdaUDBiRy0xMDAwME0wM3YAAgQ3DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFl8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTUg4RGdaUDBiRy0xMDAwME0wM3YAAgQ3DedaAwQAAAAA', 'http://weixin.qq.com/q/02MH8DgZP0bG-10000M03v', 0),
(87, 'spread', 129, 'gQEP8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVWIxOWh1UDBiRy0xMDAwMHcwM3UAAgQ4DedaAwQAAAAA', 0, 1, '1528193699', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEP8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyVWIxOWh1UDBiRy0xMDAwMHcwM3UAAgQ4DedaAwQAAAAA', 'http://weixin.qq.com/q/02Ub19huP0bG-10000w03u', 0),
(88, 'spread', 128, 'gQF_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTURWbmhvUDBiRy0xMDAwMGcwM3AAAgTd5ONaAwQAAAAA', 0, 1, '1528193700', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF_8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTURWbmhvUDBiRy0xMDAwMGcwM3AAAgTd5ONaAwQAAAAA', 'http://weixin.qq.com/q/02MDVnhoP0bG-10000g03p', 0),
(89, 'spread', 127, 'gQGT8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN0hZVWhsUDBiRy0xMDAwMHcwM3YAAgTd5ONaAwQAAAAA', 0, 1, '1528193700', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGT8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyN0hZVWhsUDBiRy0xMDAwMHcwM3YAAgTd5ONaAwQAAAAA', 'http://weixin.qq.com/q/027HYUhlP0bG-10000w03v', 0),
(90, 'spread', 126, 'gQFQ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUVka2hjUDBiRy0xMDAwMHcwM3kAAgTe5ONaAwQAAAAA', 0, 1, '1528193700', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFQ8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUVka2hjUDBiRy0xMDAwMHcwM3kAAgTe5ONaAwQAAAAA', 'http://weixin.qq.com/q/02aEdkhcP0bG-10000w03y', 0),
(91, 'spread', 125, 'gQED8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRC1LT2hTUDBiRy0xMDAwME0wM2oAAgTe5ONaAwQAAAAA', 0, 1, '1528193702', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQED8jwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyRC1LT2hTUDBiRy0xMDAwME0wM2oAAgTe5ONaAwQAAAAA', 'http://weixin.qq.com/q/02D-KOhSP0bG-10000M03j', 0),
(92, 'spread', 124, 'gQFI8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydHhEbWh5UDBiRy0xMDAwME0wM20AAgTe5ONaAwQAAAAA', 0, 1, '1528193702', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFI8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAydHhEbWh5UDBiRy0xMDAwME0wM20AAgTe5ONaAwQAAAAA', 'http://weixin.qq.com/q/02txDmhyP0bG-10000M03m', 0),
(93, 'spread', 123, 'gQFg8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyX3lzYWhCUDBiRy0xMDAwMGcwM2IAAgTf5ONaAwQAAAAA', 0, 1, '1528193702', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQFg8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyX3lzYWhCUDBiRy0xMDAwMGcwM2IAAgTf5ONaAwQAAAAA', 'http://weixin.qq.com/q/02_ysahBP0bG-10000g03b', 0),
(94, 'spread', 122, 'gQG-8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUpBWmd2UDBiRy0xMDAwMDAwM20AAgTf5ONaAwQAAAAA', 0, 1, '1528193702', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQG-8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyYUpBWmd2UDBiRy0xMDAwMDAwM20AAgTf5ONaAwQAAAAA', 'http://weixin.qq.com/q/02aJAZgvP0bG-10000003m', 0),
(95, 'spread', 121, 'gQGv8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybHM1RmdvUDBiRy0xMDAwMGcwMzgAAgTg5ONaAwQAAAAA', 0, 1, '1528193702', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGv8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAybHM1RmdvUDBiRy0xMDAwMGcwMzgAAgTg5ONaAwQAAAAA', 'http://weixin.qq.com/q/02ls5FgoP0bG-10000g038', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_reply`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_reply` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '微信关键字回复id',
  `key` varchar(64) NOT NULL COMMENT '关键字',
  `type` varchar(32) NOT NULL COMMENT '回复类型',
  `data` text NOT NULL COMMENT '回复数据',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='微信关键字回复表';

--
-- 转存表中的数据 `eb_wechat_reply`
--

INSERT INTO `eb_wechat_reply` (`id`, `key`, `type`, `data`, `status`, `hide`) VALUES
(1, 'subscribe', 'text', '{"content":"crmeb"}', 1, 1),
(9, 'default', 'image', '{"src":"\\/public\\/uploads\\/wechat\\/image\\/5b042ca618139.jpg","media_id":"6sFx6PzPF2v_Lv4FGOMzzwcwmM2wuoA63ZMSxiN-7DY"}', 1, 1),
(17, '123', 'text', '{"content":"nihao "}', 1, 0),
(18, '测试', 'text', '{"content":"\\u6d4b\\u8bd5"}', 1, 0),
(19, 'sdfasdff ', 'text', '{"content":"adfasdfadfadsfadasdfasdfasdfasdfasdfasdfasdfasdfadfasdfadfasdfasdfadf"}', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_template`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_template` (
  `id` int(10) unsigned NOT NULL COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='微信模板';

--
-- 转存表中的数据 `eb_wechat_template`
--

INSERT INTO `eb_wechat_template` (`id`, `tempkey`, `name`, `content`, `tempid`, `add_time`, `status`) VALUES
(3, 'OPENTM200565259', '订单发货提醒', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'CTzsKBHnyaMYL7zCqjuXFsUmrO5jB-Rp_-awryxLalQ', '1515052638', 1),
(4, 'OPENTM413386489', '订单收货通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单状态：{{keyword2.DATA}}\n收货时间：{{keyword3.DATA}}\n商品详情：{{keyword4.DATA}}\n{{remark.DATA}}', 'booE7nSZ-7zOGpYAJj6RdgSODZ7ZvUPaAYuk6JFtCyw', '1515052765', 1),
(5, 'OPENTM410119152', '退款进度通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单金额：{{keyword2.DATA}}\n下单时间：{{keyword3.DATA}}\n{{remark.DATA}}', 'QWc2PYbZZAd4JNloOfjdXyPl9d1EIefH5GOtJXUKL64', '1515053049', 1),
(6, 'OPENTM405847076', '帐户资金变动提醒', '{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'LiZWDICBbmllH1SND-fxrkwvFhzgyVPZi62I8fXmi-U', '1515053127', 1),
(7, 'OPENTM207707249', '订单发货提醒', '\n{{first.DATA}}\n商品明细：{{keyword1.DATA}}\n下单时间：{{keyword2.DATA}}\n配送地址：{{keyword3.DATA}}\n配送人：{{keyword4.DATA}}\n联系电话：{{keyword5.DATA}}\n{{remark.DATA}}', 'hC9PFuxOKq6u5kNZyl6VdHGgAuA6h5I3ztpuDk1ioAk', '1515053313', 1),
(8, 'OPENTM408237350', '服务进度提醒', '{{first.DATA}}\n服务类型：{{keyword1.DATA}}\n服务状态：{{keyword2.DATA}}\n服务时间：{{keyword3.DATA}}\n{{remark.DATA}}', 'WZgIZrj4Fkakozt4x2fvvYnF26UAaFQOAFHBVJDSqeQ', '1515483915', 1),
(9, 'OPENTM204431262', '客服通知提醒', '{{first.DATA}}\n客户名称：{{keyword1.DATA}}\n客服类型：{{keyword2.DATA}}\n提醒内容：{{keyword3.DATA}}\n通知时间：{{keyword4.DATA}}\n{{remark.DATA}}', 'asQ_qAjpfMoKaTuXOua-pHEpzasOcSytIRrk7thQDHM', '1515484354', 1),
(10, 'OPENTM407456411', '拼团成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n团购商品：{{keyword2.DATA}}\n{{remark.DATA}}', 'SE9gjavWbF-MZ93wq7LmxW8uiZ20-tuhjmEjJMTiO24', '1520063823', 1),
(11, 'OPENTM401113750', '拼团失败通知', '{{first.DATA}}\n拼团商品：{{keyword1.DATA}}\n商品金额：{{keyword2.DATA}}\n退款金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'Z3QVa8l_4y18HQY56ELY7QwpTz-yLAeL_VKtgS4mvcE', '1520064059', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eb_wechat_user`
--

CREATE TABLE IF NOT EXISTS `eb_wechat_user` (
  `uid` int(10) unsigned NOT NULL COMMENT '微信用户id',
  `unionid` varchar(30) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) NOT NULL COMMENT '用户头像',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint(5) unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint(3) unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int(10) unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int(11) unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int(11) DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` int(11) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) DEFAULT NULL COMMENT '用户类型'
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='微信用户表';

--
-- 转存表中的数据 `eb_wechat_user`
--

INSERT INTO `eb_wechat_user` (`uid`, `unionid`, `openid`, `routine_openid`, `nickname`, `headimgurl`, `sex`, `city`, `language`, `province`, `country`, `remark`, `groupid`, `tagid_list`, `subscribe`, `subscribe_time`, `add_time`, `stair`, `second`, `order_stair`, `order_second`, `now_money`, `session_key`, `user_type`) VALUES
(89, 'oZEAhs4B_DCM8ZC8OsCPDZnnFxj4', 'oM0DqvmIbs6YU82qzgUdeICcZXoU', '', '～', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzR7tvgrCiabUuJ4QaO7QLFRAicz1tTog4AYZ1TqAFWgjTFE4QN6RmaVrchfqQXEbBEWd861H2JYTbRiaOG7gLzWHiaa/132', 1, '江门', 'zh_CN', '广东', '中国', '', 0, '', 1, 1523940282, 1523940283, 0, 0, 0, 0, 0, NULL, ''),
(88, 'oZEAhs_rAM64hYhxmtKWGSTMxW4U', 'oM0DqvgZiW7C2PuCQO3MtADQraNk', '', '黑心土豆', 'http://thirdwx.qlogo.cn/mmopen/Licf0c7Y1EHdnic0uaxPyDmoF8ibYRLSojlZ5OWiaIkVm2QN8NeaicOvbKQSpEux3z5omq9n01IaEfAGy89hBwRD6GsXqSyKw9Xlm/132', 1, '', 'zh_CN', '', '阿尔巴尼亚', '', 0, '', 1, 1523929169, 1523929170, 0, 0, 0, 0, 0, NULL, ''),
(87, 'oZEAhs_UoS_dHYQAA_1H2BBarOlg', 'oM0DqvlIEzZ4tQStW9bpfpD3IfxY', '', '春风', 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKOwOFxQSzEpASdhbX0IpwA43aUUpsHT6Wicm5VsaHDRjJmNKVvia6qUaPFcanI8rVWm6NVbibR3S95Q/132', 2, '宝鸡', 'zh_CN', '陕西', '中国', '', 0, '', 0, 0, 1523882865, 0, 0, 0, 0, 0, NULL, ''),
(86, 'oZEAhs1QB-Ar4p6856WD9olqd1ng', 'oM0DqvuEU9xKmIjcnaD0VJyuWALE', '', '.°F', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epLLXBLBLgticiaE1fvw7svKfYhibvQC2MeUeMO00F0ZHdmAfOx4qz2uCU1hzxelExsdpJSVX5cs4ntw/132', 1, '咸阳', 'zh_CN', '陕西', '中国', '', 0, '', 0, 0, 1523872179, 0, 0, 0, 0, 0, NULL, ''),
(85, 'oZEAhs0ItuPwdNZWn55WTXlsK1og', 'oM0DqvuHojxVHpNL-IgqcOew54eI', '', '韬', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIFgGwHiax7ZvJVzXeCsjNdsuEicY4LkUE89p7xN3lxRtczGuic4KBmGuia6Olzh4X6FaZSjl6hhWoSLw/132', 1, '宝鸡', 'zh_CN', '陕西', '中国', '', 0, '', 0, 0, 1523869342, 0, 0, 0, 0, 0, NULL, ''),
(84, 'oZEAhs8tyYarcuWXerBIaWxvO1U0', 'oM0DqvgBrOOfG61-1s0qq9oV2K50', '', '`', 'http://thirdwx.qlogo.cn/mmopen/vi_32/bxH37kgdXHSicKvW59q8poIwf6asDISLMHiaIIl2Wn0twgetEMicHVt1I27TYKb2CskbF8y2yRySProX62r9ibia6vw/132', 2, '榆林', 'zh_CN', '陕西', '中国', '', 0, '', 0, 0, 1523867894, 0, 0, 0, 0, 0, NULL, ''),
(83, 'oZEAhs-5rhpVIHiA-8Xm2IIUPlH8', 'oM0DqvsRmrVGAnlYvy0mJvOGF8hM', '', '快乐一生', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqNKGqOqXlibicWtvmiaV95IOnKktVd9YwZs3zAlApQic7Nicgbr9yrbgWicb8k9U4CPdI81Sr3LPbnBLBQ/132', 2, '宝鸡', 'zh_CN', '陕西', '中国', '', 0, '', 0, 0, 1523867344, 0, 0, 0, 0, 0, NULL, ''),
(82, 'oZEAhszxbgId3TLkVabRMs9QAge4', 'oM0DqvmkjPzjVfQA5hwTCm0lhfX4', '', '笑而不语。', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3FBwodMrPV01QCoGOfGNvA71lZicogjZLiapoDG4h4WibNmXVX5u144PocicrMXVyMn0IgoRRJnfHiayUCo9vI5FAOG/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 100, '100', 1, 1513839855, 1523865638, 0, 0, 0, 0, 0, NULL, ''),
(81, 'oZEAhs9YuNGHtKcyfrTX86XoNL_0', 'oM0Dqvq9ihIj0Ab-XnGuV5g3NuJ4', '', '梁海涛', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3FzEY3nSLVkwKtibGTgKYpBsFnJkItDcxoj30e8jiclGHTLYBTXGaLAQ54Aarbw0E6sgaAoGnKDS1AA/132', 1, '咸阳', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1481162479, 1523865291, 0, 0, 0, 0, 0, NULL, ''),
(80, 'oZEAhsxEq5D8IjEK0_dDgZcCSFjE', 'oM0DqvtvV2W0X4N-rmD21QmaO_qI', '', '吖呵', 'http://thirdwx.qlogo.cn/mmopen/vi_32/fvdkD06ibYtLs5vbEOrFpQWQDv6f4hzMTia3Kic3dibqGDiakias6EdCCCFxO8xpnQRibl42ibKZxOofSUIHMZu6sIO6Cg/132', 2, '', 'zh_CN', '', '文莱', '', 0, '', 0, 0, 1523864987, 0, 0, 0, 0, 0, NULL, ''),
(79, 'oZEAhs22V3nOHd0TMpVZN20meybI', 'oM0DqvmS5OKM7SAGMqHTDIlO5uqs', '', '尕男、   尕美', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eotA7qNjpXLsUWIuUicYSfxkwlnfjY1vWQfdTVZ8LYM5IeoaFvkwELGRLhpEGF4tutezDPn6175yfg/132', 1, '', 'zh_CN', '上奥地利', '奥地利', '', 0, '', 0, 0, 1523864769, 0, 0, 0, 0, 0, NULL, ''),
(78, 'oZEAhsxFzBYADoOL1-3WB6H--6tM', 'oM0DqvuN73UmvihnMn7p2ImDTh9c', '', 'Xiao D', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJNxMqDoNODfCw4TbaJ9pPyI4Yf9QoiapaOVjoUXT1AWdwCoZVM4Ugrq5nNvuyujRg5WbATrLCkC1A/132', 1, '', 'zh_CN', '巴黎', '法国', '', 0, '', 0, 0, 1523864750, 0, 0, 0, 0, 0, NULL, ''),
(77, 'oZEAhs_ybRlXTADb_gcIetfBZU20', 'oM0DqvpEsSCaxXSncfwKPv0s9m_E', '', '骑着蜗牛上高速', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEaWJno88Fhn7LTGoicGxr5uuF4GmIdibgDthufCSbyDUia0sv5UCR9L8e0fWou4gyyzJPhEiaYXhA2Lk/132', 1, '', 'zh_CN', '', '博茨瓦纳', '', 0, '', 1, 1520933114, 1523862189, 0, 0, 0, 0, 0, NULL, ''),
(76, 'oZEAhs5IxsQQZIwuMqpI-kdJGBxY', 'oM0Dqvm5I-g8agR7tItpGDutoOyQ', '', '男同学', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEeiciaGG0TJyeqMt7N750vYo8HfK9LcO6cZ1FBHkuUK8DES73IczwqcAn390munGMlKaUlt8icrORZI/132', 1, '杭州', 'zh_CN', '浙江', '中国', '', 0, '', 0, 1523803732, 1523803733, 0, 0, 0, 0, 0, NULL, ''),
(75, 'oZEAhs6vX4bU4_ISykkhBMcQb7l8', 'oM0Dqvg79AXnrqTHt93W_MAjjtoM', '', '袁磊', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLC5FQyp3AtZ086HnBNuPdkrLqm8BtZ4lzspAGxsBIanMc4JxYibDmOeFQ4rNkIo6z2VG0NjxwChReA/132', 1, '', 'zh_CN', '', '安道尔', '', 0, '', 0, 1523803091, 1523803091, 0, 0, 0, 0, 0, NULL, ''),
(74, 'oZEAhs2Ie7smS4WTjt1GxPeyMPoI', 'oM0Dqvh0FpC-FFb8hrEs5LJ39FVM', '', '少年加油', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3FBwodMrPV0zlt1uYT4ZrrmjX6tGh2MX6MaGHQRTsxCfFxwqgic5hXCKvAyBuPicXYRVgKiaE7z9yHJBEprO6WmvR/132', 0, '', 'zh_CN', '', '', '', 0, '', 1, 1523777362, 1523777363, 0, 0, 0, 0, 0, NULL, ''),
(1, 'oZEAhs4cdgfY1PKZq2jxroAX-mQo', 'oM0DqvosMrcu9NCKfqbN8rqw20Hg', '', '无懈可击', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEJp7NAdwBo3icWticiaibgDIRbiag2Ubpp5AiaN3H1iaKqbu2M07IFDibLpQcvQb8mIIcnr1VFRFGx0YMwTdw/132', 1, '', 'zh_CN', '', '阿尔巴尼亚', '', 108, '108', 1, 1516872539, 1520043907, 1, 1, 0, 0, 1604, NULL, ''),
(66, 'oZEAhs773jpACk7vWkRBMeQC61E0', 'oM0DqviuwsisppUghnG8ozoz8g9k', '', '弱冠而立_', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3ECbC3H8tHEYibicdkhRILBb6aIJXNXrLhv7u8l10GVPwVRVAQdvSdfjMXVJicmWMd6bicHKg4PjSaQsA/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1527823813, 1523512902, 0, 0, 0, 0, 0, NULL, ''),
(67, 'oZEAhs-LjFnVx443aA8s29DjkvQk', 'oM0DqvmJlfuMSb0DBkmrYliF4HyQ', '', '在路上……', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhYkRcBgqQYfCXsU0lrt8hcw0qHyGevE8OOx9p7icqH39bEXtfKJB7uo0dOnnfbo8RGN0nYQQDyuibaIyJBSFkoIiaic/132', 1, '', 'zh_CN', '', '埃及', '', 0, '', 1, 1523513490, 1523513492, 0, 0, 0, 0, 0, NULL, ''),
(68, 'oZEAhszOxg96YzmnpNpUC_NFQhS4', 'oM0Dqvo-lE-hm37CuHKdaIZJbSGY', '', '共同好友，', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3HJq7X1Vd5aNjBibGMx5XJlFbBeicmo8ms3BTUusHtBTvJE767sFu5Tcs2ZQ8Q87XibwOHsA5pL0OptGiaIMjvYXeqY/132', 2, '', 'zh_CN', '', '塞拉利昂', '', 0, '', 1, 1511577781, 1523515670, 0, 0, 0, 0, 0, NULL, ''),
(69, 'oZEAhs8X7-FXiJxFsdpyU1sTFZFk', 'oM0Dqvvvdw7OAGYJFtMHnHI57Jyo', '', '众邦科技张鹏飞', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhbdKXQEAaJgBply1MCKqlH3iaKMEEUwanJ6l4GAhibCNhKyMf9YK3UzdS6fJiaKBXGaU6hLUy9C0jk56vqNBwVPGbd/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1499064998, 1523526469, 0, 0, 0, 0, 0, NULL, ''),
(70, 'oZEAhszb425RBrgGKmw4mppDMTYw', 'oM0DqvtHj5camdkjZsHG0av9ds6E', '', '互联网从业者 徐斗明', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicJhKy7BCxmAVk8iaB5ALCibRthYufBmqAeuLibBiaDppbRtOMNib5iat9yDBOGsnYWia9WfjoO8ISonoSDngkyuAG85d/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1481273192, 1523545008, 0, 0, 0, 0, 0, NULL, ''),
(71, 'oZEAhs2QaXroTQXQPT6jxSFhFI74', 'oM0DqvnVqgHmYjr-5Avvf-t2dL68', '', '一个粉丝', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6mkLr2t1OgjRuhsC3nzVLoKLkYte7sibCGoJ5aPUOiaQZ4QEvbwibYQfMZo6YTNYxkDPbdC4piaAubTY/132', 1, '', 'zh_CN', '', '中国', '', 0, '', 0, 1523583116, 1523583116, 0, 0, 0, 0, 0, NULL, ''),
(72, 'oZEAhs0N_3gm6I5ZbJ7cOMBVDgt0', 'oM0DqvsZL1jYPDEYkHbb6vjyByqs', '', '暮鼓晨钟', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic1bsThicpUP2LosDiaTk0wvEsAicRDCx4phN9UA4BGDic8owJ3AevRPiboMlx8dug94hoOUQdtcjyNiax5pFSvqv2TIe6/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1518058739, 1523624575, 0, 0, 0, 0, 0, NULL, ''),
(73, 'oZEAhs2TGKe6dn4l1kKMUCv296TE', 'oM0Dqvsk5rgIDtCdF0LrFhYa86bs', '', '木子刀削面', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QScGmHny7EUEOgTKuoNdM8PmuTSZaPdvgyjvUUBic08N9w2jlicowiaODW64xrBibwMMEjYvaVD8KA85I/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1513760217, 1523669212, 0, 0, 0, 0, 0, NULL, ''),
(65, 'oZEAhs5ELOKSQaoDyZxhnuRtVhkg', 'oM0DqvkOpWVqOKQU4Ljpw4eBWBs0', '', '༄许のོ࿆༘荣耀࿐', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEaDyfibNrmKR9UK2c18sUPVr7bnHGzwkJpYDoK4sIibO1pMJHINPklmqAEP9E0pIFGFFtR5muDfzPy/132', 1, '安康', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1527503016, 1523512454, 0, 0, 0, 0, 0, NULL, ''),
(90, 'oZEAhs0ls08Abk7ajRgiUsRKACnQ', 'oM0DqvpYXSwoxMvqv2k-CjYKE35Q', '', '天会亮、心会暖', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHJzlaWskqtgN5qCAojya1LHbjlhIHzWOBehN78WTuAqUjOnUUbSpJKpYJlaysap1HUpfzeQg0ugP/132', 1, '成都', 'zh_CN', '四川', '中国', '', 2, '2', 1, 1513908852, 1523953618, 1, 0, 0, 0, 0, NULL, ''),
(91, 'oZEAhs8NDcoRRYRqpGXs5WE_KlJw', 'oM0DqvoTPA4ZUMY4ig8D2fmWGUFk', '', '易刚', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6sExpjn17C4jM5FNl1XYNYnOtLK70IaZD1I398XiaicibgJ5YILDicTxnnzBqMRtZ9g7FYuDnicrEaoaq/132', 1, '广州', 'zh_CN', '广东', '中国', '', 0, '', 1, 1524012802, 1524012803, 0, 0, 0, 0, 0, NULL, ''),
(92, 'oZEAhs_7k1rqWC_j1tUeqp0G836Q', 'oM0DqvgjEVSG5LRPBfoSFj7ccHo4', '', '小七', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhbkbZYxohLPpNYpTiaG0N209aJBCsjZQ3et0HxIA1V5V7PBsCto4cEia1g2kcQbFqDaGV0PRy6vLMLgXMlsTaG5Be/132', 0, '', 'zh_CN', '', '', '', 0, '', 1, 1524018973, 1524018974, 0, 0, 0, 0, 0, NULL, ''),
(93, 'oZEAhsxD--P9kKy1O6bh-9M3BHeE', 'oM0DqvgDZFE9CUnGRxUBsI0D3hrs', '', '宁都同城网：秒杀抢购、新闻曝光', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHMf4qceUqUUv0Q73jf9gsJruvpL1JW9QtaRLfbcCwdXDrTDchA9MOYn8jperuMxJdNMqbfEgNlb7/132', 1, '赣州', 'zh_CN', '江西', '中国', '', 0, '', 0, 1524024395, 1524024396, 0, 0, 0, 0, 0, NULL, ''),
(94, 'oZEAhs641ekLPu0JLgpOQkoT1SPs', 'oM0Dqvgjff8daqYdBtNljwVDz3I4', '', '´`背影﹖ノ', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5piaOoibvYtu5sCzh8wYwyFkoWPVibbvdzPckMeODuWoOklNHcY2WfQ16dXAy0BZ1OJLhxUicsvXWZD0w1NHiaL5KWASrJgnDK9QDI/132', 1, '', 'zh_CN', '', '波兰', '', 0, '', 0, 1524033656, 1524033657, 0, 0, 0, 0, 0, NULL, ''),
(95, 'oZEAhs4qeXPY5o4ZlAM2Vx1thcfY', 'oM0DqvrRPuh1KaEKU1pVFjfhN6P4', '', 'A-云谷执行13726029377微信轰炸', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAVpTW6LLlv4ibg6OMKSgriaJjxlTDGFfbklydcd3yLHgms7iaL94ulleic0G50ZxjeAvpyME4bciaeT3g/132', 1, '中山', 'zh_CN', '广东', '中国', '', 0, '', 1, 1524103398, 1524103399, 0, 0, 0, 0, 0, NULL, ''),
(96, 'oZEAhswmetnEUDs8OBDYJGhDvD8E', 'oM0Dqvrcjb9XPJMbjYajBjzNQkYk', '', '千丝湾', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHH5tfwPRHN7sZAtPb1lOfpsibvlmsUyfbV18iaZsv6PdhNrpOTbzTfFTq0ibfiazFvMAgEezRDJ2RNJv/132', 1, '南通', 'zh_CN', '江苏', '中国', '', 0, '', 1, 1524160930, 1524160931, 0, 0, 0, 0, 0, NULL, ''),
(97, 'oZEAhs71KzTZ2-i8jlRXrMYt2zdg', 'oM0DqvnYE3bqHBRsCXLJcBjg7l5o', '', '东来网络科技', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaELnL8lIIxAjddntdciaglL1PSic11IE2s7fxxN6fsv8gK7YqOe3CCXWQMpbPckRcjl8QYWwYkzE6iaRg/132', 1, '', 'zh_CN', '黑龙江', '中国', '', 0, '', 1, 1524188592, 1524188593, 0, 0, 0, 0, 0, NULL, ''),
(98, 'oZEAhswl81K8VhNHOMapvCSAvT14', 'oM0DqvpRl0PbxVgBnP-5J9D6n_00', '', 'james王剑', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QSVmS3yVzJY4XE7KQp1LUnjb2uOicPPEMxiarzcic0yzIhc6GCWujdpUGJXyQtiaK44HVYu0cI4f89lJB0yUsjiaurJMg/132', 1, '长宁', 'zh_CN', '上海', '中国', '', 0, '', 1, 1524196851, 1524196852, 0, 0, 0, 0, 0, NULL, ''),
(99, 'oZEAhs4JqhW2s28oTMtEIblGXW88', 'oM0Dqvt5S_dD2i3dyH1XJxEYXb_I', '', '@', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFha8bUVd3N5cqnVmricxhcLZYL21hgy0JL1exHGpo44YXb9Hg3szLO5v7ic2iaS2Za7USCNHoNL6TAlicwzkBX7dRpzC/132', 2, '运城', 'zh_CN', '山西', '中国', '', 0, '', 1, 1524216272, 1524216273, 0, 0, 0, 0, 0, NULL, ''),
(100, '', 'oEOgU0fooseyVwOowq3YVWl5rtP8', '', '天会亮、心会暖', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhLoI4BCkSKysaiaoNJQssbTfzTEUibSvp1Ht54vIWFqfanOXhpnUj7bRticXYLU5biapHMicdibQBIEibQ/132', 1, 'Chengdu', 'zh_CN', 'Sichuan', 'China', NULL, 0, NULL, 1, NULL, 1525488703, 1, 3, 0, 4, 9607, 'oDS/8FP/iuH61pVneAfasw==', 'routine'),
(101, '', 'oEOgU0azofRzKDft5GirbcWQJ0eI', '', '小小', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIBodhAzhMQrMo63ehXAbfTIduMphKWfCrRBRNv9J5TKWxKNcYdt27FzHvKoVicbndPES54cW0T5A/132', 2, '', 'zh_CN', '', '', NULL, 0, NULL, 1, NULL, 1525686081, 0, 0, 0, 0, 99928, 'wvM6JqVsaOPpWwvQ8BhVDg==', 'routine'),
(102, '', 'oEOgU0Rj4vdxBcxhSt4UCpVcgj00', '', '全', 'https://wx.qlogo.cn/mmopen/vi_32/g1JibSd7LaYzic2Qgevvh8EaQw6CMjrFexZX04xjRYpAMM4kgwueMKDJzFN7wzzUQCMn6OTlAicKVbZPfianN3yWibw/132', 1, 'Ankang', 'zh_CN', 'Shaanxi', 'China', NULL, 0, NULL, 1, NULL, 1526436286, 3, 0, 4, 0, 218789, 'JGe4ZGvvNS9WElpfg4xF8Q==', 'routine'),
(103, '', 'oEOgU0U85OH2sfrl0jD8zfoPyElo', '', '梁海涛', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqMkmjZTCbYAagHZIZDibTwPuF3ib0tPTgnicq6WBEH3uBhuUibAbiaIxAQQc4iaC9uRn3xicLsEEflGLCrA/132', 1, 'Xianyang', 'zh_CN', 'Shaanxi', 'China', NULL, 0, NULL, 1, NULL, 1527136911, 0, 0, 0, 0, 0, 'LfWJKGvDhFD7KAoBm7ZPxw==', 'routine'),
(104, '', 'oEOgU0e4Urd4_IfRBJLiPwSJoPN8', '', '弱冠而立_', 'https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCkbJCnP7UVYaSPQoNQskAhavjy67fErqP1wib3ncbQqK3TdqV2JiaicYusJegPbPl6UkbzbX0CLkMfQ/132', 1, 'Xi''an', 'zh_CN', 'Shaanxi', 'China', NULL, 0, NULL, 1, NULL, 1527141387, 0, 0, 0, 0, 0, 'PpAJxM5WT6wz0KKuJNi1bQ==', 'routine'),
(105, '', 'oEOgU0Qz0NWEukhXFr6g2Yudv9S8', '', '༄许のོ࿆༘荣耀࿐', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLajLoBBBPgMI0nb3Mn0IKt7KXUtIlfVtv2pRbN2ab8cA84OuZm6mWD2tHLsu300ysRaM1ViaMpvIw/132', 1, 'Ankang', 'zh_CN', 'Shaanxi', 'China', NULL, 0, NULL, 1, NULL, 1527509461, 1, 0, 0, 0, 0, '4N6HEmyHF+1qcHbethlVhQ==', 'routine'),
(106, 'oZEAhsyKAZNFcL9alyyxyOjOvjYM', 'oM0DqvoDw_Bj_FYyCl5UYNHZTGVg', '', '乌骓马（马超）', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEK1wO2ntoAxOItY5pYc04Yic9dhg00eO0J2KO0Fb4ibzl6ibjs0h93xUvsaLkIUwspgOgw8ic1tF1yXKA/132', 1, '', 'zh_CN', '', '关岛', '', 0, '', 1, 1527525664, 1527525584, 0, 0, 0, 0, 0, NULL, NULL),
(107, 'oZEAhswETas3TE-3F8zLoGJJqM8Y', 'oM0Dqvoyp2ncc0P9Nz1WLTqkb9Os', NULL, '闫鑫', 'http://thirdwx.qlogo.cn/mmopen/vi_32/2Cyo35shrRG745IKmgZskRhSRMYgeO3LaT8mYPvStyzvMF8pA2jSBWCf3g7pNLDLSZr982iaK8Eia8lKSEZjD5YA/132', 1, '海口', 'en', '海南', '中国', NULL, 0, NULL, 0, NULL, 1527569659, 0, 0, 0, 0, 0, NULL, NULL),
(108, '', '', 'oEOgU0fooseyVwOowq3YVWl5rtP8', '天会亮、心会暖', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhLoI4BCkSKysaiaoNJQssbTfzTEUibSvp1Ht54vIWFqfanOXhpnUj7bRticXYLU5biapHMicdibQBIEibQ/132', 1, '成都', 'zh_CN', '四川', '中国', NULL, 0, NULL, 1, NULL, 1527574686, 0, 0, 0, 0, 0, 'c40suj5/yUCXj+gJJU4WFg==', 'routine'),
(109, 'oZEAhs2j83830v4F36xls9zHNOlg', 'oM0DqvgZG4qPgJvj-ZdjVc-qkoRE', NULL, '等风来，随风去', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCx03Y4hkSeVgQZGZLYDSQz6SZ7PDDNSLj3RxVPYqibMvW4cIOicPSSmA0xbrL9DY2RkunA1pulAs9g/132', 1, '', 'zh_CN', '杜兰戈', '墨西哥', '', 0, '', 1, 1526700009, 1527587946, 0, 0, 0, 0, 0, NULL, NULL),
(110, 'oZEAhswXF5UPVjfHlTWtBU9SDvng', 'oM0DqvibF2-nz4ujphkHC95qQ12s', NULL, 'A众邦网络科技', 'http://thirdwx.qlogo.cn/mmopen/CibtHwDFib6wWv4NQeQnG6Dp6o8SqrtTU1uSMjYs1Os4koGnIiblETISZYQtDuQOaHQKzMHqlIaTZjnqibiabc8n57ZLkjZpHZYB9/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1527823856, 1527588015, 0, 0, 0, 0, 0, NULL, NULL),
(111, '', NULL, 'oEOgU0Qz0NWEukhXFr6g2Yudv9S8', '༄许のོ࿆༘荣耀࿐', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLajLoBBBPgMI0nb3Mn0IKt7KXUtIlfVtv2pRbN2ab8cA84OuZm6mWD2tHLsu300ysRaM1ViaMpvIw/132', 1, '安康', 'zh_CN', '陕西', '中国', NULL, 0, NULL, 1, NULL, 1527642751, 0, 0, 0, 0, 0, 'EIAGCn6QQ4t7GxDVvY1Omg==', 'routine'),
(112, 'oZEAhs6gCHXiZGq4TkU1fJU-VFeI', 'oM0DqvtGGUXqz_YuCn-7KMwX2g3Q', NULL, '最是人间留不住@辉少', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM65vogqibwss9lPzq0d5oYp4C8lcjGy2ibxniaBoic1HVCD6HEMUobIsYkkQ4vjrlEHhRU4wuSWpnkHUpZ5ClGveOuFfWQm8t9SU3g/132', 1, '广州', 'zh_CN', '广东', '中国', '', 0, '', 1, 1527674507, 1527674507, 0, 0, 0, 0, 0, NULL, NULL),
(113, 'oZEAhs5CE-lQKj7r-cYfWiNgE4jc', 'oM0Dqvg9USNnVBQPBRnnhvxdxUgA', NULL, '魑魅魍魉', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhaOHSaJPWdIib3wrnh4CiaicwMaZicqrBXcicqKr3rC0YpibKZXB46dvJCYD0cB7n3szOicIUb1xcybibo6qCFa854oaPDT/132', 1, '恩施', 'zh_CN', '湖北', '中国', '', 0, '', 1, 1525587457, 1527675646, 0, 0, 0, 0, 0, NULL, NULL),
(114, 'oZEAhs_IULuCUI10tUsCzEeVJ4yU', 'oM0Dqvvg_baH2178HthvQuoMDA-Y', NULL, '福州旅游通', 'http://thirdwx.qlogo.cn/mmopen/Licf0c7Y1EHdnic0uaxPyDmqnP5ZiaQvl09P1GNY2tWY8fNEPQKSDpT1iaMncGtk3vhtG4QnefnSAYRKycQDOZK8wjiaP3Cic9dJm5/132', 1, '福州', 'zh_CN', '福建', '中国', '', 0, '', 1, 1527682523, 1527682530, 0, 0, 0, 0, 0, NULL, NULL),
(115, 'oZEAhs7EIBAhwNKY5Za45RxikbtM', 'oM0DqvkhV-JkNLVjZzlQKu0yKnIY', NULL, '满招逊，谦受益', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3FYibias9GAOLIic4TkibRYEVSNNcjacK8zXkcFib1ZKkXLsHcrIDEINYHWHw3mqMpH9VlGOvciaW6Da33JD1dptZHXbN/132', 1, '佛山', 'zh_CN', '广东', '中国', '', 0, '', 0, 1527756526, 1527756527, 0, 0, 0, 0, 0, NULL, NULL),
(116, 'oZEAhs4WDFQjgnbF19-aDA7znDFM', 'oM0DqvjZyU5pCOlzvHs4NSruQwG8', NULL, '承阳-奥色认证摄影师', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM65vogqibwss9nd6ic9L7TetxIddnxs06tEd5yUnvKZGHSLcIIL2RMU3mf69uicNhp1YagS0SpKbmbEc1gnlh7vlnuqAmFkicXBgRI/132', 1, '深圳', 'zh_CN', '广东', '中国', '', 0, '', 1, 1527757036, 1527756868, 0, 0, 0, 0, 0, NULL, NULL),
(117, 'oZEAhs-xX0Qfjy-LWpYfTQz7jE90', 'oM0Dqvvk405vKG27LGSy5GDtBoEE', NULL, '山丘十八弯', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3UhvYnyPQ5NjdETUeeSKjKdNYE4ia8kic4Yv3OWEGribnoByibhnWQcF3UykXKK2gVZrUibIV6QMRy9ibJdnGIgSIsx1/132', 1, '福州', 'zh_CN', '福建', '中国', '', 0, '', 1, 1527873218, 1527873218, 0, 0, 0, 0, 0, NULL, NULL),
(118, 'oZEAhs6oEWWi8ElDBj4AO-3N-_k0', 'oM0Dqvl-rCPuFYVh0igg8nZJ7WRI', NULL, '满国耀', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzSCQRZWVvTvqT7k4CsBdzju9xeHph0alqia5DfHkF2eAodkgic911tAEklk8wCDb5wLVWMbOCPIdk2YEq2D0qmol2/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '101', 1, 1527926591, 1527926591, 0, 0, 0, 0, 0, NULL, NULL),
(119, 'oZEAhs_9ajURZnk86e7_540u9vEA', 'oM0DqvnBOeiE8ecmoDbhnJJSUBbM', NULL, 'ぃ绣滊泡泡℃', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEb9Eic5UlVEhZvhVA1iaIUPoHGSHjxD1ZD7icEGD4mU6T5SBNuvnmISMy0FBu85dIA9OQ1yuPU83kbF/132', 2, '东城', 'zh_CN', '北京', '中国', '', 0, '', 1, 1528006216, 1528006217, 0, 0, 0, 0, 0, NULL, NULL),
(120, 'oZEAhs-2D1fYiJhe54fQZpXep3IE', 'oM0Dqvt-JaqvPysVGlQjOoUfFmQk', NULL, 'CC', 'http://thirdwx.qlogo.cn/mmopen/OUicWJdJoz3GkhN64ic58QSaaYgEaYiaGuGPL5lOrGMKElnTibXrGWkDOdPsrIib39aPxeNAzOXtcPSNonCFPMfpxPWwTib4KweL3u/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1524534439, 1528108785, 0, 0, 0, 0, 0, NULL, NULL),
(121, 'oZEAhsy8QpqBhPMrvhZrkwP-6700', 'oM0Dqvvb2ipJnOLWlGGknG3Vrn8U', NULL, '快乐发明', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEdYG0UaxsI9H9a3MBu08QMqOADNeicwB2ntxJjydoGFicicWNmVaz3Mc3LUdvMuibbnCgL8U27ibiczWiae/132', 1, '温州', 'zh_CN', '浙江', '中国', '', 0, '', 0, 1528157964, 1528157965, 0, 0, 0, 0, 0, NULL, NULL),
(122, 'oZEAhs45fp8PvVsEyok-aZ7dyiqE', 'oM0DqvlzTRHtWHUWu5563udluSOU', NULL, '麦子', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKGC139BHEmqesxc2M1VLs1EyYsSsGPVL2VJFWEacWEOVtGTOyeGHXTqsxlHiaROlS7KoaW8fV33hQ/132', 1, '朝阳', 'zh_CN', '北京', '中国', '', 0, '', 1, 1524540795, 1528182394, 0, 0, 0, 0, 0, NULL, NULL),
(123, 'oZEAhs3ELOFDFEOHHd3gaLuG3Kak', 'oM0Dqvuy2MV_ZG7IZx2MeuAzqu68', NULL, '新大陆星驿付-4009972202', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHKMAnh3j7XMjEELtVtn0DovA8DjDasVWAx0g0NkyibGm8kfMNyI2qs5wa9HDibf7xcnHc6SkibSI2e9/132', 1, '石家庄', 'zh_CN', '河北', '中国', '', 0, '', 1, 1525238804, 1528182435, 0, 0, 0, 0, 0, NULL, NULL),
(124, 'oZEAhs6K0w0yXVc10NmFnw6WJJ8U', 'oM0DqvoroCAjnWipxTonRG8wto1A', NULL, 'GeGang', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6tic7jlbNicOZr1icgcNpwPTA0O8zAaMuo5ghxkxWMgknmaiaeGoDVPM1ueezDWQWPjNIBPSF2hQup4G/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1524907128, 1528182517, 0, 0, 0, 0, 0, NULL, NULL),
(125, 'oZEAhszn2X5D3_5AJpUVSPZ0en7w', 'oM0DqvtuwQcN6olr-NCAb6c4mBxs', NULL, '淡然(拼)', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHAR67K1rm023Gme9hou1AqQBDAsPiag3mdwuKZOfUqnDLS89rZdAU6ntXV2zx8fpgpibbXxianibRDrQ/132', 1, '', 'zh_CN', '', '安道尔', '', 0, '', 1, 1524789779, 1528182557, 0, 0, 0, 0, 0, NULL, NULL),
(126, 'oZEAhs0spzcBdW1T69VpE7mccmiY', 'oM0Dqvh5qWtUN3oUUTdD-ZfIPXCc', NULL, '无忧', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBhXVHdkeSxMFVrjL806zxicPvlNW1udrwxxpnkOP5pHaicZZicB4pUorlkKKmfhepiaoKgIibTrHYLH4A/132', 1, '合肥', 'zh_CN', '安徽', '中国', '', 0, '', 1, 1525351689, 1528182613, 0, 0, 0, 0, 0, NULL, NULL),
(127, 'oZEAhs6Ctk-2CYyzhtgAuf6MeXqM', 'oM0DqviOfP6JYVGrKAKBGsEOsiRg', NULL, '我可想笑', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHBYk6gtfYlmfUlrYPBibAjH7JgalRPYdQ1qCiaVGs9gNicTYyN7enAbTqfhtdIPvLLTDt0dRicSGGBic5/132', 1, '许昌', 'zh_CN', '河南', '中国', '', 0, '', 1, 1525509260, 1528183260, 0, 0, 0, 0, 0, NULL, NULL),
(128, 'oZEAhsztqGBzwepWNMsFuztXrqH8', 'oM0DqvnZCKDX3WmjLLdx9QYDuPcM', NULL, 'A骑着蜗牛漫步', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5ELNicaHrqhib1QMQ4nAiaeZX5mjqtlEtpAXfef55QInF0IYXgMRIuAVJD9F8ubBuHeErQYd7icqLvmtw9KfhJkecvzZNZG8uoIkc/132', 2, '', 'zh_CN', '', '阿尔巴尼亚', '', 0, '', 1, 1527176457, 1528183442, 0, 0, 0, 0, 0, NULL, NULL),
(129, 'oZEAhsyfzpe5B7M2EUJ-VOwbPpzc', 'oM0Dqvh1UXUwbHbEq9RDZ8uwjKZk', NULL, 'Eva', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5piaOoibvYtu5sCzh8wYwyFkjUrx5huniaBlmxLvffyJBy91r69piaXXc2Lpr4kpp1HZmYIm6xlgRqhUs1ibhu6FfXskysXP70ODo8/132', 2, '', 'zh_CN', '北苏瓦迪瓦', '马尔代夫', '', 0, '', 0, 1478593551, 1528184036, 0, 0, 0, 0, 0, NULL, NULL),
(130, 'oZEAhsyXvEKQwj2Xjwy84NKgFZeU', 'oM0DqvjGWhczNsotNLEY2ItzHDf8', NULL, '加油2018', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egES9l6N9Y1RmI6UN57bFp5dOMRJhOQgWJ0bUS46QrBSEFUnYS21wCDNkJtzNia4czR5BgWiaegvLTSw/132', 1, '长春', 'zh_CN', '吉林', '中国', '', 0, '', 0, 1525762762, 1528184410, 0, 0, 0, 0, 0, NULL, NULL),
(131, 'oZEAhs0HjLISn4-pTFmyAXjyjEvM', 'oM0Dqvt1496QnyTPwZaW2M_7X0hU', NULL, '', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZxkWQuJ7ibGPkMGP02qZYEcZIrTtiaNic4Wl2o9IBQWXDwLoZTfrSBSRFMibXNVE319D2Bvz8iawZHRs87DeeG6g0xw/132', 1, '', 'zh_CN', '慕尼黑', '德国', '', 0, '', 1, 1527079458, 1528184506, 0, 0, 0, 0, 0, NULL, NULL),
(132, 'oZEAhsxY7pE0mHmUCKPqC3KDtc9Q', 'oM0Dqvj97NouIW6cJ3Ywol5wEgFU', NULL, '李南', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic3ib8ibWFbYc4FrFLJzOOgk7YyDQkwP8ep9RQdqicJaq3iaxkNk2bcN3ur13HZXe6ibA7bX6RhEWOUiacFwibPO4dqOVf0/132', 1, '大连', 'zh_CN', '辽宁', '中国', '', 0, '', 1, 1525269304, 1528184756, 0, 0, 0, 0, 0, NULL, NULL),
(133, 'oZEAhs6KX9wHuPP0UbxLliFiUims', 'oM0Dqvu10DmITNY9pkCHWg9TBcaU', NULL, '暮潇凝月', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHAFPZQib6pibyf0mWlAenW8fia6pW8gTGzjUxgYfEmtau8edibzv7KoXwr4d9WlOOwZWwauy41yd09pD/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1483008710, 1528186871, 0, 0, 0, 0, 0, NULL, NULL),
(134, 'oZEAhs5ecwmOw5zAGA9Sk9xaB_NU', 'oM0DqvobIbZ-biuIpwzVXK1TMjZ0', NULL, '刘海宁', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZ4AISLE952apxlbKhfPwe1bqJ5dhejsQk5EpqEyysibHkT7Gu1UxzPic2dNJnicHuSCXLIJ7QxtrZSUBb9BKEBMy1/132', 1, '西安', 'zh_CN', '陕西', '中国', '', 0, '', 1, 1478232024, 1528186916, 0, 0, 0, 0, 0, NULL, NULL),
(135, 'oZEAhsxygfMg_kzMJeiZbbIRqylA', 'oM0DqvnxjMni0VmbXkWXyGqOm8B4', NULL, 'A秦军13528862888', 'http://thirdwx.qlogo.cn/mmopen/Wq3vS5AejzRickJI0W4egEc5TRahqDlHna4CZynTUywbibo8R15omL8jwoUI4gl69PiaNnibAM5vibYk2eibFSVvjLQCU3kDXJnKjq/132', 1, '深圳', 'zh_CN', '广东', '中国', '', 0, '', 1, 1525401369, 1528187099, 0, 0, 0, 0, 0, NULL, NULL),
(136, 'oZEAhs2aJU1OkmehABhuUc_4qGL4', 'oM0DqvvWmnIhEdM4AXjRIGKKm8Do', NULL, '不知云', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDw0JeMmqY4B6wibu4BiaHQXcmqlx6Jn9X0fP8nCW7iafmWJbiaP4sOqYicYGDiaxtZuMLWjNbm46ibAwicjQ/132', 1, '南京', 'zh_CN', '江苏', '中国', '', 0, '', 1, 1524829543, 1528189614, 0, 0, 0, 0, 0, NULL, NULL),
(137, 'oZEAhs-ELaAM6dZX5s1hIM9IEBFM', 'oM0Dqvg1y_pcuW639HN8ysoZLQys', NULL, '黄白', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6otRE6FYDvbPO2Gh85ic8UTboZLicbcXJ6VhG99TGjzWAibyxcNepIOqUicLicXaz35icBJ0aVUT0ibFWSD/132', 2, '杭州', 'zh_CN', '浙江', '中国', '', 0, '', 1, 1528189859, 1528189860, 0, 0, 0, 0, 0, NULL, NULL),
(138, 'oZEAhs2DEYSGY3cJNLtbh8RLArf0', 'oM0DqvqtYNMe74rD7bVGla3h69r4', NULL, '张晓曦', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEL5tROjGtp1Z0LJ5FicecSEhSWjJrQ4vdR0Ef7ojGdmtfqfvEpswibbU8eibEBIdfic0JFaRG2KyPlf3w/132', 1, '深圳', 'zh_CN', '广东', '中国', '', 0, '', 1, 1524749586, 1528190623, 0, 0, 0, 0, 0, NULL, NULL),
(139, 'oZEAhs4w0Pj1Hi-LwcIEv5zdFrGI', 'oM0DqvimQah6M_5pj0jEfFgl9JgE', NULL, '孤独的守望者', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6uPcbwTExAxxAicoeqAsq0lYJad5aRgmUFbH5G5yQUSb3L7jqXlGoCzL8PjSpeJnHeAN1r5kiagYic7/132', 1, '', 'zh_CN', '沙迦', '阿拉伯联合酋长国', '', 0, '', 0, 1487226115, 1528192329, 0, 0, 0, 0, 0, NULL, NULL),
(140, 'oZEAhs79JmdFZ4vE-C0DGdS2fqZo', 'oM0DqvuWqF0cRMDzudHMsyUt6rrM', NULL, 'Bin', 'http://thirdwx.qlogo.cn/mmopen/dpqsibIBVFhZicramuhiboU6gbQxV9lVlUS6F6X4wqAMftqoVKan116dlKzbr8pQjIluCypSW4jacbW89PiaMqDXrJx0SzCjUpnC/132', 1, '厦门', 'zh_CN', '福建', '中国', '', 0, '', 1, 1524545291, 1528192412, 0, 0, 0, 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eb_article_category`
--
ALTER TABLE `eb_article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_cache`
--
ALTER TABLE `eb_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `eb_express`
--
ALTER TABLE `eb_express`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE;

--
-- Indexes for table `eb_routine_access_token`
--
ALTER TABLE `eb_routine_access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_routine_form_id`
--
ALTER TABLE `eb_routine_form_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_bargain`
--
ALTER TABLE `eb_store_bargain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_bargain_user`
--
ALTER TABLE `eb_store_bargain_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_bargain_user_help`
--
ALTER TABLE `eb_store_bargain_user_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_cart`
--
ALTER TABLE `eb_store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`uid`) USING BTREE,
  ADD KEY `goods_id` (`product_id`) USING BTREE,
  ADD KEY `uid` (`uid`,`is_pay`) USING BTREE,
  ADD KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  ADD KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `eb_store_category`
--
ALTER TABLE `eb_store_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`) USING BTREE,
  ADD KEY `is_base` (`is_show`) USING BTREE,
  ADD KEY `sort` (`sort`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE;

--
-- Indexes for table `eb_store_combination`
--
ALTER TABLE `eb_store_combination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_coupon`
--
ALTER TABLE `eb_store_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `coupon_time` (`coupon_time`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_issue`
--
ALTER TABLE `eb_store_coupon_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  ADD KEY `remain_count` (`remain_count`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_issue_user`
--
ALTER TABLE `eb_store_coupon_issue_user`
  ADD UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE;

--
-- Indexes for table `eb_store_coupon_user`
--
ALTER TABLE `eb_store_coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `end_time` (`end_time`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_fail` (`is_fail`) USING BTREE;

--
-- Indexes for table `eb_store_order`
--
ALTER TABLE `eb_store_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  ADD UNIQUE KEY `unique` (`unique`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `pay_price` (`pay_price`) USING BTREE,
  ADD KEY `paid` (`paid`) USING BTREE,
  ADD KEY `pay_time` (`pay_time`) USING BTREE,
  ADD KEY `pay_type` (`pay_type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `coupon_id` (`coupon_id`) USING BTREE;

--
-- Indexes for table `eb_store_order_cart_info`
--
ALTER TABLE `eb_store_order_cart_info`
  ADD UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  ADD KEY `cart_id` (`cart_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_order_status`
--
ALTER TABLE `eb_store_order_status`
  ADD KEY `oid` (`oid`) USING BTREE,
  ADD KEY `change_type` (`change_type`) USING BTREE;

--
-- Indexes for table `eb_store_pink`
--
ALTER TABLE `eb_store_pink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_product`
--
ALTER TABLE `eb_store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`) USING BTREE,
  ADD KEY `is_hot` (`is_hot`) USING BTREE,
  ADD KEY `is_benefit` (`is_benefit`) USING BTREE,
  ADD KEY `is_best` (`is_best`) USING BTREE,
  ADD KEY `is_new` (`is_new`) USING BTREE,
  ADD KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  ADD KEY `price` (`price`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE,
  ADD KEY `sort` (`sort`) USING BTREE,
  ADD KEY `sales` (`sales`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `is_postage` (`is_postage`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr`
--
ALTER TABLE `eb_store_product_attr`
  ADD KEY `store_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr_result`
--
ALTER TABLE `eb_store_product_attr_result`
  ADD UNIQUE KEY `product_id` (`product_id`) USING BTREE;

--
-- Indexes for table `eb_store_product_attr_value`
--
ALTER TABLE `eb_store_product_attr_value`
  ADD UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  ADD KEY `store_id` (`product_id`,`suk`) USING BTREE;

--
-- Indexes for table `eb_store_product_relation`
--
ALTER TABLE `eb_store_product_relation`
  ADD UNIQUE KEY `uid` (`uid`,`product_id`,`type`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `category` (`category`) USING BTREE;

--
-- Indexes for table `eb_store_product_reply`
--
ALTER TABLE `eb_store_product_reply`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `parent_id` (`reply_type`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `product_score` (`product_score`) USING BTREE,
  ADD KEY `service_score` (`service_score`) USING BTREE;

--
-- Indexes for table `eb_store_seckill`
--
ALTER TABLE `eb_store_seckill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `start_time` (`start_time`,`stop_time`),
  ADD KEY `is_del` (`is_del`),
  ADD KEY `is_hot` (`is_hot`),
  ADD KEY `is_show` (`status`),
  ADD KEY `add_time` (`add_time`),
  ADD KEY `sort` (`sort`),
  ADD KEY `is_postage` (`is_postage`);

--
-- Indexes for table `eb_store_service`
--
ALTER TABLE `eb_store_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_service_log`
--
ALTER TABLE `eb_store_service_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_store_visit`
--
ALTER TABLE `eb_store_visit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_admin`
--
ALTER TABLE `eb_system_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_system_attachment`
--
ALTER TABLE `eb_system_attachment`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `eb_system_config`
--
ALTER TABLE `eb_system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_config_tab`
--
ALTER TABLE `eb_system_config_tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_file`
--
ALTER TABLE `eb_system_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_group`
--
ALTER TABLE `eb_system_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_name` (`config_name`) USING BTREE;

--
-- Indexes for table `eb_system_group_data`
--
ALTER TABLE `eb_system_group_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_system_log`
--
ALTER TABLE `eb_system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `eb_system_menus`
--
ALTER TABLE `eb_system_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`) USING BTREE,
  ADD KEY `is_show` (`is_show`) USING BTREE,
  ADD KEY `access` (`access`) USING BTREE;

--
-- Indexes for table `eb_system_notice`
--
ALTER TABLE `eb_system_notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_system_notice_admin`
--
ALTER TABLE `eb_system_notice_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`,`notice_type`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `is_visit` (`is_visit`) USING BTREE,
  ADD KEY `is_click` (`is_click`) USING BTREE;

--
-- Indexes for table `eb_system_role`
--
ALTER TABLE `eb_system_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_user`
--
ALTER TABLE `eb_user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `account` (`account`) USING BTREE,
  ADD KEY `spreaduid` (`spread_uid`) USING BTREE,
  ADD KEY `level` (`level`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `is_promoter` (`is_promoter`) USING BTREE;

--
-- Indexes for table `eb_user_address`
--
ALTER TABLE `eb_user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `is_default` (`is_default`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE;

--
-- Indexes for table `eb_user_bill`
--
ALTER TABLE `eb_user_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openid` (`uid`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `pm` (`pm`) USING BTREE,
  ADD KEY `type` (`category`,`type`,`link_id`) USING BTREE;

--
-- Indexes for table `eb_user_enter`
--
ALTER TABLE `eb_user_enter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE,
  ADD KEY `province` (`province`,`city`,`district`) USING BTREE,
  ADD KEY `is_lock` (`is_lock`) USING BTREE,
  ADD KEY `is_del` (`is_del`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `eb_user_extract`
--
ALTER TABLE `eb_user_extract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extract_type` (`extract_type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `openid` (`uid`) USING BTREE,
  ADD KEY `fail_time` (`fail_time`);

--
-- Indexes for table `eb_user_group`
--
ALTER TABLE `eb_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_notice`
--
ALTER TABLE `eb_user_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_notice_see`
--
ALTER TABLE `eb_user_notice_see`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_user_recharge`
--
ALTER TABLE `eb_user_recharge`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  ADD KEY `uid` (`uid`) USING BTREE,
  ADD KEY `recharge_type` (`recharge_type`) USING BTREE,
  ADD KEY `paid` (`paid`) USING BTREE;

--
-- Indexes for table `eb_wechat_media`
--
ALTER TABLE `eb_wechat_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  ADD KEY `type_2` (`type`) USING BTREE;

--
-- Indexes for table `eb_wechat_message`
--
ALTER TABLE `eb_wechat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openid` (`openid`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE;

--
-- Indexes for table `eb_wechat_news`
--
ALTER TABLE `eb_wechat_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_wechat_news_category`
--
ALTER TABLE `eb_wechat_news_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eb_wechat_news_content`
--
ALTER TABLE `eb_wechat_news_content`
  ADD UNIQUE KEY `nid` (`nid`) USING BTREE;

--
-- Indexes for table `eb_wechat_qrcode`
--
ALTER TABLE `eb_wechat_qrcode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `third_type` (`third_type`,`third_id`) USING BTREE,
  ADD KEY `ticket` (`ticket`) USING BTREE;

--
-- Indexes for table `eb_wechat_reply`
--
ALTER TABLE `eb_wechat_reply`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `hide` (`hide`) USING BTREE;

--
-- Indexes for table `eb_wechat_template`
--
ALTER TABLE `eb_wechat_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tempkey` (`tempkey`) USING BTREE;

--
-- Indexes for table `eb_wechat_user`
--
ALTER TABLE `eb_wechat_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `openid` (`openid`) USING BTREE,
  ADD KEY `groupid` (`groupid`) USING BTREE,
  ADD KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  ADD KEY `add_time` (`add_time`) USING BTREE,
  ADD KEY `subscribe` (`subscribe`) USING BTREE,
  ADD KEY `unionid` (`unionid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eb_article_category`
--
ALTER TABLE `eb_article_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章分类id';
--
-- AUTO_INCREMENT for table `eb_express`
--
ALTER TABLE `eb_express`
  MODIFY `id` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',AUTO_INCREMENT=426;
--
-- AUTO_INCREMENT for table `eb_routine_access_token`
--
ALTER TABLE `eb_routine_access_token`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '小程序access_token表ID',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `eb_routine_form_id`
--
ALTER TABLE `eb_routine_form_id`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单ID表ID',AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `eb_store_bargain`
--
ALTER TABLE `eb_store_bargain`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `eb_store_bargain_user`
--
ALTER TABLE `eb_store_bargain_user`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `eb_store_bargain_user_help`
--
ALTER TABLE `eb_store_bargain_user_help`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `eb_store_cart`
--
ALTER TABLE `eb_store_cart`
  MODIFY `id` bigint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',AUTO_INCREMENT=813;
--
-- AUTO_INCREMENT for table `eb_store_category`
--
ALTER TABLE `eb_store_category`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `eb_store_combination`
--
ALTER TABLE `eb_store_combination`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `eb_store_coupon`
--
ALTER TABLE `eb_store_coupon`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `eb_store_coupon_issue`
--
ALTER TABLE `eb_store_coupon_issue`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `eb_store_coupon_user`
--
ALTER TABLE `eb_store_coupon_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `eb_store_order`
--
ALTER TABLE `eb_store_order`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',AUTO_INCREMENT=524;
--
-- AUTO_INCREMENT for table `eb_store_pink`
--
ALTER TABLE `eb_store_pink`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `eb_store_product`
--
ALTER TABLE `eb_store_product`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',AUTO_INCREMENT=656;
--
-- AUTO_INCREMENT for table `eb_store_product_reply`
--
ALTER TABLE `eb_store_product_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `eb_store_seckill`
--
ALTER TABLE `eb_store_seckill`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `eb_store_service`
--
ALTER TABLE `eb_store_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id';
--
-- AUTO_INCREMENT for table `eb_store_service_log`
--
ALTER TABLE `eb_store_service_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服用户对话记录表ID';
--
-- AUTO_INCREMENT for table `eb_store_visit`
--
ALTER TABLE `eb_store_visit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1103;
--
-- AUTO_INCREMENT for table `eb_system_admin`
--
ALTER TABLE `eb_system_admin`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `eb_system_attachment`
--
ALTER TABLE `eb_system_attachment`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `eb_system_config`
--
ALTER TABLE `eb_system_config`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `eb_system_config_tab`
--
ALTER TABLE `eb_system_config_tab`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置分类id',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `eb_system_file`
--
ALTER TABLE `eb_system_file`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件对比ID',AUTO_INCREMENT=4094;
--
-- AUTO_INCREMENT for table `eb_system_group`
--
ALTER TABLE `eb_system_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据ID',AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `eb_system_group_data`
--
ALTER TABLE `eb_system_group_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `eb_system_log`
--
ALTER TABLE `eb_system_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `eb_system_menus`
--
ALTER TABLE `eb_system_menus`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `eb_system_notice`
--
ALTER TABLE `eb_system_notice`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知模板id',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `eb_system_notice_admin`
--
ALTER TABLE `eb_system_notice_admin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录ID',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `eb_system_role`
--
ALTER TABLE `eb_system_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '身份管理id',AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `eb_user`
--
ALTER TABLE `eb_user`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `eb_user_address`
--
ALTER TABLE `eb_user_address`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `eb_user_bill`
--
ALTER TABLE `eb_user_bill`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `eb_user_enter`
--
ALTER TABLE `eb_user_enter`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eb_user_extract`
--
ALTER TABLE `eb_user_extract`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `eb_user_group`
--
ALTER TABLE `eb_user_group`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `eb_user_notice`
--
ALTER TABLE `eb_user_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eb_user_notice_see`
--
ALTER TABLE `eb_user_notice_see`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `eb_user_recharge`
--
ALTER TABLE `eb_user_recharge`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3136;
--
-- AUTO_INCREMENT for table `eb_wechat_media`
--
ALTER TABLE `eb_wechat_media`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `eb_wechat_message`
--
ALTER TABLE `eb_wechat_message`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户行为记录id';
--
-- AUTO_INCREMENT for table `eb_wechat_news`
--
ALTER TABLE `eb_wechat_news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `eb_wechat_news_category`
--
ALTER TABLE `eb_wechat_news_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息管理ID',AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `eb_wechat_qrcode`
--
ALTER TABLE `eb_wechat_qrcode`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `eb_wechat_reply`
--
ALTER TABLE `eb_wechat_reply`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `eb_wechat_template`
--
ALTER TABLE `eb_wechat_template`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `eb_wechat_user`
--
ALTER TABLE `eb_wechat_user`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',AUTO_INCREMENT=141;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
