<?php
    include("../conexao.php");
    include("../menu_adm.php");

    if(isset($_POST['bt_senha'])){
        $senha1 = $_POST['bt_senha'];
        $senha2 = $_POST['bt_senha_2'];

        if(!($senha1 === $senha2)){
            echo "As senhas não são iguais !!!";
        }else{
            $nome = $_POST['bt_nome'];
            $login = $_POST['bt_login'];
            $senha = $_POST['bt_senha'];

            $senha_nova = password_hash(($senha), PASSWORD_DEFAULT);

            $sql = "INSERT INTO adm (nome, login, senha) VALUES ('$nome', '$login', '$senha_nova')";
            
            $cadastrar = $mysqli->query($sql) or die ($mysqli->error);
            if($cadastrar){
                $_SESSION['msg'] = "<div class='alert alert-success'>Arquivo enviado. Deu certo aluno! :)</div>";
                unset($_POST);
            }             
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
        <div class="container">
            <h1 id="titulo">Cadastrar</h1>
            <div class="row align-itens-center">                
                <div class="col">
                    <h5>Cadastrar Administador</h5>
                    <br>
                        <form action="#"  method="post" enctype = "multpart/form-data">
                            <div class="mb-3">
                                <label for="bt_nome" class="form-label">Nome:</label>
                                <input class="form-control" type="text" placeholder="Digite o seu nome completo" name="bt_nome" required>
                            </div>   
                            <div class="mb-3">
                                <label for="bt_login" class="form-label">Login:</label>
                                <input class="form-control" type="text" placeholder="Digite o seu login" name="bt_login" required>
                            </div>
                            <div class="mb-3">
                                <label for="bt_senha" class="form-label">Senha:</label>
                                <br>
                                <input class="form-control" type="password" placeholder="Digite a sua senha" name="bt_senha" required>
                            </div>
                            <div class="mb-3">
                                <label for="bt_senha" class="form-label">Digite a senha novamente:</label>
                                <br>
                                <input class="form-control" type="password" placeholder="Digite novamente a sua senha" name="bt_senha_2" required>
                            </div>                                 
                        <input class="btn btn-success" type="submit" value="Cadastrar">
                        <input class="btn btn-outline-dark" type="reset" value="Cancelar">
                        <?php
                            if(isset($_SESSION['msg'])){
                                echo $_SESSION['msg'];
                                unset($_SESSION['msg']);                   
                            }
                        ?>
                    </form>
                </div>
            </div>
        </div>       
    </body>
</html>