<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_personnages extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("personnages", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
		$u=new Personnages();
		$data=$u->selectAll();
		$app=new Apparaitre();
		$listTounes=$app->listTounes();
		$noTounes=$app->noTounes();
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Personnages();
		if ($id>0)
			$row=$u->select($id);
		else
			$row=$u->emptyRecord();
			
		extract(array_map("mhe",$row));	
		require $this->gabarit;		
	}

	//$_POST
	function a_save() {
		if (isset($_POST["btSubmit"])) {
			$u=new Personnages();
			$u->save($_POST);
			if ($_POST["per_id"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Personnages a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Personnages a bien été mis à jour.";
		}
		header("location:" . hlien("personnages"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Personnages();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Personnages a bien été supprimé.";
		}
		header("location:" . hlien("personnages"));
	}
}

?>