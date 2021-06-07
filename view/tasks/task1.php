<?php
 require_once  "../../view/layouts/header.php";

final class Init
{
    private $db;
    private $tableName = 'test';

    /**
     *creates a table test containing 5 fields
     */
    private function create()
    {
        try {
            $this->db->exec("CREATE TABLE IF NOT EXISTS `$this->tableName` (
                    `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
                    `script_name` VARCHAR(25) NOT NULL,
                    `start_time` INT UNSIGNED NOT NULL,
                    `end_time` INT UNSIGNED NOT NULL,
                    `result` ENUM(
                        'illegal', 'failed', 'success'
                    ) NOT NULL
                );");
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /**
     * fills the table with random data
     */
    private function fill()
    {
        $word = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $scriptName = substr(str_shuffle ($word), 0, 25);
        $startTime = mt_rand();
        $endTime = mt_rand();
        $result = mt_rand(1, 3);

        try{
            $sql= $this->db->prepare("INSERT INTO $this->tableName (
                    `script_name`, `start_time`, `end_time`, `result`)
                   VALUES(:script_name,:start_time,:end_time,:result)");
            $sql ->bindValue(':script_name', $scriptName);
            $sql ->bindValue(':start_time', $startTime);
            $sql ->bindValue(':end_time', $endTime);
            $sql ->bindValue(':result', $result);
            $sql ->execute();
        }catch (PDOException $e){
            echo $e->getMessage();
        }
    }

    /**
     * Connection to database
     */
    public function __construct()
    {
        $host = 'localhost';
        $database = 'tzintertool';
        $user = 'root';
        $pass = '';
        try{
            $this->db = new PDO("mysql:host=$host", $user, $pass);
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->db->exec(  "CREATE DATABASE IF NOT EXISTS $database
                DEFAULT CHARACTER SET utf8
                DEFAULT COLLATE utf8_general_ci;");

            $this->db->exec("use $database");
        }catch (PDOException $e){
            $e->getMessage();
        }
        $this->create();
        $this->fill();

        //back to Home page
        echo "<a href=\"/index.php\" type=\"button\" class=\"btn btn-outline-primary col-sm-3\">Home</a>";

    }

    /**
     * selects from table test, data by criterion: 'success'
     * @return mixed
     */
    public function get()
    {

        try {
            $sth = $this->db->query(
                "SELECT * FROM $this->tableName WHERE result=3;");
            $sth->setFetchMode(PDO::FETCH_ASSOC);
             $result = $sth->fetchAll();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
        return $result;
    }

    /**
     *
     */
    public function __destruct()
    {
        $this->db = null;
    }
}

$obj = new Init();
$array = $obj->get();
echo '<pre>';
print_r($array);
echo '</pre>';


require_once "../../view/layouts/footer.php";
