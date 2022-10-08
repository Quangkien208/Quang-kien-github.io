-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 24, 2022 lúc 02:26 PM
-- Phiên bản máy phục vụ: 10.3.32-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tshoptminxyz_Shopcuana`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `giftcode` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `percent` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'true',
  `expire` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `homthinhbian`
--

CREATE TABLE `homthinhbian` (
  `id` int(255) NOT NULL,
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `giatien` varchar(999) NOT NULL DEFAULT '0',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_nopad_ci NOT NULL DEFAULT 'null',
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kimcuong`
--

CREATE TABLE `kimcuong` (
  `id` int(255) NOT NULL,
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `giatien` varchar(999) NOT NULL DEFAULT '0',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_nopad_ci NOT NULL DEFAULT 'null',
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsumohom`
--

CREATE TABLE `lichsumohom` (
  `id` bigint(20) NOT NULL,
  `taikhoan` varchar(100) NOT NULL,
  `kimcuong` bigint(20) NOT NULL,
  `time` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienquan`
--

CREATE TABLE `lienquan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(225) NOT NULL,
  `matkhau` varchar(225) NOT NULL,
  `giatien` int(11) NOT NULL,
  `rank` varchar(225) NOT NULL,
  `lienket` varchar(225) NOT NULL,
  `tuong` varchar(225) NOT NULL,
  `skin` varchar(225) NOT NULL,
  `ngoc` varchar(225) NOT NULL,
  `noibat` text CHARACTER SET utf32 NOT NULL,
  `nguoimua` varchar(225) NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lienquan`
--

INSERT INTO `lienquan` (`id`, `taikhoan`, `matkhau`, `giatien`, `rank`, `lienket`, `tuong`, `skin`, `ngoc`, `noibat`, `nguoimua`, `status`, `time`) VALUES
(1, 'admincp11', '25f9e794323b453885f5181f1b624d0b', 2000000, '5', '0', '100', '200', '200', '00', 'null', 1, 1628861847),
(2, 'ConCacDauCacMoiWebSaoLon@LuaDao.ConCac', 'fghgfh', 1010, '6', '0', '1010', '101010', '101010', '1010', 'null', 1, 1628865311),
(3, 'ConCacDauCacMoiWebSaoLon@LuaDao.ConCac', '25f9e794323b453885f5181f1b624d0b', 123213, '3', '0', '123123', '12312', '3123', '12312', 'null', 1, 1628865641);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napthe`
--

CREATE TABLE `napthe` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tranid` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `napthe`
--

INSERT INTO `napthe` (`id`, `username`, `type`, `amount`, `serial`, `pin`, `tranid`, `status`, `time`) VALUES
(49, 'nhdright212', 'VIETTEL', '100000', '58362547284769', '583625472847689', '47135', '02', 1634476061),
(48, 'nhdright212', 'VIETTEL', '100000', '58362547284768', '583625472847680', '47135', '02', 1634476061);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nickff`
--

CREATE TABLE `nickff` (
  `id` int(255) NOT NULL,
  `taikhoan` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhanvat` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dangky` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noibat` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `2fa` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nickff`
--

INSERT INTO `nickff` (`id`, `taikhoan`, `matkhau`, `giatien`, `rank`, `nhanvat`, `dangky`, `pet`, `noibat`, `2fa`, `nguoimua`, `status`, `time`) VALUES
(1, 'test123', 'test123', '33', '1', '1', '0', '0', '53', 'test123', 'NULL', '0', 1625886533),
(2, 'hungplayvn', 'hhhhh', '32000', '1', '1', '0', '0', 'hh', 'ffff', 'NULL', '0', 1626489390),
(3, 'hungplayvn', 'hungplayvn', '32000', '1', '1', '0', '0', 'hungplayvn', 'ffff', 'hungplayvn', '0', 1626593977),
(4, 'ConCacDauCacMoiWebSaoLon@LuaDao.ConCac', 'aaaaaaaaa', '30000', '7', '1', '0', '1', '100', '1213', 'hungplayvn', '0', 1628856327),
(5, 'ConCacDauCacMoiWebSaoLon@LuaDao.ConCac', 'aaaaaaaaa', '30000', '7', '1', '0', '1', '100', '1213', 'huydeptrai', '0', 1628856385),
(6, 'admin', '25f9e794323b453885f5181f1b624d0b', '30000', '1', '1', '0', '0', '12', '1213', 'huydeptrai', '0', 1628856605),
(7, 'Minhdr11', 'Minh123', '200000', '7', '1', '0', '1', 'nick đúng mật khẩu nick ko bị xác minh', '1/17272699/2/9282829', 'hungplayvn', '0', 1628858645),
(8, 'bentantv', 'dungtrenkenhbentantv', '12000000', '6', '1', '0', '1', 'anhduy2005', 'anhduy2005', 'hungplayvn', '0', 1628864219),
(9, 'admincp11', '123123', '1231', '1', '1', '0', '0', '123123', '1231', 'null', '1', 1628865511);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_freefire`
--

CREATE TABLE `random_freefire` (
  `id` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mota` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `random_freefire`
--

INSERT INTO `random_freefire` (`id`, `name`, `cname`, `thumb`, `giatien`, `mota`, `status`, `time`) VALUES
(1, 'Random Free Fire 80K', 'random-free-fire-80k', 'https://quanlyshop.vip/upload/doanhmuc/1620764213581395.gif', '80000', '', 'true', 1626593567),
(2, 'Random Free Fire 150K', 'random-free-fire-150k', 'https://quanlyshop.vip/upload/doanhmuc/1620764258497404.gif', '150000', '', 'true', 1626593619),
(3, 'Random Free Fire 250K', 'random-free-fire-250k', 'https://quanlyshop.vip/upload/doanhmuc/1620764296391200.gif', '250000', '', 'true', 1626593645);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_freefire_nick`
--

CREATE TABLE `random_freefire_nick` (
  `id` int(255) NOT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2fa` varchar(255) NOT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `random_freefire_nick`
--

INSERT INTO `random_freefire_nick` (`id`, `cname`, `username`, `password`, `2fa`, `status`, `nguoimua`, `time`) VALUES
(1, 'random-free-fire-250k', 'hshfajsk', 'fasf', '', 'false', 'hungplayvn', 1626593685);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_lienquan`
--

CREATE TABLE `random_lienquan` (
  `id` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mota` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `random_lienquan`
--

INSERT INTO `random_lienquan` (`id`, `name`, `cname`, `thumb`, `giatien`, `mota`, `status`, `time`) VALUES
(1, 'Thử Vận May Liên Quân 50k', 'thu-van-may-lien-quan-50k', 'https://quanlyshop.vip/upload/doanhmuc/1620764470653109.gif', '50000', '', 'true', 1608031686);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `random_lienquan_nick`
--

CREATE TABLE `random_lienquan_nick` (
  `id` int(255) NOT NULL,
  `cname` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `nguoimua` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `register_gift`
--

CREATE TABLE `register_gift` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `register_gift`
--

INSERT INTO `register_gift` (`id`, `username`, `name`, `kimcuong`, `time`) VALUES
(1, 'admin123', 'shopthanhdieutv', '14', 1605156415),
(2, '184239333320161', 'Tom My', '14', 1605168407),
(3, 'khangnguyen2g', 'Nguyễn Nhựt Khang', '14', 1605175229),
(4, '208462874026317', 'Hào Hoàng', '12', 1605191458),
(5, 'ttt000', 'Nhóc Nguyễn', '15', 1605240023),
(6, 'bao555', 'Bao555', '11', 1605308993),
(7, '706424816683754', 'Chuột', '13', 1605443420),
(8, '734480380497220', 'Công Chí Lê', '11', 1605446177),
(9, '123347179568332', 'Yi Linx', '13', 1605447843),
(10, 'vietmuahack', 'nguyênc văn việt', '13', 1605447936),
(11, 'adminly', 'Sun Coder Official', '15', 1605447972),
(12, 'phong0cu', 'PHạm văn phong', '12', 1605449138),
(13, 'khachieu', 'Nguyễn khắc hiếu', '12', 1605449918),
(14, '428956661833041', 'Gấu Đẹp Trai', '13', 1605450689),
(15, '157383959461980', 'An Hoang', '10', 1605450811),
(16, '201405164757299', 'Đừng Biết', '14', 1605451726),
(17, '180220427069400', 'Trung Nguyen', '12', 1605452228),
(18, 'quang12345', 'Đoàn Quang Hưng', '14', 1605452230),
(19, '367869327868350', 'Phạm Quân', '13', 1605482945),
(20, '189997436019039', 'Ngốc Ngốc Thật', '14', 1605485269),
(21, '806823319879587', 'Le Huu Phuoc', '13', 1605504219),
(22, '367591637681975', 'Bé Bi', '10', 1605510699),
(23, '465602287747469', 'Duyên Nguyen', '12', 1605514678),
(24, 'dbhhhssvb', 'Ít nói gaming', '13', 1605514759),
(25, '232731321609764', 'Nguyễn Phương Thảo', '15', 1605517572),
(26, '840950160050883', 'Dũng Con', '10', 1605518762),
(27, '382632642942003', 'DI Nguyen', '11', 1605524252),
(28, 'kaygaming', 'KayGaming', '14', 1605533568),
(29, '184003939984349', 'Nguyên Trần', '10', 1605533676),
(30, '791134514797294', 'Lê Văn Thanh', '12', 1605534701),
(31, '158370515899055', 'Hoàng Phát', '15', 1605534707),
(32, '194728975496250', 'Gấu Đỏ', '13', 1605535895),
(33, '141069724425585', 'Nga Nguyễn Thị', '15', 1605536398),
(34, 'doraemon', 'Doraemon ', '10', 1605536613),
(35, 'shopfake', 'Nam Phong', '13', 1605536913),
(36, '846402429520496', 'Phạm Thế Đông', '11', 1605541425),
(37, 'kkkkkaa', 'Nhóc Nguyễ', '15', 1605541617),
(38, 'tranvanhien', 'tran van tran', '11', 1605580783),
(39, '133779078496574', 'Vương Thanh Diệu', '13', 1605581400),
(40, '388270759277860', 'Hoàng Tử TB', '12', 1605586172),
(41, '207844687413686', 'Nguyễn Minh Tú', '10', 1605592518),
(42, '188251026326564', 'Huỳnh Ngọc Khang', '11', 1605594822),
(43, '385365286142646', 'Vũ Văn Tự', '13', 1605596575),
(44, 'bugamingtv', 'bugamingtv', '15', 1605596971),
(45, '401066304591653', 'Tai Tai', '14', 1605597266),
(46, 'hon•can', 'Lường Hơn', '15', 1605597540),
(47, '193696712223692', 'Đồ Chơi Tuấn', '15', 1605598625),
(48, '123456', 'Phạm Cảnh', '15', 1605599614),
(49, 'hacksubnha', 'Tokibu', '10', 1605600014),
(50, 'toannehihi', 'Lê Hữu Toàn', '10', 1605603563),
(51, 'than123', 'Than123', '14', 1605603748),
(52, '179417423547073', 'Sơn Võ Văn', '14', 1605604222),
(53, 'fanthanhdieutv', 'FanThanhDieuTV', '10', 1605608251),
(54, '403303190866027', 'Kẻ Sấu Trai', '10', 1605610684),
(55, '435006984166346', 'Trẻ Trâu Hợp', '10', 1605611078),
(56, '392846028531761', 'Thuận Nguyễn', '15', 1605611969),
(57, '365463004725213', 'Gà Đá Bến Tre', '12', 1605613662),
(58, '209119940660635', 'Nguyễn Nguyên', '14', 1605616287),
(59, '185539526492690', 'Jany Nguyễn', '11', 1605616462),
(60, '169712941491149', 'Nguyễn Duy Khôi', '12', 1605616945),
(61, 'datlight123', 'datlight123', '12', 1605617320),
(62, 'trimai123', 'Trimai', '11', 1605617606),
(63, '418795272594006', 'Nguyễn Lâm', '14', 1605620982),
(64, 'minhduc', 'Nguyễn Minh Đức', '14', 1605621206),
(65, '01669146130', 'Nguuen quan', '11', 1605623218),
(66, '148971956912966', 'Thân Kòii', '12', 1605625777),
(67, 'nguyenbiin', 'Nguyễn Thái Ửng', '10', 1605626404),
(68, 'toanmuonhack', 'Lê Hữu Toàn', '11', 1605671538),
(69, '403746844314095', 'Nguyễn Hưng', '15', 1605674062),
(70, '363835124720373', 'Nguyễn Hưng', '14', 1605674183),
(71, '376663993451368', 'Nguyễn Kiệt', '15', 1605674248),
(72, '376989596961651', 'Sống Về Đêm', '14', 1605674291),
(73, 'nguyenhung547', 'Blue5656', '12', 1605674327),
(74, 'tuyenkn123sdsd', 'BLUEFirefdf', '13', 1605674368),
(75, 'tuyenkn123dsds', 'sdsdsds', '11', 1605674396),
(76, 'tuyenkn123fdfdfdfd', 'VID_20190529_085049_Moment', '13', 1605674454),
(77, 'nhutpro205', 'Võ Hoàng Mỹ', '13', 1605675806),
(78, '415074703002789', 'Kém Duyên', '15', 1605676276),
(79, '121595929741147', 'Son Lê', '14', 1605679336),
(80, 'tai123', 'Taiđeptrai', '15', 1605681958),
(81, '156439472902442', 'Hà Thị Thu', '15', 1605688374),
(82, '193998168862065', 'Quốc Trường', '11', 1605689589),
(83, 'than1234', 'Than1234', '13', 1605691594),
(84, '172018367962349', 'Tuong Le', '15', 1605691839),
(85, '2334048529', 'Vũ Thế Hiệp', '11', 1605692676),
(86, 'thandat', 'Thandat', '14', 1605696883),
(87, 'than5555', 'Than5555', '11', 1605699441),
(88, 'ddusjzjxjxj', 'Uzjjxhzhzhxh', '11', 1605701361),
(89, 'sibichi', 'sibichi', '13', 1605702597),
(90, '139857694562411', 'Khánh Xoăn', '14', 1605706591),
(91, '377548546788084', 'Văn Thái Le', '13', 1605716841),
(92, '204446464534347', 'Đen Sói', '15', 1605751493),
(93, '198868275021353', 'Trần Đức', '10', 1605754045),
(94, 'dathackff', 'Nguyễn Đạt Official', '11', 1605762172),
(95, '0905120466', 'Phạm anh tài', '14', 1605765451),
(96, 'xcvxvxc', 'vcvzcvzxz', '14', 1605772406),
(97, '123456h', 'gfdffgfg', '11', 1605772500),
(98, '398805498130270', 'Quyết Hữu', '13', 1605777316),
(99, '364440697967347', 'Hoang Huy', '11', 1605777704),
(100, '150539620100859', 'Trước Văn Đó', '15', 1605777827),
(101, '135879118313769', 'Bình Dương Viog Tang', '15', 1605777896),
(102, '187421399645591', 'Trần Trung Nghĩa', '13', 1605778189),
(103, '193601268897539', 'Đoan Diệp', '11', 1605782551),
(104, '862617374544927', 'Nguyễn Tuấn Minh', '15', 1605784148),
(105, '434497997914228', 'Le Dạt', '10', 1605784505),
(106, 'nnn2k8w', 'Nn2k8sn', '11', 1605788051),
(107, 'huy0182', 'Kuayah', '13', 1605788166),
(108, '241938257352026', 'Jojo Hưng', '11', 1605790756),
(109, '212661507101908', 'Ánh Kòy', '12', 1605794059),
(110, '201166754904918', 'Thanh Sang', '15', 1605800695),
(111, 'huuhoang', 'huunghia123', '15', 1605834108),
(112, '129591852290075', 'Nguyễn Tấn Vũ', '15', 1605837880),
(113, '127489975832394', 'Ntt Nguyễn', '11', 1605840670),
(114, '417670396282229', 'Nguyễn Nga', '15', 1605843621),
(115, 'dotuanminh2', 'Dotuanminh2', '15', 1605843689),
(116, '226877988854745', 'Lun Minh', '10', 1605843763),
(117, 'thanhdieutv2', 'Thanhdieutv', '12', 1605843893),
(118, '192976655695580', 'Đỗ Nhật Hoàng', '15', 1605860619),
(119, '981461136108076', 'Hieu Hien Tran Nguyen', '13', 1605862811),
(120, '186931232979234', 'Anh Tuan', '15', 1605867820),
(121, 'hanotv1234', 'Nguyễn đức dũng', '15', 1605870876),
(122, '212710893547244', 'Nguyễn. T. Thành', '12', 1605873445),
(123, '168913478291157', 'Idol Tài', '10', 1605875647),
(124, 'lolgamer', 'Ffdgtdfggg', '13', 1605876498),
(125, '471734290470700', 'しん いち', '10', 1605877649),
(126, '186079723066312', 'Đại Lão Gia', '15', 1605879216),
(127, '199716398432724', 'Tên Không', '10', 1605881995),
(128, '113894443872939', 'Nguyễn Tiến Cường', '15', 1605897485),
(129, '420624085733011', 'Nguyễn Hoàng Ninh', '15', 1605922238),
(130, '851549905613278', 'Trần Văn Hiền', '14', 1605927188),
(131, 'hominhduong2019', 'abcvbnbbnb n', '10', 1605930385),
(132, '180484943675347', 'Hai Nguyen', '13', 1605945440),
(133, 'qeqei223', 'qeqei222', '12', 1605953450),
(134, '210215920489283', 'Truy Nguyễn', '11', 1605955538),
(135, '172304127906017', 'Sip Đỏ', '11', 1605955996),
(136, 'vanducz1', 'Vanduc', '15', 1605956364),
(137, '195044192089584', 'Hồ Tuấn', '13', 1605959346),
(138, '155751716296253', 'An Đinh', '10', 1605959471),
(139, '164860475314012', 'Duy Anh', '15', 1605960413),
(140, 't0356270374', 'kienquoc', '12', 1605962308),
(141, '386538665918276', 'Danh Vô', '13', 1605969448),
(142, '389898609021683', 'Le Ly', '12', 1605974456),
(143, '167181688464020', 'Nè Ken', '15', 1605977992),
(144, 'hungnopro', 'Nỹ đức hưng', '12', 1605998405),
(145, '397922801255883', 'Trần Văn Phúc', '14', 1606002817),
(146, 'hoanganh', 'Sanews', '15', 1606009202),
(147, '440161624052349', 'Hồ Thanh Nam', '10', 1606021349),
(148, '416131919749245', 'Bùi Văn Tính', '11', 1606024141),
(149, 'meowngu', 'Trần Hiếu Nghĩa', '15', 1606024293),
(150, 'adfggjj', 'Phanvantuananhcc', '12', 1606024723),
(151, '402113587630304', 'Thien Nhan', '14', 1606030121),
(152, '176220867503129', 'Nguyễn Giang', '15', 1606032246),
(153, 'chau9999', 'Châu DJ', '14', 1606044128),
(154, 'doanhoailinh', 'Đoàn Hoài Linh', '15', 1606045293),
(155, '389164752403367', 'Thu Hồng Nana', '12', 1606045782),
(156, '387149705930237', 'Thành Công', '13', 1606049295),
(157, '152085273315934', 'Lê Bí', '14', 1606053880),
(158, 'levancuong', 'Văn cường', '10', 1606054063),
(159, '3067840870111336', 'Yen Chu', '15', 1606055061),
(160, '1255902448136138', 'Nguyễn Đình Kiều', '11', 1606057776),
(161, 'phong123', 'phong pro', '15', 1606058117),
(162, '118967960023986', 'Àk Điền', '14', 1606060128),
(163, '1136404196762454', 'Hùng Cuong', '15', 1606060537),
(164, '160909529059767', 'Higa Hiha', '15', 1606064064),
(165, '195201835549492', 'Nguyễn Vương', '10', 1606068106),
(166, '374676186971051', 'Miền Tây Nhớ', '10', 1606099733),
(167, 'hdjerw', 'Nghuyễn Trần Anh Dũng', '10', 1606106867),
(168, '369763220921046', 'Trần Khánh', '12', 1606110369),
(169, '159378202637870', 'Phuong Nguyen Thi', '14', 1606113207),
(170, '1019444281871134', 'Nguyễn Trường Thịnh', '10', 1606115173),
(171, '839686973448970', 'Ham De Gil', '10', 1606126974),
(172, '163767078816924', 'Nguyễn Hoài Duy', '10', 1606129037),
(173, 'claermodskin', 'HKEOBIET', '10', 1606129764),
(174, 'minhtl147', 'Nguyễn Minh', '12', 1606130596),
(175, '378779196907608', 'Hà Văn A Nh', '10', 1606140645),
(176, 'anh222111', 'Ha van anh', '12', 1606141198),
(177, 'anh222ww', 'ha van an', '13', 1606141440),
(178, '384534702973371', 'Tên Ko', '15', 1606144695),
(179, 'nongvannam2002', 'Nông van nam', '11', 1606147552),
(180, '200601338183361', 'Xuông Nôbita', '10', 1606147567),
(181, '216155613254496', 'Khói Đen', '13', 1606158022),
(182, '368417797717798', 'Thái Hữu', '12', 1606186657),
(183, '419405169218037', 'Lê Thanh Phụng', '12', 1606187039),
(184, 'tranquocdat', 'Trần Quốc Đạt', '11', 1606188014),
(185, 'bao333', 'Bao333', '11', 1606190999),
(186, 'hominhtam1', 'hominhtam1', '11', 1606193990),
(187, 'hominhtam00', 'hominhtam', '11', 1606194124),
(188, '211986530278902', 'Vàng Em Cậu', '10', 1606195948),
(189, 'havantao', 'Hà Văn Tạo', '15', 1606195967),
(190, '393599511854466', 'Lê Nhật Bảo', '15', 1606198988),
(191, 'quangha', 'Quangha', '12', 1606200281),
(192, '192507639030305', 'Khánh Lê', '11', 1606202720),
(193, 'asdfghjkl', 'lr mjg', '11', 1606210694),
(194, 'phucskl08', 'Phúc le', '14', 1606213640),
(195, '2142707082531768', 'Nguyen Thi Thu Thanh', '14', 1606217511),
(196, '384785316280700', 'Ngọc Lụa', '12', 1606222933),
(197, 'longkk', 'Ùccchh', '10', 1606223963),
(198, 'sk_thaidz', 'Thái 2k8', '11', 1606226212),
(199, 'lieugiang11', 'LieuGiang', '10', 1606274022),
(200, 'tranduybao', 'Trần Kỳ Duy Bảo', '12', 1606279609),
(201, '410113850347115', 'Diễm My', '12', 1606283192),
(202, '425433715307115', 'Văn Hùng', '10', 1606296724),
(203, '215821506722402', 'Sơn Hoàng', '13', 1606301659),
(204, '154871533030718', 'Trong Quyet', '11', 1606302981),
(205, '154141343092388', 'Trinh Lê', '10', 1606303227),
(206, '189401819451454', 'Nhật Lầy', '14', 1606310624),
(207, '220316429514364', 'Nguyễn Hoàng Nam', '11', 1606311258),
(208, 'qqqqqqq', 'Hdvcjndbsb', '12', 1606313561),
(209, '261230658759998', 'Phạm Hòa', '10', 1607696884),
(210, '216155473418542', 'Đỗ Quy', '10', 1607698119),
(211, 'anh009', 'Hà Anh', '13', 1607699175),
(212, 'buivanhai191', 'Hải 2004', '15', 1607700676),
(213, '435929134106675', 'Lan Vy', '10', 1607770101),
(214, '953146708551793', 'Hoang Viet Bang', '14', 1607787944),
(215, 'hungplay', 'Hưng Play', '14', 1607823347),
(216, '112336064053971', 'Huỳnh Nhật Đt', '14', 1607866836),
(217, 'anh123as', 'Anhduy', '12', 1607868273),
(218, '207291310974248', 'Chánh Idol', '10', 1607918081),
(219, 'lequy1234', 'lequy0', '13', 1607936059),
(220, '134918028427477', 'Mai Anh Phạm', '13', 1608009090),
(221, '720809592189806', 'Xuan Bui', '13', 1608040788),
(222, '214044076986766', 'Văn Ngà Lê', '14', 1608073709),
(223, '441587030362254', 'Nguyễn Linh', '13', 1608094744),
(224, 'hoangnam327', 'Hoàng Nam', '14', 1608112636),
(225, 'binh2k7', 'Binh2k7', '14', 1608116400),
(226, 'anhktay', 'Nguyễn Thanh Bình', '13', 1608116487),
(227, 'kin123', 'Minhtam', '13', 1608121642),
(228, '425048078858043', 'Trịnh Văn Hưng', '13', 1608124477),
(229, '465387944842776', 'CuộC VuI Xứ Lạ', '11', 1608136978),
(230, '214769146843362', 'Trương Tấn Phát', '13', 1608175926),
(231, 'duongtan', 'Hhhhhhhhw', '15', 1608178402),
(232, '340898860692972', 'Yang Yang', '11', 1608180413),
(233, '391936572089898', 'Cương Nguyên', '14', 1608202635),
(234, '184544733362932', 'Tú Nè', '14', 1608211046),
(235, 'vietnamese', 'Anh em td', '13', 1608211589),
(236, '140855594462926', 'Ngô Lợi', '13', 1608221787),
(237, '225423599025898', 'Nguyễn Đạt', '10', 1608267726),
(238, '141312727773370', 'Nguyễn Khang', '14', 1608277552),
(239, 'ngovanloi', 'Ngô Văn Lợi', '11', 1608290767),
(240, 'ky1995', 'Lò văn ký', '15', 1608358170),
(241, 'huan007', 'Đứchuân', '15', 1608371878),
(242, '484825612500680', 'Cao Maria', '11', 1608372379),
(243, 'tripro123', 'Lê quốc trí', '13', 1608379670),
(244, '242740297191603', 'Tuấn Hoàng', '10', 1608429581),
(245, '394736525119121', 'Bùi Minh Truyền', '10', 1608434610),
(246, '111954357442797', 'Lê Lê', '15', 1608437352),
(247, '101762311840036', 'Toàn Tranyy', '11', 1608454364),
(248, '1429572934046470', 'Hai Nguyen', '11', 1608460060),
(249, 'hungdzvl', 'Hưng Play', '12', 1608460756),
(250, 'duyan3633', 'DUY626262', '14', 1608462538),
(251, '0397032453', 'Gau162777', '13', 1608699097),
(252, '430560397980921', 'Minh Quân', '11', 1608725562),
(253, 'thienloc2103', 'Thienloc3245', '14', 1608736211),
(254, 'buiducduy1', 'Âssdf', '12', 1608740545),
(255, 'lucki123', 'Thành lục', '15', 1608789509),
(256, '2132802974', 'HooNgcqueanh', '12', 1608793959),
(257, 'khanhbriona113', 'Khayyy', '12', 1608808240),
(258, '103552908335699', 'Mai Hoan', '12', 1608875379),
(259, 'haiquayxe55', 'Lê văn sơn', '12', 1608877254),
(260, 'luka12qazws', 'lukaku', '15', 1608905987),
(261, '225774829105151', 'Tài Lương', '10', 1608943613),
(262, '708967629761095', 'To Nguyen', '10', 1608951904),
(263, '863556654481297', 'Lượng Phan Hoàng', '10', 1608965984),
(264, '398227834764465', 'Khánh Duy', '15', 1608986196),
(265, '399053374737047', 'Red Hood', '11', 1608997205),
(266, '453359819006771', 'Van Luong Tran', '11', 1609013026),
(267, '117572156847538', 'Danh Thắng', '12', 1609059474),
(268, 'anhkonoi', 'Đinh văn liêm ', '13', 1609071414),
(269, 'narshap2008', 'Hrtafk', '12', 1609071547),
(270, 'thanhvu11', 'Thanh Vũ', '10', 1609126566),
(271, 'cuocsongma', 'Linh BG', '12', 1609130224),
(272, 'leb5132', 'Lê Vũ hoànd', '15', 1609146698),
(273, 'liemdbz', 'Lương văn liêm ', '10', 1609157632),
(274, '486923965604985', 'Trương Giỏi', '10', 1609160517),
(275, 'suna234', 'Lê Văn ngu', '13', 1609167701),
(276, 'mocmeo', 'Momohashi', '10', 1609180578),
(277, '234166218145828', 'Phạm Mất Nick', '12', 1609200013),
(278, '149883243591557', '겸손방향', '10', 1609214841),
(279, '187271053144197', 'Phạm My', '11', 1609220671),
(280, '111915914118185', 'Nguyễn Nhật', '14', 1609228230),
(281, '741031776793824', 'Thành Lâm', '14', 1609308504),
(282, '192065352624784', 'Vinh Li Le', '11', 1609318636),
(283, '736888940264774', 'Tran Dien', '15', 1609387864),
(284, '118405000119958', 'Ha Hoàng', '13', 1609413772),
(285, '698393611041852', 'Lê Văn Vinh', '12', 1609414606),
(286, '175762167617571', 'Ph.T.Tiến Đạt', '14', 1609428328),
(287, '193450872501709', 'Tra Mai', '12', 1609464988),
(288, '213489690370146', 'Phê Ta Nôn', '10', 1609502723),
(289, '155079603078022', 'Kiouto Lu Era', '10', 1609523173),
(290, 'ghuhhhh', 'Ạhsbsb', '12', 1609545871),
(291, '234719704935716', 'Huỳnh Tuấn Cảnh', '12', 1609562273),
(292, '186080623220634', 'Hồ Trung Kiên', '14', 1609564167),
(293, '568987013989013', 'Ang Bùi', '14', 1609672700),
(294, '258092309164890', 'Trái Phải', '15', 1609673867),
(295, '209074897543479', 'Nguyễn Bảo', '14', 1609732837),
(296, '403023134291959', 'Bé Tũnn', '13', 1609759986),
(297, '406761650645743', 'Đỗ Thanh Phúc', '15', 1609810347),
(298, 'levantriet2003', 'Lê Văn Triết', '11', 1609836235),
(299, 'hoangngoan83', 'Nguyễn Thế Văn', '10', 1609842738),
(300, 'haanh6c', 'Hà Tuấn anh', '15', 1609844529),
(301, 'jackkicm', 'Đỗ Quang hiếu', '13', 1609847838),
(302, 'thanhdieutv123', 'Thanh dieu', '11', 1609926059),
(303, '121233993156979', 'Giang Huyền', '15', 1610031732),
(304, '206522521180879', 'Lung Lô', '13', 1610033531),
(305, 'funnyquang', 'Vuanhthu', '12', 1610036958),
(306, 'duongll0', 'DuonglL0', '13', 1610088318),
(307, '223643245999646', 'Ung Duong', '15', 1610089633),
(308, '234433001393979', 'Hiếu Đăng Nguyễn', '13', 1610106401),
(309, '2842059836082515', 'Trịnh Đức Tiến', '12', 1610108894),
(310, 'onglachum', '000000', '11', 1610110452),
(311, '232315034999984', 'Huỳnh Như', '12', 1610168579),
(312, 'dupro1234', 'Trần Đình Du', '13', 1610196002),
(313, 'phat568', 'Phat567', '15', 1610253855),
(314, 'caigicxdc', 'khong biết', '12', 1610266170),
(315, '481774969886320', 'Bạn Là Ai', '11', 1610273594),
(316, '173329327866126', 'Huong Chi Bui', '13', 1610332825),
(317, '448981669814622', 'Tiến Goodboy', '15', 1610342345),
(318, '213874530330684', 'Dung Lợn', '12', 1610361038),
(319, 'tadznhat', 'manhdzne', '14', 1610363645),
(320, 'lienquangko', 'Khangdu24h', '11', 1610411507),
(321, '871656090251225', 'Sang Tay Bui Ngoctay', '11', 1610451269),
(322, '406785620576283', 'Quang Trần Tô', '10', 1610457779),
(323, '463859481655329', 'Hùng Cuờng', '13', 1610535497),
(324, '730311001231989', 'Tiack Pvpbach', '10', 1610540197),
(325, '225627635904850', 'Mai Nguyenngoc', '13', 1610597713),
(326, 'trananhtuan', 'Trần Anh Tuấn', '10', 1610606809),
(327, '839445486602238', 'Đồng Linh Trang', '15', 1610616447),
(328, '114908623834171', 'Bi Nguyên', '14', 1610634221),
(329, '230058421932880', 'Thanh Kòi', '11', 1610722135),
(330, 'danghoangbin12345', 'Danghoangbin', '15', 1610756976),
(331, 'tuan1123', 'nguyễn mạnh tuân', '11', 1610791875),
(332, '111992757494185', 'Mollu Hưng', '12', 1610791968),
(333, '204795124693635', 'Hồ Thành Phát', '15', 1610795292),
(334, 'levantriet', 'lê văn Triết ', '14', 1610852168),
(335, 'baoprohihi', 'Baophung', '13', 1610880494),
(336, 'adminweb', 'lekhanh345', '13', 1610982141),
(337, '0377731360', 'Dương vlog ', '15', 1611057982),
(338, 'adminshop', 'adminshop', '11', 1617978747),
(339, 'khoanevn', 'KhoaNe', '13', 1618028930),
(340, 'khoakillall', 'khoakillall', '11', 1618138494),
(341, 'chausongdo', 'chaau di', '11', 1618189968),
(342, 'admin12345', 'RANDOM FREE FIRE 9K', '11', 1618227248),
(0, 'datlight', '', '30', 1624207624),
(0, 'ccccccc', '', '31', 1624208380),
(0, 'realhth', '', '33', 1624238395),
(0, 'duclong5dthtm', '', '32', 1624242385),
(0, 'chesky', '', '33', 1624243147),
(0, 'aptx4869', '', '30', 1624249233),
(0, 'vy12311h', '', '30', 1624250024),
(0, 'hungplayvn', '', '32', 1624250858),
(0, 'jnjhjgj', '', '32', 1624260861),
(0, 'phat1900394', '', '34', 1624266693),
(0, 'quyet1232', '', '33', 1624268628),
(0, 'kimkhue2010', '', '33', 1624270600),
(0, 'kemtran_', '', '30', 1624279975),
(0, 'adminvxt', '', '31', 1624293891),
(0, 'hungplayuwu', '', '33', 1624322360),
(0, 'khaideveloperv3', '', '32', 1624323760),
(0, 'aminhhd', '', '31', 1624331305),
(0, '0367197718', '', '30', 1624338743),
(0, 'luong-van-cuong', '', '33', 1624347916),
(0, 'dkdkdeirjdk', '', '34', 1624351584),
(0, 'huy234', '', '32', 1624353957),
(0, 'longau', '', '35', 1624355082),
(0, 'vinh-pham-hoang', '', '34', 1624367932),
(0, 'khanhhuyenthd', '', '31', 1624414358),
(0, 'fuhhuhu', '', '34', 1624421895),
(0, 'duongviethoang', '', '33', 1624425802),
(0, 'vudinhanh2k9', '', '24', 1624448030),
(0, 'tuandx2021', '', '25', 1624500427),
(0, '0967961803', '', '29', 1624513044),
(0, 'soicon', '', '27', 1624527790),
(0, 'phuocalock03052013', '', '22', 1624532998),
(0, 'kkskskd', '', '29', 1624538819),
(0, 'nhathuydeptrai3', '', '24', 1624550856),
(0, 'haimoi', '', '25', 1624584264),
(0, 'khangg', '', '28', 1624589129),
(0, 'nguyen-hoang', '', '21', 1624589249),
(0, 'phucgamer-123', '', '21', 1624590804),
(0, 'haidanggammer', '', '24', 1624591685),
(0, 'luongan', '', '27', 1624606651),
(0, 'hoangdinhvu', '', '21', 1624610275),
(0, 'cmducc1221', '', '29', 1624613890),
(0, 'sudai159', '', '30', 1624615051),
(0, 'khaideveloper', '', '24', 1624615924),
(0, 'nghia', '', '22', 1624616569),
(0, 'oqlqlqq', '', '27', 1624619129),
(0, '777799', '', '29', 1624619153),
(0, 'soosonm', '', '27', 1624619784),
(0, 'nguyenchivinh106', '', '21', 1624624229),
(0, 'tri2009', '', '29', 1624668617),
(0, 'congdeptrai4', '', '30', 1624679945),
(0, 'gojo12', '', '25', 1624680692),
(0, 'giabao3akn11111', '', '30', 1624686288),
(0, 'baodepakn22222', '', '28', 1624686385),
(0, 'congle2311', '', '29', 1624689724),
(0, 'len-tieng', '', '30', 1624692609),
(0, 'tugaming', '', '21', 1624694618),
(0, 'loeneban', '', '29', 1624696816),
(0, 'dung30899', '', '30', 1624699150),
(0, 'cundepzai55', '', '24', 1624706027),
(0, 'nguyen-boy', '', '28', 1624755024),
(0, 'lewlew1999', '', '21', 1624755453),
(0, 'thang6002', '', '22', 1624757472),
(0, 'nhatgaming-246', '', '21', 1624769480),
(0, 'tran-ngoc-bao-tran', '', '21', 1624776961),
(0, 'thao', '', '29', 1624786107),
(0, 'hatbuinao', '', '23', 1624789941),
(0, '0985616366', '', '22', 1624790088),
(0, 'kaitokun', '', '25', 1624793899),
(0, 'trinh-van-duong', '', '25', 1624820077),
(0, 'huygjhfj12', '', '29', 1624827883),
(0, 'huan1999', '', '28', 1624835158),
(0, 'huan19999', '', '30', 1624835524),
(0, 'ngalee', '', '30', 1624835703),
(0, 'anhhao459', '', '27', 1624844278),
(0, 'ka-la-lalala', '', '27', 1624850538),
(0, 'thinhthinhj', '', '25', 1624851673),
(0, 'locpn145', '', '28', 1624851816),
(0, 'quy11n', '', '25', 1624851840),
(0, 'lbgtv1545', '', '23', 1624851865),
(0, 'dfjieru48956', '', '21', 1624851888),
(0, 'garena-ne', '', '30', 1624852052),
(0, 'hai222', '', '21', 1624865713),
(0, 'nhatphong', '', '30', 1624866582),
(0, 'linhlonglanhlaplanhlunglinh', '', '25', 1624867158),
(0, '0905783930', '', '23', 1624868652),
(0, 'qwertyuiop', '', '29', 1624869071),
(0, 'khang19902ka', '', '24', 1624869872),
(0, 'khang10291', '', '21', 1624870059),
(0, 'ducmom20021121', '', '22', 1624870115),
(0, '', '', '20', 1624870345),
(0, 'hungfanv', '', '30', 1624878487),
(0, 'huykhinh12', '', '28', 1624885352),
(0, 'bbbbbbbbbb', '', '23', 1624892031),
(0, 'giahuy123', '', '20', 1624898197),
(0, 'covid19', '', '26', 1624931650),
(0, 'tri2311', '', '20', 1624931792),
(0, 'fanvinh', '', '26', 1624933671),
(0, 'congdepzai', '', '23', 1624935889),
(0, 'baopro', '', '24', 1624938096),
(0, 'huynh-anh-thu', '', '30', 1624938451),
(0, 'le-oanh', '', '25', 1624938458),
(0, 'hungxinhtra', '', '21', 1624942586),
(0, '0357272643', '', '22', 1624948610),
(0, 'sinhton', '', '25', 1624950995),
(0, 'ducanhh215e0', '', '26', 1624952320),
(0, 'binhhoang', '', '21', 1624956176),
(0, 'diepcutenek', '', '20', 1624956268),
(0, 'hieudeptrai0148', '', '20', 1624969058),
(0, 'tolaai123', '', '23', 1624977076),
(0, 'tomhung', '', '27', 1625254225),
(0, 'lehongaivy', '', '20', 1625266882),
(0, '0972472276', '', '27', 1625268618),
(0, 'cong99', '', '23', 1625269665),
(0, 'tuananh2011', '', '25', 1625272675),
(0, 'maxu-gaming', '', '30', 1625273182),
(0, 'tinh-yeu', '', '28', 1625273499),
(0, 'namdimlim', '', '23', 1625274274),
(0, 'taingoc123456789', '', '25', 1625275975),
(0, 'nguyemledangkhoa', '', '29', 1625277696),
(0, 'hahshshh', '', '24', 1625278074),
(0, 'yggtghhhh', '', '23', 1625278542),
(0, 'minhtrigmailcom', '', '24', 1625279210),
(0, 'long_da111', '', '27', 1625279933),
(0, 'phamthituyen', '', '28', 1625281596),
(0, 'creeperpvpvn', '', '30', 1625282128),
(0, 'huy999', '', '21', 1625282856),
(0, 'thag56', '', '27', 1625283351),
(0, 'duy123763', '', '25', 1625283472),
(0, 'giathai', '', '21', 1625284858),
(0, 'trantanphat', '', '24', 1625287198),
(0, 'thanhsonn', '', '25', 1625289970),
(0, 'binne1h30', '', '27', 1625290581),
(0, 'lamhongphuc', '', '26', 1625294041),
(0, 'khacduy', '', '23', 1625294546),
(0, 'hungbi09087', '', '28', 1625295828),
(0, 'thithiep', '', '26', 1625295953),
(0, 'huy1234', '', '28', 1625296363),
(0, 'nguyenhoangb704gmgmailcom', '', '29', 1625296741),
(0, 'thinh8888', '', '24', 1625298196),
(0, '0396495169', '', '26', 1625299906),
(0, 'phibi_tv', '', '24', 1625300459),
(0, 'lamvn21557', '', '21', 1625300537),
(0, 'kknhoc', '', '20', 1625300541),
(0, 'nguyencuong', '', '24', 1625300546),
(0, 'miximoi', '', '23', 1625300572),
(0, 'khoa2008', '', '27', 1625300581),
(0, 'tienkaikai', '', '30', 1625300585),
(0, 'tienxinhtrai', '', '28', 1625300595),
(0, 'fanvinh12', '', '26', 1625300598),
(0, 'taiheo', '', '28', 1625300603),
(0, 'trumhin', '', '26', 1625300608),
(0, 'hung12f', '', '28', 1625300610),
(0, 'nch2004', '', '27', 1625300611),
(0, 'tcngff', '', '21', 1625300615),
(0, 'khangga334', '', '29', 1625300618),
(0, '0976856402', '', '25', 1625300620),
(0, 'khang6', '', '26', 1625300621),
(0, 'levanphon', '', '20', 1625300647),
(0, 'qqqqqq', '', '21', 1625300662),
(0, '0702998704', '', '20', 1625300675),
(0, 'khai-phong', '', '30', 1625300677),
(0, 'tungngao', '', '29', 1625300683),
(0, 'hnamgggg', '', '30', 1625300685),
(0, 'azm123456', '', '21', 1625300687),
(0, 'chanqua', '', '29', 1625300687),
(0, 'huygaming', '', '26', 1625300690),
(0, 'shindaumoi', '', '20', 1625300693),
(0, 'minhnero107', '', '26', 1625300696),
(0, 'ededrrr', '', '24', 1625300710),
(0, 'bao12345', '', '23', 1625300713),
(0, 'locnguyen262', '', '24', 1625300714),
(0, 'ffalinhshi', '', '26', 1625300714),
(0, 'nguyentran', '', '26', 1625300717),
(0, 'vinhzzz', '', '22', 1625300721),
(0, 'aminhhd123', '', '22', 1625300723),
(0, 'nhatnam123456', '', '21', 1625300726),
(0, 'bangnickcui', '', '26', 1625300728),
(0, 'fanvinhxt230409', '', '25', 1625300732),
(0, 'lolollol', '', '25', 1625300737),
(0, 'linhsieudep', '', '26', 1625300738),
(0, 'kaidz12345', '', '29', 1625300746),
(0, 'htby123', '', '24', 1625300759),
(0, 'tpthuynhthuy', '', '22', 1625300766),
(0, '0826462443', '', '27', 1625300770),
(0, 'thanh2004', '', '23', 1625300772),
(0, 'live5h30', '', '25', 1625300777),
(0, 'hdujdheudhddhu', '', '26', 1625300785),
(0, 'huynhthiutoo', '', '23', 1625300789),
(0, 'longxinhtrai', '', '23', 1625300789),
(0, 'chrono247', '', '22', 1625300799),
(0, 'gau-nho', '', '25', 1625300803),
(0, 'phatdzd', '', '29', 1625300811),
(0, 'hilioncute', '', '23', 1625300820),
(0, 'hoc123', '', '25', 1625300824),
(0, 'tranquang0123', '', '28', 1625300826),
(0, 'bac123', '', '20', 1625300831),
(0, 'dobinhdan', '', '30', 1625300836),
(0, 'hydeptrai', '', '24', 1625300841),
(0, 'duong-phat', '', '27', 1625300843),
(0, 'haidz123', '', '29', 1625300885),
(0, 'phamhuubang2008', '', '25', 1625300890),
(0, 'choilala', '', '22', 1625300901),
(0, 'vuxuboy456', '', '25', 1625300904),
(0, 'bichtram', '', '27', 1625300921),
(0, 'kimbaodzok', '', '27', 1625300925),
(0, 'phuong135746', '', '22', 1625300926),
(0, 'anvo867', '', '23', 1625301002),
(0, 'minhsang878', '', '21', 1625301041),
(0, 'do-quang-phong', '', '26', 1625301041),
(0, '12345678', '', '29', 1625301156),
(0, 'duongthianhtho', '', '26', 1625301157),
(0, 'thaone0k', '', '27', 1625301178),
(0, 'uchiha2s', '', '22', 1625301228),
(0, 'quyenak645', '', '25', 1625301244),
(0, 'u517151572', '', '24', 1625301246),
(0, '2967152735', '', '27', 1625301282),
(0, 'lulibany', '', '23', 1625301308),
(0, 'c4hihihihi', '', '23', 1625301310),
(0, 'concac', '', '22', 1625301354),
(0, 'tranvanfoan33', '', '21', 1625301361),
(0, 'anhhuynh', '', '22', 1625301366),
(0, 'nguyentiendat', '', '28', 1625301372),
(0, 'hienanh', '', '22', 1625301376),
(0, 'jinoob2004', '', '20', 1625301382),
(0, 'binlongxuyen', '', '26', 1625301388),
(0, 'giadat1302', '', '20', 1625301419),
(0, 'thong2011', '', '30', 1625301421),
(0, 'duycute', '', '28', 1625301422),
(0, 'duongzeptrai', '', '22', 1625301448),
(0, 'kienok1221', '', '30', 1625301468),
(0, 'long15', '', '29', 1625301510),
(0, 'thangkokoko', '', '28', 1625301513),
(0, 'uyenlinh', '', '27', 1625301528),
(0, 'hhrhytggfj', '', '24', 1625301562),
(0, 'khangcao', '', '24', 1625301567),
(0, 'thabgdeptrai', '', '20', 1625301579),
(0, 'anhbanh26az', '', '24', 1625301590),
(0, 'adzbzuu', '', '24', 1625301641),
(0, 'levantin', '', '25', 1625301644),
(0, 'zxcvbnm', '', '26', 1625301676),
(0, 'ngodieu0976', '', '23', 1625301692),
(0, 'thao0k0k', '', '20', 1625301724),
(0, 'him5bvip', '', '20', 1625301741),
(0, 'toanchv', '', '25', 1625301778),
(0, 'hai-nguyen', '', '22', 1625301782),
(0, 'ngocvip1', '', '30', 1625301795),
(0, 'kelygamingtv', '', '25', 1625301823),
(0, 'huy67888', '', '22', 1625301838),
(0, 'binhminh', '', '25', 1625301852),
(0, 'jaydiamond000', '', '21', 1625301915),
(0, 'phuckhang131313', '', '25', 1625301927),
(0, 'kennyart08', '', '29', 1625301969),
(0, 'sygggg', '', '20', 1625301994),
(0, 'nam2tuoi0909', '', '26', 1625302179),
(0, 'vinhxinhtrai7', '', '27', 1625302239),
(0, 'khangsoma', '', '21', 1625302280),
(0, 'thanhnga123', '', '23', 1625302352),
(0, 'nhat-gaming', '', '20', 1625302364),
(0, 'anhduong208', '', '30', 1625302371),
(0, 'linh1000', '', '23', 1625302396),
(0, 'huyvan2007', '', '27', 1625302443),
(0, 'tung2006', '', '20', 1625302585),
(0, 'anhvinhdeptrai', '', '29', 1625302596),
(0, 'siu-dun', '', '22', 1625302649),
(0, 'nguyensam', '', '24', 1625302672),
(0, 'dhdysyysys', '', '27', 1625302680),
(0, 'kiencoi', '', '20', 1625302684),
(0, 'huong1234', '', '26', 1625302689),
(0, 'truongquocta123', '', '30', 1625302751),
(0, 'fangaming123', '', '30', 1625302765),
(0, 'ngochai', '', '30', 1625302769),
(0, 'quanido', '', '20', 1625302887),
(0, 'minhdr111', '', '29', 1625302934),
(0, 'dunhucnach22', '', '24', 1625302946),
(0, 'hogiau', '', '25', 1625302966),
(0, 'dungvjp', '', '21', 1625302983),
(0, 'saber-kun', '', '30', 1625302990),
(0, 'hieuhuyhung', '', '29', 1625303010),
(0, 'trandinhminh00', '', '23', 1625303021),
(0, 'thanhlong', '', '20', 1625303024),
(0, 'kfgjvcvbb', '', '21', 1625303037),
(0, 'dungtien', '', '30', 1625303046),
(0, 'vinhxinhtrai', '', '29', 1625303072),
(0, 'con-bo', '', '22', 1625303121),
(0, 'thienngan', '', '20', 1625303135),
(0, '12345khoa12345', '', '21', 1625303144),
(0, 'noob2021', '', '20', 1625303266),
(0, 'chimpuch', '', '30', 1625303280),
(0, 'vietmatacc', '', '22', 1625303315),
(0, 'huyccxx', '', '27', 1625303337),
(0, 'leminhtai', '', '27', 1625303415),
(0, 'tutoan', '', '21', 1625303540),
(0, 'thanhnga', '', '22', 1625303615),
(0, 'thanhlong1', '', '23', 1625303650),
(0, 'lebaor', '', '27', 1625303717),
(0, 'game123', '', '21', 1625303781),
(0, '0326914437', '', '20', 1625303821),
(0, 'vx0028', '', '27', 1625303853),
(0, 'bcnvvnvv', '', '26', 1625303876),
(0, 'nhat-2905', '', '29', 1625303953),
(0, 'baochau19799', '', '24', 1625303964),
(0, 'beuyen2k10', '', '25', 1625303975),
(0, 'huyenan', '', '29', 1625303977),
(0, 'nguyenminhkhanh', '', '23', 1625304026),
(0, 'iqifwjcxjas', '', '29', 1625304093),
(0, 'longmomdaubuoi', '', '28', 1625304101),
(0, 'ducprox1000', '', '29', 1625304209),
(0, 'quangjr', '', '22', 1625304262),
(0, 'soncancazn', '', '22', 1625304278),
(0, 'anhsonhaha321', '', '20', 1625304390),
(0, 'quaytay', '', '26', 1625304392),
(0, 'nguyentien', '', '28', 1625304393),
(0, 'khanhsh45huk3', '', '25', 1625304410),
(0, 'trieu-vy', '', '26', 1625304463),
(0, 'minhmama', '', '29', 1625304473),
(0, 'phongdeptrai', '', '20', 1625304474),
(0, 'phamanhdinh', '', '29', 1625304493),
(0, 'tri-dung', '', '21', 1625304503),
(0, 'haoleminh0852', '', '27', 1625304516),
(0, 'khang999', '', '24', 1625304573),
(0, 'jwjajgagwggh', '', '30', 1625304578),
(0, 'quyetthu', '', '30', 1625304590),
(0, 'opposam', '', '28', 1625304657),
(0, 'huynhthiphuongtrang', '', '30', 1625304660),
(0, '0523744166', '', '28', 1625304758),
(0, 'nguyen-khang', '', '23', 1625304853),
(0, 'vinhdr', '', '22', 1625304956),
(0, 'trietvn2011', '', '27', 1625305043),
(0, 'sangfull', '', '29', 1625305048),
(0, 'huyen0711', '', '29', 1625305098),
(0, 'nao-ban-nho', '', '28', 1625305129),
(0, 'kietkeo1234', '', '26', 1625305151),
(0, 'nhannek', '', '28', 1625305169),
(0, '41555283', '', '22', 1625305365),
(0, 'huymodgame', '', '28', 1625305367),
(0, 'dong111', '', '22', 1625305435),
(0, 'quan-ban-nho', '', '30', 1625305457),
(0, 'kenido', '', '20', 1625305612),
(0, 'thu1234', '', '20', 1625305721),
(0, 'nhan99999', '', '22', 1625305736),
(0, '0976185661', '', '25', 1625305746),
(0, 'anhsynguyen', '', '29', 1625305752),
(0, '221209', '', '23', 1625305808),
(0, 'quocpham', '', '30', 1625305823),
(0, 'fangaming097', '', '28', 1625305848),
(0, '0915534725', '', '21', 1625305870),
(0, 'kiendocle123', '', '29', 1625305875),
(0, 'thuanhh', '', '29', 1625306016),
(0, 'kietzz1', '', '24', 1625306071),
(0, 'tuanhuy', '', '23', 1625306161),
(0, 'letranducluong_6c2tp', '', '26', 1625306694),
(0, 'taiheo2', '', '21', 1625306885),
(0, 'thaibinh', '', '22', 1625306885),
(0, 'hihi245', '', '27', 1625307164),
(0, 'thaitv', '', '24', 1625307347),
(0, 'fava2oo6', '', '22', 1625307451),
(0, 'truongngoc1009', '', '28', 1625307837),
(0, 'giangbignosr', '', '22', 1625308225),
(0, '0917086596', '', '30', 1625308235),
(0, '56tuihay', '', '21', 1625308384),
(0, 'huyen0722', '', '30', 1625308663),
(0, 'longgamer', '', '20', 1625309315),
(0, 'phatgamer', '', '28', 1625309346),
(0, 'hackergarana', '', '30', 1625309373),
(0, 'mom2k11', '', '22', 1625309398),
(0, 'nkdiem', '', '27', 1625309416),
(0, 'bbbbbbbbb', '', '22', 1625309434),
(0, 'fsfsdfsfdsf', '', '25', 1625309458),
(0, 'vinhxinhtraigaming', '', '23', 1625309754),
(0, 'nguyenthidiu8d', '', '24', 1625310220),
(0, 'kimbaodz2007', '', '26', 1625310404),
(0, 'kien284df', '', '26', 1625311958),
(0, 'tuan1982', '', '22', 1625312575),
(0, 'ww445yu', '', '21', 1625312953),
(0, 'nguyen-duc-huy', '', '27', 1625313709),
(0, 'ngocthinho', '', '26', 1625313846),
(0, 'choconcodau', '', '29', 1625314047),
(0, 'hshdhdyd', '', '28', 1625314247),
(0, 'taovip901', '', '27', 1625315047),
(0, 'siro935', '', '20', 1625315765),
(0, 'trunghau8888', '', '27', 1625316864),
(0, 'qwerty15112005', '', '23', 1625317548),
(0, 'review-shop11', '', '20', 1625317565),
(0, 'ppppppppppppppq', '', '22', 1625323579),
(0, 'khadanh', '', '25', 1625324367),
(0, 'tennhuloan', '', '26', 1625326511),
(0, 'lien123', '', '30', 1625327749),
(0, '67892345', '', '20', 1625340555),
(0, 'noob2007', '', '25', 1625352821),
(0, '0948415102', '', '27', 1625354143),
(0, '0965128422', '', '22', 1625354819),
(0, 'hoagsue', '', '28', 1625359398),
(0, 'vandu142', '', '20', 1625360604),
(0, 'chumvanheo', '', '23', 1625360626),
(0, 'khangmeo', '', '27', 1625362273),
(0, 'linhvn', '', '24', 1625362569),
(0, 'ngaovuvn', '', '27', 1625363016),
(0, 'trungum', '', '29', 1625363218),
(0, 'quanghieu123', '', '26', 1625363987),
(0, 'quanghuy4a1', '', '25', 1625364068),
(0, 'chanqua555', '', '28', 1625365391),
(0, 'nhutpham', '', '30', 1625365780),
(0, 'taiheo3', '', '30', 1625367094),
(0, 'bimbeo', '', '30', 1625370358),
(0, '0986209086', '', '23', 1625371916),
(0, 'dragon', '', '29', 1625376718),
(0, '0372029764', '', '30', 1625379356),
(0, 'thachngocthai', '', '29', 1625380140),
(0, 'quangteo', '', '30', 1625382456),
(0, 'tongteo147', '', '27', 1625391330),
(0, 'richnho', '', '24', 1625392869),
(0, 'highluong', '', '30', 1625392918),
(0, 'duongquang', '', '29', 1625393342),
(0, 'thinhalok', '', '29', 1625394058),
(0, 'minhngao', '', '26', 1625394065),
(0, 'canvnb', '', '27', 1625394134),
(0, 'hvwjfwjvs', '', '25', 1625406402),
(0, 'huylep', '', '28', 1625414439),
(0, 'minhta', '', '27', 1625439932),
(0, 'datchuai', '', '28', 1625442070),
(0, 'hihax112', '', '21', 1625442249),
(0, 'trung2008', '', '28', 1625444321),
(0, 'tohai79', '', '29', 1625448897),
(0, 'truchuong0', '', '29', 1625453614),
(0, 'konp319', '', '25', 1625458100),
(0, 'ngohuyyyy', '', '20', 1625458367),
(0, 'aquang11002', '', '29', 1625459605),
(0, 'qwertyuiop1221', '', '24', 1625461794),
(0, 'quang-nguyen', '', '25', 1625466100),
(0, 'nguyenanhduc110', '', '23', 1625466792),
(0, 'kobt12', '', '26', 1625467150),
(0, 'taodeptrai', '', '26', 1625468010),
(0, 'khadeptrai123', '', '21', 1625472820),
(0, 'duongquang2k5', '', '27', 1625473455),
(0, 'usho646', '', '28', 1625473662),
(0, '111111', '', '26', 1625476011),
(0, 'duonh4040', '', '23', 1625481288),
(0, 'ngunha125', '', '20', 1625483660),
(0, 'duythai', '', '20', 1625484013),
(0, 'kothics', '', '30', 1625484274),
(0, 'loannguyen', '', '26', 1625487503),
(0, 'giathanh4a2', '', '30', 1625488054),
(0, 'free-fire', '', '20', 1625490839),
(0, 'teotennis0212', '', '22', 1625505530),
(0, 'blackvn', '', '29', 1625533468),
(0, 'hatutra1324', '', '20', 1625536862),
(0, 'qqqqqqqqq', '', '22', 1625539126),
(0, 'nguyen-van-tri', '', '25', 1625543442),
(0, 'nguenque', '', '27', 1625550319),
(0, 'phanvangieu', '', '23', 1625554327),
(0, 'thanh2007', '', '29', 1625555406),
(0, 'jfyufdgnbc', '', '20', 1625555700),
(0, 'shidamon', '', '21', 1625555803),
(0, 'tupoil', '', '28', 1625555807),
(0, 'gacons', '', '21', 1625555905),
(0, 'lamkit', '', '21', 1625555919),
(0, 'hieusiny', '', '29', 1625555962),
(0, 'hungtg123', '', '29', 1625555964),
(0, 'phuc11', '', '27', 1625555971),
(0, 'thai-san', '', '25', 1625555985),
(0, 'fanvinh654', '', '27', 1625555994),
(0, 'phamquyet1232', '', '24', 1625556000),
(0, 'fhripyy', '', '23', 1625556002),
(0, 'tiendep', '', '20', 1625556022),
(0, 'facebook', '', '21', 1625556046),
(0, 'lethanhnho', '', '29', 1625556057),
(0, 'vdtgaming', '', '28', 1625556094),
(0, 'thong0909', '', '28', 1625556112),
(0, 'tmttuanha', '', '27', 1625556158),
(0, 'dat111111', '', '25', 1625556171),
(0, 'luong-chau', '', '22', 1625556181),
(0, 'jaycenzo', '', '27', 1625556234),
(0, 'khang-hkt', '', '20', 1625556355),
(0, 'shusdm-2', '', '20', 1625556442),
(0, 'sanghhhhg', '', '28', 1625556462),
(0, 'tuilanoob', '', '26', 1625556475),
(0, 'vinhvip', '', '28', 1625556504),
(0, 'hai12345', '', '22', 1625556519),
(0, 'tuyenbo05', '', '27', 1625556524),
(0, 'projackson', '', '20', 1625556527),
(0, 'quandz2k9123', '', '23', 1625556532),
(0, 'tinhthienqq', '', '22', 1625556541),
(0, 'baoff1709', '', '21', 1625556550),
(0, 'minhngoc', '', '20', 1625556577),
(0, 'kiamoster', '', '28', 1625556580),
(0, 'nguyenhoa2k4', '', '28', 1625556580),
(0, 'moncute', '', '30', 1625556581),
(0, 'bietvay906', '', '24', 1625556581),
(0, 'khanhcho02', '', '28', 1625556594),
(0, 'lop90hot', '', '24', 1625556598),
(0, 'nguyennhattuong', '', '26', 1625556637),
(0, 'ltnhat', '', '22', 1625556643),
(0, 'vanhxautrai', '', '29', 1625556659),
(0, 'snnsnsns', '', '24', 1625556661),
(0, 'laulau', '', '20', 1625556661),
(0, 'herodeku', '', '28', 1625556661),
(0, 'huynh-tan-phuc', '', '30', 1625556684),
(0, 'nguyenanhthu', '', '21', 1625556705),
(0, 'gdjdjdvdbdu', '', '23', 1625556735),
(0, 'kienhuhu1212', '', '28', 1625556748),
(0, 'hazatoz', '', '29', 1625556765),
(0, 'nguyentrananhthi', '', '26', 1625556783),
(0, 'tamka12', '', '26', 1625556803),
(0, 'hdbjhcf', '', '24', 1625556804),
(0, 'legendm', '', '30', 1625556804),
(0, 'khaidz098', '', '23', 1625556817),
(0, '998877', '', '26', 1625556845),
(0, 'loitrachle2019', '', '23', 1625556849),
(0, 'lamle789789', '', '28', 1625556854),
(0, 'taolaboy', '', '26', 1625556883),
(0, 'ffbbhgg', '', '29', 1625556888),
(0, 'hahsjabab', '', '24', 1625556930),
(0, '0909675402', '', '27', 1625556967),
(0, 'binehihi', '', '29', 1625556969),
(0, 't-gaming', '', '22', 1625556973),
(0, 'lethao', '', '30', 1625557061),
(0, 'lecongdinh', '', '27', 1625557157),
(0, 'nhagiau', '', '30', 1625557165),
(0, 'tai999', '', '21', 1625557174),
(0, 'thientai1789', '', '20', 1625557203),
(0, 'tmtngotuanha2', '', '22', 1625557209),
(0, 'han123', '', '22', 1625557278),
(0, 'toanthebest', '', '24', 1625557391),
(0, 'benconrraa', '', '25', 1625557400),
(0, 'longthien', '', '20', 1625557414),
(0, 'tmtngotuanha3', '', '30', 1625557437),
(0, 'toan-ok', '', '20', 1625557438),
(0, 'vanphong', '', '29', 1625557568),
(0, 'jinoob2005', '', '30', 1625557639),
(0, 'loc12345t', '', '23', 1625557668),
(0, 'hoang1234', '', '20', 1625557673),
(0, 'son-tinh', '', '23', 1625557852),
(0, 'ngotantai9823-', '', '25', 1625557908),
(0, 'ffmax234', '', '21', 1625557986),
(0, '009090', '', '23', 1625557990),
(0, '44nmggh', '', '28', 1625557999),
(0, 'datchuainua', '', '26', 1625558026),
(0, '123456duongnoob', '', '29', 1625558113),
(0, 'nguyenvanhung', '', '24', 1625558140),
(0, 'giahuy30112009', '', '30', 1625558141),
(0, 'kiwitvmcgamer', '', '27', 1625558290),
(0, 'lo-quy-thuan', '', '29', 1625558291),
(0, 'vinhdeptrai', '', '21', 1625558301),
(0, 'trankietluan', '', '27', 1625558390),
(0, 'minh6655', '', '23', 1625558445),
(0, 'tongtuandu', '', '30', 1625558481),
(0, 'cauken202', '', '24', 1625558495),
(0, 'phamduca2020', '', '27', 1625558517),
(0, 'minh-k9', '', '29', 1625558520),
(0, 'phamduyen', '', '23', 1625558583),
(0, 'ugdjcruh', '', '29', 1625558667),
(0, 'khoa2008kj', '', '24', 1625558696),
(0, 'huungoc23112011', '', '28', 1625558702),
(0, 'vinhxinhtraifake', '', '22', 1625558713),
(0, 'tom12345', '', '25', 1625558714),
(0, 'quydeptrai', '', '28', 1625558714),
(0, '345672', '', '29', 1625558776),
(0, 'huutoan4atvn', '', '20', 1625558788),
(0, 'nhan01082010', '', '28', 1625558809),
(0, 'ha-mon', '', '24', 1625558821),
(0, '3225076465', '', '26', 1625558845),
(0, 'ashihi', '', '28', 1625558847),
(0, 'hhyynniihh', '', '30', 1625558924),
(0, 'viet-nguyen', '', '30', 1625558952),
(0, 'nvhdck', '', '30', 1625558966),
(0, 'anhlaem', '', '21', 1625559047),
(0, 'dmd12119', '', '24', 1625559091),
(0, 'tarzanyou', '', '30', 1625559314),
(0, 'sangfchacam123', '', '30', 1625559333),
(0, 'hungngu', '', '29', 1625559375),
(0, 'game111', '', '30', 1625559536),
(0, 'hungngu1233', '', '24', 1625559672),
(0, 'nguyen-huu-duc', '', '27', 1625559703),
(0, 'daovankhanh', '', '20', 1625559768),
(0, '0987488593', '', '26', 1625559820),
(0, 'anminersdm', '', '22', 1625559831),
(0, 'pikacho', '', '20', 1625559936),
(0, 'cubilx', '', '28', 1625559976),
(0, 'quyetthang', '', '29', 1625560150),
(0, 'dong233', '', '23', 1625560179),
(0, '0904553837', '', '26', 1625560186),
(0, 'vat2529', '', '24', 1625560222),
(0, 'duonghoang321', '', '24', 1625560238),
(0, 'hung5554', '', '21', 1625560327),
(0, 'lambinodeptrai', '', '20', 1625560395),
(0, 'fanfan', '', '23', 1625560436),
(0, 'ngovanhoang', '', '27', 1625560533),
(0, 'cuhitdat', '', '30', 1625560903),
(0, 'huhhhbhs', '', '22', 1625561018),
(0, 'sangllllll', '', '21', 1625561822),
(0, 'minhff', '', '25', 1625562602),
(0, 'qwerty', '', '20', 1625562737),
(0, 'uuyyyttthchhgghj', '', '25', 1625563675),
(0, 'phamhung', '', '24', 1625563753),
(0, 'ngaoda', '', '26', 1625564558),
(0, 'nguyen-phuc-duy', '', '30', 1625564628),
(0, 'kshehgehe', '', '27', 1625565123),
(0, 'nguyennhungoc', '', '21', 1625565287),
(0, 'vinh-huynh', '', '30', 1625566135),
(0, 'vguvfyh-g', '', '24', 1625566431),
(0, 'ngotantai9823', '', '28', 1625566522),
(0, 'hgv-hggbnm', '', '25', 1625566733),
(0, 'honghh', '', '30', 1625567340),
(0, 'quyenksk9', '', '20', 1625568751),
(0, 'onichanlave', '', '28', 1625569506),
(0, '0909123456', '', '26', 1625570082),
(0, 'dfsfgdgfgfdgb', '', '21', 1625570384),
(0, 'lehoangan271', '', '25', 1625571681),
(0, '0904553836', '', '25', 1625571870),
(0, 'cuemdz', '', '27', 1625572266),
(0, 'hoangtu9k', '', '20', 1625573233),
(0, 'thanhmv', '', '20', 1625573433),
(0, '0972204826', '', '29', 1625573774),
(0, 'hengheng', '', '27', 1625574199),
(0, 'kobieten', '', '26', 1625574242),
(0, 'poppop', '', '28', 1625574873),
(0, 'nguyen-van-niem', '', '20', 1625577413),
(0, 'danh13572', '', '30', 1625577444),
(0, 'anhtuanhaha', '', '22', 1625578125),
(0, 'cangcua', '', '20', 1625579579),
(0, 'trongphuc43', '', '23', 1625580478),
(0, 'phuclonthan', '', '22', 1625580766),
(0, 'kiria_lucy', '', '30', 1625580880),
(0, 'vanhmc', '', '28', 1625582147),
(0, '1918873369', '', '26', 1625582907),
(0, 'tam12666', '', '30', 1625583727),
(0, 'vggggg', '', '30', 1625584973),
(0, 'nakrothbi113', '', '21', 1625587422),
(0, 'hackboy999', '', '28', 1625591302),
(0, 'gfdhfgd', '', '30', 1625612316),
(0, 'luongchau', '', '28', 1625616141),
(0, 'vokhoa', '', '23', 1625617686),
(0, 'mhgguffhhhh', '', '24', 1625618241),
(0, 'emtenlaminh', '', '30', 1625618748),
(0, 'cmducc555', '', '23', 1625619114),
(0, 'ffyhgcxff', '', '23', 1625619213),
(0, 'emxunhtrai', '', '26', 1625619388),
(0, 'thangke2k8', '', '24', 1625619576),
(0, 'fdgfdfe', '', '22', 1625620005),
(0, 'lucdau', '', '23', 1625620238),
(0, 'an1920', '', '22', 1625620508),
(0, 'thanh99', '', '23', 1625620513),
(0, 'wrrewr', '', '25', 1625620564),
(0, 'qazxswedcvfr', '', '30', 1625621397),
(0, 'thuy', '', '24', 1625622798),
(0, 'tuanff56', '', '20', 1625622872),
(0, 'tuanff57', '', '21', 1625622981),
(0, 'tuan-truong', '', '22', 1625623396),
(0, 'letrongtu', '', '25', 1625624993),
(0, 'phucdepzai', '', '24', 1625625314),
(0, '1111111111', '', '22', 1625625517),
(0, 'dinh-iduvfue', '', '25', 1625626095),
(0, 'thanh12345', '', '21', 1625626247),
(0, 'rirrrrr', '', '25', 1625626933),
(0, 'trongphuc-ak-rong-xanh', '', '30', 1625627425),
(0, 'phucsans', '', '29', 1625627513),
(0, 'hieudm120307', '', '28', 1625628406),
(0, 'tuan-anh', '', '21', 1625629261),
(0, 'contrai', '', '23', 1625630958),
(0, 'momnmo', '', '21', 1625630961),
(0, 'vuong-thai-son', '', '29', 1625631906),
(0, 'fancungvinh', '', '29', 1625632186),
(0, 'quoctatg', '', '24', 1625632287),
(0, 'nampro12320', '', '26', 1625634447),
(0, '0983738333', '', '22', 1625635193),
(0, 'khoale', '', '20', 1625636212),
(0, 'hoangphucdepzai', '', '21', 1625636300),
(0, 'baokrp123', '', '23', 1625637522),
(0, 'thinhnek', '', '28', 1625637566),
(0, 'rrrrrrrrrr', '', '23', 1625638112),
(0, 'ngocbao', '', '20', 1625638638),
(0, 'asdfssd', '', '23', 1625639592),
(0, 'long-ne', '', '22', 1625642091),
(0, 'thumuachoi1234', '', '29', 1625642351),
(0, 'him12345', '', '23', 1625728157),
(0, 'nguyetnguyen', '', '23', 1625728215),
(0, 'captchalagi', '', '24', 1625728398),
(0, 'nam30slaxong', '', '27', 1625728426),
(0, 'thanhfa1991', '', '27', 1625728474),
(0, 'duc-nhan', '', '22', 1625728666),
(0, 'dat111', '', '20', 1625728911),
(0, 'hieunegaming', '', '20', 1625728922),
(0, 'dat2003', '', '27', 1625728984),
(0, 'depptraii', '', '23', 1625729028),
(0, 'manhcuong', '', '29', 1625729035),
(0, 'hihihihihihihi', '', '27', 1625729059),
(0, 'sunecu', '', '27', 1625729369),
(0, 'manhvipsuk', '', '22', 1625729546),
(0, 'cong159', '', '20', 1625729560),
(0, 'lequangvinh', '', '30', 1625729697),
(0, 'linh-lay-gm', '', '21', 1625729901),
(0, 'superthienson', '', '24', 1625729981),
(0, 'duygayto123', '', '20', 1625730393),
(0, 'minhdrmnc', '', '25', 1625730542),
(0, 'usethis', '', '29', 1625730888),
(0, 'taoladat22', '', '30', 1625730986),
(0, 'khanhlinh888', '', '29', 1625731276),
(0, '11111111111111', '', '29', 1625731534),
(0, 'ad999999', '', '27', 1625731955),
(0, 'minhminh', '', '28', 1625732181),
(0, 'trucnokia', '', '26', 1625732338),
(0, 'quylau456', '', '29', 1625732478),
(0, 'hghghgg', '', '27', 1625733247),
(0, 'gaoxanhtv', '', '30', 1625733260),
(0, 'vinhxinhtrai555', '', '21', 1625733610),
(0, 'tvinh1802', '', '26', 1625733623),
(0, 'quanggg', '', '27', 1625733923),
(0, 'cu-tin', '', '22', 1625734159),
(0, 'hung123456789', '', '24', 1625734432),
(0, 'dung123', '', '21', 1625734564),
(0, 'keoybt173', '', '26', 1625734588),
(0, 'datlightdeptrai', '', '21', 1625734606),
(0, 'hoabinh', '', '26', 1625734775),
(0, 'fancuavxt', '', '28', 1625735073),
(0, 'mydung123456789', '', '25', 1625735135),
(0, 'haibg2k9', '', '24', 1625735254),
(0, 'uyenlinh1', '', '24', 1625735550),
(0, 'hung832008', '', '20', 1625736017),
(0, 'jdhdbdjdjdjsj', '', '25', 1625736061),
(0, 'do-hoang-hai', '', '24', 1625736084),
(0, 'adminvxt1', '', '29', 1625736534),
(0, 'jhjhjhjh', '', '29', 1625736979),
(0, 'letrachloi', '', '23', 1625737030),
(0, 'quanggiao', '', '29', 1625737549),
(0, 'kay12345', '', '28', 1625737636),
(0, 'fananhvinh', '', '25', 1625738444),
(0, 'kimngancutene', '', '29', 1625738889),
(0, 'chibiphuc', '', '22', 1625739271),
(0, 'huykdbbd', '', '20', 1625739829),
(0, 'okanhdung-', '', '29', 1625740815),
(0, 'superhn', '', '29', 1625740927),
(0, 'khoa2008kh', '', '30', 1625741448),
(0, 'huntrwehuntrwe', '', '25', 1625741777),
(0, 'thinh-dep-trai', '', '24', 1625741782),
(0, 'kayy1234', '', '29', 1625741844),
(0, 'bakacobat', '', '20', 1625743039),
(0, 'tran-duy', '', '28', 1625743491),
(0, 'thinh1231', '', '26', 1625743572),
(0, 'lethian', '', '24', 1625743681),
(0, 'thanhquy', '', '23', 1625743960),
(0, 'hhhhhh', '', '26', 1625744127),
(0, 'tinhpro123', '', '29', 1625744631),
(0, '9999999999999', '', '25', 1625744768),
(0, 'miniworld', '', '29', 1625745055),
(0, '0393192265', '', '28', 1625745712),
(0, 'hoquockhanh', '', '23', 1625746528),
(0, 'trungdzdz', '', '28', 1625746926),
(0, 'trungnak', '', '23', 1625749522),
(0, 'vinhxinhtraifreefire', '', '22', 1625750026),
(0, 'tung12345', '', '23', 1625750501),
(0, 'hieumeo', '', '28', 1625750597),
(0, 'tuvhgvv', '', '22', 1625751758),
(0, 'quynh055', '', '27', 1625752511),
(0, 'yuangnho', '', '30', 1625755534),
(0, 'ywandz', '', '20', 1625755647),
(0, 'deptraiok', '', '27', 1625755686),
(0, 'hahayat', '', '20', 1625757330),
(0, 'gtdjuu', '', '26', 1625758003),
(0, 'tunffgame', '', '30', 1625759861),
(0, 'nhatphu241209', '', '27', 1625759974),
(0, 'nhan123', '', '30', 1625761461),
(0, 'duufvgy', '', '26', 1625761625),
(0, '544687', '', '23', 1625761861),
(0, 'concac113', '', '25', 1625763449),
(0, 'rikakivn', '', '20', 1625763699),
(0, 'linhluuvan', '', '30', 1625768106),
(0, 'haiww123456', '', '30', 1625770524),
(0, 'asasas', '', '20', 1625785467),
(0, 'vanchanh', '', '20', 1625786937),
(0, 'quochuy99', '', '20', 1625789622),
(0, 'tuyen-pham-thi', '', '23', 1625791094),
(0, 'lamtay352', '', '30', 1625792142),
(0, 'quynh88', '', '28', 1625792907),
(0, 'baoly98', '', '21', 1625792920),
(0, 'thang24122009', '', '21', 1625792989),
(0, 'dat123123', '', '28', 1625793640),
(0, 'xuhjhj', '', '22', 1625794076),
(0, 'jgxxjgx', '', '23', 1625794155),
(0, 'tnqh31', '', '21', 1625794445),
(0, 'quynhanh', '', '22', 1625794749),
(0, 'trunggaming', '', '24', 1625796081),
(0, 'thuyeuchame', '', '27', 1625796357),
(0, 'aloaloaloaooaloaoaoaii', '', '26', 1625798626),
(0, 'nguyen-thi-kim', '', '21', 1625800048),
(0, 'agsonne', '', '29', 1625800490),
(0, 'nguyenthikim', '', '25', 1625800752),
(0, '0783847771', '', '23', 1625801062),
(0, 'sonnguyen26', '', '28', 1625802462),
(0, 'gguy109', '', '27', 1625803598),
(0, 'demon_sdqn', '', '21', 1625803609),
(0, 'admin111', '', '25', 1625804080),
(0, 'nuongg', '', '21', 1625804576),
(0, 'bibaofake', '', '30', 1625804712),
(0, 'nhanthan', '', '22', 1625804733),
(0, 'voanhna6', '', '30', 1625804864),
(0, 'bibaofakegmr', '', '20', 1625804954),
(0, 'utdvhhg', '', '24', 1625806647),
(0, 'homtree', '', '27', 1625806965),
(0, 'ngocthuypp2020', '', '26', 1625807880),
(0, 'cac-idol', '', '26', 1625808073),
(0, 'thituyenpham', '', '22', 1625808333),
(0, 'aadfgd', '', '22', 1625808670),
(0, 'khang-milo', '', '22', 1625808912),
(0, 'tham-thanh-binh', '', '28', 1625809252),
(0, 'pppppppp', '', '23', 1625809278),
(0, 'ministar90', '', '20', 1625810299),
(0, 'gdgdgd', '', '27', 1625810648),
(0, 'rfrtrfytfty', '', '29', 1625810923),
(0, 'phuonganh123', '', '23', 1625811765),
(0, 'concacngu', '', '28', 1625811947),
(0, 'phat_tien', '', '24', 1625812897),
(0, 'thythynguyen', '', '26', 1625814617),
(0, 'do-hoai-can', '', '20', 1625814660),
(0, 'toanzz123', '', '27', 1625814677),
(0, '2228428310i', '', '28', 1625814912),
(0, 'hoang17', '', '25', 1625815131),
(0, 'miniboxzk', '', '30', 1625815323),
(0, 'minhdeptrai', '', '20', 1625816630);
INSERT INTO `register_gift` (`id`, `username`, `name`, `kimcuong`, `time`) VALUES
(0, 'aaaaaaaaaaaaaaaaaaa', '', '29', 1625816930),
(0, 'sangdaica200', '', '20', 1625818212),
(0, 'minh123qwe', '', '29', 1625818344),
(0, 'datcute', '', '28', 1625818517),
(0, 'anhdien123', '', '30', 1625819378),
(0, 'hehaheha', '', '21', 1625819797),
(0, 'vukhanh1w3', '', '29', 1625820308),
(0, 'liopkiki', '', '26', 1625820529),
(0, 'anhnhat01', '', '25', 1625823631),
(0, 'hihihi', '', '23', 1625825897),
(0, 'kimchi211', '', '30', 1625826699),
(0, '0967677580', '', '20', 1625830100),
(0, 'myphuong', '', '22', 1625832460),
(0, 'nguyen', '', '24', 1625834766),
(0, '0562773865', '', '20', 1625836158),
(0, 'hukanai', '', '22', 1625838554),
(0, '4343999h', '', '30', 1625838694),
(0, '192837465', '', '26', 1625839023),
(0, 'minmin1798', '', '27', 1625840831),
(0, 'kingki', '', '21', 1625843116),
(0, 'tung2kk7', '', '20', 1625843643),
(0, 'qqqqqqe', '', '20', 1625845286),
(0, 'phuctv', '', '23', 1625923235),
(1, 'admin123', 'shopthanhdieutv', '14', 1605156415),
(2, '184239333320161', 'Tom My', '14', 1605168407),
(3, 'khangnguyen2g', 'Nguyễn Nhựt Khang', '14', 1605175229),
(4, '208462874026317', 'Hào Hoàng', '12', 1605191458),
(5, 'ttt000', 'Nhóc Nguyễn', '15', 1605240023),
(6, 'bao555', 'Bao555', '11', 1605308993),
(7, '706424816683754', 'Chuột', '13', 1605443420),
(8, '734480380497220', 'Công Chí Lê', '11', 1605446177),
(9, '123347179568332', 'Yi Linx', '13', 1605447843),
(10, 'vietmuahack', 'nguyênc văn việt', '13', 1605447936),
(11, 'adminly', 'Sun Coder Official', '15', 1605447972),
(12, 'phong0cu', 'PHạm văn phong', '12', 1605449138),
(13, 'khachieu', 'Nguyễn khắc hiếu', '12', 1605449918),
(14, '428956661833041', 'Gấu Đẹp Trai', '13', 1605450689),
(15, '157383959461980', 'An Hoang', '10', 1605450811),
(16, '201405164757299', 'Đừng Biết', '14', 1605451726),
(17, '180220427069400', 'Trung Nguyen', '12', 1605452228),
(18, 'quang12345', 'Đoàn Quang Hưng', '14', 1605452230),
(19, '367869327868350', 'Phạm Quân', '13', 1605482945),
(20, '189997436019039', 'Ngốc Ngốc Thật', '14', 1605485269),
(21, '806823319879587', 'Le Huu Phuoc', '13', 1605504219),
(22, '367591637681975', 'Bé Bi', '10', 1605510699),
(23, '465602287747469', 'Duyên Nguyen', '12', 1605514678),
(24, 'dbhhhssvb', 'Ít nói gaming', '13', 1605514759),
(25, '232731321609764', 'Nguyễn Phương Thảo', '15', 1605517572),
(26, '840950160050883', 'Dũng Con', '10', 1605518762),
(27, '382632642942003', 'DI Nguyen', '11', 1605524252),
(28, 'kaygaming', 'KayGaming', '14', 1605533568),
(29, '184003939984349', 'Nguyên Trần', '10', 1605533676),
(30, '791134514797294', 'Lê Văn Thanh', '12', 1605534701),
(31, '158370515899055', 'Hoàng Phát', '15', 1605534707),
(32, '194728975496250', 'Gấu Đỏ', '13', 1605535895),
(33, '141069724425585', 'Nga Nguyễn Thị', '15', 1605536398),
(34, 'doraemon', 'Doraemon ', '10', 1605536613),
(35, 'shopfake', 'Nam Phong', '13', 1605536913),
(36, '846402429520496', 'Phạm Thế Đông', '11', 1605541425),
(37, 'kkkkkaa', 'Nhóc Nguyễ', '15', 1605541617),
(38, 'tranvanhien', 'tran van tran', '11', 1605580783),
(39, '133779078496574', 'Vương Thanh Diệu', '13', 1605581400),
(40, '388270759277860', 'Hoàng Tử TB', '12', 1605586172),
(41, '207844687413686', 'Nguyễn Minh Tú', '10', 1605592518),
(42, '188251026326564', 'Huỳnh Ngọc Khang', '11', 1605594822),
(43, '385365286142646', 'Vũ Văn Tự', '13', 1605596575),
(44, 'bugamingtv', 'bugamingtv', '15', 1605596971),
(45, '401066304591653', 'Tai Tai', '14', 1605597266),
(46, 'hon•can', 'Lường Hơn', '15', 1605597540),
(47, '193696712223692', 'Đồ Chơi Tuấn', '15', 1605598625),
(48, '123456', 'Phạm Cảnh', '15', 1605599614),
(49, 'hacksubnha', 'Tokibu', '10', 1605600014),
(50, 'toannehihi', 'Lê Hữu Toàn', '10', 1605603563),
(51, 'than123', 'Than123', '14', 1605603748),
(52, '179417423547073', 'Sơn Võ Văn', '14', 1605604222),
(53, 'fanthanhdieutv', 'FanThanhDieuTV', '10', 1605608251),
(54, '403303190866027', 'Kẻ Sấu Trai', '10', 1605610684),
(55, '435006984166346', 'Trẻ Trâu Hợp', '10', 1605611078),
(56, '392846028531761', 'Thuận Nguyễn', '15', 1605611969),
(57, '365463004725213', 'Gà Đá Bến Tre', '12', 1605613662),
(58, '209119940660635', 'Nguyễn Nguyên', '14', 1605616287),
(59, '185539526492690', 'Jany Nguyễn', '11', 1605616462),
(60, '169712941491149', 'Nguyễn Duy Khôi', '12', 1605616945),
(61, 'datlight123', 'datlight123', '12', 1605617320),
(62, 'trimai123', 'Trimai', '11', 1605617606),
(63, '418795272594006', 'Nguyễn Lâm', '14', 1605620982),
(64, 'minhduc', 'Nguyễn Minh Đức', '14', 1605621206),
(65, '01669146130', 'Nguuen quan', '11', 1605623218),
(66, '148971956912966', 'Thân Kòii', '12', 1605625777),
(67, 'nguyenbiin', 'Nguyễn Thái Ửng', '10', 1605626404),
(68, 'toanmuonhack', 'Lê Hữu Toàn', '11', 1605671538),
(69, '403746844314095', 'Nguyễn Hưng', '15', 1605674062),
(70, '363835124720373', 'Nguyễn Hưng', '14', 1605674183),
(71, '376663993451368', 'Nguyễn Kiệt', '15', 1605674248),
(72, '376989596961651', 'Sống Về Đêm', '14', 1605674291),
(73, 'nguyenhung547', 'Blue5656', '12', 1605674327),
(74, 'tuyenkn123sdsd', 'BLUEFirefdf', '13', 1605674368),
(75, 'tuyenkn123dsds', 'sdsdsds', '11', 1605674396),
(76, 'tuyenkn123fdfdfdfd', 'VID_20190529_085049_Moment', '13', 1605674454),
(77, 'nhutpro205', 'Võ Hoàng Mỹ', '13', 1605675806),
(78, '415074703002789', 'Kém Duyên', '15', 1605676276),
(79, '121595929741147', 'Son Lê', '14', 1605679336),
(80, 'tai123', 'Taiđeptrai', '15', 1605681958),
(81, '156439472902442', 'Hà Thị Thu', '15', 1605688374),
(82, '193998168862065', 'Quốc Trường', '11', 1605689589),
(83, 'than1234', 'Than1234', '13', 1605691594),
(84, '172018367962349', 'Tuong Le', '15', 1605691839),
(85, '2334048529', 'Vũ Thế Hiệp', '11', 1605692676),
(86, 'thandat', 'Thandat', '14', 1605696883),
(87, 'than5555', 'Than5555', '11', 1605699441),
(88, 'ddusjzjxjxj', 'Uzjjxhzhzhxh', '11', 1605701361),
(89, 'sibichi', 'sibichi', '13', 1605702597),
(90, '139857694562411', 'Khánh Xoăn', '14', 1605706591),
(91, '377548546788084', 'Văn Thái Le', '13', 1605716841),
(92, '204446464534347', 'Đen Sói', '15', 1605751493),
(93, '198868275021353', 'Trần Đức', '10', 1605754045),
(94, 'dathackff', 'Nguyễn Đạt Official', '11', 1605762172),
(95, '0905120466', 'Phạm anh tài', '14', 1605765451),
(96, 'xcvxvxc', 'vcvzcvzxz', '14', 1605772406),
(97, '123456h', 'gfdffgfg', '11', 1605772500),
(98, '398805498130270', 'Quyết Hữu', '13', 1605777316),
(99, '364440697967347', 'Hoang Huy', '11', 1605777704),
(100, '150539620100859', 'Trước Văn Đó', '15', 1605777827),
(101, '135879118313769', 'Bình Dương Viog Tang', '15', 1605777896),
(102, '187421399645591', 'Trần Trung Nghĩa', '13', 1605778189),
(103, '193601268897539', 'Đoan Diệp', '11', 1605782551),
(104, '862617374544927', 'Nguyễn Tuấn Minh', '15', 1605784148),
(105, '434497997914228', 'Le Dạt', '10', 1605784505),
(106, 'nnn2k8w', 'Nn2k8sn', '11', 1605788051),
(107, 'huy0182', 'Kuayah', '13', 1605788166),
(108, '241938257352026', 'Jojo Hưng', '11', 1605790756),
(109, '212661507101908', 'Ánh Kòy', '12', 1605794059),
(110, '201166754904918', 'Thanh Sang', '15', 1605800695),
(111, 'huuhoang', 'huunghia123', '15', 1605834108),
(112, '129591852290075', 'Nguyễn Tấn Vũ', '15', 1605837880),
(113, '127489975832394', 'Ntt Nguyễn', '11', 1605840670),
(114, '417670396282229', 'Nguyễn Nga', '15', 1605843621),
(115, 'dotuanminh2', 'Dotuanminh2', '15', 1605843689),
(116, '226877988854745', 'Lun Minh', '10', 1605843763),
(117, 'thanhdieutv2', 'Thanhdieutv', '12', 1605843893),
(118, '192976655695580', 'Đỗ Nhật Hoàng', '15', 1605860619),
(119, '981461136108076', 'Hieu Hien Tran Nguyen', '13', 1605862811),
(120, '186931232979234', 'Anh Tuan', '15', 1605867820),
(121, 'hanotv1234', 'Nguyễn đức dũng', '15', 1605870876),
(122, '212710893547244', 'Nguyễn. T. Thành', '12', 1605873445),
(123, '168913478291157', 'Idol Tài', '10', 1605875647),
(124, 'lolgamer', 'Ffdgtdfggg', '13', 1605876498),
(125, '471734290470700', 'しん いち', '10', 1605877649),
(126, '186079723066312', 'Đại Lão Gia', '15', 1605879216),
(127, '199716398432724', 'Tên Không', '10', 1605881995),
(128, '113894443872939', 'Nguyễn Tiến Cường', '15', 1605897485),
(129, '420624085733011', 'Nguyễn Hoàng Ninh', '15', 1605922238),
(130, '851549905613278', 'Trần Văn Hiền', '14', 1605927188),
(131, 'hominhduong2019', 'abcvbnbbnb n', '10', 1605930385),
(132, '180484943675347', 'Hai Nguyen', '13', 1605945440),
(133, 'qeqei223', 'qeqei222', '12', 1605953450),
(134, '210215920489283', 'Truy Nguyễn', '11', 1605955538),
(135, '172304127906017', 'Sip Đỏ', '11', 1605955996),
(136, 'vanducz1', 'Vanduc', '15', 1605956364),
(137, '195044192089584', 'Hồ Tuấn', '13', 1605959346),
(138, '155751716296253', 'An Đinh', '10', 1605959471),
(139, '164860475314012', 'Duy Anh', '15', 1605960413),
(140, 't0356270374', 'kienquoc', '12', 1605962308),
(141, '386538665918276', 'Danh Vô', '13', 1605969448),
(142, '389898609021683', 'Le Ly', '12', 1605974456),
(143, '167181688464020', 'Nè Ken', '15', 1605977992),
(144, 'hungnopro', 'Nỹ đức hưng', '12', 1605998405),
(145, '397922801255883', 'Trần Văn Phúc', '14', 1606002817),
(146, 'hoanganh', 'Sanews', '15', 1606009202),
(147, '440161624052349', 'Hồ Thanh Nam', '10', 1606021349),
(148, '416131919749245', 'Bùi Văn Tính', '11', 1606024141),
(149, 'meowngu', 'Trần Hiếu Nghĩa', '15', 1606024293),
(150, 'adfggjj', 'Phanvantuananhcc', '12', 1606024723),
(151, '402113587630304', 'Thien Nhan', '14', 1606030121),
(152, '176220867503129', 'Nguyễn Giang', '15', 1606032246),
(153, 'chau9999', 'Châu DJ', '14', 1606044128),
(154, 'doanhoailinh', 'Đoàn Hoài Linh', '15', 1606045293),
(155, '389164752403367', 'Thu Hồng Nana', '12', 1606045782),
(156, '387149705930237', 'Thành Công', '13', 1606049295),
(157, '152085273315934', 'Lê Bí', '14', 1606053880),
(158, 'levancuong', 'Văn cường', '10', 1606054063),
(159, '3067840870111336', 'Yen Chu', '15', 1606055061),
(160, '1255902448136138', 'Nguyễn Đình Kiều', '11', 1606057776),
(161, 'phong123', 'phong pro', '15', 1606058117),
(162, '118967960023986', 'Àk Điền', '14', 1606060128),
(163, '1136404196762454', 'Hùng Cuong', '15', 1606060537),
(164, '160909529059767', 'Higa Hiha', '15', 1606064064),
(165, '195201835549492', 'Nguyễn Vương', '10', 1606068106),
(166, '374676186971051', 'Miền Tây Nhớ', '10', 1606099733),
(167, 'hdjerw', 'Nghuyễn Trần Anh Dũng', '10', 1606106867),
(168, '369763220921046', 'Trần Khánh', '12', 1606110369),
(169, '159378202637870', 'Phuong Nguyen Thi', '14', 1606113207),
(170, '1019444281871134', 'Nguyễn Trường Thịnh', '10', 1606115173),
(171, '839686973448970', 'Ham De Gil', '10', 1606126974),
(172, '163767078816924', 'Nguyễn Hoài Duy', '10', 1606129037),
(173, 'claermodskin', 'HKEOBIET', '10', 1606129764),
(174, 'minhtl147', 'Nguyễn Minh', '12', 1606130596),
(175, '378779196907608', 'Hà Văn A Nh', '10', 1606140645),
(176, 'anh222111', 'Ha van anh', '12', 1606141198),
(177, 'anh222ww', 'ha van an', '13', 1606141440),
(178, '384534702973371', 'Tên Ko', '15', 1606144695),
(179, 'nongvannam2002', 'Nông van nam', '11', 1606147552),
(180, '200601338183361', 'Xuông Nôbita', '10', 1606147567),
(181, '216155613254496', 'Khói Đen', '13', 1606158022),
(182, '368417797717798', 'Thái Hữu', '12', 1606186657),
(183, '419405169218037', 'Lê Thanh Phụng', '12', 1606187039),
(184, 'tranquocdat', 'Trần Quốc Đạt', '11', 1606188014),
(185, 'bao333', 'Bao333', '11', 1606190999),
(186, 'hominhtam1', 'hominhtam1', '11', 1606193990),
(187, 'hominhtam00', 'hominhtam', '11', 1606194124),
(188, '211986530278902', 'Vàng Em Cậu', '10', 1606195948),
(189, 'havantao', 'Hà Văn Tạo', '15', 1606195967),
(190, '393599511854466', 'Lê Nhật Bảo', '15', 1606198988),
(191, 'quangha', 'Quangha', '12', 1606200281),
(192, '192507639030305', 'Khánh Lê', '11', 1606202720),
(193, 'asdfghjkl', 'lr mjg', '11', 1606210694),
(194, 'phucskl08', 'Phúc le', '14', 1606213640),
(195, '2142707082531768', 'Nguyen Thi Thu Thanh', '14', 1606217511),
(196, '384785316280700', 'Ngọc Lụa', '12', 1606222933),
(197, 'longkk', 'Ùccchh', '10', 1606223963),
(198, 'sk_thaidz', 'Thái 2k8', '11', 1606226212),
(199, 'lieugiang11', 'LieuGiang', '10', 1606274022),
(200, 'tranduybao', 'Trần Kỳ Duy Bảo', '12', 1606279609),
(201, '410113850347115', 'Diễm My', '12', 1606283192),
(202, '425433715307115', 'Văn Hùng', '10', 1606296724),
(203, '215821506722402', 'Sơn Hoàng', '13', 1606301659),
(204, '154871533030718', 'Trong Quyet', '11', 1606302981),
(205, '154141343092388', 'Trinh Lê', '10', 1606303227),
(206, '189401819451454', 'Nhật Lầy', '14', 1606310624),
(207, '220316429514364', 'Nguyễn Hoàng Nam', '11', 1606311258),
(208, 'qqqqqqq', 'Hdvcjndbsb', '12', 1606313561),
(209, '261230658759998', 'Phạm Hòa', '10', 1607696884),
(210, '216155473418542', 'Đỗ Quy', '10', 1607698119),
(211, 'anh009', 'Hà Anh', '13', 1607699175),
(212, 'buivanhai191', 'Hải 2004', '15', 1607700676),
(213, '435929134106675', 'Lan Vy', '10', 1607770101),
(214, '953146708551793', 'Hoang Viet Bang', '14', 1607787944),
(215, 'hungplay', 'Hưng Play', '14', 1607823347),
(216, '112336064053971', 'Huỳnh Nhật Đt', '14', 1607866836),
(217, 'anh123as', 'Anhduy', '12', 1607868273),
(218, '207291310974248', 'Chánh Idol', '10', 1607918081),
(219, 'lequy1234', 'lequy0', '13', 1607936059),
(220, '134918028427477', 'Mai Anh Phạm', '13', 1608009090),
(221, '720809592189806', 'Xuan Bui', '13', 1608040788),
(222, '214044076986766', 'Văn Ngà Lê', '14', 1608073709),
(223, '441587030362254', 'Nguyễn Linh', '13', 1608094744),
(224, 'hoangnam327', 'Hoàng Nam', '14', 1608112636),
(225, 'binh2k7', 'Binh2k7', '14', 1608116400),
(226, 'anhktay', 'Nguyễn Thanh Bình', '13', 1608116487),
(227, 'kin123', 'Minhtam', '13', 1608121642),
(228, '425048078858043', 'Trịnh Văn Hưng', '13', 1608124477),
(229, '465387944842776', 'CuộC VuI Xứ Lạ', '11', 1608136978),
(230, '214769146843362', 'Trương Tấn Phát', '13', 1608175926),
(231, 'duongtan', 'Hhhhhhhhw', '15', 1608178402),
(232, '340898860692972', 'Yang Yang', '11', 1608180413),
(233, '391936572089898', 'Cương Nguyên', '14', 1608202635),
(234, '184544733362932', 'Tú Nè', '14', 1608211046),
(235, 'vietnamese', 'Anh em td', '13', 1608211589),
(236, '140855594462926', 'Ngô Lợi', '13', 1608221787),
(237, '225423599025898', 'Nguyễn Đạt', '10', 1608267726),
(238, '141312727773370', 'Nguyễn Khang', '14', 1608277552),
(239, 'ngovanloi', 'Ngô Văn Lợi', '11', 1608290767),
(240, 'ky1995', 'Lò văn ký', '15', 1608358170),
(241, 'huan007', 'Đứchuân', '15', 1608371878),
(242, '484825612500680', 'Cao Maria', '11', 1608372379),
(243, 'tripro123', 'Lê quốc trí', '13', 1608379670),
(244, '242740297191603', 'Tuấn Hoàng', '10', 1608429581),
(245, '394736525119121', 'Bùi Minh Truyền', '10', 1608434610),
(246, '111954357442797', 'Lê Lê', '15', 1608437352),
(247, '101762311840036', 'Toàn Tranyy', '11', 1608454364),
(248, '1429572934046470', 'Hai Nguyen', '11', 1608460060),
(249, 'hungdzvl', 'Hưng Play', '12', 1608460756),
(250, 'duyan3633', 'DUY626262', '14', 1608462538),
(251, '0397032453', 'Gau162777', '13', 1608699097),
(252, '430560397980921', 'Minh Quân', '11', 1608725562),
(253, 'thienloc2103', 'Thienloc3245', '14', 1608736211),
(254, 'buiducduy1', 'Âssdf', '12', 1608740545),
(255, 'lucki123', 'Thành lục', '15', 1608789509),
(256, '2132802974', 'HooNgcqueanh', '12', 1608793959),
(257, 'khanhbriona113', 'Khayyy', '12', 1608808240),
(258, '103552908335699', 'Mai Hoan', '12', 1608875379),
(259, 'haiquayxe55', 'Lê văn sơn', '12', 1608877254),
(260, 'luka12qazws', 'lukaku', '15', 1608905987),
(261, '225774829105151', 'Tài Lương', '10', 1608943613),
(262, '708967629761095', 'To Nguyen', '10', 1608951904),
(263, '863556654481297', 'Lượng Phan Hoàng', '10', 1608965984),
(264, '398227834764465', 'Khánh Duy', '15', 1608986196),
(265, '399053374737047', 'Red Hood', '11', 1608997205),
(266, '453359819006771', 'Van Luong Tran', '11', 1609013026),
(267, '117572156847538', 'Danh Thắng', '12', 1609059474),
(268, 'anhkonoi', 'Đinh văn liêm ', '13', 1609071414),
(269, 'narshap2008', 'Hrtafk', '12', 1609071547),
(270, 'thanhvu11', 'Thanh Vũ', '10', 1609126566),
(271, 'cuocsongma', 'Linh BG', '12', 1609130224),
(272, 'leb5132', 'Lê Vũ hoànd', '15', 1609146698),
(273, 'liemdbz', 'Lương văn liêm ', '10', 1609157632),
(274, '486923965604985', 'Trương Giỏi', '10', 1609160517),
(275, 'suna234', 'Lê Văn ngu', '13', 1609167701),
(276, 'mocmeo', 'Momohashi', '10', 1609180578),
(277, '234166218145828', 'Phạm Mất Nick', '12', 1609200013),
(278, '149883243591557', '겸손방향', '10', 1609214841),
(279, '187271053144197', 'Phạm My', '11', 1609220671),
(280, '111915914118185', 'Nguyễn Nhật', '14', 1609228230),
(281, '741031776793824', 'Thành Lâm', '14', 1609308504),
(282, '192065352624784', 'Vinh Li Le', '11', 1609318636),
(283, '736888940264774', 'Tran Dien', '15', 1609387864),
(284, '118405000119958', 'Ha Hoàng', '13', 1609413772),
(285, '698393611041852', 'Lê Văn Vinh', '12', 1609414606),
(286, '175762167617571', 'Ph.T.Tiến Đạt', '14', 1609428328),
(287, '193450872501709', 'Tra Mai', '12', 1609464988),
(288, '213489690370146', 'Phê Ta Nôn', '10', 1609502723),
(289, '155079603078022', 'Kiouto Lu Era', '10', 1609523173),
(290, 'ghuhhhh', 'Ạhsbsb', '12', 1609545871),
(291, '234719704935716', 'Huỳnh Tuấn Cảnh', '12', 1609562273),
(292, '186080623220634', 'Hồ Trung Kiên', '14', 1609564167),
(293, '568987013989013', 'Ang Bùi', '14', 1609672700),
(294, '258092309164890', 'Trái Phải', '15', 1609673867),
(295, '209074897543479', 'Nguyễn Bảo', '14', 1609732837),
(296, '403023134291959', 'Bé Tũnn', '13', 1609759986),
(297, '406761650645743', 'Đỗ Thanh Phúc', '15', 1609810347),
(298, 'levantriet2003', 'Lê Văn Triết', '11', 1609836235),
(299, 'hoangngoan83', 'Nguyễn Thế Văn', '10', 1609842738),
(300, 'haanh6c', 'Hà Tuấn anh', '15', 1609844529),
(301, 'jackkicm', 'Đỗ Quang hiếu', '13', 1609847838),
(302, 'thanhdieutv123', 'Thanh dieu', '11', 1609926059),
(303, '121233993156979', 'Giang Huyền', '15', 1610031732),
(304, '206522521180879', 'Lung Lô', '13', 1610033531),
(305, 'funnyquang', 'Vuanhthu', '12', 1610036958),
(306, 'duongll0', 'DuonglL0', '13', 1610088318),
(307, '223643245999646', 'Ung Duong', '15', 1610089633),
(308, '234433001393979', 'Hiếu Đăng Nguyễn', '13', 1610106401),
(309, '2842059836082515', 'Trịnh Đức Tiến', '12', 1610108894),
(310, 'onglachum', '000000', '11', 1610110452),
(311, '232315034999984', 'Huỳnh Như', '12', 1610168579),
(312, 'dupro1234', 'Trần Đình Du', '13', 1610196002),
(313, 'phat568', 'Phat567', '15', 1610253855),
(314, 'caigicxdc', 'khong biết', '12', 1610266170),
(315, '481774969886320', 'Bạn Là Ai', '11', 1610273594),
(316, '173329327866126', 'Huong Chi Bui', '13', 1610332825),
(317, '448981669814622', 'Tiến Goodboy', '15', 1610342345),
(318, '213874530330684', 'Dung Lợn', '12', 1610361038),
(319, 'tadznhat', 'manhdzne', '14', 1610363645),
(320, 'lienquangko', 'Khangdu24h', '11', 1610411507),
(321, '871656090251225', 'Sang Tay Bui Ngoctay', '11', 1610451269),
(322, '406785620576283', 'Quang Trần Tô', '10', 1610457779),
(323, '463859481655329', 'Hùng Cuờng', '13', 1610535497),
(324, '730311001231989', 'Tiack Pvpbach', '10', 1610540197),
(325, '225627635904850', 'Mai Nguyenngoc', '13', 1610597713),
(326, 'trananhtuan', 'Trần Anh Tuấn', '10', 1610606809),
(327, '839445486602238', 'Đồng Linh Trang', '15', 1610616447),
(328, '114908623834171', 'Bi Nguyên', '14', 1610634221),
(329, '230058421932880', 'Thanh Kòi', '11', 1610722135),
(330, 'danghoangbin12345', 'Danghoangbin', '15', 1610756976),
(331, 'tuan1123', 'nguyễn mạnh tuân', '11', 1610791875),
(332, '111992757494185', 'Mollu Hưng', '12', 1610791968),
(333, '204795124693635', 'Hồ Thành Phát', '15', 1610795292),
(334, 'levantriet', 'lê văn Triết ', '14', 1610852168),
(335, 'baoprohihi', 'Baophung', '13', 1610880494),
(336, 'adminweb', 'lekhanh345', '13', 1610982141),
(337, '0377731360', 'Dương vlog ', '15', 1611057982),
(338, 'adminshop', 'adminshop', '11', 1617978747),
(339, 'khoanevn', 'KhoaNe', '13', 1618028930),
(340, 'khoakillall', 'khoakillall', '11', 1618138494),
(341, 'chausongdo', 'chaau di', '11', 1618189968),
(342, 'admin12345', 'RANDOM FREE FIRE 9K', '11', 1618227248),
(0, 'datlight', '', '30', 1624207624),
(0, 'ccccccc', '', '31', 1624208380),
(0, 'realhth', '', '33', 1624238395),
(0, 'duclong5dthtm', '', '32', 1624242385),
(0, 'chesky', '', '33', 1624243147),
(0, 'aptx4869', '', '30', 1624249233),
(0, 'vy12311h', '', '30', 1624250024),
(0, 'hungplayvn', '', '32', 1624250858),
(0, 'jnjhjgj', '', '32', 1624260861),
(0, 'phat1900394', '', '34', 1624266693),
(0, 'quyet1232', '', '33', 1624268628),
(0, 'kimkhue2010', '', '33', 1624270600),
(0, 'kemtran_', '', '30', 1624279975),
(0, 'adminvxt', '', '31', 1624293891),
(0, 'hungplayuwu', '', '33', 1624322360),
(0, 'khaideveloperv3', '', '32', 1624323760),
(0, 'aminhhd', '', '31', 1624331305),
(0, '0367197718', '', '30', 1624338743),
(0, 'luong-van-cuong', '', '33', 1624347916),
(0, 'dkdkdeirjdk', '', '34', 1624351584),
(0, 'huy234', '', '32', 1624353957),
(0, 'longau', '', '35', 1624355082),
(0, 'vinh-pham-hoang', '', '34', 1624367932),
(0, 'khanhhuyenthd', '', '31', 1624414358),
(0, 'fuhhuhu', '', '34', 1624421895),
(0, 'duongviethoang', '', '33', 1624425802),
(0, 'vudinhanh2k9', '', '24', 1624448030),
(0, 'tuandx2021', '', '25', 1624500427),
(0, '0967961803', '', '29', 1624513044),
(0, 'soicon', '', '27', 1624527790),
(0, 'phuocalock03052013', '', '22', 1624532998),
(0, 'kkskskd', '', '29', 1624538819),
(0, 'nhathuydeptrai3', '', '24', 1624550856),
(0, 'haimoi', '', '25', 1624584264),
(0, 'khangg', '', '28', 1624589129),
(0, 'nguyen-hoang', '', '21', 1624589249),
(0, 'phucgamer-123', '', '21', 1624590804),
(0, 'haidanggammer', '', '24', 1624591685),
(0, 'luongan', '', '27', 1624606651),
(0, 'hoangdinhvu', '', '21', 1624610275),
(0, 'cmducc1221', '', '29', 1624613890),
(0, 'sudai159', '', '30', 1624615051),
(0, 'khaideveloper', '', '24', 1624615924),
(0, 'nghia', '', '22', 1624616569),
(0, 'oqlqlqq', '', '27', 1624619129),
(0, '777799', '', '29', 1624619153),
(0, 'soosonm', '', '27', 1624619784),
(0, 'nguyenchivinh106', '', '21', 1624624229),
(0, 'tri2009', '', '29', 1624668617),
(0, 'congdeptrai4', '', '30', 1624679945),
(0, 'gojo12', '', '25', 1624680692),
(0, 'giabao3akn11111', '', '30', 1624686288),
(0, 'baodepakn22222', '', '28', 1624686385),
(0, 'congle2311', '', '29', 1624689724),
(0, 'len-tieng', '', '30', 1624692609),
(0, 'tugaming', '', '21', 1624694618),
(0, 'loeneban', '', '29', 1624696816),
(0, 'dung30899', '', '30', 1624699150),
(0, 'cundepzai55', '', '24', 1624706027),
(0, 'nguyen-boy', '', '28', 1624755024),
(0, 'lewlew1999', '', '21', 1624755453),
(0, 'thang6002', '', '22', 1624757472),
(0, 'nhatgaming-246', '', '21', 1624769480),
(0, 'tran-ngoc-bao-tran', '', '21', 1624776961),
(0, 'thao', '', '29', 1624786107),
(0, 'hatbuinao', '', '23', 1624789941),
(0, '0985616366', '', '22', 1624790088),
(0, 'kaitokun', '', '25', 1624793899),
(0, 'trinh-van-duong', '', '25', 1624820077),
(0, 'huygjhfj12', '', '29', 1624827883),
(0, 'huan1999', '', '28', 1624835158),
(0, 'huan19999', '', '30', 1624835524),
(0, 'ngalee', '', '30', 1624835703),
(0, 'anhhao459', '', '27', 1624844278),
(0, 'ka-la-lalala', '', '27', 1624850538),
(0, 'thinhthinhj', '', '25', 1624851673),
(0, 'locpn145', '', '28', 1624851816),
(0, 'quy11n', '', '25', 1624851840),
(0, 'lbgtv1545', '', '23', 1624851865),
(0, 'dfjieru48956', '', '21', 1624851888),
(0, 'garena-ne', '', '30', 1624852052),
(0, 'hai222', '', '21', 1624865713),
(0, 'nhatphong', '', '30', 1624866582),
(0, 'linhlonglanhlaplanhlunglinh', '', '25', 1624867158),
(0, '0905783930', '', '23', 1624868652),
(0, 'qwertyuiop', '', '29', 1624869071),
(0, 'khang19902ka', '', '24', 1624869872),
(0, 'khang10291', '', '21', 1624870059),
(0, 'ducmom20021121', '', '22', 1624870115),
(0, '', '', '20', 1624870345),
(0, 'hungfanv', '', '30', 1624878487),
(0, 'huykhinh12', '', '28', 1624885352),
(0, 'bbbbbbbbbb', '', '23', 1624892031),
(0, 'giahuy123', '', '20', 1624898197),
(0, 'covid19', '', '26', 1624931650),
(0, 'tri2311', '', '20', 1624931792),
(0, 'fanvinh', '', '26', 1624933671),
(0, 'congdepzai', '', '23', 1624935889),
(0, 'baopro', '', '24', 1624938096),
(0, 'huynh-anh-thu', '', '30', 1624938451),
(0, 'le-oanh', '', '25', 1624938458),
(0, 'hungxinhtra', '', '21', 1624942586),
(0, '0357272643', '', '22', 1624948610),
(0, 'sinhton', '', '25', 1624950995),
(0, 'ducanhh215e0', '', '26', 1624952320),
(0, 'binhhoang', '', '21', 1624956176),
(0, 'diepcutenek', '', '20', 1624956268),
(0, 'hieudeptrai0148', '', '20', 1624969058),
(0, 'tolaai123', '', '23', 1624977076),
(0, 'test88889', '', '29', 1626503278),
(0, 'namct0982', '', '5', 1626514626),
(0, 'adminn', '', '7', 1628855333);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rut_kim_cuong`
--

CREATE TABLE `rut_kim_cuong` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idgame` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `noidung` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `rut_kim_cuong`
--

INSERT INTO `rut_kim_cuong` (`id`, `username`, `idgame`, `kimcuong`, `noidung`, `status`, `time`) VALUES
(1, 'hungplayvn', '679082978', '111', '', '0', 1625902450),
(2, 'hungplayvn', '1086279042', '1190', '', '1', 1625904749),
(3, 'phuctv', '679082978', '111', '', '1', 1625923702),
(4, 'phuctv', '679082978', '9999', '', '1', 1625924531),
(6, 'nhatphong', '2401969338', '950', '0817701306', '1', 1624867693),
(5, 'kevinfreefire', '1087036029', '950', '', '1', 1624845609),
(9, 'hungplayvn', '2214238750', '9999', '', '0', 1628854681),
(10, 'hungplayvn', '1086279042', '9999', '', '1', 1628855700),
(11, 'hungplayvn', '1086279', '9999', '', '1', 1628855936),
(12, 'huydeptrai', '1222304644', '50000', '', '1', 1628857516),
(13, 'huydeptrai', '​2919881044', '50000', '', '1', 1628857525),
(14, 'hungplayvn', '2132330180', '9999', '', '1', 1628858846),
(15, 'hungplayvn', '2214238750', '9999', '', '1', 1628859539),
(16, 'hungplayvn', '2214238750', '9999', '', '1', 1628860919),
(17, 'hungplayvn', '2214238750', '50000', '', '1', 1628861993),
(18, 'hungplayvn', '1815575888', '50000', '', '1', 1628864603),
(19, 'hungplayvn', '​2919881044', '29999', '', '1', 1628864613),
(20, 'hungplayvn', '1152076804', '9999', '', '1', 1628864699),
(21, 'hungplayvn', '1222304644', '50000', '', '1', 1628865597),
(22, 'hungplayvn', '10251125', '50000', '', '1', 1628865605);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `key` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(9, 'web_logo', '{\"url\":\"https:\\/\\/i.imgur.com\\/mACMxgD.png\",\"height\":\"30\",\"width\":\"85\"}'),
(10, 'web_banner', '{\"url\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/53007banner%20shopcenaff.vn%20(2).gif\"}'),
(8, 'web_title', '{\"title\":\"TUANORI.VN - THI\\u1ebeT K\\u1ebe WEBSITE CHU\\u1ea8N SEO\",\"name\":\"TUANORI.VN - THI\\u1ebeT K\\u1ebe WEBSITE CHU\\u1ea8N SEO\"}'),
(12, 'web_admin', '{\"name\":\"NH\\u0110 RIGHT \",\"phone\":\"0123456789\",\"facebook\":\"https:\\/\\/facebook.com\\/taoshopvipcom\",\"youtube\":\"https:\\/\\/youtube.com\\/channel\\/UC8eV04RCFhICfeZAcFQz2lQ\"}'),
(13, 'web_thongbao', '{\"thongbao\":\"<h1> hello <\\/h1> \",\"time\":\"18\"}'),
(16, 'hinhanh_game', '{\"banaccff\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"lienquan\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"bingonoel\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"bingosieucap\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"mayxeng\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"homkimcuong\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"homthinhff\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"lattheff\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/242509thumb%20vq%20trung%20thu%20gi%E1%BB%9Bi%20h%E1%BA%A1n-1%20(2).gif\",\"gametrungthu\":\"https:\\/\\/shopgow.xyz\\/tep-tin\\/24250'),
(11, 'web_color', '{\"color\":\"\"}'),
(14, 'hienthi_game', '{\"banaccff\":\"1\",\"vanmayff\":\"1\",\"homthinhff\":\"1\",\"lattheff\":\"1\",\"homkimcuong\":\"1\",\"lienquan\":\"1\"}'),
(15, 'hienthi_web', '{\"napthe_mobile\":\"1\",\"napthe_pc\":\"1\",\"vongquay\":\"1\",\"dichvu\":null,\"random\":\"1\"}'),
(17, 'web_napthe', '{\"kieunap\":\"naptudong\",\"api_key\":\"P1z0CkYwVLHxMFsATO6i8Rc72gJUuSon\"}'),
(18, 'web_brick', '{\"site\":\"thesieure\",\"partner_id\":\"7126729261\",\"partner_key\":\"1f0c7ee25ea1e824565012ad4e2484bb\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_bingo`
--

CREATE TABLE `setting_bingo` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `item_8` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_bingo`
--

INSERT INTO `setting_bingo` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `giatien`, `sudung`) VALUES
(100, 0, 0, 0, 0, 0, 0, 0, '18000', 3472),
(100, 0, 0, 0, 0, 0, 0, 0, '18000', 2812);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_bingo2`
--

CREATE TABLE `setting_bingo2` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_bingo2`
--

INSERT INTO `setting_bingo2` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `giatien`, `sudung`) VALUES
(100, 0, 0, 0, 0, 0, 0, '19000', 153),
(100, 0, 0, 0, 0, 0, 0, '19000', 153);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_bingo3`
--

CREATE TABLE `setting_bingo3` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_bingo3`
--

INSERT INTO `setting_bingo3` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `giatien`, `sudung`) VALUES
(100, 100, 0, 0, 0, 0, 100, '18000', 127),
(0, 0, 0, 0, 0, 0, 100, '18000', 127);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_bingo4`
--

CREATE TABLE `setting_bingo4` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_bingo4`
--

INSERT INTO `setting_bingo4` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `giatien`, `sudung`) VALUES
(10, 1, 1, 0, 0, 0, 100, '20000', 131),
(0, 0, 0, 0, 0, 0, 100, '20000', 130);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_daplon`
--

CREATE TABLE `setting_daplon` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `giatien` bigint(20) NOT NULL,
  `sudung` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_daplon`
--

INSERT INTO `setting_daplon` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `giatien`, `sudung`) VALUES
(0, 0, 0, 100, 0, 18000, 0),
(0, 0, 0, 100, 0, 40000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_dragon`
--

CREATE TABLE `setting_dragon` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `item_8` int(11) NOT NULL,
  `giatien` bigint(20) NOT NULL,
  `sudung` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_dragon`
--

INSERT INTO `setting_dragon` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `giatien`, `sudung`) VALUES
(100, 0, 0, 0, 0, 0, 0, 0, 18000, 0),
(100, 0, 0, 0, 0, 0, 0, 0, 18000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_latthe`
--

CREATE TABLE `setting_latthe` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_5` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_6` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_latthe`
--

INSERT INTO `setting_latthe` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `giatien`) VALUES
('100', '100', '0', '0', '10', '0', '20000'),
('100', '0', '0', '0', '0', '0', '20000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_latthe2`
--

CREATE TABLE `setting_latthe2` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_5` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_6` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_latthe2`
--

INSERT INTO `setting_latthe2` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `giatien`) VALUES
('0', '0', '0', '0', '100', '0', '20000'),
('0', '0', '0', '0', '100', '0', '20000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_sieucap`
--

CREATE TABLE `setting_sieucap` (
  `item_1` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_2` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_3` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_4` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_sieucap`
--

INSERT INTO `setting_sieucap` (`item_1`, `item_2`, `item_3`, `item_4`, `giatien`) VALUES
('100', '10', '0', '0', '19000'),
('100', '0', '0', '0', '19000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_try`
--

CREATE TABLE `setting_try` (
  `item_1` int(11) NOT NULL,
  `item_2` int(11) NOT NULL,
  `item_3` int(11) NOT NULL,
  `item_4` int(11) NOT NULL,
  `item_5` int(11) NOT NULL,
  `item_6` int(11) NOT NULL,
  `item_7` int(11) NOT NULL,
  `item_8` int(11) NOT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sudung` int(255) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `setting_try`
--

INSERT INTO `setting_try` (`item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`, `giatien`, `sudung`) VALUES
(0, 50, 50, 10000, 100, 100, 100, 0, '18000', 1522),
(50, 50, 50, 50, 50, 50, 50, 50, '18000', 1522);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fbid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_nap` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kimcuong` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kimcuonghong` bigint(20) NOT NULL,
  `luotquay` bigint(20) NOT NULL,
  `tile` bigint(20) NOT NULL,
  `luotghep` bigint(20) NOT NULL,
  `quanhuy` varchar(225) NOT NULL DEFAULT '0',
  `token` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fbid`, `admin`, `name`, `username`, `password`, `email`, `money`, `money_nap`, `kimcuong`, `kimcuonghong`, `luotquay`, `tile`, `luotghep`, `quanhuy`, `token`, `auth`, `ip`, `verify`, `verify_code`, `time`) VALUES
(166, '0', 20, '', 'tuanoriit', 'a8e27e20ff57844690e01ed1b6908eed', 'tuanoriit@gmail.com', '6000', '0', '0', 0, 0, 0, 0, '0', 'e69dad37b1d7a5a7c77b729852dfac44fec67eeaa52141edf46eda1a85ca', 'c967050488568b9c89e704503258053cf2f245c3d0ccead0d8ccd35831c4', '27.71.217.95', 'true', '69756', 1635826159),
(167, '0', 20, '', 'adminweb', 'af03798e4f9010c54d2eb6f386124f7e', 'adminweb@gmail.com', '6000', '0', '0', 0, 0, 0, 0, '0', 'ba40b5d1653b02590e70a8f3e9f996f4f2c305b33c1f1df0d98a8639d44d', 'eb851867acc9d03cab60695616cfd0b588bebabb1c278ada0556bb6e5a4b', '171.234.12.8', 'true', '96432', 1643005330);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_history_system`
--

CREATE TABLE `user_history_system` (
  `id` int(255) NOT NULL,
  `username` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sotien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `mota` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(255) NOT NULL,
  `history` int(11) NOT NULL DEFAULT 0,
  `hisnick` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_kimcuong`
--

CREATE TABLE `vongquay_kimcuong` (
  `id` int(255) NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sudung` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'false',
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vongquay_kimcuong`
--

INSERT INTO `vongquay_kimcuong` (`id`, `name`, `mota`, `giatien`, `sudung`, `status`, `time`) VALUES
(3, 'VÒNG QUAY MÙA HÈ SÔI ĐỘNG 19K', 'Quay tích cực nhận quà liền tay', '19000', '12', 'true', 1607837920),
(4, 'VÒNG QUAY TIỆC BÃI BIỂN 20K', 'Quay tích cực nhận quà liền tay', '20000', '0', 'true', 1607838059),
(5, 'VÒNG QUAY SINH NHẬT FREEFIRE 20K', 'Quay tích cực nhận quà liền tay', '20000', '11', 'true', 1607838223),
(6, 'VÒNG QUAY ĐƯỜNG LÊN CUNG TRĂNG 19K', 'Quay tích cực nhận quà liền tay', '19000', '23', 'true', 1607839152),
(7, 'VÒNG QUAY DẠ XOA 19K', 'Quay tích cực nhận quà liền tay', '19000', '74', 'true', 1607839476),
(11, 'VÒNG QUAY BÓNG ĐÁ ( 100% NỔ HŨ ) ', '', '19000', '127', 'true', 1624172960),
(12, 'VÒNG QUAY ĐẨY LÙI COVID-19 ( 100% NỔ HŨ )', '', '19000', '47', 'true', 1624173010),
(13, 'VÒNG QUAY DẢI NGÂN HÀ ( 100% Nổ Hũ )', 'quay đi chừng chờ gì ', '18000', '98', 'true', 1624173051),
(14, 'VÒNG QUAY MÙA HÈ MAI MẮN ( 100% NỔ HŨ ) ', 'Quay tay vận may sẽ đến ', '19000', '181', 'true', 1624202232),
(2, 'VÒNG QUAY KIM CƯƠNG 20K', 'Quay tích cực nhận quà liền tay', '20000', '11', 'true', 1607837625);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vongquay_kimcuong_gift`
--

CREATE TABLE `vongquay_kimcuong_gift` (
  `id` int(255) NOT NULL,
  `id_vongquay` int(255) NOT NULL,
  `item_1` varchar(999) NOT NULL,
  `item_2` varchar(999) NOT NULL,
  `item_3` varchar(999) NOT NULL,
  `item_4` varchar(999) NOT NULL,
  `item_5` varchar(999) NOT NULL,
  `item_6` varchar(999) NOT NULL,
  `item_7` varchar(999) NOT NULL,
  `item_8` varchar(999) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vongquay_kimcuong_gift`
--

INSERT INTO `vongquay_kimcuong_gift` (`id`, `id_vongquay`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `item_6`, `item_7`, `item_8`) VALUES
(3, 12, '{\"text\":\"\\u0110\\u1ea9y L\\u00f9i Covid(20Kim C\\u01b0\\u01a1ng)\",\"kimcuong\":\"20\",\"tyle\":\"100\"}', '{\"text\":\"Ch\\u1ecb H\\u1eb1ng 99KC\",\"kimcuong\":\"99\",\"tyle\":\"100\"}', '{\"text\":\"\\u0110\\u1ec1n L\\u00f2ng C\\u00e1 Ch\\u00e9p 3.000KC\",\"kimcuong\":\"4999\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 599 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"599\",\"tyle\":\"100\"}', '{\"text\":\"\\u0110\\u1ec1n Hoa \\u0110\\u0103ng 999KC\",\"kimcuong\":\"999\",\"tyle\":\"100\"}', '{\"text\":\"B\\u00e1nh Trung Thu 9999KC\",\"kimcuong\":\"9999\",\"tyle\":\"100\"}', '{\"text\":\"Chuy\\u1ebfn \\u0110i L\\u00ean Cung Tr\\u0103ng 19.999 KC\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 9.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"100\"}'),
(6, 3, '{\"text\":\"19 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"19\",\"tyle\":\"100\"}', '{\"text\":\"99 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"99\",\"tyle\":\"1\"}', '{\"text\":\"239 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"239\",\"tyle\":\"0\"}', '{\"text\":\"349 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"349\",\"tyle\":\"0\"}', '{\"text\":\"999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"999\",\"tyle\":\"0\"}', '{\"text\":\"3.999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"3999\",\"tyle\":\"0\"}', '{\"text\":\"7.999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"7999\",\"tyle\":\"0\"}', '{\"text\":\"9.999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"0\"}'),
(7, 4, '{\"text\":\"22 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"22\",\"tyle\":\"100\"}', '{\"text\":\"110 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"110\",\"tyle\":\"0\"}', '{\"text\":\"255 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"255\",\"tyle\":\"0\"}', '{\"text\":\"360 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"360\",\"tyle\":\"0\"}', '{\"text\":\"1.999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"1999\",\"tyle\":\"0\"}', '{\"text\":\"5.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"5999\",\"tyle\":\"0\"}', '{\"text\":\"8.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"8999\",\"tyle\":\"0\"}', '{\"text\":\"11.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"11999\",\"tyle\":\"0\"}'),
(8, 5, '{\"text\":\"9.999 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"0\"}', '{\"text\":\"3.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"3000\",\"tyle\":\"0\"}', '{\"text\":\"1.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1000\",\"tyle\":\"0\"}', '{\"text\":\"350 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"350\",\"tyle\":\"0\"}', '{\"text\":\"6.000 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"6000\",\"tyle\":\"0\"}', '{\"text\":\"250 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"350\",\"tyle\":\"0\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"2\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng Sinh Nh\\u1eadt\",\"kimcuong\":\"0\",\"tyle\":\"98\"}'),
(9, 6, '{\"text\":\"22 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"22\",\"tyle\":\"100\"}', '{\"text\":\"9.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"0\"}', '{\"text\":\"120 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"120\",\"tyle\":\"0\"}', '{\"text\":\"5.000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"5000\",\"tyle\":\"0\"}', '{\"text\":\"250 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"250\",\"tyle\":\"0\"}', '{\"text\":\"3.000 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"3000\",\"tyle\":\"0\"}', '{\"text\":\"350 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"350\",\"tyle\":\"0\"}', '{\"text\":\"1.500. Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"1500\",\"tyle\":\"0\"}'),
(10, 7, '{\"text\":\"Qu\\u1ef7 Ki\\u1ebfm D\\u1ecda Xoa\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"0\"}', '{\"text\":\"300 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"300\",\"tyle\":\"0\"}', '{\"text\":\"Kim C\\u01b0\\u01a1ng Ng\\u1eabu Nhi\\u00ean ( 22 Kim C\\u01b0\\u01a1ng )\",\"kimcuong\":\"22\",\"tyle\":\"100\"}', '{\"text\":\"MP40 POKER ( Ng\\u1eabu Nhi\\u00ean )\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"Xe Th\\u1ec3 Thao Ng\\u00e2n H\\u00e0\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"100 Kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"100\",\"tyle\":\"0\"}', '{\"text\":\"Gift code ( Trang Ph\\u1ee5c )\",\"kimcuong\":\"0\",\"tyle\":\"0\"}'),
(11, 8, '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"2\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"Tr\\u00fang 350 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"4\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"5\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"Ch\\u00fac M\\u1eebng N\\u0103m M\\u1edbi 2021 T\\u1eb7ng B\\u1ea1n 21 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"21\",\"tyle\":\"100\"}', '{\"text\":\"Tr\\u00fang 7000 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"7000\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 9999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"0\"}'),
(12, 9, '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"9999 kim c\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"100\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\".\",\"kimcuong\":\"0\",\"tyle\":\"0\"}'),
(14, 11, '{\"text\":\"Vi\\u1ec7t Nam Chi\\u1ebfn Th\\u1eafng (10 Kim C\\u01b0\\u01a1ng)\",\"kimcuong\":\"10\",\"tyle\":\"100\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 399 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"0\"}'),
(15, 12, '{\"text\":\"\\u0110\\u1ea9y L\\u00f9i Covid(20Kim C\\u01b0\\u01a1ng)\",\"kimcuong\":\"20\",\"tyle\":\"100\"}', '{\"text\":\"Ch\\u1ecb H\\u1eb1ng 99KC\",\"kimcuong\":\"99\",\"tyle\":\"100\"}', '{\"text\":\"\\u0110\\u1ec1n L\\u00f2ng C\\u00e1 Ch\\u00e9p 3.000KC\",\"kimcuong\":\"4999\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 599 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"599\",\"tyle\":\"100\"}', '{\"text\":\"\\u0110\\u1ec1n Hoa \\u0110\\u0103ng 999KC\",\"kimcuong\":\"999\",\"tyle\":\"100\"}', '{\"text\":\"B\\u00e1nh Trung Thu 9999KC\",\"kimcuong\":\"9999\",\"tyle\":\"100\"}', '{\"text\":\"Chuy\\u1ebfn \\u0110i L\\u00ean Cung Tr\\u0103ng 19.999 KC\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 9.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"9999\",\"tyle\":\"100\"}'),
(16, 13, '{\"text\":\"M\\u1eb7t Tr\\u1eddi \\u1ea4m \\u00c1p ( 10 Kim C\\u01b0\\u01a1ng )\",\"kimcuong\":\"10\",\"tyle\":\"100\"}', '{\"text\":\"1\",\"kimcuong\":\"0\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 19999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"19999\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"19999\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"19999\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"1\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}', '{\"text\":\"N\\u1ed5 H\\u0169 19.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"19999\",\"tyle\":\"100\"}'),
(17, 14, '{\"text\":\"M\\u00f9a H\\u00e8 S\\u00f4i \\u0110\\u1ed9ng ( 20 Kim C\\u01b0\\u01a1ng ) \",\"kimcuong\":\"20\",\"tyle\":\"1\"}', '{\"text\":\"100 Kim C\\u01b0\\u01a1ng \",\"kimcuong\":\"100\",\"tyle\":\"0\"}', '{\"text\":\"B\\u1ea1n \\u0110\\u01b0\\u1ee3c T\\u0103ng 59% T\\u1ec9 L\\u1ec7 N\\u1ed5 H\\u0169 Khi Quay V\\u00f2ng Quay Kh\\u00e1c\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"B\\u1ea1n \\u0110\\u01b0\\u1ee3c T\\u0103ng 89% T\\u1ec9 L\\u1ec7 N\\u1ed5 H\\u0169 Khi Quay V\\u00f2ng Quay Kh\\u00e1c\",\"kimcuong\":\"0\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"999\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 2.999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"2999\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 4.499 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"4499\",\"tyle\":\"0\"}', '{\"text\":\"N\\u1ed5 H\\u0169 9999 Kim C\\u01b0\\u01a1ng\",\"kimcuong\":\"999999\",\"tyle\":\"100\"}');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `homthinhbian`
--
ALTER TABLE `homthinhbian`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kimcuong`
--
ALTER TABLE `kimcuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsumohom`
--
ALTER TABLE `lichsumohom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienquan`
--
ALTER TABLE `lienquan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napthe`
--
ALTER TABLE `napthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nickff`
--
ALTER TABLE `nickff`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_freefire`
--
ALTER TABLE `random_freefire`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_freefire_nick`
--
ALTER TABLE `random_freefire_nick`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_lienquan`
--
ALTER TABLE `random_lienquan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `random_lienquan_nick`
--
ALTER TABLE `random_lienquan_nick`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rut_kim_cuong`
--
ALTER TABLE `rut_kim_cuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_history_system`
--
ALTER TABLE `user_history_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vongquay_kimcuong`
--
ALTER TABLE `vongquay_kimcuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vongquay_kimcuong_gift`
--
ALTER TABLE `vongquay_kimcuong_gift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `homthinhbian`
--
ALTER TABLE `homthinhbian`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `kimcuong`
--
ALTER TABLE `kimcuong`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lichsumohom`
--
ALTER TABLE `lichsumohom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `lienquan`
--
ALTER TABLE `lienquan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `napthe`
--
ALTER TABLE `napthe`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `nickff`
--
ALTER TABLE `nickff`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `random_freefire`
--
ALTER TABLE `random_freefire`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `random_freefire_nick`
--
ALTER TABLE `random_freefire_nick`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `random_lienquan`
--
ALTER TABLE `random_lienquan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `random_lienquan_nick`
--
ALTER TABLE `random_lienquan_nick`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rut_kim_cuong`
--
ALTER TABLE `rut_kim_cuong`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT cho bảng `user_history_system`
--
ALTER TABLE `user_history_system`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vongquay_kimcuong`
--
ALTER TABLE `vongquay_kimcuong`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `vongquay_kimcuong_gift`
--
ALTER TABLE `vongquay_kimcuong_gift`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
