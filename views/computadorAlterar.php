<?php
include "../template/menuPrincipal.php";
include "../scripts/mascara.php";

if ($_SESSION['impressora'] != "sim") {
    echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
    echo "<script>location = '../template/menuPrincipal.php';</script>";
}

//$idFuncionario = $_SESSION['idFuncionario'];  
//$nomeFuncionario = $_SESSION['nomeFuncionario'];  

//include "../scripts/validarSerieImp.php"; 
//include "../scripts/validarNomeImp.php";
//include "../scripts/mascara.php";
require_once '../controllers/computadorBuscar.php';
$_SESSION['idSetor'] = $idSetor;
$_SESSION['idFuncionario'] = $idFuncionario;
?>

        <script src="../js/jquery.min.3-1.js"></script>
        <script src="../js/bootstrap3-typeahead.min.js"></script>  
        <script src="../js/jquery-latest.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#termo_busca').keyup(function() {
                    $.ajax({
                        type: 'POST',
                        url: '../scripts/buscaProcessador.php',
                        data: {
                            nome: $("#termo_busca").val()
                        },
                        success: function(data) {
                            $('#listaProcessador').html(data);
                        }
                    });
                });

            });
        </script>

         <script src="../js/bootstrap.min.js"></script>


        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Computador</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <!--form name="cadastro" id="cadastro" method="post" action="./computadorCadastrar2.php"-->
                            <fieldset>	
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">1-> Informações do local do Computador</h5>
                                    </label>	
                                </div>
                                <div class="row">																						
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Divisão:</label>
                                        <select class="form-control" id="divisao" name="divisao">
                                            <option value="<?php echo $idDivisao;
                                                            $_SESSION['antDivisao'] = $idDivisao; ?>"> <?php echo $nomeDivisao; ?></option>
                                            <option> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $divisaoDAO = new ControleCirDAO();
                                            $nomeTabela = "divisao";
                                            foreach ($divisaoDAO->ListarTudo($nomeTabela) as $res) {
                                            ?>
                                                <option value="<?php echo $res->idDivisao; ?>"> <?php echo $res->divisao; ?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Localização:</label>
                                        <select class="form-control" id="local" name="local">
                                            <option><?= $localizacao;
                                                    $_SESSION['antLocalizacao'] = $localizacao ?></option>
                                            <option> </option>
                                            <option>subsolo</option>
                                            <option>1° andar</option>
                                            <option>2° andar</option>
                                            <option>3° andar</option>
                                            <option>4° andar</option>
                                            <option>5° andar</option>
                                            <option>6° andar</option>
                                            <option>7° andar</option>
                                            <option>8° andar</option>
                                            <option>9° andar</option>
                                            <option>10° andar</option>
                                            <option>11° andar</option>
                                            <option>12° andar</option>
                                            <option>13° andar</option>
                                        </select>
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Ramal:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $ramal ?>" >
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Setor:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $respSetor ?>" >
                                    </div>
                                </div>
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Local do Computador:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $nomeLocal ?>" >
                                    </div>
                                                
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Observação:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $obs ?>" >
                                    </div>
                                </div>

                                <hr>
                                            
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">2-> Informações Sobre o Computador </h5>
                                    </label>	
                                </div>	
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label" >Número da Cir:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $numCir ?>" >
                                    </div>  
                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio Reitoria:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $numPatReitoria ?>" >
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio HU:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $numPatrimonio ?>" >
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Nome do Computador:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $nomeComputador ?>" >
                                    </div>												                                      
                                </div>		
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Sistema Operacional:</label>
                                        <select class="form-control" id="local" name="local">
                                            <option><?= $sistemaOpera;
                                                    $_SESSION['antSistemaOpera'] = $sistemaOpera ?></option>
                                            <option> </option>
                                            <option>WINDOWS XP</option>
                                            <option>WINDOWS VISTA</option>
                                            <option>WINDOWS 7</option>
                                            <option>WINDOWS 8</option>
                                            <option>WINDOWS 10</option>
                                            <option>WINDOWS 11</option>
                                            <option>MAC OS</option>
                                            <option>LINUX</option>
                                            <option>OPEN BSD</option>
                                            <option>NOVELL</option>
                                        </select>
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Modelo/Marca:</label>
                                       <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $modelMaquina ?>" >
                                    </div>
                                            
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Pesquisar Processador:</label>
                                        <input type="text" class="form-control" id="termo_busca" name="termo_busca">               
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Tipo de Processador => <?= $desProcessador ?></label>
                                        <select class="form-control" name="listaProcessador" id="listaProcessador" onclick="if( $('#listaProcessador').html() == '' ){ alert('Tipo de Processador Não encontrado.\n Comunique ao Administrador do Sistema.');}"></select>
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Memória:</label>
                                        <select class="form-control" id="local" name="local">
                                            <option><?= $memoria;
                                                    $_SESSION['antMemoria'] = $memoria ?></option>
                                            <option> </option>
                                            <option>512 Mb</option>
                                            <option>1 Gb</option>
                                            <option>2 Gb</option>
                                            <option>3 Gb</option>
                                            <option>4 Gb</option>
                                            <option>8 Gb</option>
                                            <option>16 Gb</option>
                                            <option>32 Gb</option>
                                        </select>
                                    </div>
                                </div>
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número de IP:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $numIp ?>" >
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número MAC:</label>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $numMac ?>" >
                                    </div>	

                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Nome Usuário:</label> <br>
                                        <input type="text" class="form-control" id="modelo" name="modelo" value="<?= $nomeUsuario ?>" >    
                                    </div>
                                </div>

                                <hr>                               
                                <div class="col-md-12">	
                                    <table class="table table-striped table-bordered table-condensed table-hover table-light">
                                        <thead>
                                            <tr>
                                                HD's no Computador:                                    
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <td class="align-left">
                                                <?php
                                                    $t = sizeof($tipoHD);
                                                    $nomeTabela = "hdTipos";
                                                    $tipoOpcao = "id";                                 
                                                    for ($i = 0; $i < $t; $i++) 
                                                        {
                                                            $id = $tipoHD[$i];
                                                            $tipoHDDAO = new ControleCirDAO();
                                                            foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                                                                { 
                                                                    $x = $i + 1;
                                                                    echo "&emsp; hd(" . $x .") =>" . $descricao = $resp->descricao;  
                                                                } 
                                                        }          
                                                ?>    
                                            </td>
                                        </tbody>
                                    </table>
                                </div>
                                <hr>

                                <hr>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExemplo">
  Abrir modal de demonstração
</button>

<!-- Modal -->
<div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Título do modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Salvar mudanças</button>
      </div>
    </div>
  </div>
</div>
                                <hr>

                                
                                    
                                <div class="row">	
                                    <label>
                                        <h5 class="text-primary">3-> Informações do responsavel pelo cadastro</h5>
                                    </label>	
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                        <input type="text" class="form-control" value="<?php $date = date('d/m/Y'); echo $date; $data = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-10">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                        <input type="text" class="form-control" value="<?= $respCadastro ?>" disabled>
                                    </div>
                                </div> 

                                <hr>
                                <div class="row">	
                                    <label>
                                        <h5 class="text-primary">4-> Informações do responsavel por alterar cadastro</h5>
                                    </label>	
                                </div>
                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Data da alteração:</label>
                                        <input type="date" class="form-control" value="<?php $date = date('Y-m-d');
                                                                                        echo $date;
                                                                                        $_SESSION['data'] = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-4">
                                        <label for="inputSuccess" class="control-label">Responsável pela alteração:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
                                    </div>
                                </div>
                                <hr>
                                                
                                <div id="actions" class="row">
                                    <div class="col-md-12">
                                         <a href="../views/computadorListar.php" ><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                    </div>				
                                </div>                                           
                            </fieldset>
                        <!--/form-->  
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE COMPUTADORES</a></p>
                    </footer>
                </div>
            </div>
        </nav>        
    </body>
</html>