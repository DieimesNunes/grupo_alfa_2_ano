<?php

    include("conexao.php");
    include("menu_usuario.php");

    if(isset($_POST['bt_login'])){
        $login = $_POST['bt_login'];
        $senha = $_POST['bt_senha'];
        $nome = $_POST['bt_nome'];
        $telefone = $_POST['bt_telefone'];
        $turma = $_POST['bt_turma'];

        $senha_nova = password_hash(($senha), PASSWORD_DEFAULT);

        $sql = "INSERT INTO tabela_usuario (login, senha, nome, telefone, turma) VALUES ('$login', '$senha_nova', '$nome', '$telefone','$turma')";

        $deucerto = $mysqli->query($sql) or die ($mysqli->error);

        if($deucerto){
            echo"Cadastro feito com sucesso";
            unset($_POST);
        }
        
    }


?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=], initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<div>
        <div class="container">
            <div class="teste">>
                <div class="row align-itens-center gx-5">
            
                    <div class="col-md-6 order-md-3">
                        <h5>Cadastrar-se</h5>
                        <br>
                            <form action="#"  method="post" enctype = "multpart/form-data">
                            <label for="bt_login" class="">Login:</label>    
                            <div class="form-floating mb-3">                                  
                                    <input class="form-control" type="text" placeholder="Digite o seu nome" name="bt_login">
                            </div>
                            <label for="bt_senha" class="">Senha:</label>
                            <div class="form-floating           mb-3">                                                                      
                                <input class="form-control" type="password" placeholder="Digite a sua senha" name="bt_senha">
                            </div>
                            <label for="bt_nome" class="">Nome Completo:</label>
                            <div class="form-floating mb-3">
                                <input class="form-control" type="text" placeholder="Digite o seu nome completo:" name="bt_nome">
                            </div>
                            <label for="bt_telefone" class="">Número de Telefone:</label>
                            <div class="form-floating mb-3">                                                                
                                    <input class="form-control" type="text" placeholder="Digite o seu telefone: " name="bt_telefone">
                            </div>
                                <div class="form-floating mb-3">
                                    <label for="bt_turma" class="">Digite sua turma:</label>
                                    <input class="form-control" type="text" placeholder="Digite sua turma: " name="bt_turma">
                                </div>
            
                            <input class="btn btn-dark" type="submit" value="Cadastrar">
                            <input class="btn btn-outline-dark" type="reset" value="Cancelar">
                            <a href="index.php" class="btn btn-danger">Sair</a>
            
                        </form>
                        </div>
                        <div class="col-md-6 order-md-10">
                            <div class="col-12">
                                <img src="imagens/login-foto" alt="" class="img-fluid" id="img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>  
    
</body>
</html>