<?php
    $servidor = "localhost";
    $usuario = "aluno";
    $senha = "2022";
    $banco = "pi2";

    $mysqli = new mysqli($servidor, $usuario, $senha, $banco);

    if($mysqli->connect_errno){
        echo "Não deu certo " . $mysqli->connect_error;
         exit();
    }
?>