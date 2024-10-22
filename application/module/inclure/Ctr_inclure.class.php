<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_inclure extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("inclure", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
		$u=new Inclure();
		$data=$u->selectAll();
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {	
	    $id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Inclure();
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
			$u=new Inclure();
			$u->save($_POST);
			if ($_POST["inc_albums"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Inclure a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Inclure a bien été mis à jour.";
		}
		header("location:" . hlien("inclure"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Inclure();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Inclure a bien été supprimé.";
		}
		header("location:" . hlien("inclure"));
	}
}

?>