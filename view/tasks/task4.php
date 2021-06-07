<?php
//including header.php file
require_once "../../view/layouts/header.php";
/**
 * Написать
 * скрипт закачивания страницы https://mirinstrumenta.ua/ ua/, из страницы извлечь
 * телефоны, заголовки, ссылки в блоке "Бренды", сохранить в таблицу loot , имеющей такую
 */

function extraction()
{
    //setting of database
    $db = null;
    $host = 'localhost';
    $database = 'tzintertool';
    $user = 'root';
    $pass = '';

    //connect to database and error checking
    try {
        $db = new PDO("mysql:host=$host", $user, $pass);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->exec("CREATE DATABASE IF NOT EXISTS $database
                DEFAULT CHARACTER SET utf8
                DEFAULT COLLATE utf8_general_ci;");
        //$this->db->exec("created $database successfully!<br>");
        $db->exec("use $database");
    } catch (PDOException $e) {
        $e->getMessage();
    }


    //back to homepage
    echo "<a href=\"/index.php\" type=\"button\" class=\"btn btn-outline-primary m-1 col-sm-3\">Home</a><br/>";

     //get page from site
    $page = file_get_contents('https://mirinstrumenta.ua/');
    $html = file_get_contents('https://mirinstrumenta.ua/brands.html');

    $phone_template = '/\+[\d\-\(\) ]{9,}\d/';


    $headers_template = '/<h[1-7]>.*?<\/h[1-7]>/i';
    $title_template = "/<title>(.*)<\/title>/";

    //pattern <a href=...>
    $url_template = '/href="([^"]+)"/';


    preg_match_all($phone_template, $page, $phone_number);
    foreach ($phone_number as $number)
        //Concatenates the elements of an array into a string
        $phone = implode(', ', $number);


        preg_match_all($headers_template, $html, $res_h);
        foreach ($res_h[0] as $head)

        preg_match_all($title_template, $html, $res_t);

        //we go through the array twicw
        foreach ($res_t as $title)
          foreach ($title as $t)

            $array_headers = [$t, $head];
            //Concatenates the elements of an array into a string
            $title = implode(',', $array_headers);

            //preg_match_all($url,$html,$res_url);
            preg_match_all($url_template, $html, $res_url);

            //we go through the array
            foreach ($res_url[0] as $key => $link)

              //Concatenates the elements of an array into a string
              $url = implode(', ', $res_url[0]);

              //truncated the string to 240 characters
              $url = mb_strimwidth($url, 0, 240, '...');

              //insert data in table of DB and error checking
              try {

                $sql = $db->prepare("INSERT INTO loot (`phone`,`title`,`url`)
                                     VALUES(:phone,:title, :url)");
                // if(is_string($link)){echo  'string!';}else{echo 'not string';die;}
                $sql->bindValue(':phone', $phone, PDO::PARAM_STR);
                $sql->bindValue(':title', $title, PDO::PARAM_STR);
                $sql->bindValue(':url', $url, PDO::PARAM_STR);
                $sql->execute();



              }catch (PDOException $e) {
                 echo $e->getMessage();
              }
               require_once "../../view/layouts/footer.php";

               return true;
}
extraction();

