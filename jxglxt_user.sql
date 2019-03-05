-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-03-05 15:30:37
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `jxglxtt`
--

-- --------------------------------------------------------

--
-- 表的结构 `jxglxt_user`
--

CREATE TABLE `jxglxt_user` (
  `id` smallint(6) NOT NULL COMMENT '用户ID',
  `user_num` char(12) NOT NULL COMMENT '用户工号',
  `user_pass` char(32) NOT NULL COMMENT '用户密码',
  `user_name` varchar(30) NOT NULL COMMENT '用户姓名',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型0root1admin2teacher3student',
  `user_phone` char(11) NOT NULL COMMENT '用户电话',
  `user_email` varchar(255) NOT NULL COMMENT '用户邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `jxglxt_user`
--

INSERT INTO `jxglxt_user` (`id`, `user_num`, `user_pass`, `user_name`, `user_type`, `user_phone`, `user_email`) VALUES
(1, 'root', '63a9f0ea7bb98050796b649e85481845', '超级管理员1', 0, '00000111111', '1@qq.com'),
(2, 'admin', 'eb184cc3e4469723f6afda6b176ebb49', '普通管理员1', 1, '11111222222', '2@qq.com'),
(3, '115060200101', '1040e6629bb4aa032f9018b28b089eb4', '孟喜洋', 2, '22222333333', '3@qq.com'),
(4, '115060200102', 'c7b4ac17843dd2dcb0d80f5ed176af2c', '周心成', 4, '33333444444', '4@qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `jxglxt_user`
--
ALTER TABLE `jxglxt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_num` (`user_num`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jxglxt_user`
--
ALTER TABLE `jxglxt_user`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '用户ID', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
