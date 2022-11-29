<?php
    include("menu_login.php");
    include("../conexao.php");
    
    if(!isset($_SESSION)){ 
        session_start();
    }
    
    if(isset($_POST['bt_login'])){
        $login = $_POST['bt_login'];
        $senha = $_POST['bt_senha'];


        $sql = "SELECT * FROM adm WHERE login='$login' limit 1";
        $sql_exec = $mysqli->query($sql) or die ($mysqli->error);

        $usuario = $sql_exec->fetch_assoc();

        /* ##### Validação da senha ##### */
        if ($usuario == null){
            $_SESSION['msg'] = "<div class='alert alert-danger'>Usuário ou senha incorreto!</div>";
            
        }elseif (password_verify($senha, $usuario['senha'])){
            $_SESSION['usuario_ativo'] = $usuario['id_adm'];
            header("location:index_adm.php");  
        }else{
            $_SESSION['msg'] = "<div class='alert alert-danger'>Usuário ou senha incorreto!</div>";
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
        <link rel="stylesheet" href="caixalogin.css">
        <title>Login Adm</title>
    </head>
    <body> 
        <div class="container">
            <?php
                if(isset($_SESSION['msg'])){
                    echo $_SESSION['msg']; 
                    unset($_SESSION['msg']);                   
                }
            ?>
            <div class="teste">
                <div class="row align-itens-center gx-5">                
                    <div class="col-md-6 order-md-3">
                        <h1>Login Adm</h1>
                        <br>
                        <form method="post">
                            <div class="form-floating mb-3">
                                <input class="form-control" type="text" placeholder="Digite o seu e-mail" name="bt_login" required>
                                <label for="form-label" for="bt_login">Login:</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" type="password" placeholder="Digite a sua senha" name="bt_senha" required>
                                <label for="form-label" for="bt_senha">Senha:</label>                                    
                            </div>                
                            <input class="btn btn-dark" type="submit" value="Entrar">
                            <a href="../index.php" class="btn btn-danger">Sair</a>                
                        </form>
                    </div>
                        <div class="col-md-6 order-md-1">
                            <div class="col-12">
                                <img src="../imagens/login-foto" alt="" class="img-fluid img-new">
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </body>
</html>