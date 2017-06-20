<?php

require_once __DIR__ . '/Db.php'; // подключаем класс для подключения к БД
require_once __DIR__ . '/ActiveRecord.php'; // подключаем класс для работы с таблицами
require_once __DIR__ . '/CreateXml.php'; // подключаем класс для создания XML

// Создаем объект для БД
$db = new Db();

/**
 * (1) Запрос должен содержать алиасы полей из http://autoload.avito.ru/format/realty/
 * ДОПОЛНЕНИЕ: Если Image хранится в нужном XML-формате, то просто написать алиас Photos в 1 запросе
 *             если Image хранится в отдельной таблице, где перечислены поля для атрибутов и контента, то раскомментировать 2ой запрос.
 *
 * Пример:
 *  SELECT
 *      field1 as Id,
 *      field2 as Description,
 *      field3 as City
 *      ...
 *  FROM oris_objects
 */

$sql = '
SELECT object_id as Id,
contact as ManagerName,
rooms_count as Rooms,
square as Square,
level as Floor,
level_count as Floors,
price as Price,
phone_cell as ContactPhone,
note as Description,
oris_streets.name as Street,
oris_material_type.name as WallsTypeFROM,
oris_districts.name as District,
photos as Photos
FROM oris_objects LEFT JOIN oris_streets ON oris_objects.street_id = oris_streets.id
LEFT JOIN oris_material_type ON oris_objects.material_id = oris_material_type.id
LEFT JOIN oris_districts ON oris_objects.district_id = oris_districts.id
';
//$sql = 'SELECT * FROM t_ads';
$dataAds = $db->querySQL($sql, []);

/**
 * (1) Сбор данных с помощью данного запроса актуально,
 * когда есть отдельная табилца для хренения атрибутов для тега Image и контента (url адрес изображения)
 *
 * Пример:
 *  SELECT `images_id`, `image`, `storetype`, `id`, `state` FROM `images` WHERE 1
 */
$dataImages = null;
//$sql = 'SELECT * FROM images';
//$dataImages = $db->querySQL($sql, []);

/**
 * Имя xml-файла. Здесь могут быть функции для генерации имени файла
 */
$nameFileXml = 'myFile.xml';

/**
 * Формируем XML-файл с тегами и данными
 */
CreateXml::actionCreate($dataAds, $nameFileXml, $dataImages /* необязятельно */);
