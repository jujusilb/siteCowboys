<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_jouer extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("jouer", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
		$u=new Jouer();
		$data=$u->selectAll();
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Jouer();
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
			$u=new Jouer();
			$u->save($_POST);
			if ($_POST["jou_membres"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Jouer a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Jouer a bien été mis à jour.";
		}
		header("location:" . hlien("jouer"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Jouer();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Jouer a bien été supprimé.";
		}
		header("location:" . hlien("jouer"));
	}
}

?>