<?php 
    

    include("../conexao.php");
    require("autenticacao.php");
    include("../menu_adm.php");
    include("../icon.php");

    if(!isset($_SESSION)){
        session_start();
    }
  

    $sql_mensagens = "SELECT * FROM adm";

    $consulta_mensagens = $mysqli->query ( $sql_mensagens) or die ($mysqli->error);

    $quantidade_mensagens = $consulta_mensagens->num_rows;

    if (isset($_POST)){
        
       foreach ($_POST as $indice => $valor){ 
            $quantidade = $valor;

            $sql_code = "UPDATE tabela_produtos
            SET quantidade = '$quantidade'
            WHERE id_lanche = '$indice'";

            $deu_certo = $mysqli->query($sql_code) or die($mysqli->error);
       }

       if(!empty($deu_certo)){
        $sql_mensagens = "SELECT * FROM tabela_produtos";
        $consulta_mensagens = $mysqli->query ( $sql_mensagens) or die ($mysqli->error);
        $quantidade_mensagens = $consulta_mensagens->num_rows;
        $_SESSION['resultado'] = "<div class='alert alert-success'>Produtos alterados com sucesso. </div>";
        unset($_POST); 
        unset($deu_certo); 
        
       }
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="../style3.css">
        <link rel="stylesheet" href="../style2.css">

    <title>Consultar Produtos</title>
    </head>
    <body>
        

        <div class="container pdg">
        
            <form action="" method="post">
                
                
                <?php
                    if(isset($_SESSION['resultado'])){
                        echo $_SESSION['resultado']; 
                        unset($_SESSION['resultado']);                   
                    }
                ?>

                <table class="table shesh">
                    <thead>
                        <tr>
                            <th scope="col" class="table-light">Id_adm</th>
                            <th scope="col" class="table-light">nome</th>
                            <th scope="col" class="table-light">login</th>
                            <th scope="col" class="table-light">senha</th>
                            <th scope="col" class="table-light">ações</th>
                        
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
                                    
                                                                    
                                    $contador = $contador + 1;
                                    $name_btn["$contador"] = $mensagem['id_adm'];
                                                
                        ?>
                        <tr>
                            <th scope="row"><?php echo $mensagem['id_adm'];?></th>
                            <td><?php echo $mensagem['nome']; ?></td>
                            <td> 
                                    <?php echo $mensagem['login'];?>
                            </td>
                            <td ><?php echo $mensagem['senha'];?></td>
                            <td class="sss">                               
                                <a href="alterar_adms.php?id=<?php echo $mensagem['id_adm'];?>"><input class="btn btn-warning"  type="button" value="Alterar">  </a>      
                            </td>

                            
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