<?php
    if(!isset($_SESSION)){
        session_start();
    }

    if(!isset($_SESSION['usuario_ativo'])){
        die("Você não está logado.");
    }
?>