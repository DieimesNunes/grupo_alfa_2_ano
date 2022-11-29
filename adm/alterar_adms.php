<?php
    include ("../conexao.php");
    include("../menu_adm.php");

    $foi = true;

    $id_lanche = $_GET['id'];
    
    if(count($_POST) > 0) {

        $nome = $_POST["nome"];
        $quantidade = $_POST["quantidade"];
        $arquivo = $_POST["arquivo"];
        $descricao = $_POST["descricao"];
        $preco = $_POST["preco"];
        

        $sql_editar = "UPDATE adm SET nome = '$nome', quantidade = '$quantidade', arquivo = '$arquivo', descricao = '$descricao', preco = '$preco' WHERE id_lanche ='$id_lanche'";

        $deucerto = $mysqli->query($sql_editar) or die ($mysqli->error);

        $foi = false;
    }

    $sql = "SELECT * FROM adm WHERE id_adm = '$id_lanche'"; // Comando SQL para listar a tabela form_mensagem com Id_mesnsagem
    $query_mensagem = $mysqli->query($sql) or die ($mysqli->error); // Comando para dar o star Query
    $mensagem = $query_mensagem->fetch_assoc();
?>
<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Alteração - Produto</title>
    </head>
    <body>
        
        <!-- Fim começa -->
        <div class="container">
            <h1>Entre em contato:</h1>
            <form action="" method="post">
                <div class="form-group">
                    <div class="mb-3">
                        <label class="form-label">Id:</label>
                        <input value="<?php echo $mensagem['id_adm']?>" name="nome" required type="text" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nome:</label>
                        <input value="<?php echo $mensagem['nome']?>" name="quantidade" required type="number" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Login:</label>
                        <input value="<?php echo $mensagem['login']?>" name="arquivo" required type="text" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Senha:</label>
                        <input value="<?php echo $mensagem['senha']?>" name="preco" required type="text" class="form-control">
                    </div>
                </div>            
                  
                <button name="envio" type="submit" class="btn btn-warning">Alterar</button>
                <a href="alterar_produtos.php" class="btn btn-primary" >Cancelar</a>
                
            </form>
            <?php
            if($foi == false){
            if($deucerto){
                echo "<h2>Produto atualizado com sucesso.</h2>";
                unset($_POST);            
        ?>
                 <a href="alterar_produtos.php"><button type="reset" class="btn btn-primary">Voltar</button></a>
        <?php
            }}
        ?>
        </div>
        
        
        <script src="Jquery/jquery-3.6.0.min.js"></script>
        <script src="Bootstrap_3/js/bootstrap.min.js"></script>
    </body>
</html>