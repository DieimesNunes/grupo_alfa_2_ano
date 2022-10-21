<?php 

    include("conexao.php");
    include("icon.php");
    include("menu.php");

    $sql_mensagens = "SELECT * FROM tabela_produtos";

    $consulta_mensagens = $mysqli->query ( $sql_mensagens) or die ($mysqli->error);

    $quantidade_mensagens = $consulta_mensagens->num_rows;
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Pi</title>
</head>
<body>
    <h1 class= "center font margintop">Lanches Disponíveiss</h1>
    <div class="container">
        <div class = "row">
            <?php
            
                if($quantidade_mensagens == 0){
            ?>           
                <p>Nenhum produto foi cadastrado</p>
            
            
            <?php
                } else{
                    while($mensagem = $consulta_mensagens -> fetch_assoc()){
                        if($mensagem['quantidade'] == 0 ){                                    
                        }else{

                        
            ?>
                
                
                <div class="card margin" style="width: 18rem;">
                        <img class="card-img-top" src="<?php echo $mensagem['arquivo'] ?>" alt="Card image cap" >
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $mensagem['nome'];?></h5>
                            <p class="card-text"><?php echo $mensagem['descricao'];?></p>
                            <p>Quantidade disponível: <?php echo $mensagem['quantidade'];?></p>
                        <p>Preço: <?php echo ($mensagem['preco'])?></p>
                        <a href="pedidos.php?id_produto=<?php echo $mensagem['id_lanche']?>" class="btn btn-primary">Solicitar</a>
                        </div>
                        
                </div>
            <?php
                        }
                    }
                }
            ?>
        </div>
        </div>
    </div>
</body>
</html>