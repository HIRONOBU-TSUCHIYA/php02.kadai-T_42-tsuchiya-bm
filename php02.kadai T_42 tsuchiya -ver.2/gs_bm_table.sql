-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-06-30 04:42:27
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `tsuchiya_transport`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(64) NOT NULL,
  `company_name` varchar(64) NOT NULL,
  `price` text NOT NULL,
  `receipt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `date`, `driver_name`, `company_name`, `price`, `receipt`) VALUES
(1, '2023-06-18', '矢島弘樹', 'サカモト', '４５０００', ''),
(2, '2023-06-18', '今道輝', 'サカモト', '６００００', ''),
(3, '2023-06-18', '白井善隆', 'サカモト', '５５０００', ''),
(4, '2023-06-19', '小河原一洋', '日本物流開発', '１３０００', '06.19.ogawara'),
(5, '2023-06-19', '小河原一洋', '宣工社', '１３０００', ''),
(6, '2023-06-19', '小河原一洋', '日本物流開発', '１７０００', ''),
(7, '2023-06-19', '榎本直樹', '日本物流開発', '２４０００', ''),
(8, '2023-06-19', '榎本直樹', '宣工社', '１９０００', ''),
(9, '2023-06-19', '星克雪', 'サカモト', '３００００', ''),
(10, '2023-06-19', '星克雪', '近代商事', '１３０００', ''),
(11, '2023-06-19', '矢島弘樹', '宣工社', '２１０００', ''),
(12, '2023-06-19', '矢島弘樹', '宣工社', '２８０００', ''),
(13, '2023-06-19', '沼生操', '光陽社', '２８０００', ''),
(14, '2023-06-19', '清水茂', 'アドダイセン', '３００００', ''),
(15, '2023-06-19', '清水茂', 'アドダイセン', '１００００', ''),
(16, '2023-06-19', '石井裕司', 'サカモト', '３５０００', ''),
(17, '2023-06-19', '石井裕司', '東日紙商', '２００００', ''),
(18, '2023-06-19', '今道輝', 'DNP狭山', '２６０００', ''),
(19, '2023-06-19', '今道輝', '宣工社', '４００００', ''),
(20, '2023-06-19', '飯田滋樹', 'サカモト', '４２０００', ''),
(21, '2023-06-19', '飯田滋樹', '菁文堂', '２８０００', ''),
(22, '2023-06-19', '吉田勝幸', '日本物流開発', '２８０００', ''),
(23, '2023-06-19', '吉田勝幸', 'アドダイセン', '１５０００', ''),
(24, '2023-06-19', '吉田勝幸', '宣工社', '２００００', ''),
(25, '2023-06-19', '白井善隆', 'サカモト', '３８０００', ''),
(26, '2023-06-19', '白井善隆', '宣工社', '２００００', ''),
(27, '2023-06-19', '山賀佑治', 'サカモト', '３７０００', ''),
(28, '2023-06-19', '山賀佑治', 'P＆Dヒロサワ', '２２０００', ''),
(29, '2023-06-19', '七井克美', 'サンエストライ', '２４０００', ''),
(30, '2023-06-19', '七井克美', 'サンエストライ', '２４０００', ''),
(31, '2023-06-19', '七井克美', 'アドダイセン', '１５０００', ''),
(39, '2023-06-19', '榎本直樹', 'アドダイセン', '１４０００', '06.19.enomoto.pdf'),
(40, '2023-06-30', '小河原一洋', 'アドダイセン', '１３０００', '06.19.ogawara.pdf');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
