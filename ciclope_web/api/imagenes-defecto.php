<?php
    define('SERVER', '127.0.0.1');
    define('DATABASE', 'ciclope');
    define('USER','root');
    define('PASSWORD', '');

    $connection = mysqli_connect(SERVER, USER,PASSWORD, DATABASE);

    $query = "SELECT * FROM datos_telar WHERE calidad = 0";
    
    $resultado = mysqli_query($connection, $query);

    $arreglo=array();

    while($fila = mysqli_fetch_array($resultado, MYSQLI_ASSOC)){
        $arreglo[] = $fila;
    }
    header('Content-Type: application/json');
    $json = json_encode($arreglo);
    echo $json;

?>