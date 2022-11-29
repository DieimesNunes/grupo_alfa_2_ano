<?php
    require("autenticacao.php");
    include('../menu_adm.php');
    include("../conexao.php");
    
    $adm_sql = "SELECT * FROM adm";
    $adm_consulta = $mysqli->query ( $adm_sql) or die ($mysqli->error);
    $quantidade_adms = $adm_consulta->num_rows; // Retornar quantidade de linhas
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <?php include("../icon.php"); ?>
        <title>Deletar administrador</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>Administradores cadastrados: </h1>                    
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead >
                                <th colspan="3">Administradores</th>
                            </thead>
                            <tbody>
                                <?php
                                    if ( $quantidade_adms == 0){ ?>
                                    <tr>
                                        <td colspan="1"> Nenhuma mensagem foi cadastrada.</td>
                                    </tr>

                                <?php   } else { 

                                    while ($adm = $adm_consulta  -> fetch_assoc()){
                                ?>

                                    <tr>
                                        <td><?php echo $adm['nome']; ?></td> 
                                        <td>
                                            <a class="btn btn-warning" href="alterar_adm.php?id_adm=<?php echo $adm['id_adm']?>" role="button"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Editar</a>
                                            <a class="btn btn-danger" href="apagar_adm?id_adm=<?php echo $adm['id_adm'] ?>" role="button"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Deletar</a>
                                        </td>
                                    </tr> 

                                    <?php

                                        }                        

                                    ?>  

                                <?php

                                }                        

                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>