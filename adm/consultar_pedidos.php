<?php 
    

    include("../conexao.php");
<<<<<<< HEAD
    include("menu_adm.php");
    include("../icon.php");
=======
    include ("../menu_adm.php");
>>>>>>> Mestre_Jedi

    if(!isset($_SESSION)){
        session_start();
    }
   

    if(isset($_POST['bt_data'])){
        $data = $_POST['bt_data']; 

        $sql_pedidos = "SELECT * FROM tabela_pedidos WHERE data='$data'";
        $consulta_pedidos = $mysqli->query($sql_pedidos) or die ($mysqli->error);
        $quantidade_pedidos = $consulta_pedidos -> num_rows;
       // $data_pedido = $consulta_data_sql -> fetch_assoc() ;        
    }else{
        $sql_pedidos = "SELECT * FROM tabela_pedidos";        
        $consulta_pedidos = $mysqli->query($sql_pedidos) or die ($mysqli->error);
        $quantidade_pedidos = $consulta_pedidos -> num_rows;
    }

        
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <title>Consultar Produtos</title>
    </head>
    <body> 
        <div class="container"> 
            <br>
            <br>
            <form action="" method="POST">
                <div class="mb-3">
                    <label class="form-label" for="">Data dos pedidos: </label>
                    <input type="date" name="bt_data">
                    <input class="btn btn-primary" type="submit" value="Buscar">
                </div>                
            </form>
            <table class="table">
                <thead>
                    <tr>
                    <th scope="col" class="table-light">Data do pedido: </th>
                        <th scope="col" class="table-light">Nome</th>                            
                        <th scope="col" class="table-light">Telefone</th>
                        <th scope="col" class="table-light">Produto</th>
                        <th scope="col" class="table-light">Quantidade</th>                            
                    </tr>
                </thead>        
                <tbody>
                    <?php
                        $voltar = "../";
                        
                        
                        if($quantidade_pedidos == 0){
                    ?>
                        <tr>
                            <td colspan="5" > Nenhum pedido realizado nesta data</td>
                        </tr>                        
                    <?php
                            } else{
                                $d = 1;
                                $contador = 0; 
                                while($pedidos = $consulta_pedidos -> fetch_assoc()){
                                    
                                    $cliente_sql = "SELECT tabela_produtos.nome FROM tabela_produtos WHERE id_lanche=$pedidos[id_produto]";
                                    $cliente_consulta = $mysqli->query ( $cliente_sql) or die ($mysqli->error);
                                    $cliente = $cliente_consulta -> fetch_assoc() ;
                    ?>
                    <tr>
                        <?php
                            $date = date_create($pedidos['data']);
                        ?>
                        <td><?php echo date_format($date, 'd-m-Y');?></td>
                        <td><?php echo $pedidos['nome'];?></td>
                        <td><?php echo $pedidos['telefone'];?></td>
                        
                        <td class="font"><?php echo $cliente['nome'];?></td>
                        <td class="font"><?php echo $pedidos['quantidade'];?></td>
                    </tr>

                <?php
                        }
                    }
                ?>
                </tbody>
            </table>            
        </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>       
        <script src="script.js"></script> 
    </body>
</html>