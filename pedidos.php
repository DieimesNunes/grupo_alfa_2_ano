<?php
    include("conexao.php");
    require("autenticacao.php");

    if(isset($_GET['id_produto'])){
        $id_produto = $_GET['id_produto'];  

        $consulta = "SELECT * FROM tabela_produtos WHERE id_lanche='$id_produto'";
        $deucerto = $mysqli->query($consulta) or die ($mysqli->error);
        $consulta_produto = $deucerto -> fetch_assoc();       
    }
    

    if(isset($_POST['bt_nome'])){
        $nome = $_POST['bt_nome'];
        $telefone = $_POST['bt_telef'];
        $quantidade = $_POST['bt_quantidade']; // Talvez pode ser retirado

        $mysqli -> query("INSERT INTO tabela_pedidos (nome, telefone, quantidade, id_produto) values ('$nome','$telefone', '$quantidade','$id_produto')") or die($mysqli -> error);
        $_SESSION['msg'] = "<div class='alert alert-success'>Pedido realizado com sucesso!!!</div>";
    }

    
?>

<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

        <title>Informações obrigatórias</title>
    </head>
    <body>
        <div class="container">
            <?php
                if(isset($_SESSION['msg'])){ // Mensagem para o usuário
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);  // comando para esvaziar conteúdo dentro da variável
                }
            ?>
            <h1 class="center">Pedidos</h1>
            <div class="text-center">
                <img src="<?php echo $consulta_produto['arquivo'];  ?>" class="rounded" alt="..." width="600px">
                <h3>Nome do produto: <?php echo $consulta_produto['nome']; ?></h3>
                <h3>Preço: <?php echo $consulta_produto['preco']; ?></h3>
            </div>
            

            <form action="" method="post">
                <div class="mb-3">
                    <label class="form-label" for="bt_telef">Digite a quantidade: </label>
                    <input class="form-control" type="text" name="bt_quantidade">
                </div>
                            
                <input class="btn btn-primary" type="submit" value="Fazer pedido">
                <input class="btn btn-warning" type="reset" value="Limpar">
                <a href="index.php" class="btn btn-danger">Sair</a>
                

            </form>
        </div>
       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>