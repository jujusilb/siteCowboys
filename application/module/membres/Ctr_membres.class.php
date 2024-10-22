<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_membres extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("membres", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
		$u=new Membres();
		$data=$u->selectAll();
		$noJouer=$u->noJouer();
		$listJouer=$u->listJouer();
		require $this->gabarit;

	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Membres();
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
			$u=new Membres();
			$u->save($_POST);
			if ($_POST["mem_id"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Membres a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Membres a bien été mis à jour.";
		}
		header("location:" . hlien("membres"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Membres();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Membres a bien été supprimé.";
		}
		header("location:" . hlien("membres"));
	}

	function a_findmembres(){
		$filtre=$_GET["filtre"];
		$m=new Membres();
		$data=$m->findMembres($filtre);
		echo json_encode($data);
	}
}

?>