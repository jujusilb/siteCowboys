<?php
/**
Controleur créé par le générateur.
Controleur associé à une table (implémente le CRUD)
*/
class Ctr_apparaitre extends Ctr_controleur implements I_crud {

    public function __construct($action) {
        parent::__construct("apparaitre", $action);        
        $a = "a_$action";
        $this->$a();
    }
public function selectAll(): array
	{
		$sql = "select * from $this->table, tounes, personnages
		where app_personnages=per_id
		and app_tounes=tou_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	function a_index() {
		$u=new Apparaitre();
		$data=$u->selectAll();
		require $this->gabarit;
	}
	
	//$_GET["id"] : id de l'enregistrement
	function a_edit() {		
		$id = isset($_GET["id"]) ? $_GET["id"] : 0;
		$u=new Apparaitre();
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
			$u=new Apparaitre();
			$u->save($_POST);
			if ($_POST["app_personnages"]==0)
				$_SESSION["message"][]="Le nouvel enregistrement Apparaitre a bien été créé.";
			else
				$_SESSION["message"][]="L'enregistrement Apparaitre a bien été mis à jour.";
		}
		header("location:" . hlien("apparaitre"));
	}

	

	//param GET id 
	function a_delete() {
		if (isset($_GET["id"])) {
			$u=new Apparaitre();
			$u->delete($_GET["id"]);
			$_SESSION["message"][]="L'enregistrement Apparaitre a bien été supprimé.";
		}
		header("location:" . hlien("apparaitre"));
	}
}

?>