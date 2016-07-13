-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 14 2016 г., 01:58
-- Версия сервера: 5.5.49-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `library20`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `AUTHOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR_NAME` varchar(128) NOT NULL,
  `CENTURY` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_ID`),
  UNIQUE KEY `AUTHOR_NAME` (`AUTHOR_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`AUTHOR_ID`, `AUTHOR_NAME`, `CENTURY`) VALUES
(1, 'Страуд Джонатан', '20-21'),
(2, 'Лев Николаевич Толстой', '19'),
(3, 'Ф.М. Достаевский', '19'),
(4, 'А.Н. Островский', '19'),
(5, 'А.С. Пушкин', '19'),
(6, 'М.Ю. Лермонтов', '19'),
(7, 'Петр Дмитриевич Боборыкин', '?'),
(8, 'Твардовский', '19-20'),
(9, 'Жан-Жак Руссо', '17?'),
(10, 'Иван Сергеевич Тургенев', '19'),
(11, 'И.В.Гёте', '19?'),
(12, 'Овидий', '?'),
(13, 'Аппулей', '?'),
(14, 'Николай Гумилев', '?'),
(15, 'Лоренс Стерн', '?'),
(16, 'Виктор Шкловский', '?'),
(17, 'А. Е. Бердичевский', '20'),
(18, 'Е. Н. Холмянский', '20'),
(19, 'Л. Т. Гиляровская', '20'),
(20, 'А. А. Вехорева', '20'),
(21, 'В. Б. Буглай', '20'),
(22, 'Н. Н. Ливенцев', '20'),
(23, 'Л. Р. Нейман', '20'),
(24, 'К. С. Демирчян', '20'),
(25, 'В. М. Юринов', '20'),
(50, 'Пушкин', NULL),
(51, 'Smyth A.M.', NULL),
(52, 'Parker A.L.', NULL),
(53, 'Pease D.L.', NULL),
(57, 'Гоголь', NULL),
(58, 'Н.В. Гоголь', NULL),
(59, 'Л. Кэролл', NULL),
(60, 'удалить1', NULL),
(61, 'удалить2', NULL),
(62, 'удалить3', NULL),
(63, 'удалить4', NULL),
(64, 'удалить5', NULL),
(65, 'Юлий Буркин', NULL),
(66, 'Константин Фадеев', NULL),
(67, 'Martin Gruber', NULL),
(68, 'Ethan Marcotte', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_NAME` varchar(256) NOT NULL,
  `GENRE_ID` int(11) DEFAULT NULL,
  `SCHOOL_RECOMENDS` varchar(128) DEFAULT NULL,
  `BOOK_DESCRIPTION` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`ID`, `BOOK_NAME`, `GENRE_ID`, `SCHOOL_RECOMENDS`, `BOOK_DESCRIPTION`) VALUES
(1, 'Амулет Самарканда', 1, '0', 'Эта история произошла в Лондоне, в начале третьего тысячелетия. Вот только это вовсе не тот Лондон, который мы знаем. Хотя бы потому, что волшебники там весьма обыденное явление. Равно как и демоны джинны, бесы, африты и многие другие.\nВолшебники призывают демонов и при помощи заклинаний принуждают их выполнять свои приказы. Демонам это, разумеется, совсем не нравится. Так что, когда юный ученик волшебника вызвал джинна по имени Бартимеус, джинн хотел только одного: побыстрее выполнить прихоть хозяина выкрасть могущественный Амулет Самарканда у другого волшебника и забыть о настырном мальчишке. Однако всё оказалось далеко не так просто'),
(2, 'Кольцо Соломона ', 1, '0', 'Известно, что волшебники любят призывать духов и сваливать на них всякую черную работу: строить дворцы, сражаться с врагами, искать сокровища и так далее. Царь Соломон, например, при помощи простого колечка мог запросто призвать несметные полчища этих трудолюбивых существ. Неудивительно, что царство его процветало. Кстати, помните Бартимеуса? Того джинна, у которого язык без костей. Он еще был замешан в историях с Амулетом Самарканда и Глазом Голема и имел самое непосредственное отношение к открытию Врат Птолемея. Так вот, Бартимеус не зря хвастался, что беседовал с царем Соломоном. Он умолчал лишь о том, при каких обстоятельствах проходила эта беседа, и о своей роли в событиях, едва не закончившихся весьма скверно для всего Древнего мира.\n\nЭто не продолжение знаменитой «Трилогии Бартимеуса». Это ее начало, предыстория. Не менее захватывающая, надо сказать.'),
(3, 'Глаз голема', 1, '0', 'Хорошо быть молодым и талантливым волшебником. Волшебников в Британской империи уважают.\nЕще бы, ведь именно волшебники правят страной, прочим остается лишь благодарить судьбу, что об их благополучии заботятся могущественные маги (правда, не все в народе это понимают). Натаниэлю всего четырнадцать лет, но его уже ценит начальство, и даже сам премьер-министр ему покровительствует. Одна беда друзей нет (у волшебников их вообще, как правило, не бывает), зато завистников хоть отбавляй. А тут, как назло, в Лондоне по ночам начинает твориться форменное безобразие, и шеф полиции утверждает, что это дело рук тех самых хулиганов, поймать которых было поручено Натаниэлю. Да уж, в такой переделке без сильного союзника не обойтись. И Натаниэлю не остается ничего, кроме как снова вызвать джинна по имени Бартимеус, который однажды уже помог ему вернуть Амулет Самарканда...\n«Глаз голема» продолжает «Трилогию Бартимеуса», великолепный цикл детской фэнтези Джонатана Страуда. Впрочем, это не только фэнтези. В мире не так много писателей, которым удается создавать книги, одинаково увлекательные для детей и взрослых, книги, где захватывающий сюжет сочетается с тонким юмором. Джонатан Страуд один из таких авторов. Если вам и захочется оторваться от чтения так только затем, чтобы вдоволь посмеяться.'),
(4, 'Врата Птолемея', 1, '0', 'Волшебники испокон веку вызывают духов и заставляют их служить себе. И никого при этом не волнует, каково приходится духам. Только представьте: вы спокойно живёте, никого не трогаете — и тут бац! Какая-то беспощадная сила выдёргивает вас в совершенно чужой мир, где вас встречает лопающийся от самодовольства волшебник, обзывает злокозненным демоном и под угрозой Испепеляющего Пламени принуждает улаживать его, волшебника, дела. Впрочем, за долгую историю человечества был один — но только один! — волшебник, который смотрел на это иначе. Птолемей Александрийский. Он даже нашёл способ, как самому посетить мир духов. Вот только за тысячи лет никто не решился повторить его опыт…\nИмеете в виду, «Врата Птолемея» — завершающая книга «Трилогии Бартимеуса».\nПродолжения не будет!'),
(5, 'Анна Каренина', 2, '1', NULL),
(6, 'Война и мир', 3, '1', NULL),
(7, 'После бала', 4, '1', NULL),
(8, 'Воскресенье', 4, '0', NULL),
(9, 'Кавказский пленник', 4, '0', NULL),
(10, 'Бесы', 2, '0', NULL),
(11, 'Идиот', 2, '0', NULL),
(12, 'Вечный муж', 2, '0', NULL),
(13, 'Преступление и наказание', 2, '1', NULL),
(14, 'Братья Карамазовы', 2, '1', NULL),
(15, 'Игрок', 2, '0', NULL),
(16, 'Бесприданница', 5, '1', NULL),
(17, 'Бедность не порок', 5, '1', NULL),
(18, 'Без вины виноватые', 6, '0', NULL),
(19, 'Гроза', 6, '1', NULL),
(20, 'Евгений Онегин', 2, '1', NULL),
(21, 'Дубровский', 2, '1', NULL),
(22, 'Египетские ночи', 2, '0', NULL),
(23, 'Дубровский', 2, '1', NULL),
(24, 'Гавриилиада', 2, '1', NULL),
(25, 'Каменный гость', 2, '1', NULL),
(26, 'Кавказский пленник', 0, '1', NULL),
(27, 'Пророк', 8, '1', NULL),
(28, 'Пророк', 8, '1', NULL),
(29, 'Метель', 0, '0', NULL),
(30, 'Метель', 0, '0', NULL),
(31, 'Кавказский пленник', 7, '0', NULL),
(32, 'Бедные люди', 0, '1', NULL),
(33, 'Бедные люди', 0, '1', NULL),
(34, 'Василий Теркин', 2, '0', NULL),
(35, 'Василий Теркин', 7, '1', NULL),
(36, 'Исповедь', 0, '0', NULL),
(37, 'Исповедь', 0, '0', NULL),
(38, 'Фауст', 4, '0', NULL),
(39, 'Фауст', 0, '1', NULL),
(40, 'Метаморфозы', 0, '0', NULL),
(41, 'Метаморфозы, или золотой Осел', 2, '0', NULL),
(42, 'Сентиментальное путешествие', 8, '0', NULL),
(43, 'Сентиментальное путешествие', 0, '0', NULL),
(44, 'Сентиментальное путешествие', 0, '0', NULL),
(45, 'Оборудование для электрической контактной сварки', 9, '0', NULL),
(46, 'Анализ и оценка финансовой устойчивости коммерческого предприятия', 9, '0', NULL),
(47, 'Международные экономические отношения: учеб. пособие для экон. спец. вузов', 9, '0', NULL),
(48, 'Руководство к лаборатории электромагнитного поля', 9, '0', 'Книга предназначена для студентов высших учебных заведений в качестве учебного пособия к лабораторным занятиям по исследованию электромагнитных полей в различных электротехнических и радиотехнических устройствах и явлений, связанных с этими полями. Книга имеет своей целью дать студентам возможность подготовиться к сознательному выполнению работ, входящих в программу лаборатории, оказать им помощь в обработке результатов эксперимента, а также способствовать приобретению студентами при выполнении работ в лаборатории навыков к самостоятельному исследованию. Воспроизведено в оригинальной авторской орфографии издания 1966 года (издательство "Высшая школа"). \r\n\r\nИсточник: http://www.books.ru/books/rukovodstvo-k-laboratorii-elektromagnitnogo-polya-3-e-izdanie-3277715/ © Books.ru'),
(95, 'Вечера на хуторе близ Диканьки', NULL, NULL, 'Даты написания: 1829—1832 гг.. Источник: Н. В. Гоголь. Собрание сочинений в девяти томах. Т. 1. М.: "Русская книга", 1994.'),
(107, 'Капитанская дочка', NULL, NULL, 'Капитанская дочка Пушкин'),
(108, 'Сказка о царе Салтане', NULL, NULL, 'Сказка о царе Салтане А.С. Пушкин'),
(109, 'A study of enjoyment of peas.', NULL, NULL, 'Journal of Abnormal Eating, 2002'),
(110, 'Алиса в стране чудес', NULL, NULL, 'Алиса в стране чудес'),
(111, 'удалить1', NULL, NULL, 'удалить1'),
(112, 'удалить2', NULL, NULL, 'удалить2'),
(113, 'удалить3', NULL, NULL, 'удалить3'),
(114, 'удалить4', NULL, NULL, 'удалить4'),
(115, 'Супермозг. Тренинг памяти, внимания и речи', NULL, NULL, 'Наш мозг - одна из тех тайн, над которыми продолжают работать учёные многих стран мира. Специалисты в этой области считают, что мы задействуем всего лишь треть нашего уникального "компьютера". Но науке известны многочисленные примеры демонстрации феноменальных способностей организма, которые были развиты в результате тренировок и вызывали всеобщее удивление и восхищение. \r\nЭто книга-практикум, в которой в доступной форме представлены современные технологии развития памяти, внимания и речи.'),
(117, 'Осколки неба или подлинная история Битлз', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `books_old`
--

CREATE TABLE IF NOT EXISTS `books_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(32) NOT NULL,
  `contributor` varchar(128) NOT NULL,
  `contributor_IP` text NOT NULL,
  `change_date` varchar(32) NOT NULL,
  `editor_IP` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Дамп данных таблицы `books_old`
--

INSERT INTO `books_old` (`id`, `title`, `author`, `description`, `date`, `contributor`, `contributor_IP`, `change_date`, `editor_IP`) VALUES
(1, 'The Lord of the Rings', 'J. R. R. Tolkien', 'Very long story', '2016-04-10 00:00:00', 'N.', '', '', ''),
(2, 'Капитанская дочка', 'А. С. Пушкин', '', '2016-04-07 00:00:00', 'N.', '', '', ''),
(3, 'Этюд в багровых тонах', 'А. Конан Дойл', '', '2016-04-07 00:00:00', 'L.', '', '', ''),
(4, 'Граф Монте-Кристо', 'А. Дюма', '', '2016-04-07 00:00:00', 'L.', '', '', ''),
(5, 'Мастер и Маргарита', 'М. А. Булгаков', '', '2016-04-07 00:00:00', 'L.', '', '', ''),
(6, 'Автостопом по галактике', 'Дуглас Адамс', '', '2016-04-09 00:00:00', 'N.', '', '', ''),
(7, 'Чешский язык за один месяц', 'Реальные самоучители иностранных языков', '', '2016-04-09 00:00:00', 'N.', '', '', ''),
(9, 'Миры Ли Брекетт', 'Ли Брекетт', '', '2016-04-09 00:00:00', 'T.', '', '', ''),
(11, 'Мертвые души', 'Н.В.Гоголь', '', '2016-04-09 00:00:00', 'L.', '', '', ''),
(12, 'Пиковая дама', 'А.С.Пушкин', 'пиковая дама', '2016-04-09 00:00:00', 'L.', '', '16-04-2016 09:43:23', '31.13.144.46'),
(13, 'Горе от ума', 'А.С.Грибоедов', '', '2016-04-09 00:00:00', 'L.', '', '', ''),
(14, 'Герой нашего времени', 'М.Ю.Лермонтов', '', '0000-00-00 00:00:00', 'L.', '', '', ''),
(16, 'Справочник яхтсмена', 'Боб Бонд', 'Стаксель яхта шашлыки', '2016-04-10 00:00:00', 'S.', '', '11-04-2016 19:59:59', '192.168.43.1'),
(24, 'Книга для удаления', 'Книга для удаления', '', '2016-04-09 00:00:00', 'N.', '', '', ''),
(25, 'Создаем динамические веб-сайты с помощью PHP, MySQL, JavaScript, CSS и HTML5', 'Робин Никсон', 'Описание книги Создаем динамические веб-сайты с помощью PHP, MySQL, JavaScript, CSS и HTML5: Научитесь создавать интерактивные сайты, активно работающие с данными, воплощая в них мощные комбинации свободно распространяемых технологий и веб-стандартов. Для этого достаточно обладать базовыми знаниями языка HTML. Это популярное и доступное пособие поможет вам уверенно освоить динамическое веб-программирование с применением самых современных языков и технологий: PHP, MySQL, javascript, CSS и HTML5.', '2016-04-10 00:00:00', 'N.', '', '', ''),
(27, 'PHP. Рецепты программирования', 'Дэвид Скляр, Адам Трахтенберг', 'Описание книги PHP. Рецепты программирования: Третье издание этой популярной книги представляет собой подборку готовых решений наиболее распространенных задач на языке РНР.', '2016-04-10 00:00:00', '', '', '', ''),
(28, 'HTML, JavaScript, PHP и MySQL. Джентльменский набор Web-мастера', 'Николай Прохоренок, Владимир Дронов', 'Описание книги HTML, JavaScript, PHP и MySQL. Джентльменский набор Web-мастера: Рассмотрены вопросы создания интерактивных Web-сайтов с помощью НТML, javascript, PHP и MySQL, форматирования Web-страниц при помощи CSS. Даны основы РНР и примеры написания типичных сценариев. Описаны приемы работы и администрирования баз данных MySQL при помощи РНР и npoграммы phpMyAdmin. Особое внимание уделено созданию программной среды на компьютере разработчика и настройке Web-сервера Apache. Приведено описание текстового редактора Notepad++, шаблонизатора Smarty и прочих программ (Аptana Studio, NetBeans и HeidiSQL), необходимых Web-разработчику.', '2016-04-10 00:00:00', '', '', '', ''),
(29, 'Новая нередактированная книга', 'Автор новой книги', 'Описание или текст новой книги.', '2016-04-10 00:00:00', '', '', '11-04-2016 18:57:04', '192.168.43.143'),
(32, 'книжуля', 'хороший автор', 'вах какая книга!!', '2016-04-10 00:00:00', '', '', '', ''),
(33, 'Приключения майора Звягина', 'Михаил Веллер', '-  Что жрать нечего.  Что Союз  разваливается. Что экономика впадает  в\r\nстолбняк.  Что вагоны  не  разгружены, депутаты  продажны, прошлое трагично,\r\nбудущее мрачно, а вообще я не люблю коллективных неврозов', '2016-04-10 00:00:00', 'S.', '', '', ''),
(34, 'Жизнь на Миссисипи', 'Марк Твен', 'Через некоторое время мы попали в табачно-жвачные края. Пятьдесят лет тому назад табачно-жвачный район распространялся на весь Североамериканский союз. Теперь он чрезвычайно сузился.', '2016-04-10 00:00:00', 'S.', '', '', ''),
(35, 'Му-му', 'Тургенев Иван Сергеевич', '', '2016-04-10 00:00:00', 'S.', '', '11-04-2016 19:59:32', '192.168.43.1'),
(37, '100 потрясающих мест, чтобы отправиться сегодня', '', 'Книга о самых лучших в мире местах.', '2016-04-10 00:00:00', 'N.', '', '', ''),
(38, 'Зарядка для ума', 'Ридерз Дайджест', 'Если вы любите поломать голову, тогда эта книга для вас. \r\n\r\nЗдесь найдутся задания на любой вкус.', '11-04-2016 14:52:07', 'L.', '', '', ''),
(39, 'Название', 'Автор', 'Фрагмент', '', 'Н', '', 'не редактировалась', ''),
(40, 'Название', 'Автор', 'Фрагмент', '', 'Н', '', 'не редактировалась', ''),
(41, 'Название', 'Автор', 'Фрагмент', '', 'Н', '', '12-04-2016 16:49:13', '::1'),
(42, 'Бедная Лиза', 'Н.М.Карамзин', 'Суицидальная история о несчастной любви бедной девушки и богатого барина.', '13-04-2016 06:39:22', 'L.', '85.140.2.154', '13-04-2016 06:43:50', '66.102.9.65'),
(43, 'Гроза', 'А.Н.Островский', 'Жизнь - тлен. Прыг со скалы.', '13-04-2016 07:17:17', 'Л.', '66.102.9.65', '13-04-2016 07:26:57', '66.102.9.65'),
(44, 'Движимые вечностью', 'Джон Бивер', 'Очень часто человек, лежа на смертном одре, понимает, что прожил не свою жизнь. Эта книга позволяет избежать такой страшной ошибки, предупреждая нас, что жизнь - это пар в сравнении с вечностью, и подготавливая нас целесообразно распорядиться ею, инвестируя себя не во временные, а в вечные ценности.', '13-04-2016 08:46:30', 'Платон', '31.13.144.46', '13-04-2016 09:40:03', '31.13.144.46'),
(45, 'New', '', 'Description', '15-04-2016 10:43:27', '', '::1', '15-04-2016 13:31:20', '::1'),
(46, 'Полосатый катафалк', 'Рос Макдональд', 'Том 4 (Собрание сочинений в десяти томах)', '15-04-2016 14:56:35', 'N.', '::1', 'не редактировалась', ''),
(47, 'Список нежных жертв', 'Лариса Соболева', 'Детектив глазами женщины', '15-04-2016 14:59:59', 'N.', '::1', 'не редактировалась', ''),
(48, 'Еще одна новая книга', 'Кто-то', 'По желанию фрагмент', '', 'N.', '', 'не редактировалась', ''),
(49, 'Book', '', '', '', '', '', 'не редактировалась', ''),
(50, 'space', '', '', '', '', '', 'не редактировалась', ''),
(51, 'Последняя книга в этой базе', 'Я', 'Базу нужно нормализовать', '28-06-2016 06:05:19', 'Н', '127.0.0.1', 'не редактировалась', ''),
(52, 'test', 'test', 'test', '06-07-2016 23:23:14', '', '127.0.0.1', 'не редактировалась', ''),
(53, 'test ready', 'Автор', 'lfnve''rn', '06-07-2016 23:25:10', '', '127.0.0.1', 'не редактировалась', ''),
(54, 'asdfgh', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `book_author`
--

CREATE TABLE IF NOT EXISTS `book_author` (
  `RELATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `AUTHOR_PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`RELATION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Дамп данных таблицы `book_author`
--

INSERT INTO `book_author` (`RELATION_ID`, `BOOK_ID`, `AUTHOR_ID`, `AUTHOR_PRIORITY`) VALUES
(1, 1, 1, NULL),
(2, 2, 1, NULL),
(3, 3, 1, NULL),
(4, 4, 1, NULL),
(5, 5, 2, NULL),
(6, 6, 2, NULL),
(7, 7, 2, NULL),
(8, 8, 2, NULL),
(9, 9, 2, NULL),
(10, 10, 3, NULL),
(11, 11, 3, NULL),
(12, 12, 3, NULL),
(13, 13, 3, NULL),
(14, 14, 3, NULL),
(15, 15, 3, NULL),
(16, 16, 4, NULL),
(17, 17, 4, NULL),
(18, 18, 4, NULL),
(19, 19, 4, NULL),
(20, 20, 5, NULL),
(21, 21, 5, NULL),
(22, 22, 5, NULL),
(23, 23, 5, NULL),
(24, 24, 5, NULL),
(25, 25, 5, NULL),
(26, 26, 5, NULL),
(27, 27, 5, NULL),
(28, 28, 6, NULL),
(29, 29, 5, NULL),
(30, 30, 2, NULL),
(31, 31, 6, NULL),
(32, 32, 3, NULL),
(33, 33, 2, NULL),
(34, 34, 7, NULL),
(35, 35, 8, NULL),
(36, 36, 2, NULL),
(37, 37, 9, NULL),
(38, 38, 10, NULL),
(39, 39, 11, NULL),
(40, 40, 12, NULL),
(41, 41, 13, NULL),
(42, 42, 14, NULL),
(43, 43, 15, NULL),
(44, 44, 16, NULL),
(45, 45, 17, NULL),
(46, 45, 18, NULL),
(47, 46, 19, NULL),
(48, 46, 20, NULL),
(49, 47, 21, NULL),
(50, 47, 22, NULL),
(51, 48, 23, NULL),
(52, 48, 24, NULL),
(53, 48, 25, NULL),
(54, 51, 29, NULL),
(55, 51, 30, NULL),
(56, 48, 31, NULL),
(57, 55, 32, NULL),
(58, 56, 33, NULL),
(59, 78, 34, NULL),
(60, 78, 35, NULL),
(62, 81, 36, NULL),
(63, 81, 37, NULL),
(65, 82, 36, NULL),
(66, 82, 37, NULL),
(68, 83, 36, NULL),
(69, 83, 37, NULL),
(71, 98, 38, NULL),
(72, 98, 39, NULL),
(73, 98, 40, NULL),
(74, 98, 41, NULL),
(75, 98, 42, NULL),
(76, 98, 43, NULL),
(77, 106, 44, NULL),
(78, 106, 45, NULL),
(79, 106, 46, NULL),
(80, 106, 47, NULL),
(81, 106, 48, NULL),
(82, 106, 49, NULL),
(84, 108, 5, NULL),
(85, 109, 51, NULL),
(86, 109, 52, NULL),
(87, 109, 53, NULL),
(103, 94, 55, NULL),
(104, 94, 55, NULL),
(105, 94, 55, NULL),
(111, 93, 59, NULL),
(122, 107, 5, NULL),
(125, 95, 0, NULL),
(138, 95, 56, NULL),
(140, 95, 56, NULL),
(142, 95, 57, NULL),
(146, 110, 59, NULL),
(147, 111, 60, NULL),
(148, 112, 61, NULL),
(149, 113, 62, NULL),
(150, 114, 63, NULL),
(151, 115, 65, NULL),
(152, 115, 66, NULL),
(153, 117, 67, NULL),
(154, 117, 68, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE IF NOT EXISTS `book_genre` (
  `RELATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_ID` int(11) NOT NULL,
  `GENRE_ID` int(11) NOT NULL,
  `GENRE_PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`RELATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `GENRE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GENRE_NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`GENRE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`GENRE_ID`, `GENRE_NAME`) VALUES
(0, 'не указан'),
(1, 'фантастика'),
(2, 'роман'),
(3, 'роман-эпопея'),
(4, 'рассказ'),
(5, 'комедия'),
(6, 'пьеса'),
(7, 'поэма'),
(8, 'стихотворение'),
(9, 'учебная литература');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
