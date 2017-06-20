<?php

/**
 * Класс для подключения к БД
 * Class Db
 */
class Db
{

    private $dbh;
    private $className = 'stdClass';

    public function __construct()
    {
        $params_db = require __DIR__ . '/db_config.php'; // настройки подключения

        $options = [
            \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
        ];

        // database source name
        $dsn = "mysql:host={$params_db['host']};dbname={$params_db['dbname']};charset={$params_db['charset']}";

        // database handle
        $this->dbh = new \PDO($dsn, $params_db['user'], $params_db['password'], $options);
    }

    /**
     * Устанавливаем класс в переменную ClassName
     * @param $className
     */
    public function setClassName($className)
    {
        $this->className = $className;
    }

    /**
     * Выполнить sql запрос с параметрами и вернуть массив с результатами выборки
     * @param $sql
     * @param array $params <p>[':id' => 1]</p>
     * @return array
     */
    public function querySQL($sql, $params = [])
    {
        // Подгатавливаем запрос
        $sth = $this->dbh->prepare($sql);

        // Выполняем запрос меняя параметры на реальные значения
        $sth->execute($params);

        // Получаем массив объектов с названием установленного класса
        return $sth->fetchAll(\PDO::FETCH_CLASS, $this->className);
    }

    /**
     * Выполнить sql запрос с параметрами (INSERT, UPDATE, DELETE)
     * @param $sql
     * @param array $params <p>[':id' => 1]</p>
     * @return bool
     */
    public function executeSQL($sql, $params = [])
    {
        $sth = $this->dbh->prepare($sql);
        return $sth->execute($params);
    }

    /**
     * Получить id вставленной записи
     * @return string
     */
    public function lastInsertId()
    {
        return $this->dbh->lastInsertId();
    }
}