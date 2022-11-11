<?php
    include("conexao.php");

    $id_mensagem = intval($_GET["id"]);
    $sql_mensagens = "SELECT * FROM cadastro2 WHERE id_msg = '$id_mensagem'";
    $consulta_mensagens = $mysqli->query( $sql_mensagens) or die($mysqli->error);
    $mensagem = $consulta_mensagens -> fetch_assoc();
    $data = date("d/m/Y H:i", strtotime($mensagem['log']));

    $sumir = false;


   // var_dump($_POST['confirmar']);


    if(isset($_POST['confirmar'])){
        $sql_deletar = "DELETE FROM cadastro2 WHERE id_msg = '$id_mensagem'";
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
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
            <a class="navbar-brand" href="index.html">
           <img src="imagens/PICAPICA.png" alt="" width="33px" height="33px" id="logo">
            </a>
          </div>
  
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" id="testefda">
         <ul class="nav navbar-nav">
         </ul>
       </div>
     </div>
   </nav>
    <div class=container>
        <div class="table-responsive">
            <?php 
            if($sumir == false){
            ?>
            <table class ="table table-hover">
                <thead>
                    <th scope="col">Id</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Email</th>
                    <th scope="col">Mensagem</th>
                    <th scope="col">Data</th>
                </thead>
                <tbody>
                    <td><?php echo $mensagem['id_msg'];?></td>
                    <td><?php echo $mensagem['nome'];?></td>
                    <td><?php echo $mensagem['email'];?></td>
                    <td><?php echo $mensagem['mensagem'];?></td>
                    <td><?php echo $data;?></td>
                </tbody>
                
            </table>
            <form action="" method="post">
                    <h1>Tem certeza que deseja apagar ? </h1>
                    <button name="confirmar" value="1" class="btn btn-danger">Sim</button>
                    <a href="consulta.php" class="btn btn-default">Não</a>            
                </form>
            <?php 
            }else{
                echo "Mensagem apagada com sucesso <br>";      
            ?>
            <a href="consulta.php"><button class="btn btn-danger">Voltar</button></a>
            <?php
            }
            ?>
            

           
            
        </div>
    </div>    
</body>
</html>