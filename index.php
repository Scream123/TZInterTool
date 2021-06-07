<?php
// FRONT CONTROLLER
// Общие настройки
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Connect files
require_once "view/layouts/header.php";
?>

<div class="container  d-inline-flex p-10 col-sm-3">
    <a href="view/tasks/task1.php" type="button" class="btn btn-outline-primary m-1 col-sm-3">Task1</a>
    <a href="view/tasks/task2.php" type="button" class="btn btn-outline-primary m-1 col-sm-3">Task2</a>
    <a href="view/tasks/task3.php" type="button" class="btn btn-outline-primary m-1 col-sm-3">Task3</a>
    <a href="view/tasks/task4.php" type="button" class="btn btn-outline-primary m-1 col-sm-3">Task4</a>
    <a href="view/tasks/task5.php" type="button" class="btn btn-outline-primary m-1 col-sm-3">Task5</a>
    <hr/>


</div>
<?php require_once "view/layouts/footer.php";?>
