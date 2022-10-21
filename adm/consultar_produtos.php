<?php 
    

    include("..\conexao.php");
    include("..\icon.php");

  

    $sql_mensagens = "SELECT * FROM tabela_produtos";

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
        <form action="">
        <input  class="btn btn-primary" type="submit" name="someAction" value="Atualizar" />
        </form>
        
    
    <table class="table shesh">
        <thead>
            <tr>
                <th scope="col" class="table-light">Consultar</th>
                <th scope="col" class="table-light">Arquivo Foto</th>
                <th scope="col" class="table-light">Descrição</th>
                <th scope="col" class="table-light">Preço</th>
                <th scope="col" class="table-light text">Quantidade</th>
            </tr>
        </thead>        
        <tbody>
        <?php
            $voltar = "../";
            
            
            if($quantidade_mensagens == 0){
        ?>  <p>Nenhum produto foi cadastrado</p>

        <?php
                } else{
                    $d = 1;
                   
                    while($mensagem = $consulta_mensagens -> fetch_assoc()){
                    $img = $voltar.$mensagem['arquivo'];
             
        ?>
            <tr>
                <th scope="row"><?php echo $mensagem['nome'];?></th>
                <td><a target="_blank" href="<?php echo $img ?>"><?php echo $mensagem['arquivo']; ?></a></td>
                <td> 
                    <div class="caixa">
                        <?php echo $mensagem['descricao'];?>
                    </div>
                </td>
                <td class="font"><?php echo $mensagem['preco'];?></td>
                <td class="sss">                               
                    <button class="decrement" class="botao" >-</button>
                    <input type="number" class="numero-input" min="-1" max="100" step="1" value="0" class="my-input">
                    <button class="increment" class="botao" >+</button>             
                </td>
            </tr>

        <?php
                }
            }
        ?>
    </tbody>
    </table>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
    crossorigin="anonymous"></script>        
    <script src="script.js"></script>
</body>
</html>