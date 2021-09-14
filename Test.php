<?php
include_once "error_config.php";
include_once "DbConfig.php";
include_once "Crud.php";
include_once "Paginator.php";

$data_array = [
    'gnr_name' => 'Drama'
];
$crud = new Crud();

// $crud->create($data_array, 'genres');

// $crud->update("UPDATE movies SET mv_title = 'Titanic 2' WHERE mv_id = 1");
/* $crud->delete("DELETE FROM movies WHERE mv_title = 'Titanic'");

$results = $crud->read('SELECT * FROM movies;');
var_dump($results); */

$paginator = new Paginator(50, 10);

echo $paginator->get_pagination_links();