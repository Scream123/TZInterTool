-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 07 2021 г., 22:39
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tzintertool`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `link`
--

CREATE TABLE `link` (
  `data_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `loot`
--

CREATE TABLE `loot` (
  `id` int(11) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `title` varchar(230) NOT NULL,
  `url` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `loot`
--

INSERT INTO `loot` (`id`, `phone`, `title`, `url`) VALUES
(1, '+38 (067) 147-80-55, +380505522945, +38 (050) 552-29-45, +380671478055, +38 (067) 147-80-55, +380675182488, +38 (067) 518-24-88, +380931700776, +38 (093) 170-07-76, +38 (067) 147-80-55, +38 (050) 552-29-45, +38 (093) 170-07-76', 'Торговые марки Интернет-магазин МирИнструмента.ua,<h1>Торговые марки</h1>', 'href=\"/styles/min/style.css?1622195692\", href=\"/styles/min/brands.css?1445591280\", href=\"/styles/images/favicon.png\", href=\"/cart.html\", href=\"/cart.html\", href=\"/profile/orders.html\", href=\"/profile/favorites.html\", href=\"/\", href=\"tel:...');

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `script_name` varchar(25) NOT NULL,
  `start_time` int(10) UNSIGNED NOT NULL,
  `end_time` int(10) UNSIGNED NOT NULL,
  `result` enum('illegal','failed','success') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `script_name`, `start_time`, `end_time`, `result`) VALUES
(1, 'iynV1oUXc2su5Te8OmtF96LHk', 2141803328, 690545531, 'success'),
(2, 'uJC2WGgZNvhEUmajfMnLyiwd5', 943230975, 879842605, 'success'),
(3, 'zvurjZGA5i4UohcyPe0dBk9V1', 616969266, 482485442, 'success'),
(4, 'AMIXHUWL2PySoFukNit7f50cd', 2076076959, 182384362, 'illegal'),
(5, 'LV3EjGvhQmcoybWPO5d2tDS8a', 261111201, 1554905132, 'success'),
(6, 'JxakV9c3vLFfZ0QNA1IY8PWhe', 628633840, 51040303, 'failed'),
(7, 'aju2JAykpoI9eQdORvULZ4iB5', 1256012346, 1901709055, 'success'),
(8, 'ft6aGx4jDloRSEvu09gyJhX18', 568655343, 1917365190, 'illegal'),
(9, 'UKRtQreZa9G2d6Jc7MDWLIkYF', 786969531, 626605542, 'illegal'),
(10, 'hfoRA4QKPkenHacx28msbjV3G', 1922074144, 570853138, 'success'),
(11, 'DCp9h2PkSaVr3TWXYduHzoeRQ', 143904574, 739593651, 'illegal'),
(12, 'vP35grJZX0QqabsCl89UVjpmu', 533264884, 163050505, 'illegal'),
(13, 'bdN1JI5M7k3uQXWaoRGZSBwHE', 1599188224, 580044113, 'success'),
(14, 'YWl4VO9NtuMqkhUdsD6PyHJz2', 822363033, 2063127130, 'illegal'),
(15, 'CS81rBqkGXf4xMTec7Ks0E9Aw', 1414708151, 631806071, 'illegal'),
(16, 'Zi5YS4jTuINe9W7Hm1gnCpQEF', 777579286, 1303466604, 'illegal'),
(17, '1m8gkGQZRqY4Ld3Hhvp6IP9FS', 1903070815, 456854623, 'illegal'),
(18, '2ZOM7LujieXyHUNW3IgsDt69x', 1419569310, 1118742549, 'failed'),
(19, 'UONrFDsigKuz2qxfJVhLnckWe', 992209597, 1227071234, 'illegal'),
(20, 'jvL4nuyzXkq3dK1YwhWHMDUlm', 1539361645, 978535597, 'success'),
(21, 'YUqFrcNyu1vTV7sRxmj6ZQ9hP', 1656099234, 1426633981, 'failed'),
(22, '0hF1DbjngmJCiHvTwlKBOtz3W', 178662169, 1504166299, 'success'),
(23, 'zLDjvIsJR8u1pPh2WaCN3eyfV', 1149918380, 1199570005, 'illegal'),
(24, 'FAvnkreY4xgKjLGN39MOcRWa0', 1222900939, 1184741986, 'illegal'),
(25, 'IaoBGZAn5RY7EtPDMW2v4CUTS', 865874186, 1903200541, 'failed'),
(26, 'Sb0oe2TXkirD8APgpCKdGWhjM', 780968092, 311538708, 'failed'),
(27, 'akjnqVdXUhPeHAOIQMJp5xDWl', 450785416, 1277223027, 'illegal'),
(28, 'bKL5rEoWCcV8ZpX47z6TPhOBd', 645678329, 364317166, 'success'),
(29, 'C9VO2GZtxJ5nX1uF3WkajEr7o', 1170560730, 1676254648, 'success'),
(30, 'k8ojGZEaDSmYMRBOI5lpg7Vwe', 1522556981, 917384877, 'illegal'),
(31, 'PYgRVnBscGu3O8h0MQraidlFj', 437950922, 1540700741, 'failed'),
(32, 'dIYLR2abyvKf16TVxlwBNGe58', 1980819684, 797390775, 'success'),
(33, '6VXdIQansFvOLoGqmiKh2E7ku', 1536304832, 1243750819, 'failed'),
(34, 'vBKCMkrjEDSpH3tYo4qfsl0Ty', 1823238207, 1378622747, 'illegal'),
(35, 'Z0NbDiJGtjo1Tg48PmkAyEuhq', 698677985, 331442422, 'illegal'),
(36, 'SazJVfIBXHxhCNDKqQPMGu9UR', 508744067, 952198727, 'illegal'),
(37, 'aML79S8FRE0Pmplh3e1yWAvI6', 660728225, 1460927181, 'success'),
(38, 'k0f6yvLqHGiIlTzc7Pe9OuYJC', 786759873, 1987742240, 'illegal'),
(39, 'znDaEylmX3hjKrOPwYxNkGtWR', 1140808052, 26704090, 'failed'),
(40, 'Z23jzCIJb6e5BGDPtOouUi1LE', 1936665781, 451786131, 'success'),
(41, 'Tq6eZ1McISQauy8XdFm7EBJCO', 547869436, 1842735721, 'illegal'),
(42, 'Od5yfHCS8sTUle4Jch7nZ1YX9', 996458551, 1267709766, 'illegal'),
(43, 'hKaDmAp1Tf8q7LjUYHri0J29V', 1918862222, 949586082, 'failed');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `loot`
--
ALTER TABLE `loot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `loot`
--
ALTER TABLE `loot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
