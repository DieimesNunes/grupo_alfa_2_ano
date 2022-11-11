<?php
    include("../conexao.php");

    if(isset($_POST['bt_login'])){
        $login = $_POST['bt_login'];
        $senha = $_POST['bt_senha'];
        $nome = $_POST['bt_nome'];


        $senha_nova = password_hash(($senha), PASSWORD_DEFAULT);

        

        $sql = "INSERT INTO adm (nome, login, senha) VALUES ('$nome', '$login', '$senha_nova')";

        $deucerto = $mysqli->query($sql) or die ($mysqli->error);

        if($deucerto){
            echo"Cadastro feito com sucesso";
            unset($_POST);
            header("location:index.php");
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
    <link rel="stylesheet" href="cadastrar.css">
    <title>Tela de cadastro</title>
</head>
<body>    
    <div>
        <div>
            <div class="teste">
                <h1 id="titulo">Cadastrar</h1>
                <div class="row align-itens-center gx-5">
            
                    <div class="col-md-6 order-md-3">
                        <h5>Cadastrar Adm</h5>
                        <br>
                            <form action="#"  method="post" enctype = "multpart/form-data">
                                <div class="form-floating mb-3">
                                    <label for="bt_login" class="">Login:</label>
                                    <input class="form-control" type="text" placeholder="Digite o seu e-mail" name="bt_login">
                                </div>
                                <div class="form-floating mb-3">
                                    <label for="bt_senha" class="">Senha:</label>
                                    <br>
                                    <input class="form-control" type="password" placeholder="Digite a sua senha" name="bt_senha">
                                </div>
                                <div class="form-floating mb-3">
                                    <label for="bt_nome" class="">Nome Completo:</label>
                                    <input class="form-control" type="text" placeholder="Digite a sua senha" name="bt_nome">
                                </div>
            
                            <input class="btn btn-dark" type="submit" value="Cadastrar">
                            <input class="btn btn-outline-dark" type="reset" value="Cancelar">
            
                        </form>
                        </div>
                        <div class="col-md-6 order-md-10">
                            <div class="col-12">
                                <img src="../imagens/login-foto" alt="" class="img-fluid" id="img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>  
</body>
</html>