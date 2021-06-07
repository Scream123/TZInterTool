<?php
require_once "../../view/layouts/header.php";

/**
 * Создать скрипт, который в папке /datafiles найдет все файлы, имена которых
 * состоят из цифр
 * и букв латинского алфавита, имеют расширение ixt и выведет на экран имена этих файлов,
 * упорядоченных по имени.
 */
//back to home page
echo "<a href=\"/index.php\" type=\"button\" class=\"btn btn-outline-primary m-1 col-sm-3\">Home</a><br/>";

//name of directory
$diectory = 'datafiles';

//scan directory
$files = scandir($diectory);

/*We iterate over each value of array, passing it to the callback function.
If the callback function returns true, the given value from array is returned to the resulting array.*/
$array = array_filter($files, function ($file) {
    //regular expression template
    $tmpl = '/^[0-9a-z]+\.ixt$/i';
    return preg_match($tmpl, $file);
});
//check if the array exists
if (is_array($array))

    //iterating over the array and displaying filenames
    foreach ($array as $file) {
        echo ' файлы, имена которых состоят из цифр и букв латинского алфавита, имеют расширение ixt: ' . $file . '<hr/>';
    }

require_once "../../view/layouts/footer.php";

