<?php
    include("../conexao.php");
    include("../menu_adm.php");

    $id_mensagem = intval($_GET["id"]);
    $sql_mensagens = "SELECT * FROM tabela_produtos WHERE id_lanche = '$id_mensagem'";
    $consulta_mensagens = $mysqli->query( $sql_mensagens) or die($mysqli->error);
    $mensagem = $consulta_mensagens -> fetch_assoc();

    $sumir = false;


   // var_dump($_POST['confirmar']);


    if(isset($_POST['confirmar'])){
        $sql_deletar = "DELETE FROM tabela_produtos WHERE id_lanche = '$id_mensagem'";
        $deucerto = $mysqli->query($sql_deletar) or die ($mysqli->error);
        $sumir = true;
    }

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"   integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <title>Document</title>
</head>
<body>

    <div class="container">
        <div class="table-responsive">
            <?php 
            if($sumir == false){
            ?>
            <table class ="table table-hover">
                <thead>
                    <th scope="col">Nome</th>
                    <th scope="col">Arquivo</th>
                    <th scope="col">Email</th>
                    <th scope="col">Mensagem</th>
                    <th scope="col">Data</th>
                </thead>
                <tbody>
                    <td><?php echo $mensagem['nome'];?></td>
                    <td><?php echo $mensagem['arquivo'];?></td>
                    <td><?php echo $mensagem['tipo'];?></td>
                    <td><?php echo $mensagem['descricao'];?></td>
                    <td><?php echo $mensagem['preco']?></td>
                </tbody>
                
            </table>
            <form action="" method="post" class="text-center">
                    <h3>Tem certeza que deseja apagar ? </h3>
                    <button name="confirmar" value="1" class="btn btn-danger">Sim</button>
                    <a href="apagar_produtos.php" class="btn btn-primary">Não</a>            
            </form>
            <?php 
            }else{
                echo "Mensagem apagada com sucesso <br>";      
            ?>
            <a href="apagar_produtos.php"><button class="btn btn-danger">Voltar</button></a>
            <?php
            }
            ?>
            

           
            
        </div>
    </div>    
</body>
</html>