<?php
require_once "../../view/layouts/header.php";

/**
 * Имеется 3 таблицы: info, data, link, ес ть запрос для получения данных:
 * select * from data,link,info where link.info_id = info.id and link.data_id = data.id
 */
//back to Home page
echo "<a href=\"/index.php\" type=\"button\" class=\"btn btn-outline-primary m-1 col-sm-3\">Home</a>";
echo "<h1>Оптимизация запроса и таблиц</h1>";
//optimized query
$sql = "Select * FROM `data` LEFT JOIN `link` ON link.data_id = data.id LEFT JOIN `info` ON link.info_id =info.id";
echo "Оптимизация выборки: $sql <br/>";
//Можно оптимизировать аблицу link,  нужно добавить поле id и сделать  его первиным ключом
$sql = 'CREATE TABLE `link` (
    `id` int UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `data_id` int(11) NOT
    `info_id` int(11) NOT NULL
    ) ENGINE=MyISAM DEFAULT CHARSET=utf 8;';
echo "Оптимизация таблицы: $sql";

require_once "../../view/layouts/footer.php";

