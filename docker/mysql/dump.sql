-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: db
-- Время создания: Сен 19 2021 г., 15:42
-- Версия сервера: 5.7.34
-- Версия PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lara`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
                            `id` int(11) NOT NULL,
                            `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Овощи'),
(2, 'Фрукты'),
(3, 'Консервы'),
(4, 'Дегидрированные продукты'),
(5, 'Пустая');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
                         `id` int(11) NOT NULL,
                         `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `name`) VALUES
(1, '001.jpg'),
(2, '002.jpg'),
(3, '003.jpg'),
(4, '004.jpg'),
(5, '005.jpg'),
(6, '006.jpg'),
(7, '007.jpg'),
(8, '008.jpg'),
(9, '009.jpg'),
(10, '010.jpg'),
(11, '011.jpg'),
(12, '012.jpg'),
(13, '013.jpg'),
(14, '014.jpg'),
(15, '015.jpg'),
(16, '016.jpg'),
(17, '017.jpg'),
(18, '018.jpg'),
(19, '019.jpg'),
(20, '020.jpg'),
(21, '021.jpg'),
(22, '022.jpg'),
(23, '023.jpg'),
(24, '024.jpg'),
(25, '025.jpg'),
(26, '026.jpg'),
(27, '027.jpg'),
(28, '028.jpg'),
(29, '029.jpg'),
(30, '030.jpg'),
(31, '031.jpg'),
(32, '032.jpg'),
(33, '033.jpg'),
(34, '034.jpg'),
(35, '035.jpg'),
(36, '036.jpg'),
(37, '037.jpg'),
(38, 'plug.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
                           `id` int(11) NOT NULL,
                           `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `reserve` int(11) NOT NULL DEFAULT '0',
                           `price` float(9,2) NOT NULL DEFAULT '0.00',
                           `image_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `reserve`, `price`, `image_id`) VALUES
(1, 'Огурец', 'Огурцы — это плоды однолетнего травянистого растения семейства Тыквенные. Относятся к овощным культурам. Плоды располагаются на длинном стелющемся шершавом стебле, который в длину может достигать 2 метров. Листья — ярко-зеленые, сердцевидные, большие. Плоды вытянутой цилиндрической формы, имеют кожуру ярко-зеленого и темно-зеленого цвета и сочную мякоть белого или слегка зеленоватого оттенка, многосемянные. Вкус огурца свежий, нейтральный. Овощ обладает свежим запахом, это позволяет его легко комбинировать с яркими по вкусу продуктами.', 500, 69.90, 1),
(2, 'Помидор', 'Помидоры, они же — томаты, — сочные плоды, как правило имеющие красный цвет и круглую форму. В ботанике их принято относить к ягодам, однако в народе и при взимании торговых пошлин их называют овощами. В статье будем придерживаться второго варианта.\r\nИнтересен тот факт, что изначально помидоры были желтыми, потом их привезли в Европу, и уже там, через пару сотен лет, они приобрели всем знакомый красный цвет. На сегодняшний день в мире насчитывается порядка 10 тысяч сортов, отличающихся по размерам, форме и цвету.\r\nНапример, всем известна самая маленькая разновидность — помидоры черри. Маленькие, аккуратненькие и симпатичные помидорки используются как украшение многих блюд: канапе, тарталетки, закусочные шашлычки, бутерброды, салаты, мясные и рыбные блюда. Имеют насыщенный вкус и аромат.', 1200, 169.90, 4),
(3, 'Кабачок', 'Кабачок (лат. Cucurbita pepo subsp. pepo) – однолетнее растение, которое относится к отделу цветковые, классу двудольные, порядку тыквоцветные, семейству тыквенные, роду тыква, виду тыква обыкновенная. Является подвидом обыкновенной тыквы.', 389, 59.90, 7),
(4, 'Тыква', 'Тыква – это одна из наиболее распространенных пищевых и кормовых культур в мире, различные сорта которой выращиваются практически на всех континентах. Помимо непосредственно самого плода тыквы, также активно используются и его семена, которые имеют ценные пищевые качества и полезные лечебные свойства.', 705, 225.00, 9),
(5, 'Капуста', 'Капуста – одна из древнейших овощных культур. Семена этого растения были найдены археологами при раскопках стоянок человека каменного и бронзового веков. Родина капусты – Средиземноморье. В России капуста впервые появилась в XI-XII веках, а повсеместно россияне стали возделывать эту культуру в XVIII веке.', 359, 25.00, 10),
(6, 'Арбуз', 'Арбуз – это однолетнее травянистое растение семейства тыквенные, бахчевая культура. Имеет тонкие, длинные ползучие стебли, длиной до 4 м и более.', 1589, 27.00, 15),
(7, 'Банан', 'Банан (Musa) – это многолетнее травянистое растение, которое относится к отделу цветковые, классу однодольные, порядку имбирецветные, семейству банановые, роду банан.', 950, 57.00, 16),
(8, 'Яблоко', 'Яблоко – растение семейства Розовые. Родиной этого фрукта является Центральная Азия, где до сих пор можно найти его в диком виде.', 2200, 67.00, 18),
(9, 'Говядина тушеная ГОСТ', 'Тушенка говяжья — это консервированный продукт, приготовленный из мяса говядины, бульона, специй и соли. В промышленном производстве мясо сперва тушат, раскладывают по металлическим банкам, а затем стерилизуют.\r\nТакой способ обработки и производство в металлической таре позволяют хранить продукт длительное время, что, наряду с высокими вкусовыми качествами тушенки, поспособствовало ее широкому распространению.', 172, 167.00, 20),
(10, 'Говядина тушеная Хохлома', 'Тушенка говяжья — это консервированный продукт, приготовленный из мяса говядины, бульона, специй и соли. В промышленном производстве мясо сперва тушат, раскладывают по металлическим банкам, а затем стерилизуют.\r\nТакой способ обработки и производство в металлической таре позволяют хранить продукт длительное время, что, наряду с высокими вкусовыми качествами тушенки, поспособствовало ее широкому распространению.', 289, 227.00, 22),
(11, 'Говядина тушеная БАРС', 'Тушенка говяжья — это консервированный продукт, приготовленный из мяса говядины, бульона, специй и соли. В промышленном производстве мясо сперва тушат, раскладывают по металлическим банкам, а затем стерилизуют.\r\nТакой способ обработки и производство в металлической таре позволяют хранить продукт длительное время, что, наряду с высокими вкусовыми качествами тушенки, поспособствовало ее широкому распространению.', 514, 217.00, 25),
(12, 'Сгущеное молоко Главпродукт', 'Сгущенка (сгущенное молоко) – жидкость густой консистенции, которая может быть белого или же кремового цвета (см. фото). Получается она благодаря концентрированию молока коровы путем выпаривания. Кроме этого, в него добавляется 12% сахара и лактозы, которая придает продукту однородную консистенцию. Сгущенное молоко имеет характерный молочный достаточно сладкий вкус и аромат.', 500, 117.00, 27),
(13, 'Сгущеное молоко ГОСТ', 'Сгущенка (сгущенное молоко) – жидкость густой консистенции, которая может быть белого или же кремового цвета (см. фото). Получается она благодаря концентрированию молока коровы путем выпаривания. Кроме этого, в него добавляется 12% сахара и лактозы, которая придает продукту однородную консистенцию. Сгущенное молоко имеет характерный молочный достаточно сладкий вкус и аромат.', 0, 79.00, 29),
(14, 'Персики консервированные Vitaland', 'Персики консервированные - плоды персикового дерева, подвергшиеся термической обработке в кипящем растворе из сахара и воды.', 85, 157.00, 30),
(15, 'Персики консервированные ГринРей', 'Персики консервированные - плоды персикового дерева, подвергшиеся термической обработке в кипящем растворе из сахара и воды.', 15, 107.00, 32),
(16, 'Бананы сушеные Золотой стандарт', 'Бананы сушеные — это все тот же вкусный фрукт, но с решенным вопросом его транспортировки на длительные расстояния.', 55, 207.00, 34),
(17, 'Картофель сушеный Золотой стандарт', 'Сушеный картофель в пачках', 85, 111.00, 35),
(18, 'Морковь сушеная Золотой стандарт', 'Морковь сушеная', 150, 200.00, 37);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
                                    `id` int(11) NOT NULL,
                                    `product_id` int(11) NOT NULL,
                                    `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 14, 2),
(17, 15, 2),
(18, 16, 4),
(19, 16, 2),
(20, 17, 4),
(21, 18, 4),
(22, 17, 2),
(23, 18, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product_image`
--

CREATE TABLE `product_image` (
                                 `id` int(11) NOT NULL,
                                 `product_id` int(11) NOT NULL,
                                 `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 4, 9),
(10, 5, 10),
(11, 5, 11),
(12, 5, 12),
(13, 6, 13),
(14, 6, 14),
(15, 6, 15),
(16, 7, 16),
(17, 7, 17),
(18, 8, 18),
(19, 8, 19),
(20, 9, 20),
(21, 9, 21),
(22, 10, 22),
(23, 10, 23),
(24, 10, 24),
(25, 11, 25),
(26, 12, 26),
(27, 12, 27),
(28, 13, 28),
(29, 13, 29),
(30, 14, 30),
(31, 14, 31),
(32, 15, 32),
(33, 16, 33),
(34, 16, 34),
(35, 17, 35),
(36, 17, 36),
(37, 18, 37);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_image`
--
ALTER TABLE `product_image`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `product_image`
--
ALTER TABLE `product_image`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
