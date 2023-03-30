<?php

    include_once("config.php");

    $connection = mysqli_connect(SERVER, USER, PASSWORD, DATABASE);

    $query = "SELECT fecha, COUNT(calidad) as total from datos_telar WHERE calidad = 0 GROUP BY fecha, calidad;";

    $resultado = mysqli_query($connection,$query);

    $arreglo = array();

    while($fila = mysqli_fetch_array($resultado, MYSQLI_ASSOC)){
        $arreglo[] = $fila;
    }

    header('Content-Type: application/json');
    $json = json_encode($arreglo);
    echo $json;
?>