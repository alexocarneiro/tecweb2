<?php
  session_start();
  if((!isset ($_SESSION['login']) == true) and (!isset ($_SESSION['pass']) == true)){
    unset($_SESSION['login']);
    unset($_SESSION['senha']);
    header('location:../index.html');
  }
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="Rommel Vieira Carneiro">
    <meta name="description" content="Reeducação Alimentar">
    <meta name="keywords" content="nutricao, ">
    <title>Reeducação Alimentar</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../fonts/fontawesome-webfont.ttf">
    <link rel="stylesheet" href="../fonts/FontAwesome.otf">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
</head>

<body>
    <header class="cabecalho">
            <aside class="left-sidebar">
                    <div class="logo">
                    </div>
                    <nav class="menu-esquerda">
                        <ul id="">
                                <li><a href="home.php">Home</a></li>
                                <li><a href="cicloVicioso.php">Ciclo Vicioso</a></li>
                                <li><a href="indiceGlicemico.php">Indice Glicêmico</a></li>
                                <li><a href="controleGlicemico.php">Controle Glicêmico</a></li>
                                <li><a href="alerta.php">Alerta</a></li>
                                <li><a href="../appX/logout.php">Sair</a></li>
                        </ul>
                    </nav>
                 </aside>

                 <!-- <ul class="nav justify-content-center">
                        <li class="nav-item">
                          <a class="nav-link active" href="#">Active</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                      </ul> -->
          
    </header>

    <main class="conteudo">
          
            <div class="container-objetivos01">
                    <p>  ciclo Vicioso</p>
    
           </div>

        

    </main>



    <footer class="rodape">
        
        <div class="copyright">Copyright 2018 - Sistemas de Informação - PUC Minas Barreiro</div>
    </footer>
</body>

</html>