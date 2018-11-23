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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../fonts/FontAwesome.otf">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">

  </head>

<body>

    <aside class="left-sidebar">
        <nav class="menu-esquerda">
                <ul id="">
                    <li><a href="home.php">Home</a></li>
                    <li><a href="cicloVicioso.php">Ciclo Vicioso</a></li>
                    <li><a href="indiceGlicemico.php">Indice Glicêmico</a></li>
                    <li><a href="controleGlicemico.php">Controle Glicêmico</a></li>
                    <li><a href="alerta.php">Alerta</a></li>
                    <li><a href="https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=https://apinutricaov2.azurewebsites.net/template-front/">Sair</a></li>
                </ul>
            </nav>
     </aside>

<div id="main-wrapper">
    <div class="main-content">

            <div class="container-objetivos01">
                    <div class="banner-area_home w-100 h-55">
                            <div class="overlay-bg">
                            <div class="container w-100 h-55">
                                    <div class="row fullscreen justify-content-center align-items-center">
                                        <div class="col-lg-9">
                                            <div class="banner-content text-center">
                                                <p class="text-uppercase text-white">Você é aquilo que seu organismo faz com o que</p>
                                                <h1 class="text-uppercase text-white">Voce Come </h1>
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>  
<!-- 
                    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="carousel-inner">
                              <div class="carousel-item active">
                                    <img class="d-block w-80" src="https://www.tuacarreira.com/wp-content/uploads/2018/03/faculdade-de-nutricao-1000x500.jpg" alt="Second slide">
                            </div>
                              
                              <div class="carousel-item">
                                <img class="d-block w-100 h-50" src="http://www.fat-al.edu.br/admin/wp-content/uploads/2016/01/NUTRI%C3%87%C3%83O-1.jpg" alt="Second slide">
                              </div>
                              <div class="carousel-item">
                                <img class="d-block w-80" src=".../800x400?auto=yes&bg=555&fg=333&text=Third slide" alt="Third slide">
                              </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                    </div> -->

    <div class="item">
          <div class="row justify-content-center">

                <div id="carregarValoresNutri" class="col-lg-4 col-sm-6">
                        <div class="item-servicos m-1">
                            <div>
                                <i class="fas fa-chart-bar"></i>
                                <h4>Valores Nutricionais</h4>
                            </div>
                        </div>
                    </div>

                       <div id="carregarAlimentos" class="col-lg-3 col-sm-6 listaAlimentos">
                          <div class="item-servicos m-1">
                              <div>
                                    <i class="fas fa-apple-alt"></i>
                                  <h4>Listar Alimentos</h4>
                              </div>
                          </div>
                      </div>
               
                      <div data-toggle="modal" data-target="#exampleModalCenter" class="col-lg-4 col-sm-6  m-1">
                              <div class="item-servicos">
                                  <div>
                                     <i class="far fa-address-card"></i>
                                      <h4>Preecher Formulario</h4>
                                  </div>
                              </div>
                          </div>
                      </div>
                </div>
  
                    <!-- Tabela Alimentos -->
            <div class="tabela m-3 d-none">
             <button id="voltar" type="button" class="btn btn-danger d-flex justify-content-end"><i class="far fa-arrow-alt-circle-left mr-3 mt-1"></i>Voltar</button>
                <h2><i class="fas fa-book mr-3"></i> Lista com todos os Alimentos</h2>
                    <table class="table table-striped m-4">
                          <thead>
                              <tr>                     
                                  <th>Alimentos</th>
                                  <th>indice Glicemico</th>
                                  <th>Porção Gramaas</th>
                              </tr>
                          </thead>
                          <tbody id="listaAlimentos">
                              <tr>                               
                              </tr>
                          </tbody>
                      </table>
               </div>

             <!-- Tabela Nutri -->
               <div class="tabelaNutri m-3 d-none">
                    <button id="voltarNutri" type="button" class="btn btn-danger d-flex justify-content-end"><i class="far fa-arrow-alt-circle-left mr-3 mt-1"></i>Voltar</button>
                    <h2> <i class="fas fa-chart-bar"></i> Lista Nutrientes</h2>
                           <table class="table table-striped m-4">
                                 <thead>
                                     <tr>                     
                                         <th>Alimentos</th>
                                         <th>Nutrientes</th>
                                         <th>Valor</th>
                                     </tr>
                                 </thead>
                                 <tbody id="listaNutri">
                                     <tr>                               
                                     </tr>
                                 </tbody>
                             </table>
                      </div>

     </div>
     
    </div>
</div>


  



    <!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Cadastrar Formulario</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

                    <div class="group">      
                            <input type="text" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nome</label>
                    </div>

                    <div class="group">      
                            <input type="text" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Idade</label>
                    </div>

                    <div class="group">      
                            <input type="text" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Profissão</label>
                    </div>

                    <div class="group">      
                            <input type="text" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Medicamento</label>
                    </div>
                            
        
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">voltar</button>
              <button type="button" class="btn btn-primary">Salvar</button>
            </div>
            
          </div>
        </div>
      </div>



    <footer class="rodape">   
        <!-- <div>Copyright 2018 - Sistemas de Informação - PUC Minas Barreiro</div> -->
    </footer>
   
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../js/home.js"></script>

</body>

</html>