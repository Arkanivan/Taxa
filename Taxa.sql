-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 12 2018 г., 20:41
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `my_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Taxa`
--

CREATE TABLE IF NOT EXISTS `Taxa` (
  `identifier` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Client` varchar(255) NOT NULL,
  `Telephone` varchar(11) NOT NULL,
  `Whence` varchar(255) NOT NULL,
  `Were` varchar(255) NOT NULL,
  `Status` varchar(25) NOT NULL DEFAULT 'Заказ выполнен',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `Taxa`
--

INSERT INTO `Taxa` (`identifier`, `Client`, `Telephone`, `Whence`, `Were`, `Status`) VALUES
(1, 'Александр', '89991707141', 'Станиславского,6', 'Коммунистическая,45', 'Заказ выполнен'),
(2, 'Олег', '89134683817', 'Восход,1', 'Авиастроителей,8', 'Заказ выполнен'),
(3, 'Антатолий', '89139999616', 'Хилокская,19', 'Станиславского,2', 'Заказ выполнен'),
(4, 'Анна', '89998866199', 'Вертковская,46', 'Романтиков,4', 'Заказ выполнен'),
(5, 'Яна', '89456777880', 'Максима Горького, 45', 'Татьяны Снежиной,12', 'Заказ выполнен'),
(6, 'ольга', '89132222220', 'горский,4', 'котовского,5', 'Заказ выполнен'),
(7, 'Василий', '89523170976', 'Стартовая,1', 'Горский,52', 'Заказ выполнен'),
(9, 'Илларион', '95366664370', 'Демьяна Бедного,17', 'qwert,19', 'Заказ выполнен'),
(10, 'Илларион', '95366664370', 'Воскресная,7', 'Коммунистическая,45', 'Заказ выполнен'),
(11, 'Ося', '88800555353', 'Демьяна Бедного,17', 'Коммунистическая,45', 'Заказ выполнен'),
(12, 'Валет', '89537775399', 'Ул. Красный проспект, 17/1', 'Новогодняя, 38', 'Заказ выполнен');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
