<?php 
include('../menu_adm.php');
include('../icon.php');
?>

<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="style3.css">
        <title>Tela de administração</title>
    </head>
    <body>
        <div class="container">
            <h1>Tela de administração</h1>           
            <h3>Cadastrar</h3>  
            <p>Cadastrar administradores <a class="btn btn-primary" href="cadastrar_adm.php">Acessar</a></p>          
            <p>Cadastrar produtos <a class="btn btn-primary" href="cadastrar_produtos.php">Acessar</a></p>
            <hr>
            <h3>Consultar</h3>
            <p>Consultar produtos <a class="btn btn-primary" href="consultar_produtos.php">Acessar</a></p>
            <p>Consultar pedidos <a class="btn btn-primary" href="consultar_pedidos.php">Acessar</a></p>
            <hr>
            <h3>Alterar</h3>
            <p>Alterar cadastro de produtos <a class="btn btn-primary" href="cadastrar_produtos.php">Acessar</a></p>
            <hr>
            <h3>Deletar</h3>
            <p>Apagar produtos <a class="btn btn-primary" href="cadastrar_produtos.php">Acessar</a></p>
            <p>Apagar pedidos <a class="btn btn-primary" href="cadastrar_produtos.php">Acessar</a></p>
        </div>        
    </body>
</html>