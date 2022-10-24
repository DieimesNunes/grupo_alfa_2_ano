<?php 
    

    include("..\conexao.php");
    include("../menu_adm.php");
    include("..\icon.php");

    if(!isset($_SESSION)){
        session_start();
    }
  

    $sql_mensagens = "SELECT * FROM tabela_pedidos";

    $consulta_mensagens = $mysqli->query ( $sql_mensagens) or die ($mysqli->error);

    $quantidade_mensagens = $consulta_mensagens->num_rows;


?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="../style2.css">
    <title>Consultar Produtos</title>
    </head>
    <body>
        

        <div class="container pdg">
            <form action="" method="post">
                <input  class="btn btn-primary" type="submit"  value="Atualizar" />
                <?php
                    if(isset($_SESSION['resultado'])){
                        echo $_SESSION['resultado']; 
                        unset($_SESSION['resultado']);                   
                    }
                ?>

                <table class="table shesh">
                    <thead>
                        <tr>
                            <th scope="col" class="table-light">Nome</th>
                            
                            <th scope="col" class="table-light">telefone</th>
                            <th scope="col" class="table-light">Quantidade</th>
                            <th scope="col" class="table-light text">id</th>
                        </tr>
                    </thead>        
                    <tbody>
                        <?php
                            $voltar = "../";
                            
                            
                            if($quantidade_mensagens == 0){
                        ?>
                        <p>Nenhum produto foi cadastrado</p>
                        <?php
                                } else{
                                    $d = 1;
                                    $contador = 0; 
                                    while($mensagem = $consulta_mensagens -> fetch_assoc()){
                                                  
                        ?>
                        <tr>
                            <th scope="row"><?php echo $mensagem['nome'];?></th>
                            <td><?php echo $mensagem['telefone'];?></td>
                            <td class="font"><?php echo $mensagem['quantidade'];?></td>
                            <td class="sss"><?php echo $mensagem['id_produto'];?></td>
                        </tr>

                    <?php
                            }
                        }
                    ?>
                    </tbody>
                </table>
            </form>       
        
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
        crossorigin="anonymous"></script>        
        <script src="script.js"></script> 
    </body>
</html>