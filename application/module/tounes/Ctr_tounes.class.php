<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_tounes extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("tounes", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
	    if(isset($_POST["btSubmit"])){
	        //debug($_POST, "post");
    	    $u=new Tounes();
    	    $data=$u->filtrage($_POST);
    	    //debug($data, "data");
	    }else {
		    $u=new Tounes();
		    $data=$u->selectAll();
	    }
		$act=new Action();
		$categorie=["ecrire", "composer"];
		$noInclure=$u->noInclure();
		$noEcrire=$act->noAction("ecrire");
		$noComposer=$act->noAction("composer");
		$noChanter=$act->noAction("chanter");
		$noPersonnage=$u->noPersonnage();
        $mem=new Membres();
        $act=new Action();
        $listMembres=$mem->listMembres();
		$listInclure=$u->listInclure();
		$listEcrire=$act->listAction("ecrire");
		$listComposer=$act->listAction("composer");
		$listChanter=$act->listAction("chanter");
		$listPersonnage=$u->listPersonnage();
		//debug($noInclure, "noIncLure");
		//debug($listInclure, "listInclure");
		//debug($listMembres, "listMembres");
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Tounes();
		$act=new Action();
		if ($id>0)
			$row=$u->select($id);
		else
			$row=$u->emptyRecord();
			
		extract(array_map("mhe",$row));
		$listEcrire=$act->listAction("ecrire");
		$listComposer=$act->listAction("composer");
		$listChanter=$act->listAction("chanter");
		$listPersonnage=$u->listPersonnage();
		$noInclure=$u->noInclure();
		$mem= new Membres();
		$alb=new Albums();
		$listInclure=$u->listInclure();
		//debug($listInclure, "listInclure");
		$listAlbums=$alb->selectAll();
		$listMembres=$mem->listMembres();
		$noEcrire=$act->noAction("ecrire");
		$noComposer=$act->noAction("composer");
		$noChanter=$act->noAction("chanter");
		$noPersonnage=$u->noPersonnage();
		$listPersonnage=$u->listPersonnage();
		$listInclure=$u->listInclure();
		require $this->gabarit;		
	}

	//$_POST
	function a_save() {
		if (isset($_POST["btSubmit"])) {
			debug ($_POST, "post");
			$u=new Tounes();
			$u->save($_POST);
			if(isset($_POST["memEcrire"])){
    $touId = $_POST['tou_id'];
    
    // Delete existing records
    $sql = "DELETE FROM action WHERE act_tounes = $touId and act_categorie='ecrire'";
    echo "$sql <br>";
    $pdostmt = Table::$link->prepare($sql);
    $pdostmt->execute();

    // Insert new records
    foreach ($_POST["memEcrire"] as $membre) {
        $sql = "
            INSERT INTO action (act_membres, act_tounes, act_categorie)
            VALUES ($membre, $touId, 'ecrire')
        ";
        echo "$sql <br>";
        $pdostmt = Table::$link->prepare($sql);
        $pdostmt->execute();
    }
}

			if(isset($_POST["memComposer"])){
				$touId=$_POST["tou_id"];
				$sql="
					delete from 
						action
					where
						act_tounes=$touId
					and
					    act_categorie='composer'
				";
				echo "$sql <br>";
				$pdostmt=Table::$link->prepare($sql);
				$pdostmt->execute();
				foreach($_POST["memComposer"] as $membre){

					$sql="
						insert into 
							action
						values
							(null, $membre, $touId, 'composer')
						";
						echo "$sql <br>";
						$pdostmt=Table::$link->prepare($sql);
						$pdostmt->execute();
					
				}
			}
			if(isset($_POST["memChanter"])){
				$touId=$_POST["tou_id"];
				$sql="delete from 
					action
				where
					act_tounes=$touId
				and
					    act_categorie='chanter'
				";
				echo "$sql<br>";
				$pdostmt=Table::$link->prepare($sql);
				$pdostmt->execute();
				foreach($_POST["memChanter"] as $membre){
				    $sql="
    					insert into 
    						action
    					values
    				    	(null, $membre, $touId, 'chanter')
    				";
					echo "$sql<br>";
					$pdostmt=Table::$link->prepare($sql);
					$pdostmt->execute();
				}
			}		
			if ($_POST["tou_id"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Tounes a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Tounes a bien été mis à jour.";
		}
		if(isset($_POST["albumInclure"])){
		    $touId=$_POST["tou_id"];
				
				$sql="delete from 
				    inclure
				where
					inc_tounes=$touId
				";
				echo "$sql<br>";
				$pdostmt=Table::$link->prepare($sql);
				$pdostmt->execute();
				
				foreach($_POST["albumInclure"] as $albums){
				
					
					$sql="
						insert into 
							inclure
							(inc_albums,inc_tounes)
						values
							($albums, $touId)
						";
					echo "$sql<br>";
					$pdostmt=Table::$link->prepare($sql);
					$pdostmt->execute();
					echo "ok";
				}
		}
		debug ($_POST, "post");
		//debug($_POST["memChanter"], "chanter");
		//debug($_POST["memEcrire"],"ecrire");
		//debug($_POST["memComposer"], "composer");
		header("location:" . hlien("tounes", "index")."#". $_POST["tou_id"]);
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Tounes();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Tounes a bien été supprimé.";
		}
		header("location:" . hlien("tounes"));
	}
	function a_ajaxAddDuree(){
	    $toune=$_GET["toune"];
	    $duree=$_GET["duree"];
	    $tou=new Tounes();
	    $tou->addDuree($toune, $duree);
	    
	}
	
	function a_jeux(){
	    $u=new Tounes();
	    $data=$u->getTounesJeux();
	    require $this->gabarit;	
	}
	
	function a_filtreMembres(){

	//echo json_encode($data);
    require $this->gabarit;
	}
	
	function a_filtrage(){

        require $this->gabarit;
	}
}

?>