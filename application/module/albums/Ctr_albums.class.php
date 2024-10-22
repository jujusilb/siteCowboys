<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_albums extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("albums", $action);        
        $a = "a_$action";
        $this->$a();
    }

	function a_index() {
		$u=new Albums();
		$act=new Action();
		$cha=new Chanter();
		$noChanter=$act->noAction("chanter");
        //$listChanter=$act->listAction("chanter");
		$listChanter=$cha->listChanter();
		$data=$u->selectAll();
		$inAlbums=$u->inAlbums();
		//debug($listChanter, "listChanter");
		//debug($data, "data");
		//debug($inAlbums, "inAlbums");
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Albums();
		if ($id>0)
			$row=$u->select($id);
		else
			$row=$u->emptyRecord();
			
		extract(array_map("mhe",$row));	
		require $this->gabarit;		
	}

	//$_POST
	function a_save() {
		debug($_POST, "POST");
		if (isset($_POST["btSubmit"])) {
			$u=new Albums();
			$u->save($_POST);
			if ($_POST["alb_id"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Albums a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Albums a bien été mis à jour.";
		}
		//debug ($_POST);
		header("location:" . hlien("albums"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Albums();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Albums a bien été supprimé.";
		}
		header("location:" . hlien("albums"));
	}
}

?>