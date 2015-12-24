-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 24 2015 г., 22:14
-- Версия сервера: 5.5.45
-- Версия PHP: 5.4.44

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `yii_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `address`, `post_code`) VALUES
(1, '', NULL),
(2, 'Маяковского 62', 2232),
(3, 'Драйзера', 2256);

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `responsible_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `district_id` (`district_id`),
  KEY `responsible_id` (`responsible_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `name`, `address_id`, `description`, `district_id`, `responsible_id`) VALUES
(1, 'Предприятие', 2, 'ыпогрщдшгщз', 1, NULL),
(2, 'Деснянский', 3, 'цпповадлыпоо ооооооооооо  оооооооо', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `department_phone_numbers`
--

CREATE TABLE IF NOT EXISTS `department_phone_numbers` (
  `department_id` int(11) NOT NULL,
  `phone_number_id` int(11) NOT NULL,
  KEY `department_id` (`department_id`),
  KEY `phone_number_id` (`phone_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `name` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `districts`
--

INSERT INTO `districts` (`name`, `id`) VALUES
(0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `salary`, `department_id`, `person_id`) VALUES
(1, 5555, NULL, 1),
(2, 5000, NULL, 2),
(3, 15000, NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `employee_positions`
--

CREATE TABLE IF NOT EXISTS `employee_positions` (
  `employee_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  KEY `employee_id` (`employee_id`),
  KEY `position_id` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `employee_positions`
--

INSERT INTO `employee_positions` (`employee_id`, `position_id`) VALUES
(2, 5),
(3, 1),
(3, 2),
(3, 4),
(3, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'female'),
(2, 'male');

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `title`, `text`) VALUES
(12, 'Заметка№4', 'Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. '),
(14, 'Заметка 543545', 'Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. Текст тест. \r\nТекст тест. \r\nТекст тест. \r\nТекст тест. '),
(15, 'sadfsaf', 'Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. Какой-то текст. ');

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `second_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gender_id` (`gender_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `first_name`, `last_name`, `second_name`, `gender_id`, `birth_date`) VALUES
(1, 'апавпавп', 'апавпавп', 'миари', NULL, '0000-00-00'),
(2, 'Фигаро', 'Абрам', 'Петрович', NULL, '0000-00-00'),
(3, 'Петр', 'Иванов', 'Иванович', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `person_prone_numbers`
--

CREATE TABLE IF NOT EXISTS `person_prone_numbers` (
  `person_id` int(11) NOT NULL,
  `phone_number_id` int(11) NOT NULL,
  KEY `person_id` (`person_id`),
  KEY `phone_number_id` (`phone_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `phone_numbers`
--

CREATE TABLE IF NOT EXISTS `phone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `name`) VALUES
(1, 'Директор'),
(2, 'Зам директора'),
(3, 'Управляющий'),
(4, 'Бухгалтер'),
(5, 'Дворник'),
(6, 'Секретарь');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `departments_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `departments_ibfk_3` FOREIGN KEY (`responsible_id`) REFERENCES `employees` (`id`);

--
-- Ограничения внешнего ключа таблицы `department_phone_numbers`
--
ALTER TABLE `department_phone_numbers`
  ADD CONSTRAINT `department_phone_numbers_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `department_phone_numbers_ibfk_2` FOREIGN KEY (`phone_number_id`) REFERENCES `phone_numbers` (`id`);

--
-- Ограничения внешнего ключа таблицы `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);

--
-- Ограничения внешнего ключа таблицы `employee_positions`
--
ALTER TABLE `employee_positions`
  ADD CONSTRAINT `employee_positions_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `employee_positions_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`);

--
-- Ограничения внешнего ключа таблицы `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`);

--
-- Ограничения внешнего ключа таблицы `person_prone_numbers`
--
ALTER TABLE `person_prone_numbers`
  ADD CONSTRAINT `person_prone_numbers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`),
  ADD CONSTRAINT `person_prone_numbers_ibfk_2` FOREIGN KEY (`phone_number_id`) REFERENCES `phone_numbers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
