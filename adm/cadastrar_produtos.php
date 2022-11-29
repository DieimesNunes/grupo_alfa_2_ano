<?php
    include("../conexao.php");
    include("../menu_adm.php");

    if(isset($_POST['bt_name'])){
        $arquivo= $_FILES['bt_arquivo'];    

        if(isset($_FILES['bt_arquivo'])){
            $arquivo = $_FILES['bt_arquivo'];
            if($arquivo['size'] > 15000000){
                die("O arquivo é muito grande MAXIMO DE 15 MB");
            }if ($arquivo['error']) {
                die("Falha em exibir o arquivo");
            }
        }
        
        $nome = $_POST['bt_name'];
        $arquivo= $_FILES['bt_arquivo'];
        $tipo = $_POST['bt_tipo'];
        $pasta = "lanches/";
        $nome_arquivo=$arquivo['name'];
        $descricao = $_POST['bt_descricao'];
        $preco = $_POST['bt_preco'];
        $quantidade = 0;
       

        $nna = uniqid();

        $extensao = strtolower(pathinfo($nome_arquivo, PATHINFO_EXTENSION));

        $caminhom = "../".$pasta.$nna. "." . $extensao; // A pasta está fora da adm
        $caminho = $pasta.$nna. "." . $extensao;
        

        if($extensao != ("jpg" or "png")){ // Precisamos ter atenção nessa linha
            echo "<br>";
            die ("Tipo de arquivo invalido!"); //Precisa realizar tratamento aqui do error
        }else{
            $deucerto = move_uploaded_file($arquivo["tmp_name"], $caminhom);
            $mysqli -> query("INSERT INTO tabela_produtos (nome, quantidade, arquivo, tipo, descricao, preco) values ('$nome','$quantidade','$caminho', '$tipo','$descricao', '$preco')") or die($mysqli -> error);
            $_SESSION['msg'] = "<div class='alert alert-success'>Produto cadastrado com sucesso!!!</div>";
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
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="meuestilo.css">

        <title>Cadastrar Produtos</title>
    </head>
    <body>
        <div class="container">
            <?php
                if(isset($_SESSION['msg'])){ // Mensagem para o usuário
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);  // comando para esvaziar conteúdo dentro da variável
                }
            ?>
            <h1>Cadastrar Produtos</h1>
            <form action="" method= "post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="bt_nome" class="form-label">Nome do produto:</label>
                    <input class="form-control" type="text" name="bt_name" required>
                    <div class="form-text">*inserir texto completo</div>
                    <br>

                    <label for="bt_arquivo" class="form-label">Selecione uma foto do Lanche:</label>
                    <input class="form-control" type="file" name="bt_arquivo" required>
                    <div class="form-text">
                        <p>*inserir apenas arquivos .jpg ou .png</p>
                    </div>  

                    <label for="bt_tipo" class="form-label">Selecione um arquivo:</label>
                    <select class="form-select" name="bt_tipo" size="1" >
                        <option value="Alimento">Alimento</option>
                        <option value="Bebida">Bebida</option>
                    </select>
                    
                    <label for="bt_preco" class="form-label">Preço:</label>
                    <input class="form-control" type="text" name="bt_preco" required>

                    
                    <label for="bt_descricao" class="form-label">Descrição:</label>
                    <textarea class="form-control" name="bt_descricao" id="exampleFormControlTextarea1" cols="100" rows="10">

                    </textarea>
                    
                </div>
                <button type="submit" class="btn btn-success">Cadastrar</button>
                <button type="reset"  class="btn btn-primary">Limpar</button>                
            </form>
        </div>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>