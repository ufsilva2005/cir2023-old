<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-modeloImp.php";

	//recebe dados da view
    $modeloImpressora =  converteMaiuscula($_POST['modeloImpressora']);
    $statusModelo = "ativo";
    $idSetor = $verificaSetor;
    //echo "<br>idSetor => " . $idSetor . "<br>";
            
    $modelo = new ModeloImp($idModelo, $statusModelo, $modeloImpressora);
	echo "<br>dados impressora <br>";		
	$modelo->exibir();
	//echo "<br>";
	//$impressoraDAO = new ControleCirDAO();
	//$impressoraDAO->CadastrarImpre($impressora);
			
	//header("Location: ../views/impressorasCadastrar.php");    
?>