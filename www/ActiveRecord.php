<?php

/**
 * Модель для работы с таблицам БД
 * Class AbstractModel
 */
abstract class ActiveRecord
{
    protected static $table;

    protected $data = [];

    public function __set($key, $val)
    {
        $this->data[$key] = $val;
    }

    public function __get($key)
    {
        return $this->data[$key];
    }

    public function __isset($key)
    {
        return isset($this->data[$key]);
    }

    /**
     * Получение всех данных из таблицы
     *
     * @return array
     * @throws ModelException
     */
    public static function findAll()
    {
        // Создаем объект класса Db (подключение к БД)
        $db = new Db();

        // Получаем название класса, из которого он реально был вызван
        $class = get_called_class();

        // Устанавливаем название кдасса
        $db->setClassName($class);

        // Пишем sql запрос
        $sql = 'SELECT * FROM ' . static::$table;

        // Выполняем запрос
        $res = $db->querySQL($sql);
        if (empty($res)) {
//            throw new ModelException('Записи в таблице не найдены', 404);  // бросаем исключение
        }

        // Возвращаем результат sql запроса (объекты с данными)
        return $res;
    }

    /**
     * ActiveRecord - вставка записи
     */
    protected function insert()
    {
        $cols = array_keys($this->data);
        $data = [];
        $fileds = [];
        foreach ($cols as $col) {
            $data[':' . $col] = $this->data[$col];
            $fileds[] = '`' . $col . '`';
        }

        $sql = '
            INSERT INTO ' . static::$table . '
            (' . implode(', ', $fileds) . ')
            VALUES
            (' . implode(', ', array_keys($data)) . ')
        ';

        $db = new Db();
        $db->executeSQL($sql, $data);
        $this->id = $db->lastInsertId();
    }

    /**
     * ActiveRecord - удаление записи
     */
    public function delete()
    {
        $data = [];
        foreach ($this->data as $key => $val) {
            if ('id' == $key) {
                $data[':' . $key] = $val;
            }
        }

        $sql = '
            DELETE FROM ' . static::$table . '
            WHERE id=:id
        ';

        $db = new Db();
        $db->executeSQL($sql, $data);
    }

    /**
     * ActiveRecord - обновление записи
     */
    protected function update()
    {
        $cols = [];
        $data = [];
        foreach ($this->data as $key => $val) {
            $data[':' . $key] = $val;
            if ('id' == $key) {
                continue;
            }
            $cols[] = '`' . $key . '`=:' . $key;
        }

        $sql = '
            UPDATE ' . static::$table . '
            SET ' . implode(', ', $cols) . '
            WHERE id=:id
        ';

        $db = new Db();
        $db->executeSQL($sql, $data);
    }

    /**
     * Метод добавляет или обновляем в зависиомости от того, установлен (существует) ли id
     */
    public function save()
    {
        if (!isset($this->id)) {
            $this->insert();
        } else {
            $this->update();
        }
    }

    /**
     * Выполняет любой запрос SELECT
     *
     * @param $sql
     * @param $data
     * @return array
     * @throws ModelException
     */
    public static function selectAnyQuery($sql, array $data = [])
    {
        $db = new Db();
        $class = get_called_class();
        $db->setClassName($class);
        $res = $db->querySQL($sql, $data);
        if (empty($res)) {
//            throw new ModelException('Записей нет', 404);  // бросаем исключение
        }
        return $res;
    }
}