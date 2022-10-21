<?php

if(isset($_POST)){
    var_dump ($_POST['btn_nome']);
    
}



?>

<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <form action="" method="post">
            <label for="">Nome</label>
            <input type="text" name="btn_nome">
            <input type="submit" value="enviar" >
        </form>
    </body>
</html>